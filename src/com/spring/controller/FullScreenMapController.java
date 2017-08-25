package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FullScreenMapController {
	@RequestMapping(value = "/index-google-map-fullscreen", method = RequestMethod.GET)
	public ModelAndView loadIndexPage() {
		ModelAndView mav = new ModelAndView("index-google-map-fullscreen");
		return mav;
	}
}
