package com.spring.admindeletearticle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminDeleteArticleController {
	@RequestMapping(value = "/admin-delete-article", method = RequestMethod.GET)
	public ModelAndView loadAdminDeleteArticlePage(HttpSession session , HttpServletRequest request,Model md) {
		ModelAndView mav = new ModelAndView("my-properties");
		AdminDeleteArticleManager adm = new AdminDeleteArticleManager();
		String a = request.getParameter("articleid");
		long articleid = Long.parseLong(a);
		
		String message = adm.do_deleteArticle(articleid);
		md.addAttribute("message",message);
		return mav;
	}
}
