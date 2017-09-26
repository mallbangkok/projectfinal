package com.spring.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.login.AddUserManager;
import com.spring.login.LoginMannager;
import com.spring.model.Login;

@Controller
public class AdminProfileController {
	@RequestMapping(value = "/admin-profile", method = RequestMethod.GET)
	public ModelAndView loadAdminProfilePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-profile");
		LoginMannager lm = new LoginMannager();
		
		Login login = lm.getAllLogin().get(0);
		session.setAttribute("admin", login);
		return mav;
	}
	
	@RequestMapping(value = "/admin-profile", method = RequestMethod.POST)
	public ModelAndView do_updateAdminProfilePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("my-properties");
		AddUserManager aum = new AddUserManager();
		
		String uname = request.getParameter("newusername");
		String upass = request.getParameter("newpassword");
		
		Login login = new Login(uname,upass);
		System.out.println(aum.doHibernateUpdateUser(login));
		
		return mav;
	}
}
