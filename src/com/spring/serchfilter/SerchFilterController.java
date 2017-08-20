package com.spring.serchfilter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SerchFilterController {
	@RequestMapping(value = "/serch-demo", method = RequestMethod.GET)
	public ModelAndView loadPageDemo() {
		ModelAndView mav = new ModelAndView("index-google-map-fullscreen");
		System.out.println("OK");
		System.out.println("OK");
		System.out.println("OK");
		return mav;

	}

}
