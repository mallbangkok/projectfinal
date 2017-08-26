package com.spring.searchcustom;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SearchCustomController {
	@RequestMapping(value = "/index-slider-search-box", method = RequestMethod.GET)
	public ModelAndView loadSignInPage() {
		ModelAndView mav = new ModelAndView("index-slider-search-box");
		return mav;
	}
}
