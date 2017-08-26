package com.spring.logincontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.addmallcontroller.FacilitiesManager;
import com.spring.model.Facilities;
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
		FacilitiesManager fm = new FacilitiesManager();
		String msg = lmg.doHibernateLogin(user);
		if ("Login Success".equals(msg)) {
			session.setAttribute("username", user.getUsername());
			session.setAttribute("password", user.getPassword());
			for(int i = 0;i < lmg.getAllLogin().size();i++){
				if(uname.equals(lmg.getAllLogin().get(i).getUsername())){
					//session.setAttribute("custid", lmg.getAllLogin().get(i).getCustomer().getCustomerId());
				}
			}
			List<Facilities> list = fm.getAllFacilities();
			session.setMaxInactiveInterval(24*60*60);
			session.setAttribute("list", list);
			md.addAttribute("access_msg",msg);
			//md.addAttribute("list",list);
			return "my-properties";
		} else {
			md.addAttribute("error_msg", msg);
			return "sign-in";
		}
	}
}
