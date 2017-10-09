package com.spring.admin.removiecondition;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RemovieConditionController {
	@RequestMapping(value = "/admin-delete-condition", method = RequestMethod.GET)
	public ModelAndView removeCondition(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("my-properties");
		RemoveConditionManager upm = new RemoveConditionManager();
		String conId = request.getParameter("conditionid");
		System.out.println(upm.removeCondition(Integer.parseInt(conId)));
		
		return mav;
	}

}
