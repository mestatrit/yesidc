/**
 * $Id: ExtendCompactView.java,v 1.2 2007/10/22 08:28:57 abel Exp $
*/

package com.yesibc.core.components.extremetable;

import org.extremecomponents.table.core.TableModel;
import org.extremecomponents.table.view.CompactView;

/**
 * @author David.ye o_olle_e@hotmail.com
 * create time: Oct 21, 2007 10:12:32 PM
 */
public class ExtendCompactView extends CompactView{

	/* (non-Javadoc)
	 * @see org.extremecomponents.table.view.CompactView#afterBodyInternal(org.extremecomponents.table.core.TableModel)
	 */
	@Override
	protected void afterBodyInternal(TableModel model) {
	       getTableBuilder().tableStart();

	        getTableBuilder().theadStart();
	        
	        getTableBuilder().titleRowSpanColumns();

	        
	        getTableBuilder().filterRow();

	        getTableBuilder().headerRow();

	        getTableBuilder().theadEnd();

	        getTableBuilder().tbodyStart();
	        toolbar(getHtmlBuilder(), getTableModel());
	}

	/* (non-Javadoc)
	 * @see org.extremecomponents.table.view.CompactView#beforeBodyInternal(org.extremecomponents.table.core.TableModel)
	 */
	@Override
	protected void beforeBodyInternal(TableModel model) {
        getCalcBuilder().defaultCalcLayout();

        getTableBuilder().tbodyEnd();

        getTableBuilder().tableEnd();
	}

}
