package com.spring.store.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.spring.addMallController.MallManager;
import com.spring.model.Mall;
import com.spring.model.Store;

@Controller
public class StoreController {
	@RequestMapping(value = "/store-admin", method = RequestMethod.GET)
	public ModelAndView loadAddStorePage() {
		ModelAndView mav = new ModelAndView("store-admin");
		return mav;
	}

	@RequestMapping(value = "/store-admin", method = RequestMethod.POST)
	public void doGetDataStore(HttpServletRequest request, HttpSession session, Model md) {
		MallManager mm = new MallManager();
		StoreManager sm = new StoreManager();
		String mallName = request.getParameter("select-mall");
		String floor = request.getParameter("select-floor");
		String storeName = request.getParameter("submit-store");
		String type = request.getParameter("select-type");
		String status = request.getParameter("select-status");

		Store store = new Store(storeName, type, status, floor);
		Mall mall = new Mall();
		for (Mall m : mm.getAllMalls()) {
			if (mallName.equals(m.getMallName())) {
				mall = m;
			}
		}
		store.setMall(mall);
		System.out.println(sm.doHibernateStore(store));

		// String[] facilities = request.getParameterValues("facilites");
		System.out.println("Start");
		System.out.println(mallName + "" + floor + "" + storeName + " " + type + " " + status);
		System.out.println("Stop");
	}

}
