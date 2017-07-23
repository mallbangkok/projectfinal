package com.spring.model;

import javax.persistence.*;

@Entity
@Table(name = "imagearticle")
public class ImageArticle {
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private long imageId;
	private String imageName;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "articleId")
	private Article article;
	
	public ImageArticle() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ImageArticle(String imageName) {
		super();
		this.imageName = imageName;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
}
