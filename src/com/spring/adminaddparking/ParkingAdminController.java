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
import com.spring.model.ConditionOfParking;
import com.spring.model.Mall;
import com.spring.userparking.ParkingUserManager;

@Controller
public class ParkingAdminController {
	@RequestMapping(value = "add-stamp-parking", method = RequestMethod.GET)
	public ModelAndView addStamp(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin-parking");
		return mav;
	}
	//false
	@RequestMapping(value = "add-conditionIII-parking", method = RequestMethod.GET)
	public ModelAndView addConditionIII(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin-parking");
		AddMallManager mm = new AddMallManager();
		ParkingUserManager pm = new ParkingUserManager();
		String nameMall = request.getParameter("nameMalls");
		String con1 = request.getParameter("conditionIII1");
		String date1 = request.getParameter("dateIII1");
		String time1 = request.getParameter("timeIII1");
		String type1 = request.getParameter("typeIII1");
		System.out.println("Name Mall : " + nameMall);
		System.out.println("1 ::" + con1 + " " + date1 + " " + time1 + " " + type1);
		String con2 = request.getParameter("conIII2");
		String date2 = request.getParameter("dateIII2");
		String price2 = request.getParameter("priceIII2");
		System.out.println("2::" + con2 + " " + date2 + " " + price2);
		String con3 = request.getParameter("conIII3");
		String date3 = request.getParameter("dateIII3");
		String time3 = request.getParameter("timeIII3");
		String price3 = request.getParameter("priceIII3");

		int times = Integer.parseInt(time1);
		if ("ชั่วโมง".equals(type1)) {
			times = (times * 60);

		}
		ConditionOfParking c1 = new ConditionOfParking(con1, times, 0, date1, "1");
		ConditionOfParking c2 = new ConditionOfParking(con2, 0, Integer.parseInt(price2), date2, "2");
		ConditionOfParking c3 = new ConditionOfParking(con3, Integer.parseInt(time3), Integer.parseInt(price3), date3,
				"3");
		Mall mall = new Mall();
		for (Mall m : mm.getAllMalls()) {
			if (nameMall.equalsIgnoreCase(m.getMallNameEng())) {
				mall = m;
			}
		}
		try {
			mall.getConditionOfParking().add(c1);
			mall.getConditionOfParking().add(c2);
			mall.getConditionOfParking().add(c3);
			c1.setMall(mall);
			c2.setMall(mall);
			c3.setMall(mall);
			System.out.println(pm.addConditionI(c1));

		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	//false
	@RequestMapping(value = "add-conditionII-parking", method = RequestMethod.GET)
	public ModelAndView addConditionII(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin-parking");

		AddMallManager mm = new AddMallManager();

		ParkingUserManager pm = new ParkingUserManager();

		String nameMall = request.getParameter("nameMalls");
		String conditionI = request.getParameter("nameConII1");
		String dateI = request.getParameter("dateoftypeII1");
		String timeII1 = request.getParameter("timeII1");
		String timeoftypeII = request.getParameter("timeoftypeII");
		String conditionII = request.getParameter("nameConII2");
		String dateII = request.getParameter("dateoftypeII2");
		String price = request.getParameter("priceConII");

		int times = Integer.parseInt(timeII1);

		if ("ชั่วโมง".equals(timeoftypeII)) {
			times = (times * 60);

		}
		Mall mall = new Mall();
		ConditionOfParking c1 = new ConditionOfParking(conditionI, times, 0, dateI, "1");
		ConditionOfParking c2 = new ConditionOfParking(conditionII, 0, Integer.parseInt(price), dateII, "2");
		for (Mall m : mm.getAllMalls()) {
			if (nameMall.equalsIgnoreCase(m.getMallNameEng())) {
				mall = m;
			}
		}
		try {
			mall.getConditionOfParking().add(c1);
			mall.getConditionOfParking().add(c2);
			c1.setMall(mall);
			c2.setMall(mall);
			System.out.println(pm.addConditionI(c1));

		} catch (Exception e) {
			e.printStackTrace();
		}

		return mav;
	}

	// false
	@RequestMapping(value = "add-conditionI-parking", method = RequestMethod.GET)
	public ModelAndView addConditionI(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin-parking");

		AddMallManager mm = new AddMallManager();
		ParkingUserManager pm = new ParkingUserManager();

		String conditionI = request.getParameter("typeOfFreeConditionI");
		String dateI = request.getParameter("dateofTypeConditonI");
		String nameMall = request.getParameter("nameMalls");
		Mall mall = new Mall();
		for (Mall m : mm.getAllMalls()) {
			if (nameMall.equalsIgnoreCase(m.getMallNameEng())) {
				mall = m;
			}
		}
		ConditionOfParking c = new ConditionOfParking(conditionI, 0, 0, dateI, "1");
		try {
			mall.getConditionOfParking().add(c);
			c.setMall(mall);
			System.out.println(pm.addConditionI(c));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mav;
	}
	//true
	@RequestMapping(value = "parking-admin", method = RequestMethod.GET)
	public ModelAndView loadPageCalculateParkingAdmin(HttpSession session) {
		ModelAndView mav = new ModelAndView("admin-parking");
		session.setAttribute("typeOfParking", "I");

		return mav;
	}
	//true
	@RequestMapping(value = "parking-admin-typeofparking", method = RequestMethod.GET)
	public ModelAndView loadPageTypeOfParking(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-parking");
		String t = request.getParameter("type");
		String nameMall = request.getParameter("nameMall");
		session.setAttribute("typeOfParking", t);
		session.setAttribute("nameMall", nameMall);
		return mav;
	}

	//true
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
	//true
	@RequestMapping(value = "updateCondition", method = RequestMethod.GET)
	public ModelAndView updateCondition(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin-parkign");
		return mav;
	}

}
