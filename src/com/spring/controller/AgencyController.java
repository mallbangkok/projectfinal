package com.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.addmall.AddMallManager;

@Controller
public class AgencyController {
	@RequestMapping(value = "/agency-detail", method = RequestMethod.GET)
	public ModelAndView loadAgencyPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("agency-detail");
		AddMallManager mm = new AddMallManager();
		
		return mav;
	}
}
