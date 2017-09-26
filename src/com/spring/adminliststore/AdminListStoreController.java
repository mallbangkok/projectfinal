package com.spring.adminliststore;

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
import com.spring.model.Store;

@Controller
public class AdminListStoreController {
	@RequestMapping(value = "/list-store-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListStorePage(HttpSession session) {
		ModelAndView mav = new ModelAndView("admin-list-store-category");
		
		AdminListStoreManager alsm = new AdminListStoreManager();
		List<String> types = alsm.getMallType();
		
		session.setAttribute("type", types);
		session.setAttribute("page", 1);
		return mav;
	}
	
	@RequestMapping(value = "/list-mall-store-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListMallStorePage(HttpSession session , HttpServletRequest request) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ModelAndView mav = new ModelAndView("admin-list-mall-store");
		
		AdminListStoreManager alsm = new AdminListStoreManager();
		
		String type = request.getParameter("type");
		List<Mall> listMalls = new ArrayList<>();
		
		for(Mall m : alsm.getAllMalls()){
			if(type.equals(m.getType())){
				listMalls.add(m);
			}
		}
		
		session.setAttribute("listMalls", listMalls);
		session.setAttribute("listMallSize", listMalls.size());
		return mav;
	}
	
	@RequestMapping(value = "/list-show-store-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListStorePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-list-store");
		AdminListStoreManager alsm = new AdminListStoreManager();
		
		String mid = request.getParameter("mallid");
		Long mallid = Long.parseLong(mid);
		
		List<Store> listStore = alsm.listStore(mallid);
		
		int pages = alsm.countPages(mallid);
		
		session.setAttribute("pages", pages);
		session.setAttribute("listStore", listStore);
		session.setAttribute("listStoreSize", listStore.size());
		return mav;
	}
	
	@RequestMapping(value = "/change-page", method = RequestMethod.GET)
	public ModelAndView changedAdminListStorePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-list-store");
		
		String p = request.getParameter("page");
		System.out.println(p);
		
		int page = Integer.parseInt(p);
		session.setAttribute("page", page);
		return mav;
	}
}
