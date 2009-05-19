/**
 * $Id: JbpmUtils.java,v 1.2 2009/02/04 10:20:29 abel Exp $
 */
package com.yesibc.core.workflow.jbpm;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Session;
import org.jbpm.JbpmConfiguration;
import org.jbpm.JbpmContext;
import org.jbpm.context.def.VariableAccess;
import org.jbpm.context.exe.ContextInstance;
import org.jbpm.db.TaskMgmtSession;
import org.jbpm.graph.action.Script;
import org.jbpm.graph.def.ProcessDefinition;
import org.jbpm.graph.exe.ExecutionContext;
import org.jbpm.graph.exe.ProcessInstance;
import org.jbpm.graph.node.Fork;
import org.jbpm.taskmgmt.exe.TaskInstance;

import com.yesibc.core.spring.SpringContext;


/**
 * @author abel.ye
 * 
 */
public class JbpmUtils {

	private static final Log log = LogFactory.getLog(JbpmUtils.class);

	/**
	 * Get variable from ExecutionContext according to name.
	 * 
	 * @param executionContext
	 * @param name
	 * @return
	 */
	public static Object getVariableOfProcess(ExecutionContext executionContext, String name) {

		ContextInstance ci = executionContext.getContextInstance();
		if (ci != null) {
			return (Object) ci.getVariable(name);
		}
		return null;
	}

	public static JbpmContext getJbpmContext(boolean create) {
		JbpmConfiguration config = (JbpmConfiguration) SpringContext.getBean("jbpmConfiguration");
		if (create) {
			log.debug("create new JbpmContext~");
			return config.createJbpmContext();
		} else {
			return config.getCurrentJbpmContext();
		}
	}

	/**
	 * new ProcessInstance
	 * 
	 * @param name
	 * @return ProcessInstance
	 */
	public static ProcessInstance newProcessInstance(String name, JbpmContext jbpmContext) {
		ProcessDefinition pd = jbpmContext.getGraphSession().findLatestProcessDefinition(name);
		return new ProcessInstance(pd);
	}

	/**
	 * new ProcessInstance
	 * 
	 * @param name
	 * @return ProcessInstance
	 */
	public static ProcessDefinition findLatestProcessDefinition(String name, JbpmContext jbpmContext) {
		return jbpmContext.getGraphSession().findLatestProcessDefinition(name);
	}

	/**
	 * According to taskId, get pi
	 * 
	 * @param taskId
	 * @return
	 */
	public static ProcessInstance getProcessInstanceByTaskId(String taskId, JbpmContext jbpmContext) {
		TaskInstance ti = getTaskInstance(taskId, jbpmContext);
		return ti.getTaskMgmtInstance().getProcessInstance();
	}

	public static ProcessInstance getProcessInstanceByTaskId(Long taskId, JbpmContext jbpmContext) {
		TaskInstance ti = getTaskInstance(taskId, jbpmContext);
		return ti.getTaskMgmtInstance().getProcessInstance();
	}

	public static ContextInstance getContextInstance(String name, JbpmContext jbpmContext) {
		return newProcessInstance(name, jbpmContext).getContextInstance();
	}

	public static ContextInstance getContextInstanceByTaskId(String taskId, JbpmContext jbpmContext) {
		TaskInstance ti = getTaskInstance(taskId, jbpmContext);
		if (ti == null)
			return null;

		return ti.getTaskMgmtInstance().getProcessInstance().getContextInstance();
	}

	public static ContextInstance getContextInstanceByTaskId(Long taskId, JbpmContext jbpmContext) {
		TaskInstance ti = getTaskInstance(taskId, jbpmContext);
		if (ti == null)
			return null;
		return ti.getTaskMgmtInstance().getProcessInstance().getContextInstance();
	}

	public static TaskInstance createStartTaskInstance(ProcessInstance pi) {
		return pi.getTaskMgmtInstance().createStartTaskInstance();
	}

	public static Session getSession(JbpmContext jbpmContext) {
		return jbpmContext.getSessionFactory().openSession();
	}

	@SuppressWarnings("unchecked")
	public static List getQueryList(String hql, JbpmContext jbpmContext) {
		return getSession(jbpmContext).createQuery(hql).list();
	}

	public static TaskMgmtSession getTaskMgmt(JbpmContext jbpmContext) {
		return jbpmContext.getTaskMgmtSession();
	}

	public static TaskInstance loadTaskInstance(long taskId, JbpmContext jbpmContext) {
		return getTaskMgmt(jbpmContext).loadTaskInstance(taskId);
	}

	public static TaskInstance getTaskInstance(String taskId, JbpmContext jbpmContext) {
		if (StringUtils.isEmpty(taskId))
			return null;
		return jbpmContext.getTaskInstance(Long.parseLong(taskId));
	}

	public static TaskInstance getTaskInstance(long taskId, JbpmContext jbpmContext) {
		return jbpmContext.getTaskInstance(taskId);
	}

	@SuppressWarnings("unchecked")
	public static List<TaskInstance> findTaskInstances(String actorId, JbpmContext jbpmContext) {
		return getTaskMgmt(jbpmContext).findTaskInstances(actorId);
	}

	@SuppressWarnings("unchecked")
	public static List<TaskInstance> findPooledTaskInstances(String actorId, JbpmContext jbpmContext) {
		return getTaskMgmt(jbpmContext).findPooledTaskInstances(actorId);
	}

	public static void saveTaskInstance(TaskInstance ti, JbpmContext jbpmContext) {
		jbpmContext.save(ti);
	}

	/**
	 * Run fork by transition name
	 * 
	 * @param taskInstanceId
	 * 
	 * @param forkName
	 * 
	 * @param transitionNames
	 */
	@SuppressWarnings("unchecked")
	public void distributeForkNode(long taskInstanceId, String forkName, String[] transitionNames, Map taskVariables,
			JbpmContext jbpmContext) {
		TaskInstance taskInstance = jbpmContext.getTaskInstance(taskInstanceId);
		ProcessInstance processInstance = taskInstance.getTaskMgmtInstance().getProcessInstance();

		// create the script
		Script script = new Script();
		script.addVariableAccess(new VariableAccess("transitionNames", "write", null));

		StringBuffer tn = new StringBuffer(300);
		for (String s : transitionNames) {
			tn.append("  transitionNames.add(\"").append(s).append("\");");
		}

		script.setExpression("transitionNames = new ArrayList();" + tn.toString());

		// put the script in the forkName handler
		Fork fork = (Fork) processInstance.getProcessDefinition().getNode(forkName);
		fork.setScript(script);

		if (taskVariables != null && !taskVariables.isEmpty()) {
			taskInstance.addVariables(taskVariables);
		}

		taskInstance.end();
	}

	public static void closeJbpmContext(JbpmContext jbpmContext) {
		if (jbpmContext != null) {
			try {
				if (!jbpmContext.getConnection().isClosed()) {
					jbpmContext.close();
				}
			} catch (Exception e) {

			}
		}
	}

	/**
	 * @param pi
	 * @param jbpmContext
	 */
	public static void saveProcessInstance(ProcessInstance pi, JbpmContext jbpmContext) {
		jbpmContext.save(pi);
	}

}
