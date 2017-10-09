package com.spring.admin.addstamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AddStampController {
	@RequestMapping(value = "add-stamp-parking", method = RequestMethod.GET)
	public ModelAndView addStamp(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin-parking");
		return mav;
	}



	@RequestMapping(value = "add-condition-parking-stamp", method = RequestMethod.GET)
	public ModelAndView addStamp(HttpSession session, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin-parking");
		AddStampManager pm = new AddStampManager();
		String nameMall = request.getParameter("nameMalls");
		String con = request.getParameter("con4");
		String price = request.getParameter("price4");
		String freeHour = request.getParameter("freeHour");
		System.out.println(pm.doAddStamp(nameMall, price, freeHour, con));

		return mav;
	}
//	@RequestMapping(value = "updateCondition", method = RequestMethod.GET)
//	public ModelAndView updateCondition(HttpServletRequest request) {
//		ModelAndView mav = new ModelAndView("admin-parkign");
//		return mav;
//	}
}
