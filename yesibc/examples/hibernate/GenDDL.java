package hibernate;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;
//import org.hibernate.tool.hbm2ddl.SchemaUpdate;

public class GenDDL {

	public static void main(String[] args) throws Exception {

		// Configuration cfg = new Configuration().addClass(Company.class)
		// .addClass(ComContactHeader.class).addClass(ComContactInfo.class)
		// .addClass(ComEmail.class).addClass(Code.class);

		Configuration cfg = new Configuration();
		cfg.configure().buildSessionFactory();
		/**
		 * 1.boolean put ddl to console.
		 * 2.boolean execute to DB.
		 */
		new SchemaExport(cfg).create(true, false);
		
		//new SchemaUpdate(cfg).execute(true, false);
		// export.drop(true, true);


	}
}
