package com.spring.searchcustom;

import java.io.UnsupportedEncodingException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Store;
import com.spring.store.controller.StoreManager;

@Controller
public class SearchCustomController {
	@RequestMapping(value = "/index-slider-search-custom", method = RequestMethod.GET)
	public ModelAndView loadSearchCustomPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("index-slider-search-custom");
		return mav;
	}
	
	@RequestMapping(value = "/index-slider-search-custom", method = RequestMethod.POST)
	public ModelAndView do_SearchShop(HttpServletRequest request, HttpSession session, Model md) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		ModelAndView mav = new ModelAndView("index-slider-search-custom");
		StoreManager sm = new StoreManager();
		
		String shopname = request.getParameter("inputShop");
		
		List<Store> listStore = new ArrayList<>();
		
		for(Store s : sm.getAllStores()){
			if(s.getStoreName().matches(shopname + "(.*)")){
				listStore.add(s);
			}
		}
		
		session.setAttribute("store", listStore);
		session.setAttribute("storeSize", listStore.size());
		return mav;
	}
	
	@RequestMapping(value = "/index-slider-search-custom-click", method = RequestMethod.POST)
	public ModelAndView loadSearchCustomPageClick(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("index-slider-search-custom");
		String c = request.getParameter("valueClick");
		@SuppressWarnings("unchecked")
		List<Store> getStores = (List<Store>) session.getAttribute("store");
		System.out.println(getStores.size()+"");
		List<Store> listStorePage = new ArrayList<>();
		if("1".equals(c)){
			for(int i = 0; i < (getStores.size() - 15);i++){
				listStorePage.add(getStores.get(i));
			}
			System.out.println(listStorePage.size()+"");
		}else if("2".equals(c)){
			
		}else if("3".equals(c)){
			
		}else if("4".equals(c)){
			
		}else{
			
		}
		session.setAttribute("store", listStorePage);
		return mav;
	}
}
