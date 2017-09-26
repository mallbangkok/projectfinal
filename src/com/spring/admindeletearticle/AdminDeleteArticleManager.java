package com.spring.admindeletearticle;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.Article;
import com.spring.model.HibernateConnection;

public class AdminDeleteArticleManager {
	@SuppressWarnings("unchecked")
	public List<Article> getAllArticle() {
		List<Article> list = new ArrayList<Article>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from Article").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public String do_deleteArticle(long articleid) {
		try {
			String message = "";
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();

			for (Article a : this.getAllArticle()) {
				if (articleid == a.getArticleid()) {
					session.delete(a);
					message = "Delete Article Successfully...";
					break;
				} else {
					message = "Cannot Delete , You don't have article id " + articleid;
				}
			}
			session.getTransaction().commit();
			session.close();
			return message;
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Delete Article !!!";
		}
	}
}
