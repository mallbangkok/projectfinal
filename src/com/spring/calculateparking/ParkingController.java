package com.spring.calculateparking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ParkingController {
	@RequestMapping(value = "/parking-user", method = RequestMethod.GET)
	public ModelAndView loadPageCalculateParkingUser() {
		ModelAndView mav = new ModelAndView("parking-user");
		return mav;
	}

	@RequestMapping(value = "parking-admin", method = RequestMethod.GET)
	public ModelAndView loadPageCalculateParkingAdmin() {
		ModelAndView mav = new ModelAndView("parking-admin");
		return mav;
	}

}
