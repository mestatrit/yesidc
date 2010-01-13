package cn.cetelem.track.audit.web.query;

/**
 * @author	<a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version	1.0
 * @Creationdate:Dec 2, 2008 5:40:34 PM
 */

import java.io.Serializable;

public interface Filter extends Serializable {

	// order method
	public static final String ORDER_ASC = "ASC";

	public static final String ORDER_DESC = "DESC";

	public String buildFilter();

	public String buildOrder();
}