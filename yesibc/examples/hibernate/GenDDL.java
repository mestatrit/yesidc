package hibernate;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class GenDDL {

	public static void main(String[] args) throws Exception {

		// Configuration cfg = new Configuration().addClass(Company.class)
		// .addClass(ComContactHeader.class).addClass(ComContactInfo.class)
		// .addClass(ComEmail.class).addClass(Code.class);

		Configuration cfg = new Configuration();
		cfg.configure().buildSessionFactory();
		new SchemaExport(cfg).create(true, false);

	}
}
