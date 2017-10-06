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

@Controller
public class SearchCustomController {
	@RequestMapping(value = "/index-slider-search-custom", method = RequestMethod.GET)
	public ModelAndView loadSearchCustomPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("index-slider-search-custom");
		session.setAttribute("store",null);
		session.setAttribute("storeSize", null);
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
		SearchCustomManager sm = new SearchCustomManager();
		
		String shopname = request.getParameter("inputShop");
		
		List<Store> listStore = sm.isSearchStore(shopname);
		
		session.setAttribute("store", listStore);
		session.setAttribute("storeSize", listStore.size());
		return mav;
	}
}
