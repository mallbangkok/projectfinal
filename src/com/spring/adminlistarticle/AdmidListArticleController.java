package com.spring.adminlistarticle;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Article;

@Controller
public class AdmidListArticleController {
	@RequestMapping(value = "/list-mall-article", method = RequestMethod.GET)
	public ModelAndView loadAdminListArticle(HttpSession session, HttpServletRequest request) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		ModelAndView mav = new ModelAndView("admin-list-article");

		AdminListArticleManager am = new AdminListArticleManager();
		List<Article> listArticle = am.listArticle();

		session.setAttribute("listArticle", listArticle);
		session.setAttribute("listArticleSize", listArticle.size());
		return mav;
	}
}
