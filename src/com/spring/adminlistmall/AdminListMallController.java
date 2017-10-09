package com.spring.adminlistmall;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Mall;

@Controller
public class AdminListMallController {
	@RequestMapping(value = "/list-category-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListMallTypePage(HttpSession session) {
		ModelAndView mav = new ModelAndView("admin-list-category");
		
		AdminListMallManager almm = new AdminListMallManager();
		List<String> types = almm.getMallType();
		
		session.setAttribute("type", types);
		session.setAttribute("mPage", 1);
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
		
		AdminListMallManager alm = new AdminListMallManager();
		
		String type = request.getParameter("type");
		
		int mPages = this.countPages(type);
		List<Mall> listMalls = new ArrayList<>();
		
		for(Mall m : alm.getMalls()){
			if(type.equals(m.getType())){
				listMalls.add(m);
			}
		}
		
		session.setAttribute("mallPages", mPages);
		session.setAttribute("listMalls", listMalls);
		session.setAttribute("listMallSize", listMalls.size());
		return mav;
	}
	
	@RequestMapping(value = "/change-mall-page", method = RequestMethod.GET)
	public ModelAndView changedListMallPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-list-mall");
		
		String p = request.getParameter("page");
		System.out.println(p);
		
		int mPage = Integer.parseInt(p);
		session.setAttribute("mPage", mPage);
		return mav;
	}
	
	public int countPages(String type){
		AdminListMallManager alm = new AdminListMallManager();
		List<Mall> listMalls = new ArrayList<>();
		
		for(Mall m : alm.getMalls()){
			if(type.equals(m.getType())){
				listMalls.add(m);
			}
		}

		double value = listMalls.size() / 10.0;
		int mPages = (int) Math.ceil(value);
		return mPages;
	}
}
