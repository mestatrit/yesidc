/**
 * $Id: StrutsEntityAction.java,v 1.4 2007/11/30 10:40:30 abel Exp $
 */

package com.yesibc.core.web;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessages;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.util.Assert;
import org.springframework.util.ClassUtils;
import org.springframework.util.ReflectionUtils;

import com.yesibc.core.manager.CommonManager;
import com.yesibc.core.utils.BeanUtils;
import com.yesibc.core.utils.GenericsUtils;

/**
 * Provide the operation of one Entity's CRUD. For example:
 * 
 * <pre>
 *   public class PmtHistAction extends StrutsEntityAction&lt;User, UserManager&gt; {
 *   	private AcctPmtHistManager acctPmtHistManager;
 * &lt;p/&gt;
 *   	public void setAcctPmtHistManager(AcctPmtHistManager acctPmtHistManager) {
 *   		this.acctPmtHistManager = acctPmtHistManager;
 *   	}
 *   }
 * </pre>
 * 
 * <p/> The functionalities include：<br/> 1.Encapsulate the 7 action process of
 * index、list、create、edit、view、save、delete <br/> 2.The functions :
 * doListEntity、doGetEntity、doNewEntity、doSaveEntity(),doDeleteEntity. They can
 * be overridden by child class.<br/>
 * 3.initEntity、initForm、refrenceData,onInitForm,onInitEntity are call-back
 * functions；<br/> 4.savedMessage、deletedMessage can be overridden by child
 * class.<br/>
 * 
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007/10/17 10:21:37
 */
@SuppressWarnings("unchecked")
public abstract class StrutsEntityAction<T, M extends CommonManager<T>> extends
		StrutsAction implements InitializingBean {

	protected static final String LIST = "list";

	protected static final String EDIT = "edit";

	protected static final String VIEW = "view";

	private static final String NEW = "new";

	protected Class<T> entityClass; // the entity type managed by Action.

	protected Class idClass; // the type of the entity primary key managed by
	// Action.

	protected String idName; // the name of the entity primary key managed by
	// Action.

	private M entityManager; // the back-end operation class of the entity

	// managed by Action.

	/**
	 * get entityClass
	 */
	protected Class<T> getEntityClass() {
		return entityClass;
	}

	/**
	 * the back-end operation class of the entity
	 */
	public M getEntityManager() {
		Assert.notNull(entityManager, "Manager initializing failed.");
		return entityManager;
	}

	/**
	 * Call back function.Initialize generic parameters.
	 */
	public void afterPropertiesSet() {
		// get entityClass
		entityClass = GenericsUtils.getSuperClassGenricType(getClass());

		// get manager
		List<Field> fields = BeanUtils.getFieldsByType(this, GenericsUtils
				.getSuperClassGenricType(getClass(), 1));
		Assert.isTrue(fields.size() == 1,
				"subclass's has not only one entity manager property.");
		try {
			entityManager = (M) BeanUtils.forceGetProperty(this, fields.get(0)
					.getName());
			Assert.notNull(entityManager,
					"subclass not inject manager to action sucessful.");
		} catch (Exception e) {
			ReflectionUtils.handleReflectionException(e);
		}

		// get the type of the primary key of entity
		try {
			idName = entityManager.getIdName(entityClass);
			idClass = BeanUtils.getPropertyType(entityClass, idName);
		} catch (Exception e) {
			ReflectionUtils.handleReflectionException(e);
		}
	}

	/**
	 * Jump to
	 * {@link #list(ActionMapping,ActionForm,HttpServletRequest,HttpServletResponse) }
	 * by default.
	 */
	public ActionForward index(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		return list(mapping, form, request, response);
	}

	/**
	 * List all.
	 */
	public ActionForward list(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute(getEntityListName(), doListEntity());
		return mapping.findForward(LIST);
	}

	/**
	 * View new form (can be modified).
	 */
	public ActionForward create(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// the token of avoiding to submitting by repeat
		saveToken(request);
		T object = null;

		try {
			object = entityClass.newInstance();
		} catch (InstantiationException e) {
			log.error(e);
		} catch (IllegalAccessException e) {
			log.error(e);
		}

		initForm(form, request, object);
		refrenceData(request);
		return mapping.findForward(NEW);
	}

	/**
	 * View modifying form.
	 */
	public ActionForward edit(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// the token of avoiding to submitting by repeat
		saveToken(request);
		T object = null;

		// If edit，id!=null
		if (request.getParameter(idName) != null) {
			object = doGetEntity(form, request);
			if (object == null) {
				saveError(request, "entity.missing");
				return mapping.findForward(LIST);
			}
		} else {
			try {
				object = entityClass.newInstance();
			} catch (InstantiationException e) {
				log.error(e);
			} catch (IllegalAccessException e) {
				log.error(e);
			}
		}

		initForm(form, request, object);
		refrenceData(request);
		return mapping.findForward(EDIT);
	}

	/**
	 * View form (can not be modified).
	 */
	public ActionForward view(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		T object = doGetEntity(form, request);
		if (object == null) {
			saveError(request, "entity.missing");
			return mapping.findForward("list");
		}
		request.setAttribute(getEntityName(), object);
		refrenceData(request);
		return mapping.findForward(VIEW);
	}

	/**
	 * save form.
	 */
	public ActionForward save(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		if (isCancelled(request))
			return list(mapping, form, request, response);
		if (!isTokenValid(request)) {
			saveDirectlyError(request, "Repeated submission!");
			return mapping.findForward(LIST);
		}
		resetToken(request);

		// run validation rules on this form
		ActionMessages errors = form.validate(mapping, request);
		if (!errors.isEmpty()) {
			saveErrors(request, errors);
			refrenceData(request);
			return mapping.findForward(EDIT);
		}

		T object;
		// If edit，id is not blank
		if (StringUtils.isNotBlank(request.getParameter(idName))) {
			saveError(request, "entity.id must be null.");
			return mapping.findForward(LIST);
		} else { // Otherwise it is to create a new object.
			object = doNewEntity(form, request);
		}
		try {
			// bind lazy-form to object
			initEntity(form, request, object);
			doSaveEntity(form, request, object);
			savedMessage(request, object);
		} catch (Exception e) {
			log.error(e.getMessage(), e);
			saveDirectlyError(request, e.getMessage());
			refrenceData(request);
			return mapping.findForward(EDIT);
		}
		return mapping.findForward(SUCCESS);
	}

	/**
	 * save form.
	 */
	public ActionForward update(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		if (isCancelled(request))
			return list(mapping, form, request, response);
		if (!isTokenValid(request)) {
			saveDirectlyError(request, "Repeated submission!");
			return mapping.findForward(LIST);
		}
		resetToken(request);

		// run validation rules on this form
		ActionMessages errors = form.validate(mapping, request);
		if (!errors.isEmpty()) {
			saveErrors(request, errors);
			refrenceData(request);
			return mapping.findForward(EDIT);
		}

		T object;
		// If edit，id is not blank
		if (StringUtils.isNotBlank(request.getParameter(idName))) {
			object = doGetEntity(form, request);
			if (object == null) {
				saveError(request, "entity.missing");
				return mapping.findForward(LIST);
			}
		} else {
			saveError(request, "entity.missing");
			return mapping.findForward(LIST);
		}
		try {
			// bind lazy-form to object
			initEntity(form, request, object);
			doUpdateEntity(form, request, object);
			savedMessage(request, object);
		} catch (Exception e) {
			log.error(e.getMessage(), e);
			saveDirectlyError(request, e.getMessage());
			refrenceData(request);
			return mapping.findForward(EDIT);
		}
		return mapping.findForward(SUCCESS);
	}

	/**
	 * delete one entity.
	 */
	public ActionForward delete(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			doDeleteEntity(form, request);
			deletedMessage(request);
		} catch (Exception e) {
			saveDirectlyError(request, e.getMessage());
		}
		return mapping.findForward(SUCCESS);
	}

	/**
	 * If there is no parameter in the url, run the method.
	 */
	@Override
	public ActionForward unspecified(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		return index(mapping, form, request, response);
	}

	/**
	 * When save form,initialize the fields of the Entity.
	 */
	protected void initEntity(ActionForm form, HttpServletRequest request,
			T object) {
		bindEntity(form, object);
		onInitEntity(form, request, object);
	}

	/**
	 * When view Form, initialize the fields of the Form.
	 */
	protected void initForm(ActionForm form, HttpServletRequest request,
			T object) {
		bindForm(form, object);
		onInitForm(form, request, object);
	}

	/**
	 * Get all of the business objects.
	 */
	protected List<T> doListEntity() {
		return getEntityManager().findAll();
	}

	/**
	 * create new business object.
	 */
	protected T doNewEntity(ActionForm form, HttpServletRequest request) {
		T object = null;
		try {
			object = getEntityClass().newInstance();
		} catch (Exception e) {
			log.error("Can't new Instance of entity.", e);
		}
		return object;
	}

	/**
	 * Get business object from back-end.
	 */
	protected T doGetEntity(ActionForm form, HttpServletRequest request) {
		Serializable id = getEntityId(request);
		return getEntityManager().get(id);
	}

	/**
	 * Save business object .
	 */
	protected void doSaveEntity(ActionForm form, HttpServletRequest request,
			T object) {
		getEntityManager().save(object);
	}

	/**
	 * Save business object .
	 */
	protected void doUpdateEntity(ActionForm form, HttpServletRequest request,
			T object) {
		getEntityManager().update(object);
	}

	/**
	 * Delete business object .
	 */
	protected void doDeleteEntity(ActionForm form, HttpServletRequest request) {
		Serializable id = getEntityId(request);
		getEntityManager().removeById(id);
	}

	/**
	 * Inject referencing objects.
	 */
	protected void refrenceData(HttpServletRequest request) {
	}

	/**
	 * When view form, set more properties to form.
	 */
	protected void onInitForm(ActionForm form, HttpServletRequest request,
			T object) {
	}

	/**
	 * When save Form,set more properties to business object.
	 */
	protected void onInitEntity(ActionForm form, HttpServletRequest request,
			T object) {
	}

	/**
	 * Generate the message of saving successful.
	 */
	protected void savedMessage(HttpServletRequest request, T object) {
		saveMessage(request, "entity.saved");
	}

	/**
	 * Generate the message of deleting successful.
	 */
	protected void deletedMessage(HttpServletRequest request) {
		saveMessage(request, "entity.deleted");
	}

	/**
	 * Get the object's name. The initial is lower case.
	 */
	protected String getEntityName() {
		return StringUtils.uncapitalize(ClassUtils
				.getShortName(getEntityClass()));
	}

	/**
	 * Get the objects' name. The initial is lower case.
	 */
	protected String getEntityListName() {
		return StringUtils.uncapitalize(ClassUtils
				.getShortName(getEntityClass()))
				+ "s";
	}

	/**
	 * Get id of entity from request, and judge its validity.
	 */
	public Serializable getEntityId(HttpServletRequest request) {
		String idString = request.getParameter(idName);
		try {
			return (Serializable) ConvertUtils.convert(idString, idClass);
		} catch (NumberFormatException e) {
			throw new IllegalArgumentException("Wrong when get id from request");
		}
	}
}
