package com.spring.model;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateConnection {
	public static SessionFactory sessionFactory;

	public static SessionFactory doHibernateConnection() {
		Properties database = new Properties();
		database.setProperty("hibernate.connection.driver_class", "com.mysql.jdbc.Driver");
		database.setProperty("hibernate.connection.username", "root");
		database.setProperty("hibernate.connection.password", "1234");
		database.setProperty("hibernate.connection.url", "jdbc:mysql://localhost:3306/mallbangkok");
		database.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");

<<<<<<< HEAD
		Configuration cfg = new Configuration().setProperties(database)
				.addPackage("com.spring.model")
				.addAnnotatedClass(Login.class)
				.addAnnotatedClass(Mall.class)
				.addAnnotatedClass(Facilities.class)
				.addAnnotatedClass(Article.class)
				.addAnnotatedClass(Store.class);
		StandardServiceRegistryBuilder ssrd = new StandardServiceRegistryBuilder()
				.applySettings(cfg.getProperties());
=======
		Configuration cfg = new Configuration().setProperties(database).addPackage("com.spring.model")
				.addAnnotatedClass(Login.class).addAnnotatedClass(Mall.class).addAnnotatedClass(Facilities.class)
				.addAnnotatedClass(Article.class).addAnnotatedClass(ImageArticle.class).addAnnotatedClass(Store.class)
				.addAnnotatedClass(ConditionOfParking.class);
		StandardServiceRegistryBuilder ssrd = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties());
>>>>>>> d8eccad5b2854a6ea75c4d7bf0fec6db60aec546
		sessionFactory = cfg.buildSessionFactory(ssrd.build());
		return sessionFactory;
	}
}
