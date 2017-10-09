package com.spring.searchfilter;

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
public class SearchFilterController {
	//false
	@RequestMapping(value = "/loadsearchfilter", method = RequestMethod.GET)
	public ModelAndView loadPageSearch(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("index-search-filter");
		SearchFilterManager sm = new SearchFilterManager();
		Mall mall = sm.doSearchMall("CentralPlaza Salaya");
		
<<<<<<< HEAD:src/com/spring/searchfilter/SearchFilterController.java
		List<Store> listFood = sm.listFood(mall.getMallId());
		List<Store> listShopping = sm.listShopping(mall.getMallId());
		List<Store> listService = sm.listServices(mall.getMallId());
=======
		List<Store> listFood = sm.listFood(mall);
		List<Store> listShopping =sm.listShopping(mall);
		List<Store> listService = sm.listServices(mall);
>>>>>>> 65f3f7d756d6803a11fb1b55709e47a45d18c61b:src/com/spring/searchfilter/SerchFilterController.java
		
		session.setAttribute("facilities", mall.getFacilites());
		session.setAttribute("listShopping", listShopping);
		session.setAttribute("listFood", listFood);
		session.setAttribute("listService", listService);
		session.setAttribute("dataMall", mall);
		session.setAttribute("mallupdated", sm.listMallLastedUpdate());
		return mav;

	}
	//false
	@RequestMapping(value = "/search-mall", method = RequestMethod.GET)
	public ModelAndView doLoadSelectMall(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("index-search-filter");
		String name = request.getParameter("malls");
		SearchFilterManager sm = new SearchFilterManager();
		Mall mall = sm.doSearchMall(name);
<<<<<<< HEAD:src/com/spring/searchfilter/SearchFilterController.java
		List<Store> listFood = sm.listFood(mall.getMallId());
		List<Store> listShopping = sm.listShopping(mall.getMallId());
		List<Store> listService = sm.listServices(mall.getMallId());
=======
		List<Store> listFood = sm.listFood(mall);
		List<Store> listShopping =sm.listShopping(mall);
		List<Store> listService = sm.listServices(mall);
>>>>>>> 65f3f7d756d6803a11fb1b55709e47a45d18c61b:src/com/spring/searchfilter/SerchFilterController.java
		session.setAttribute("listShopping", listShopping);
		session.setAttribute("listFood", listFood);
		session.setAttribute("listService", listService);
		session.setAttribute("dataMall", mall);
		session.setAttribute("facilities", mall.getFacilites());
		session.setAttribute("mallupdated", sm.listMallLastedUpdate());
		return mav;
	}

}
