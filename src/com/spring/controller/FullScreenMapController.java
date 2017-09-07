package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.addmallcontroller.MallManager;

@Controller
public class FullScreenMapController {
	@RequestMapping(value = "/index-google-map-fullscreen", method = RequestMethod.GET)
	public ModelAndView loadIndexPage(HttpSession session) {
		ModelAndView mav = new ModelAndView("index-google-map-fullscreen");
		MallManager mm = new MallManager();
		List<String> listType = mm.getMallType();
		session.setAttribute("types", listType);
		
		for(String s : listType){
			System.out.println(s);
		}
		
		return mav;
	}
}
