package com.spring.store.controller;

import java.io.UnsupportedEncodingException;

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
public class UpdateStoreController {
	@RequestMapping(value = "/update-store", method = RequestMethod.GET)
	public ModelAndView loadUpdateStorePage(HttpServletRequest request, HttpSession session, Model md) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView("admin-update-store");
		StoreManager sm = new StoreManager();
		Store store = null;
		
		String sid = request.getParameter("storeid");
		long store_id = Long.parseLong(sid);
		
		for(Store s : sm.getAllStores()){
			if(store_id == s.getStoreId()){
				store = s;
			}
		}
		
		session.setAttribute("store", store);
		session.setAttribute("storeid", store.getStoreId());
		return mav;
	}
	
	@RequestMapping(value = "/update-store", method = RequestMethod.POST)
	public ModelAndView do_updateStore(HttpServletRequest request, HttpSession session, Model md) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView("admin-list-store-category");
		MallManager mm = new MallManager();
		StoreManager sm = new StoreManager();
		
		String message = "";
		String mallName = request.getParameter("select-mall");
		String floor = request.getParameter("select-floor");
		String storeName = request.getParameter("storename");
		String type = request.getParameter("select-type");
		String status = request.getParameter("select-status");
		String storeid = request.getParameter("store-id");
		int sid = Integer.parseInt(storeid);
		
		Store store = new Store(sid,storeName, type, status, floor);
		Mall mall = null;
		for (Mall m : mm.getAllMalls()) {
			if (mallName.equals(m.getMallNameEng())) {
				mall = m;
			}
		}

		try {
			mall.getStores().add(store);
			store.setMall(mall);
			mall.setStores(mall.getStores());
			message = sm.do_hibernateUpdateStore(store);
			md.addAttribute("message",message);
			System.out.println(message);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return mav;
	}
}
