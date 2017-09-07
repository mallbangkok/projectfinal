package com.spring.searchfilter;

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
import com.spring.store.controller.StoreManager;

@Controller
public class SerchFilterController {
	@RequestMapping(value = "/loadsearchfilter", method = RequestMethod.GET)
	public ModelAndView loadPageSerch(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("index-search-filter");
		MallManager mm = new MallManager();
		Mall mall = new Mall();
		for (Mall m : mm.getAllMalls()) {
			if ("Siam Square One ".equals(m.getMallNameEng())) {
				mall = m;
			}
		}
		List<String> listFood = new ArrayList();
		List<String> listShopping = new ArrayList();
		List<String> listService = new ArrayList();
		for (Store s : mall.getStores()) {
			if (s.getStoreType().equals("Food")) {
				listFood.add(s.getStoreName() + " Level " + s.getFloor());
			}
			if (s.getStoreType().equals("Shopping")) {
				listShopping.add(s.getStoreName() + " Level " + s.getFloor());
			}
			if (s.getStoreType().equals("Service")) {
				listService.add(s.getStoreName() + " Level " + s.getFloor());
			}
		}

		session.setAttribute("listShopping", listShopping);
		session.setAttribute("listFood", listFood);
		session.setAttribute("listService", listService);
		session.setAttribute("dataMall", mall);
		return mav;

	}

	@RequestMapping(value = "/selecttypeofmall", method = RequestMethod.GET)
	public ModelAndView doSelectTypeOfMall(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("index-search-filter");
		String name = request.getParameter("type");
		MallManager mm = new MallManager();
		List<Mall> list = mm.getAllMalls();
		List<Mall> listMall = new ArrayList();
		for (Mall m :  list) {
			if (name.equals(m.getArea())) {
				listMall.add(m);
			}
		}
		session.setAttribute("listMall", listMall);
		return mav;
	}

	@RequestMapping(value = "/search-mall", method = RequestMethod.GET)
	public ModelAndView doLoadSelectMall(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("index-search-filter");
		MallManager mm = new MallManager();
		String name = request.getParameter("nameMall");
		Mall mall = new Mall();
		for (Mall m : mm.getAllMalls()) {
			if (name.equals(m.getMallNameEng())) {
				mall = m;
			}
		}
		List<String> listFood = new ArrayList();
		List<String> listShopping = new ArrayList();
		List<String> listService = new ArrayList();
		for (Store s : mall.getStores()) {
			if (s.getStoreType().equals("Food")) {
				listFood.add(s.getStoreName() + " Level " + s.getFloor());
			}
			if (s.getStoreType().equals("Shopping")) {
				listShopping.add(s.getStoreName() + " Level " + s.getFloor());
			}
			if (s.getStoreType().equals("Service")) {
				listService.add(s.getStoreName() + " Level " + s.getFloor());
			}
		}

		session.setAttribute("listShopping", listShopping);
		session.setAttribute("listFood", listFood);
		session.setAttribute("listService", listService);
		session.setAttribute("dataMall", mall);
		

		return mav;
	}

}
