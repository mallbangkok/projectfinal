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
	public ModelAndView loadSearchCustomPage() {
		ModelAndView mav = new ModelAndView("index-slider-search-custom");
		return mav;
	}
	
	@RequestMapping(value = "/index-slider-search-custom", method = RequestMethod.POST)
	public ModelAndView do_SearchShop(HttpServletRequest request, HttpSession session, Model md) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ModelAndView mav = new ModelAndView("index-slider-search-custom");
		StoreManager sm = new StoreManager();
		
		String shopname = request.getParameter("inputShop");
		
		List<Store> listStore = new ArrayList<>();
		
		for(Store s : sm.getAllStores()){
			if(shopname.equalsIgnoreCase(s.getStoreName())){
				listStore.add(s);
			}
		}
		
		session.setAttribute("store", listStore);
		
		return mav;
	}
}
