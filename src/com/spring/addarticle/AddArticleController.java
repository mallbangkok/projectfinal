package com.spring.addarticle;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AddArticleController {
	@RequestMapping(value = "/article", method = RequestMethod.GET)
	public ModelAndView loadArticlePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("article");
		return mav;
	}
	
	@RequestMapping(value = "/article", method = RequestMethod.POST)
	public ModelAndView do_addArticle(HttpServletRequest request, HttpSession session, Model md) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ModelAndView mav = new ModelAndView("my-properties");
		AddArticleManager aam = new AddArticleManager();
		String articlename = request.getParameter("articlename");
		String content = request.getParameter("textarea");
		String articletype = request.getParameter("articletype");
		System.out.println(content);
		
		String message = aam.isAddArticle(articlename, articlename+".txt", aam.getCurrentDate(), articletype, content);
		session.setAttribute("message", message);
		return mav;
	}
}
