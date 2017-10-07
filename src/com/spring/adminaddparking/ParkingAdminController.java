package com.spring.adminaddparking;

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
import com.spring.userparking.ParkingUserManager;

@Controller
public class ParkingAdminController {
	@RequestMapping(value = "add-stamp-parking", method = RequestMethod.GET)
	public ModelAndView addStamp(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin-parking");
		return mav;
	}

	// true
	@RequestMapping(value = "add-condition-parking", method = RequestMethod.GET)
	public ModelAndView addCondition(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin-parking");
		ParkingAdminManager pm = new ParkingAdminManager();
		String typeOfCondition = request.getParameter("typeOfCondition");
		try {
			if ("I".equals(typeOfCondition)) {
				String conditionI = request.getParameter("typeOfFreeConditionI");
				String dateI = request.getParameter("dateofTypeConditonI");
				String nameMall = request.getParameter("nameMalls");
				System.out.println(pm.doAddConditionI(nameMall, conditionI, dateI));
			} else if ("II".equals(typeOfCondition)) {
				String nameMall = request.getParameter("nameMalls");
				String conditionI = request.getParameter("nameConII1");
				String dateI = request.getParameter("dateoftypeII1");
				String timeII1 = request.getParameter("timeII1");
				String timeoftypeII = request.getParameter("timeoftypeII");
				String conditionII = request.getParameter("nameConII2");
				String dateII = request.getParameter("dateoftypeII2");
				String price = request.getParameter("priceConII");
				System.out.println(pm.doAddConditionII(nameMall, conditionI, dateI, timeII1, timeoftypeII, conditionII,
						dateII, price));
				System.out.println("22");
			} else if ("III".equals(typeOfCondition)) {
				String nameMall = request.getParameter("nameMalls");
				String con1 = request.getParameter("conditionIII1");
				String date1 = request.getParameter("dateIII1");
				String time1 = request.getParameter("timeIII1");
				String type1 = request.getParameter("typeIII1");
				String con2 = request.getParameter("conIII2");
				String date2 = request.getParameter("dateIII2");
				String price2 = request.getParameter("priceIII2");
				String con3 = request.getParameter("conIII3");
				String date3 = request.getParameter("dateIII3");
				String time3 = request.getParameter("timeIII3");
				String price3 = request.getParameter("priceIII3");
				System.out.println(pm.doAddConditionIII(nameMall, con1, date1, time1, type1, con2, date2, price2, con3,
						date3, time3, price3));
				System.out.println("33");
			}
		} catch (Exception e) {

		}

		return mav;
	}

	@RequestMapping(value = "add-condition-parking-stamp", method = RequestMethod.GET)
	public ModelAndView addStamp(HttpSession session, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin-parking");
		ParkingAdminManager pm = new ParkingAdminManager();
		String nameMall = request.getParameter("nameMalls");
		String con = request.getParameter("con4");
		String price = request.getParameter("price4");
		String freeHour = request.getParameter("freeHour");
		System.out.println(pm.doAddStamp(nameMall, price, freeHour, con));

		return mav;
	}

	// true
	@RequestMapping(value = "parking-admin", method = RequestMethod.GET)
	public ModelAndView loadPageCalculateParkingAdmin(HttpSession session) {
		ModelAndView mav = new ModelAndView("admin-parking");
		session.setAttribute("typeOfParking", "I");

		return mav;
	}

	// true
	@RequestMapping(value = "parking-admin-typeofparking", method = RequestMethod.GET)
	public ModelAndView loadPageTypeOfParking(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-parking");
		String t = request.getParameter("type");
		String nameMall = request.getParameter("nameMall");
		session.setAttribute("typeOfParking", t);
		session.setAttribute("nameMall", nameMall);
		return mav;
	}

	// true
	@RequestMapping(value = "/gettype-parking", method = RequestMethod.GET)
	public ModelAndView getType(HttpServletRequest request, HttpSession session, Model md) {
		AddMallManager mm = new AddMallManager();
		ModelAndView mav = new ModelAndView("admin-parking");
		ParkingAdminManager pm = new ParkingAdminManager();
		List<String> listType = pm.getMallType();
		String t = request.getParameter("type");
		md.addAttribute("types", listType);
		List<Mall> listMallByType = pm.getMallShow(t);
		session.setAttribute("mallType", listMallByType);
		session.setAttribute("typeMall", t);
		session.setAttribute("nameMall", null);
		return mav;
	}

	// true
	@RequestMapping(value = "updateCondition", method = RequestMethod.GET)
	public ModelAndView updateCondition(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin-parkign");
		return mav;
	}

}
