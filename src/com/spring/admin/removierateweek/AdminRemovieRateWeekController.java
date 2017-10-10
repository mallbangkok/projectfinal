package com.spring.admin.removierateweek;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class AdminRemovieRateWeekController {
	@RequestMapping(value = "/admin-delete-rate", method = RequestMethod.GET)
	public ModelAndView removeRateOfCondition(HttpServletRequest request, HttpSession session, Model md) {
		String message ="";
		ModelAndView mav = new ModelAndView("my-properties");
		AdminRemovieRateWeekManager upm = new AdminRemovieRateWeekManager();
		String weekId = request.getParameter("rateid");
		message=upm.removeRateOfCondition(Integer.parseInt(weekId));
		md.addAttribute("message",message);
		return mav;
	}

}
