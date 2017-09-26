package com.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.addmallcontroller.MallManager;
import com.spring.article.ArticleManager;
import com.spring.model.Mall;

@Controller
public class FullScreenMapController {
	@RequestMapping(value = "/index-google-map-fullscreen", method = RequestMethod.GET)
	public ModelAndView loadIndexPage(HttpSession session) {
		ModelAndView mav = new ModelAndView("index-google-map-fullscreen");
		MallManager mm = new MallManager();
		ArticleManager am = new ArticleManager();
		
		List<String> listType = mm.getMallType();
		List<String> listArea = mm.getMallArea();
		List<String> listArticleType = am.getArticleType();
		List<Mall> listMall = mm.getAllMalls();
		List<Mall> listMallLastedUpdate = new ArrayList<>();
		
		for(int i = 0;i < 4;i++){
			listMallLastedUpdate.add(listMall.get(listMall.size() - (i + 1)));
		}
		
		session.setAttribute("mallupdated", listMallLastedUpdate);
		session.setAttribute("types", listType);
		session.setAttribute("areas", listArea);
		session.setAttribute("blogtype", listArticleType);
		return mav;
	}
}
