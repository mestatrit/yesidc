package hibernate;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

import com.yesibc.email.model.MailSender;
import com.yesibc.email.model.MailServer;

public class GenDDL {

	public static void main(String[] args) throws Exception {

		Configuration cfg = new Configuration().configure("hibernate.cfg.xml").addClass(MailSender.class).addClass(MailServer.class);

		// Configuration cfg = new Configuration();
		// cfg.configure().buildSessionFactory();
		/**
		 * 1.boolean put ddl to console. 2.boolean execute to DB.
		 */
		new SchemaExport(cfg).create(true, false);

		// new SchemaUpdate(cfg).execute(true, false);
		// export.drop(true, true);

	}
}
