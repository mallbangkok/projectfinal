package com.spring.model;


import javax.persistence.*;

@Entity
@Table(name = "article")
public class Article {
	@Id @GeneratedValue
	@Column(name = "article_id")
	private long articleid;
	private String articlename;
	private String filename;
	private String articledatetime;
	private int articlestatus;
	private String articletype;
	
	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Article(String articlename, String filename, String articledatetime, int articlestatus , String articletype) {
		super();
		this.articlename = articlename;
		this.filename = filename;
		this.articledatetime = articledatetime;
		this.articlestatus = articlestatus;
		this.articletype = articletype;
	}
	
	public Article(long articleid ,String articlename, String filename, String articledatetime, int articlestatus , String articletype) {
		super();
		this.articleid = articleid;
		this.articlename = articlename;
		this.filename = filename;
		this.articledatetime = articledatetime;
		this.articlestatus = articlestatus;
		this.articletype = articletype;
	}
	
	public long getArticleid() {
		return articleid;
	}

	public void setArticleid(long articleid) {
		this.articleid = articleid;
	}

	public String getArticlename() {
		return articlename;
	}

	public void setArticlename(String articlename) {
		this.articlename = articlename;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getArticledatetime() {
		return articledatetime;
	}

	public void setArticledatetime(String articledatetime) {
		this.articledatetime = articledatetime;
	}

	public int getArticlestatus() {
		return articlestatus;
	}

	public void setArticlestatus(int articlestatus) {
		this.articlestatus = articlestatus;
	}

	public String getArticletype() {
		return articletype;
	}

	public void setArticletype(String articletype) {
		this.articletype = articletype;
	}
}
