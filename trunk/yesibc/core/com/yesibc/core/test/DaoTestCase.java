/**
 * $Id: DaoTestCase.java,v 1.1 2007/10/22 08:28:57 abel Exp $
*/

package com.yesibc.core.test;

import org.springframework.test.AbstractTransactionalDataSourceSpringContextTests;

import com.yesibc.core.CoreConstants;

/**
 * @author Abel.Ye o_olle_e@hotmail.com
 * create time: Oct 10, 2007 9:29:24 AM
 */
public abstract class DaoTestCase extends AbstractTransactionalDataSourceSpringContextTests {
	/**
	 * @see AbstractTransactionalDataSourceSpringContextTests#getConfigLocations()
	 */
	@Override
	protected String[] getConfigLocations() {
		setAutowireMode(AUTOWIRE_BY_NAME);
		return new String[]{CoreConstants.DEFAULT_CONTEXT, CoreConstants.DEFAULT_TEST_CONTEXT};
	}
}
