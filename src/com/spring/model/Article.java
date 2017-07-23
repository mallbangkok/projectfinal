package com.spring.model;

import java.util.*;

import javax.persistence.*;

@Entity
@Table(name = "article")
public class Article {
	@Id
	@GeneratedValue
	private long articleId;
	private String articleTitile;
	private String articleContent;
	private String articleDateTime;
	private String articleStatus;
	
	@OneToMany(cascade = CascadeType.ALL , mappedBy = "article")
	private Set<ImageArticle> articleImages = new HashSet<ImageArticle>();

	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Article(String articleTitile, String articleContent, String articleDateTime, String articleStatus) {
		super();
		this.articleTitile = articleTitile;
		this.articleContent = articleContent;
		this.articleDateTime = articleDateTime;
		this.articleStatus = articleStatus;
	}

	public String getArticleTitile() {
		return articleTitile;
	}

	public void setArticleTitile(String articleTitile) {
		this.articleTitile = articleTitile;
	}

	public String getArticleContent() {
		return articleContent;
	}

	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}

	public String getArticleDateTime() {
		return articleDateTime;
	}

	public void setArticleDateTime(String articleDateTime) {
		this.articleDateTime = articleDateTime;
	}

	public String getArticleStatus() {
		return articleStatus;
	}

	public void setArticleStatus(String articleStatus) {
		this.articleStatus = articleStatus;
	}

	public Set<ImageArticle> getArticleImages() {
		return articleImages;
	}

	public void setArticleImages(Set<ImageArticle> articleImages) {
		this.articleImages = articleImages;
	}
}
