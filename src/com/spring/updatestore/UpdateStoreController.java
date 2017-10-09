package com.spring.updatestore;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
		UpdateStoreManager usm = new UpdateStoreManager();
		
		String sid = request.getParameter("storeid");
		long storeid = Long.parseLong(sid);
		
		Store store = usm.isSelectedStore(storeid);
		
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
		ModelAndView mav = new ModelAndView("my-properties");
		UpdateStoreManager usm = new UpdateStoreManager();
		
		String message = "";
		String mallName = request.getParameter("select-mall");
		String floor = request.getParameter("select-floor");
		String storeName = request.getParameter("storename");
		String storeType = request.getParameter("select-type");
		String storeStatus = request.getParameter("select-status");
		String storeid = request.getParameter("store-id");
		int storeId = Integer.parseInt(storeid);
		
		message = usm.isUpdateStore(storeId, storeName, storeType, storeStatus, floor, mallName);
		md.addAttribute("message",message);
		
		return mav;
	}
}
