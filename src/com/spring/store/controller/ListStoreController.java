package com.spring.store.controller;

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

import com.spring.addmallcontroller.MallManager;
import com.spring.model.Mall;
import com.spring.model.Store;

@Controller
public class ListStoreController {
	@RequestMapping(value = "/list-store-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListStorePage(HttpSession session) {
		ModelAndView mav = new ModelAndView("admin-list-store-category");
		
		MallManager mm = new MallManager();
		List<String> types = mm.getMallType();
		
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
	
	@RequestMapping(value = "/list-show-store-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListStorePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-list-store");
		StoreManager sm = new StoreManager();
		List<Store> listStore = new ArrayList<>();
		
		String mid = request.getParameter("mallid");
		Long mall_id = Long.parseLong(mid);
		
		for(Store s : sm.getAllStores()){
			if(s.getMall().getMallId() == mall_id){
				listStore.add(s);
			}
		}
		
		double value = listStore.size() / 20.0;
		int pages = (int) Math.ceil(value);
		
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
