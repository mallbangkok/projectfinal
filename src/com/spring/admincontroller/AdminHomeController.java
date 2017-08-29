package com.spring.admincontroller;

import java.io.UnsupportedEncodingException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.addmallcontroller.MallManager;
import com.spring.model.Mall;

@Controller
public class AdminHomeController {
	@RequestMapping(value = "/my-properties", method = RequestMethod.GET)
	public ModelAndView loadAdminPage(HttpSession session) {
		ModelAndView mav = new ModelAndView("my-properties");
		
		return mav;
	}
	
	@RequestMapping(value = "/list-category-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListPage(HttpSession session) {
		ModelAndView mav = new ModelAndView("my-properties");
		
		MallManager mm = new MallManager();
		List<String> types = mm.getMallType();
		
		session.setAttribute("type", types);
		return mav;
	}
	
	@RequestMapping(value = "/list-mall-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListMallPage(HttpSession session , HttpServletRequest request) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ModelAndView mav = new ModelAndView("admin-list-mall");
		
		MallManager mm = new MallManager();
		
		String type = request.getParameter("type");
		List<Mall> listMalls = new ArrayList<>();
		
		for(Mall m : mm.getAllMalls()){
			if(type.equals(m.getType())){
				listMalls.add(m);
			}
		}
		
		session.setAttribute("listMalls", listMalls);
		session.setAttribute("listMallSize", listMalls.size());
		return mav;
	}
}
