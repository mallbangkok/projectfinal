package com.spring.admindeletemall;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminDeleteMallController {
	@RequestMapping(value = "/admin-delete-mall", method = RequestMethod.GET)
	public ModelAndView loadAdminDeleteMallPage(HttpSession session , HttpServletRequest request, Model md) {
		ModelAndView mav = new ModelAndView("my-properties");
		AdminDeleteMallManager adm = new AdminDeleteMallManager();
		String m = request.getParameter("mallid");
		long mallid = Long.parseLong(m);
		
		String message = adm.do_deleteMall(mallid);
		md.addAttribute("message",message);
		return mav;
	}
}
