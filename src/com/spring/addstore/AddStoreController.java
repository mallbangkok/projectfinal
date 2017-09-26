package com.spring.addstore;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Mall;

@Controller
public class AddStoreController {
	@RequestMapping(value = "/store-admin", method = RequestMethod.GET)
	public ModelAndView loadAddStorePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("store-admin");
		AddStoreManager sm = new AddStoreManager();
		List<String> listType = sm.listMallType();
		md.addAttribute("types", listType);
		return mav;
	}

	@RequestMapping(value = "/gettype", method = RequestMethod.GET)
	public ModelAndView getType(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("store-admin");
		AddStoreManager sm = new AddStoreManager();
		List<String> listType = sm.listMallType();
		String t = request.getParameter("type");
		md.addAttribute("types", listType);
		List<Mall> listMallByType = sm.listMallByType(t);
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
		AddStoreManager sm = new AddStoreManager();
		String mallName = request.getParameter("select-mall");
		String floor = request.getParameter("select-floor");
		String storeName = request.getParameter("storename");
		String type = request.getParameter("select-type");
		String status = request.getParameter("select-status");
		
		String message = sm.isAddStore(mallName, storeName, type, status, floor);
		session.setAttribute("message", message);
		return mav;
	}
}
