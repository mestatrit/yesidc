/**
 * $Id: StrutsGenericAction.java,v 1.4 2007/10/26 09:56:11 abel Exp $
 */

package com.yesibc.core.web;

import java.io.Serializable;
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
import org.springframework.util.ClassUtils;

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
public abstract class StrutsGenericAction<T> extends StrutsAction implements
		InitializingBean {

	protected static final String LIST = "list";

	protected static final String EDIT = "edit";

	protected static final String VIEW = "view";

	protected static final String ERROR_MESSAGE = "toMessage";

	protected Class<T> entityClass; // the entity type managed by Action.

	protected Class ID_CLASS = Long.class; // the type of the entity primary
	// key managed by Action.

	protected String ID_NAME = "id"; // the name of the entity primary key

	// managed by Action.

	/**
	 * get entityClass
	 */
	protected Class<T> getEntityClass() {
		return entityClass;
	}

	/**
	 * Call back function.Initialize generic parameters.
	 */
	public void afterPropertiesSet() {
		entityClass = GenericsUtils.getSuperClassGenricType(getClass());
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
		try {
			request.setAttribute(getEntityListName(), doListEntity(request));
		} catch (Exception e) {
			e.printStackTrace();
			log.error("list",e);
			this.saveError(request, e.getMessage());
			return mapping.findForward(ERROR_MESSAGE);
		}

		return mapping.findForward(LIST);
	}

	/**
	 * View new form (can be modified).
	 */
	public ActionForward create(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		return edit(mapping, form, request, response);
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
		if (request.getParameter(ID_NAME) != null) {
			try {
				object = doGetEntity(form, request);
			} catch (Exception e) {
				return mapping.findForward(ERROR_MESSAGE);
			}
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
		T object = null;
		try {
			object = doGetEntity(form, request);
		} catch (Exception e) {
			return mapping.findForward(ERROR_MESSAGE);
		}
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
		if (StringUtils.isNotBlank(request.getParameter(ID_NAME))) {
			try {
				object = doGetEntity(form, request);
			} catch (Exception e) {
				saveError(request, e.getMessage());
				return mapping.findForward(ERROR_MESSAGE);
			}
			if (object == null) {
				saveError(request, "entity.missing");
				return mapping.findForward(LIST);
			}
		} else { // Otherwise it is to create a new object.
			object = doNewEntity(form, request);
		}
		try {
			// bind lazy-form to object
			initEntity(form, request, object);
			doSaveEntity(form, request, object);
			savedMessage(request, object);
		} catch (Exception e) {
			e.printStackTrace();
			log.error(e.getMessage(), e);
			saveError(request, e.getMessage());
//			refrenceData(request);
			return mapping.findForward(ERROR_MESSAGE);
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
			e.printStackTrace();
			saveDirectlyError(request, e.getMessage());
			return mapping.findForward(ERROR_MESSAGE);
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
	 * 
	 * @throws Exception
	 * @throws Throwable
	 */
	protected List<T> doListEntity(HttpServletRequest request) throws Exception {
		return null;
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
	 * 
	 * @throws Exception
	 */
	protected T doGetEntity(ActionForm form, HttpServletRequest request)
			throws Exception {
		return null;
	}

	/**
	 * Save business object .
	 * 
	 * @throws Exception
	 */
	protected void doSaveEntity(ActionForm form, HttpServletRequest request,
			T object) throws Exception {

	}

	/**
	 * Delete business object .
	 */
	protected void doDeleteEntity(ActionForm form, HttpServletRequest request) throws Exception {

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
		saveError(request, "entity.saved");
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
	protected Serializable getEntityId(HttpServletRequest request) {
		String idString = request.getParameter(ID_NAME);
		try {
			return (Serializable) ConvertUtils.convert(idString, ID_CLASS);
		} catch (NumberFormatException e) {
			throw new IllegalArgumentException("Wrong when get id from request");
		}
	}
}
