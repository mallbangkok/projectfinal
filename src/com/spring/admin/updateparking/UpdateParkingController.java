package com.spring.admin.updateparking;

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

import com.spring.adminlistmall.AdminListMallManager;
import com.spring.model.Mall;

@Controller
public class UpdateParkingController {
	public int countPages(String type){
		AdminListMallManager alm = new AdminListMallManager();
		List<Mall> listMalls = new ArrayList<>();
		
		for(Mall m : alm.getMalls()){
			if(type.equals(m.getType())){
				listMalls.add(m);
			}
		}

		double value = listMalls.size() / 10.0;
		int mPages = (int) Math.ceil(value);
		return mPages;
	}
	@RequestMapping(value = "/list-mall-admin-condition", method = RequestMethod.GET)
	public ModelAndView loadAdminListMallPage(HttpSession session , HttpServletRequest request) {
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ModelAndView mav = new ModelAndView("admin-list-mall-condition");
		
		AdminListMallManager alm = new AdminListMallManager();
		
		String type = request.getParameter("type");
		
		int mPages = this.countPages(type);
		List<Mall> listMalls = new ArrayList<>();
		
		for(Mall m : alm.getMalls()){
			if(type.equals(m.getType())){
				listMalls.add(m);
			}
		}
		
		session.setAttribute("mallPages", mPages);
		session.setAttribute("listMalls", listMalls);
		session.setAttribute("listMallSize", listMalls.size());
		return mav;
	}

	@RequestMapping(value = "admin-editparking", method = RequestMethod.GET)
	public ModelAndView addStamp(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView("admin-list-condition-category");
		UpdateParkingManager ea = new UpdateParkingManager();
		List<String> types = ea.getMallType();
		session.setAttribute("type", types);
		session.setAttribute("page", 1);
		return mav;
	}

	// true
	@RequestMapping(value = "/list-mall-condition-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListMallStorePage(HttpSession session, HttpServletRequest request) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView("admin-list-mall-condition");
		UpdateParkingManager alsm = new UpdateParkingManager();
		String type = request.getParameter("type");
		List<Mall> listMalls = new ArrayList<>();
		for (Mall m : alsm.getAllMalls()) {
			if (type.equals(m.getType())) {
				listMalls.add(m);
			}
		}
		session.setAttribute("listMalls", listMalls);
		session.setAttribute("listMallSize", listMalls.size());
		return mav;
	}

	// true
	@RequestMapping(value = "/gettype-edit", method = RequestMethod.GET)
	public ModelAndView getType(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-editparking");
		UpdateParkingManager em = new UpdateParkingManager();
		String t = request.getParameter("type");
		List<String> listType = em.getMallType();
		md.addAttribute("types", listType);
		List<Mall> listMallByType = em.doSearchTypeMall(t);
		session.setAttribute("mallType", listMallByType);
		session.setAttribute("typeMall", t);
		session.setAttribute("nameMall", null);
		session.setAttribute("sizeofcon", "" + 0);
		return mav;
	}

	@RequestMapping(value = "/change-page-mall-condition", method = RequestMethod.GET)
	public ModelAndView changedAdminListStorePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-list-mall-condition");

		String p = request.getParameter("page");
		System.out.println(p);

		int page = Integer.parseInt(p);
		session.setAttribute("page", page);
		return mav;
	}
}
