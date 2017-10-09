package com.spring.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Login;

@Controller
public class AdminProfileController {
	@RequestMapping(value = "/admin-profile", method = RequestMethod.GET)
	public ModelAndView loadAdminProfilePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-profile");
		AdminProfileManager apm = new AdminProfileManager();
		
		Login login = apm.getAllLogin().get(0);
		session.setAttribute("admin", login);
		return mav;
	}
	
	@RequestMapping(value = "/admin-profile", method = RequestMethod.POST)
	public ModelAndView do_updateAdminProfile(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("my-properties");
		AdminProfileManager apm = new AdminProfileManager();
		
		String uname = request.getParameter("newusername");
		String upass = request.getParameter("newpassword");
		String message = "";
		
		message = apm.doHibernateUpdateLogin(uname,upass);
		System.out.println(message);
		md.addAttribute("message",message);
		return mav;
	}
}
