package cn.cetelem.track.audit.web.query;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.lang.StringUtils;

/**
 * @author <a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version 1.0
 * @Creationdate:Dec 2, 2008 5:42:59 PM
 */

public class MainAuditQueryFilter implements Filter {

	private static final long serialVersionUID = 1L;

	// table column
	public static final String LOG_ID = "LOG_ID";

	public static final String REQUEST_ID = "REQUEST_ID";

	public static final String APP_ID = "APP_ID";

	public static final String WORKFLOW_ID = "WORKFLOW_ID";

	public static final String STEP_ID = "STEP_ID";

	public static final String DES_STATUS = "DES_STATUS";

	public static final String LOG_DATE_TIME = "LOG_DATE_TIME";

	//
	private String sqlDateFormate = "yyyy-MM-dd HH24:mi:ss";

	private String dateFormate = "yyyy-MM-dd HH:mm:ss";

	private List orderList = new ArrayList();

	public MainAuditQueryFilter() {
	}

	public String getDateFormate() {
		return dateFormate;
	}

	public void setDateFormate(String dateFormate) {
		this.dateFormate = dateFormate;
	}

	public String getSqlDateFormate() {
		return sqlDateFormate;
	}

	public void setSqlDateFormate(String sqlDateFormate) {
		this.sqlDateFormate = sqlDateFormate;
	}

	// Form Fields
	private String logId;
	private String requestId;
	private String appId;
	private String workflowId;
	private String stepId;
	private String desStatus;
	private Date logDateTime;

	// customed criteria
	private String specialCriteria;

	public String buildFilter() {
		SimpleDateFormat sf = new SimpleDateFormat(dateFormate);
		StringBuffer sb = new StringBuffer();
		if (StringUtils.isNotBlank(logId)) {
			if (sb.length() > 0) {
				sb.append(" and ");
			}
			sb.append(" " + LOG_ID + " = " + logId + " ");
		}

		if (StringUtils.isNotBlank(requestId)) {
			if (sb.length() > 0) {
				sb.append(" and ");
			}
			sb.append(" " + REQUEST_ID + " = " + "'" + requestId + "'");
		}
		
		if (StringUtils.isNotBlank(appId)) {
			if (sb.length() > 0) {
				sb.append(" and ");
			}
			sb.append(" " + APP_ID + " = " + "'" + appId + "'");
		}
		
		if (StringUtils.isNotBlank(workflowId)) {
			if (sb.length() > 0) {
				sb.append(" and ");
			}
			sb.append(" " + WORKFLOW_ID + " = " + "'" + workflowId + "'");
		}
		
		if (StringUtils.isNotBlank(stepId)) {
			if (sb.length() > 0) {
				sb.append(" and ");
			}
			sb.append(" " + STEP_ID + " = " + "'" + stepId + "'");
		}
		
		if (StringUtils.isNotBlank(desStatus)) {
			if (sb.length() > 0) {
				sb.append(" and ");
			}
			sb.append(" " + DES_STATUS + " = " + "'" + desStatus + "'");
		}

		if (logDateTime != null) {
			if (sb.length() > 0) {
				sb.append(" and ");
			}
			String timeStr = sf.format(logDateTime);
			sb.append(" " + LOG_DATE_TIME + " >= " + "TO_DATE(\'" + timeStr
					+ "\',\'" + sqlDateFormate + "\')");
		}

		//
		if (StringUtils.isNotBlank(specialCriteria)) {
			sb.append(" and " + specialCriteria);
		}

		return sb.toString();
	}

	private String stringRangeList(String field, List values) {
		StringBuffer buf = new StringBuffer();
		buf.append(" " + field + " in (");
		int ln = values.size();
		for (int i = 0; i < ln; i++) {
			if (i != 0)
				buf.append(",");
			buf.append("'" + values.get(i) + "'");
		}
		buf.append(") ");
		return buf.toString();
	}

	private String stringNotRangeList(String field, List values) {
		StringBuffer buf = new StringBuffer();
		buf.append(" " + field + " not in (");
		int ln = values.size();
		for (int i = 0; i < ln; i++) {
			if (i != 0)
				buf.append(",");
			buf.append("'" + values.get(i) + "'");
		}
		buf.append(") ");
		return buf.toString();
	}

	public String buildOrder() {
		StringBuffer sb = new StringBuffer();
		if (this.orderList != null) {
			for (Iterator iter = orderList.iterator(); iter.hasNext();) {
				OrderBy order = (OrderBy) iter.next();
				if (sb.length() > 0) {
					sb.append(",");
				}
				sb.append(order.getColumn());
				sb.append(" ");
				sb.append(order.getSort());
			}
		}
		return sb.toString();
	}

	public void setOrderBy(String column, String sort) {
		OrderBy order = new OrderBy(column, sort);
		this.orderList.clear();
		this.orderList.add(order);
	}

	public String toString() {
		return this.buildFilter();
	}

	class OrderBy implements Serializable {

		private static final long serialVersionUID = 1L;

		private String column;

		private String sort;

		public OrderBy(String column, String sort) {
			this.column = column;
			this.sort = sort;
		}

		public String getColumn() {
			return column;
		}

		public void setColumn(String column) {
			this.column = column;
		}

		public String getSort() {
			return sort;
		}

		public void setSort(String sort) {
			this.sort = sort;
		}

		public String toString() {
			return "column:" + column + " sort:" + sort;
		}

	}

	public List getOrderList() {
		return orderList;
	}

	private void setOrderList(List orderList) {
		this.orderList = orderList;
	}

	public String getSpecialCriteria() {
		return specialCriteria;
	}

	public void setSpecialCriteria(String specialCriteria) {
		this.specialCriteria = specialCriteria;
	}

	/**
	 * Main test
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		MainAuditQueryFilter filter = new MainAuditQueryFilter();
		// filter.setId("431414");
		// filter.setDepId("1234");
		// filter.setDepName("IT");
		// filter.setCreateTime(new Date());
		// filter.setDepAdmin("jimmy");
		// filter.setLastUpdateTime(new Date());
		// filter.setOrderBy(UserQueryFilter.CREATE_TIME,
		// UserQueryFilter.ORDER_DESC);
		// filter.setOrderBy(UserQueryFilter.DEP_ID,
		// UserQueryFilter.ORDER_DESC);
		System.out.println(filter.buildFilter());
		System.out.println(filter.buildOrder());

	}

	public String getLogId() {
		return logId;
	}

	public void setLogId(String logId) {
		this.logId = logId;
	}

	public String getRequestId() {
		return requestId;
	}

	public void setRequestId(String requestId) {
		this.requestId = requestId;
	}

	public String getAppId() {
		return appId;
	}

	public void setAppId(String appId) {
		this.appId = appId;
	}

	public String getWorkflowId() {
		return workflowId;
	}

	public void setWorkflowId(String workflowId) {
		this.workflowId = workflowId;
	}

	public String getStepId() {
		return stepId;
	}

	public void setStepId(String stepId) {
		this.stepId = stepId;
	}

	public String getDesStatus() {
		return desStatus;
	}

	public void setDesStatus(String desStatus) {
		this.desStatus = desStatus;
	}

	public Date getLogDateTime() {
		return logDateTime;
	}

	public void setLogDateTime(Date logDateTime) {
		this.logDateTime = logDateTime;
	}

	

}
