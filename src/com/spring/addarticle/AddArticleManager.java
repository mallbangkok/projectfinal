package com.spring.addarticle;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.Article;
import com.spring.model.HibernateConnection;

public class AddArticleManager {
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
	
	public String isAddArticle(String articlename, String filename, String articledatetime, String articletype,String content){
		String message = "";
		Article article = new Article(articlename,filename,getCurrentDate(),0,articletype);
		message = this.doHibernateAddArticle(article);
		System.out.println(message);
		
		saveFile(articlename,content);
		return message;
	}
	
	public void saveFile(String filename,String content){
		String FILENAME = "C:\\Users\\demon\\Documents\\GitHub\\projectfinal\\WebContent\\WEB-INF\\assets\\article\\" + filename + ".txt";
		
		try (BufferedWriter bw = new BufferedWriter(new FileWriter(FILENAME))) {
			bw.write(content);
			// no need to close it.
			bw.close();
			System.out.println("Write File Successfully...");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public String readFile(String filename) throws IOException{
		BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\demon\\Documents\\GitHub\\projectfinal\\WebContent\\WEB-INF\\assets\\article\\" + filename));
		try {
		    StringBuilder sb = new StringBuilder();
		    String line = br.readLine();

		    while (line != null) {
		        sb.append(line);
		        sb.append(System.lineSeparator());
		        line = br.readLine();
		    }
		    String everything = sb.toString();
		    return everything;
		} finally {
		    br.close();
		}
	}
	
	public String getCurrentDate(){
		SimpleDateFormat sdf = new SimpleDateFormat("MMM-dd-yyyy" , Locale.ENGLISH);
		String date = sdf.format(new Date());
		return date;
	}
}
