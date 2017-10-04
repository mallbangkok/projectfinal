package com.spring.searchfilter;

import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.addmall.AddMallManager;
import com.spring.addstore.AddStoreManager;
import com.spring.model.Mall;
import com.spring.model.Store;

@Controller
public class SerchFilterController {
	//false
	@RequestMapping(value = "/loadsearchfilter", method = RequestMethod.GET)
	public ModelAndView loadPageSerch(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("index-search-filter");
		SearchFilterManager sm = new SearchFilterManager();
		Mall mall = sm.doSearchMall("Siam Square One");
		
		List<Store> listFood = sm.listFood(mall.getMallId());
		List<Store> listShopping =sm.listShopping(mall.getMallId());
		List<Store> listService = sm.listServices(mall.getMallId());
		
		session.setAttribute("listShopping", listShopping);
		session.setAttribute("listFood", listFood);
		session.setAttribute("listService", listService);
		session.setAttribute("dataMall", mall);
		return mav;

	}
	//false
	@RequestMapping(value = "/search-mall", method = RequestMethod.GET)
	public ModelAndView doLoadSelectMall(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("index-search-filter");
		String name = request.getParameter("malls");
		SearchFilterManager sm = new SearchFilterManager();
		Mall mall = sm.doSearchMall(name);
		List<Store> listFood = sm.listFood(mall.getMallId());
		List<Store> listShopping =sm.listShopping(mall.getMallId());
		List<Store> listService = sm.listServices(mall.getMallId());
		session.setAttribute("listShopping", listShopping);
		session.setAttribute("listFood", listFood);
		session.setAttribute("listService", listService);
		session.setAttribute("dataMall", mall);

		return mav;
	}

}
