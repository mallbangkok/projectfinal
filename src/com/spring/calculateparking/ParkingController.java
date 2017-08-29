package com.spring.calculateparking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ParkingController {
	@RequestMapping(value = "/user-calculate-parking", method = RequestMethod.GET)
	public ModelAndView loadPageCalculateParking() {
		ModelAndView mav = new ModelAndView("user-calculateparking");
		return mav;
	}

}
