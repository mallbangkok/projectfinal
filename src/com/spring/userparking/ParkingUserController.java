package com.spring.userparking;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.spring.addmall.AddMallManager;

import com.spring.model.Mall;

@Controller
public class ParkingUserController {
	@RequestMapping(value = "/parking-user", method = RequestMethod.GET)
	public ModelAndView loadPageCalculateParkingUser(HttpSession session) {
		ModelAndView mav = new ModelAndView("user-parking");
		return mav;
	}

	// true
	@RequestMapping(value = "/gettype-user", method = RequestMethod.GET)
	public ModelAndView getType(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("user-parking");
		ParkingUserManager pm = new ParkingUserManager();
		String t = request.getParameter("type");
		List<String> listType = pm.getMallType();
		md.addAttribute("types", listType);
		List<Mall> listMallByType = pm.doSearchTypeMall(t);
		session.setAttribute("mallType", listMallByType);
		session.setAttribute("typeMall", t);
		session.setAttribute("nameMall", null);
		return mav;
	}

	// false
	@RequestMapping(value = "/dosearchmall-user", method = RequestMethod.GET)
	public ModelAndView doSearchMall(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView("user-parking");
		ParkingUserManager pm = new ParkingUserManager();
		String nameMall = request.getParameter("nameMall");
		List<String> list = pm.doSearchCondition(nameMall);
		System.out.println("Size"+list.size());
		for(String s:list){
			System.out.println("Condition"+s);
		}
		String number = pm.checkNumber(nameMall);
		Mall mall = pm.doSearchMall(nameMall);
		session.setAttribute("listConditon", list);
		session.setAttribute("number", number);
		session.setAttribute("malls", mall);
		session.setAttribute("priceafter", null);
		return mav;

	}

	// do calculate
	@RequestMapping(value = "/docalculate-user", method = RequestMethod.GET)
	public ModelAndView doCalculate(HttpServletRequest request, HttpSession session) {
		ParkingUserManager pm = new ParkingUserManager();
		ModelAndView mav = new ModelAndView("user-parking");
		String timeIn = request.getParameter("timeIn");
		String timeOut = request.getParameter("timeOut");
		String nameMall = request.getParameter("mallsName");
		String date = request.getParameter("dateOfCal");
		String[] stamps = request.getParameterValues("checkstamp");
		if (stamps != null) {
			for (int i = 0; i < stamps.length; i++) {
				System.out.println("Stamp::" + stamps[i]);
			}
		}

		int price = pm.checkCalculate(nameMall, timeIn, timeOut, date, stamps);
		session.setAttribute("priceafter", "" + price);

		return mav;
	}
}
