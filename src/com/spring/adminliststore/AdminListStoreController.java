package com.spring.adminliststore;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Store;

@Controller
public class AdminListStoreController {
	@RequestMapping(value = "/list-show-store-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListStorePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-list-store");
		AdminListStoreManager alsm = new AdminListStoreManager();
		
		String mid = request.getParameter("mallid");
		Long mallid = Long.parseLong(mid);
		
		List<Store> listStore = new ArrayList<>();
		
		int pages = this.countPages(mallid);
		
		for(Store s : alsm.getAllStores()){
			if(s.getMall().getMallId() == mallid){
				listStore.add(s);
			}
		}
		
		session.setAttribute("page", 1);
		session.setAttribute("pages", pages);
		session.setAttribute("listStore", listStore);
		session.setAttribute("listStoreSize", listStore.size());
		return mav;
	}
	
	@RequestMapping(value = "/change-page", method = RequestMethod.GET)
	public ModelAndView changedAdminListStorePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-list-store");
		
		String p = request.getParameter("page");
		System.out.println(p);
		
		int page = Integer.parseInt(p);
		session.setAttribute("page", page);
		return mav;
	}
	
	public int countPages(long mallid){
		AdminListStoreManager alsm = new AdminListStoreManager();
		List<Store> listStores = new ArrayList<>();
		
		for(Store s : alsm.getAllStores()){
			if(s.getMall().getMallId() == mallid){
				listStores.add(s);
			}
		}
		
		double value = listStores.size() / 20.0;
		int mPages = (int) Math.ceil(value);
		return mPages;
	}
}
