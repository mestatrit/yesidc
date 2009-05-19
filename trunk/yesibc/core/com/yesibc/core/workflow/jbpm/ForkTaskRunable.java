/**
 * 
 */
package com.yesibc.core.workflow.jbpm;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.jbpm.JbpmContext;
import org.jbpm.taskmgmt.exe.TaskInstance;

/**
 * @author Abel.Ye
 * 
 */
public class ForkTaskRunable implements Runnable {

	public static Map<String, Integer> map = new HashMap<String, Integer>();

	private static Log log = LogFactory.getLog(ForkTaskRunable.class);

	private String key = "";
	private String actorId = "";
	private int top = 0;

	public ForkTaskRunable(String key, String actorId, int top) {
		this.key = key;
		this.actorId = actorId;
		this.top = top;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Runnable#run()
	 */
	@SuppressWarnings("unchecked")
	public void run() {
		JbpmContext jbpmContext = JbpmUtils.getJbpmContext(true);
		try {
			List<TaskInstance> taskInstances = jbpmContext.getTaskList(actorId);
			for (TaskInstance ti : taskInstances) {
				log.info("task name=" + ti.getName() + ",task actor=" + ti.getActorId());
				ti.end();
			}
		} finally {
			JbpmUtils.closeJbpmContext(jbpmContext);
			putRunTag(key);
		}
	}

	public static int getRunTag(String key) {
		synchronized (map) {
			return map.get(key);
		}
	}

	public static void removeTag(String key) {
		map.remove(key);
	}

	private void putRunTag(String key) {
		if (top < 1) {
			return;
		}
		synchronized (map) {
			Integer i = map.get(key);
			log.info("ForkTaskRunable=" + key + ",value=" + i);
			if (i == null) {
				i = 0;
			}
			if (i == top) {
				return;
			}
			map.put(key, ++i);
		}

	}

}
