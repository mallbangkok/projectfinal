package com.spring.admindeletestore;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminDeleteStoreController {
	@RequestMapping(value = "/admin-delete-stores", method = RequestMethod.GET)
	public ModelAndView loadAdminDeleteStorePage(HttpSession session , HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("my-properties");
		AdminDeleteStoreManager adm = new AdminDeleteStoreManager();
		String s = request.getParameter("storeid");
		long storeid = Long.parseLong(s);
		
		String message = adm.do_deleteStore(storeid);
		session.setAttribute("message", message);
		return mav;
	}
}
