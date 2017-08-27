package com.spring.addMallController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminHomeController {
	@RequestMapping(value = "/my-properties", method = RequestMethod.GET)
	public ModelAndView loadAddMallPage() {
		ModelAndView mav = new ModelAndView("my-properties");
		return mav;
	}
}
