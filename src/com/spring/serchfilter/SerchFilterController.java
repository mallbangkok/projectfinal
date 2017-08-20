package com.spring.serchfilter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SerchFilterController {
	@RequestMapping(value = "/loadserchfilter", method = RequestMethod.GET)
	public ModelAndView loadPageSerch() {
		ModelAndView mav = new ModelAndView("index-slider-horizontal-search-box-floated");
		System.out.println("OK");
		System.out.println("OK");
		System.out.println("OK");
		return mav;

	}

}
