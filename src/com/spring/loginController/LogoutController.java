package com.spring.loginController;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogoutController {
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView loadIndexPage(HttpSession session) {
		ModelAndView mav = new ModelAndView("index-google-map-fullscreen");
		session.invalidate();
		return mav;
	}
}
