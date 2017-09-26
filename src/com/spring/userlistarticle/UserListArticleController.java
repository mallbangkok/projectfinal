package com.spring.userlistarticle;

import java.io.*;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Article;

@Controller
public class UserListArticleController {
	@RequestMapping(value = "/blog", method = RequestMethod.GET)
	public ModelAndView loadListArticlePage(HttpServletRequest request, HttpSession session, Model md) throws IOException {
		ModelAndView mav = new ModelAndView("blog");
		UserListArticleManager am = new UserListArticleManager();
		
		String atype = request.getParameter("articletype");
		List<Article> listArticleByType = am.listTypeArticle(atype);
		
		session.setAttribute("articles", listArticleByType);
		return mav;
	}
	
	@RequestMapping(value = "/blog", method = RequestMethod.POST)
	public ModelAndView loadSelectedArticlePage(HttpServletRequest request, HttpSession session, Model md) throws IOException {
		ModelAndView mav = new ModelAndView("blog-detail");
		UserListArticleManager am = new UserListArticleManager();
		
		String aid = request.getParameter("valueClick");
		long articleid = Long.parseLong(aid);
		
		Article art = am.isSelectedArticle(articleid);
		
		session.setAttribute("article", art);
		session.setAttribute("filename", art.getFilename());
		return mav;
	}
}
