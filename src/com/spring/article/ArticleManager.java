package com.spring.article;

import java.util.ArrayList;
import java.util.List;

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
	
	public String doHibernateUpdateArticle(Article article) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(article);
			session.getTransaction().commit();
			session.close();
			return "Update Article Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Update !!!";
		}
	}
	
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
}
