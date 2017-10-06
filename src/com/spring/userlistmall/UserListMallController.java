package com.spring.userlistmall;

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
public class UserListMallController {
	@RequestMapping(value = "/list-mall", method = RequestMethod.GET)
	public ModelAndView loadListMallPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("list-mall");
		UserListMallManager ulmm = new UserListMallManager();
		
		String typename = request.getParameter("typename");
		
		List<Mall> listByType = ulmm.listByType(typename);
		int pages = ulmm.countPage(typename);
		
		session.setAttribute("countpages", pages);
		session.setAttribute("listmallpage", 1);
		session.setAttribute("type", typename);
		session.setAttribute("listByType", listByType);
		session.setAttribute("size", listByType.size());
		return mav;
	}
	
	@RequestMapping(value = "/list-mall", method = RequestMethod.POST)
	public ModelAndView ListMallDetailPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("mall-detail");
		UserListMallManager ulmm = new UserListMallManager();
		String m = request.getParameter("valueClick");
		long mallid = Long.parseLong(m);
		System.out.println(mallid);
		Mall mall = ulmm.isSelectedMall(mallid);
		session.setAttribute("mall", mall);
		List<Store> listFood = ulmm.listFood(mallid);
		List<Store> listShopping = ulmm.listShopping(mallid);
		List<Store> listServices = ulmm.listServices(mallid);
		
		session.setAttribute("listFood", listFood);
		session.setAttribute("listShopping", listShopping);
		session.setAttribute("listServices", listServices);
		session.setAttribute("mallupdated", ulmm.listMallLastedUpdate());
		return mav;
	}
	
	@RequestMapping(value = "/change-list-mall-page", method = RequestMethod.GET)
	public ModelAndView changedAdminListStorePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("list-mall");
		
		String p = request.getParameter("page");
		System.out.println(p);
		
		int page = Integer.parseInt(p);
		session.setAttribute("listmallpage", page);
		return mav;
	}
}
