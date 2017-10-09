package com.spring.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Login;


@Controller
public class LoginController {
	@RequestMapping(value = "/sign-in", method = RequestMethod.GET)
	public ModelAndView loadSignInPage() {
		ModelAndView mav = new ModelAndView("sign-in");
		return mav;
	}
	
	@RequestMapping(value = "/sign-in", method = RequestMethod.POST)
	public String do_Login(HttpServletRequest request, HttpSession session, Model md) {
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		Login user = new Login(uname,upass);
		LoginMannager lmg = new LoginMannager();
		String msg = lmg.doHibernateLogin(user);
		if ("Login Success".equals(msg)) {
			session.setAttribute("username", user.getUsername());
			session.setAttribute("password", user.getPassword());
			session.setMaxInactiveInterval(24*60*60);
			md.addAttribute("access_msg",msg);
			return "my-properties";
		} else {
			md.addAttribute("error_msg", msg);
			return "sign-in";
		}
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView loadIndexPage(HttpSession session) {
		ModelAndView mav = new ModelAndView("index");
		session.invalidate();
		return mav;
	}
}
