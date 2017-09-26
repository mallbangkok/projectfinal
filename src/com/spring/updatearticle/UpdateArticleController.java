package com.spring.updatearticle;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Article;

@Controller
public class UpdateArticleController {
	@RequestMapping(value = "/list-update-article", method = RequestMethod.GET)
	public ModelAndView loadAdminUpdatePage(HttpSession session, HttpServletRequest request) throws IOException {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView("admin-update-article");
		UpdateArticleManager uam = new UpdateArticleManager();
		
		String aid = request.getParameter("articleid");
		long articleid = Long.parseLong(aid);
		
		Article art = uam.isSelectedArticle(articleid);
		
		session.setAttribute("article", art);
		session.setAttribute("articleid", articleid);
		session.setAttribute("description", uam.readFile(art.getFilename()));
		return mav;
	}
	
	@RequestMapping(value = "/article-update", method = RequestMethod.POST)
	public ModelAndView do_addArticle(HttpServletRequest request, HttpSession session, Model md) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView("my-properties");
		UpdateArticleManager uam = new UpdateArticleManager();
		String articlename = request.getParameter("articlename");
		String content = request.getParameter("textarea");
		String articletype = request.getParameter("articletype");
		System.out.println(content);
		
		String aid = request.getParameter("article-id");
		long articleid = Long.parseLong(aid);
		
		String message = uam.isUpdateArticle(articleid, articlename, articlename+".txt", uam.getCurrentDate(), articletype, content);
		session.setAttribute("message", message);
		return mav;
	}
}
