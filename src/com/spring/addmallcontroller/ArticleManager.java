package com.spring.addmallcontroller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.Article;
import com.spring.model.HibernateConnection;

public class ArticleManager {
	public String doHibernateAddArticle(Article article) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(article);
			session.getTransaction().commit();
			session.close();
			return "Add Article Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Article !!!";
		}
	}
}
