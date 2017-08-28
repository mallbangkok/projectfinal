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
public class StoreController {
	@RequestMapping(value = "/store-admin", method = RequestMethod.GET)
	public ModelAndView loadAddStorePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("store-admin");
		MallManager mm = new MallManager();
		List<String> listType = mm.getMallType();
		md.addAttribute("types", listType);
		return mav;
	}

	@RequestMapping(value = "/gettype", method = RequestMethod.GET)
	public ModelAndView getType(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("store-admin");
		MallManager mm = new MallManager();
		List<String> listType = mm.getMallType();
		String t = request.getParameter("type");
		md.addAttribute("types", listType);
		List<Mall> listMallByType = new ArrayList<>();
		for (Mall m : mm.getAllMalls()) {
			if (m.getType().equals(t)) {
				listMallByType.add(m);
			}
		}
		session.setAttribute("mallType", listMallByType);
		session.setAttribute("typeMall", t);
		return mav;
	}

	@RequestMapping(value = "/store-admin", method = RequestMethod.POST)
	public ModelAndView doAddStore(HttpServletRequest request, HttpSession session, Model md) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		ModelAndView mav = new ModelAndView("my-properties");
		MallManager mm = new MallManager();
		StoreManager sm = new StoreManager();

		String mallName = request.getParameter("select-mall");
		String floor = request.getParameter("select-floor");
		String storeName = request.getParameter("storename");
		String type = request.getParameter("select-type");
		String status = request.getParameter("select-status");

		Store store = new Store(storeName, type, status, floor);
		Mall mall = new Mall();
		for (Mall m : mm.getAllMalls()) {
			if (mallName.equals(m.getMallNameEng())) {
				mall = m;
			}
		}

		try {
			mall.getStores().add(store);
			store.setMall(mall);
			mall.setStores(mall.getStores());
			System.out.println(sm.doHibernateStore(store));
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return mav;
	}

}
