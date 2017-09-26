package com.spring.adminlistarticle;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.Article;
import com.spring.model.HibernateConnection;

public class AdminListArticleManager {
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
	
	@SuppressWarnings("unchecked")
	public List<String> getArticleType() {
		List<String> list = new ArrayList<String>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("select distinct(articletype) from Article").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Article> listTypeArticle(String atype){
		List<Article> listArticle = this.getAllArticle();
		List<Article> listArticleByType = new ArrayList<>();
		for(Article a : listArticle){
			if(atype.equals(a.getArticletype())){
				listArticleByType.add(a);
			}
		}
		return listArticleByType;
	}
	
	public List<Article> listArticle(){
		List<Article> listArticle = new ArrayList<>();
		for (Article a : this.getAllArticle()) {
			listArticle.add(a);
		}
		return listArticle;
	}
	
	public Article isSelectedArticle(long articleid){
		Article art = null;
		for(Article a : this.getAllArticle()){
			if(articleid == a.getArticleid()){
				art = a;
			}
		}
		return art;
	}
}
