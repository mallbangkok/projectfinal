package com.spring.listmallcontroller;

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
public class ListMallController {
	@RequestMapping(value = "/list-mall", method = RequestMethod.GET)
	public ModelAndView loadListMallPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("list-mall");
		MallManager mm = new MallManager();
		List<Mall> list = mm.getAllMalls();
		List<Mall> listByType = new ArrayList<>();
		String typename = request.getParameter("typename");
		
		if(typename.equals("all")){
			for(Mall m : list){
				listByType.add(m);
			}
		}else{
			for(Mall m : list){
				if(m.getType().equals(typename)){
					listByType.add(m);
				}
			}
			
			for(Mall m : list){
				if(m.getArea().equals(typename)){
					listByType.add(m);
				}
			}
		}
		double value = listByType.size() / 10.0;
		int pages = (int) Math.ceil(value);
		
		session.setAttribute("countpages", pages);
		
		session.setAttribute("listmallpage", 1);
		session.setAttribute("type", typename);
		session.setAttribute("listByType", listByType);
		session.setAttribute("size", listByType.size());
		return mav;
	}
	
	@RequestMapping(value = "/list-mall", method = RequestMethod.POST)
	public ModelAndView ListMallPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("mall-detail");
		MallManager mm = new MallManager();
		StoreManager sm = new StoreManager();
		String m = request.getParameter("valueClick");
		long mallId = Long.parseLong(m);
		List<Mall> list = mm.getAllMalls();

		for(Mall mall : list){
			if(mall.getMallId() == mallId){
				session.setAttribute("mall", mall);
			}
		}
		List<Store> listStore = new ArrayList<>();
		for(Store s : sm.getAllStores()){
			if(s.getMall().getMallId() == mallId){
				listStore.add(s);
			}
		}
		
		List<Store> listFood = new ArrayList<>();
		List<Store> listShopping = new ArrayList<>();
		List<Store> listServices = new ArrayList<>();
		for(Store s : listStore){
			if(s.getStoreType().equals("Food")){
				listFood.add(s);
			}else if(s.getStoreType().equals("Shopping")){
				listShopping.add(s);
			}else{
				listServices.add(s);
			}
		}
		
		session.setAttribute("listFood", listFood);
		session.setAttribute("listShopping", listShopping);
		session.setAttribute("listServices", listServices);
		return mav;
	}
	
	@RequestMapping(value = "/change-list-mall-page", method = RequestMethod.GET)
	public ModelAndView changedAdminListStorePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("list-mall");
		
		String p = request.getParameter("page");
		System.out.println(p);
		
		int page = Integer.parseInt(p);
		session.setAttribute("listpage", page);
		return mav;
	}
}
