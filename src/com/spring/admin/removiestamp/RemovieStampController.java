package com.spring.admin.removiestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RemovieStampController {
	@RequestMapping(value = "/admin-delete-stamp", method = RequestMethod.GET)
	public ModelAndView deleteStamp(HttpServletRequest request, HttpSession session, Model md) {
		String message = "";
		ModelAndView mav = new ModelAndView("my-properties");
		RemovieStampManager upm = new RemovieStampManager();
		String id = request.getParameter("stampid");
		message = upm.removeStamp(Integer.parseInt(id));
		md.addAttribute("message", message);
		return mav;
	}
}
