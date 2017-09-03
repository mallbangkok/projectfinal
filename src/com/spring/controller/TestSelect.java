package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestSelect {
	@RequestMapping(value = "/test-select", method = RequestMethod.GET)
	public ModelAndView loadSignInPage() {
		ModelAndView mav = new ModelAndView("test-select");
		return mav;
	}
}
