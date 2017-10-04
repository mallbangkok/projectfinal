package com.spring.updateparking;

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
public class EditParkingAdminController {
	@RequestMapping(value = "admin-editparking", method = RequestMethod.GET)
	public ModelAndView addStamp(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin-editparking");
		return mav;
	}

	// true
	@RequestMapping(value = "searchmall-parking", method = RequestMethod.GET)
	public ModelAndView searchMallParking(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView("admin-editparking");
		EditParkingAdminManager em = new EditParkingAdminManager();
		String name = request.getParameter("nameMall");
		Mall mall = em.doSearchMall(name);
		List<ConditionOfParking> list = em.doSearchCondition(name);
		session.setAttribute("datamall", mall);
		session.setAttribute("conditions", list);
		session.setAttribute("sizeofcon", "" + list.size());

		return mav;
	}

	// true
	@RequestMapping(value = "/gettype-edit", method = RequestMethod.GET)
	public ModelAndView getType(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-editparking");
		EditParkingAdminManager em = new EditParkingAdminManager();
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

	// true
	@RequestMapping(value = "/update-conditionI-parking", method = RequestMethod.GET)
	public ModelAndView updateConditonI(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-editparking");
		EditParkingAdminManager em = new EditParkingAdminManager();
		String nameMall = request.getParameter("nameMalls");
		String conditionI = request.getParameter("typeOfFreeConditionI");
		String dateI = request.getParameter("dateofTypeConditonI");
		System.out.println(em.updateConditionI(conditionI, dateI, nameMall));
		session.setAttribute("sizeofcon", "" + 1);
		return mav;
	}

	@RequestMapping(value = "/update-conditionII-parking", method = RequestMethod.GET)
	public ModelAndView updateConditonII(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-editparking");
		EditParkingAdminManager em = new EditParkingAdminManager();
		String nameMall = request.getParameter("nameMalls");
		String conditionI = request.getParameter("nameConII1");
		String dateI = request.getParameter("dateoftypeII1");
		String timeII1 = request.getParameter("timeII1");
		String type1 = request.getParameter("timeoftypeII");
		String timeoftypeII = request.getParameter("timeoftypeII");
		String conditionII = request.getParameter("nameConII2");
		String dateII = request.getParameter("dateoftypeII2");
		String price = request.getParameter("priceConII");
		System.out.println(em.updateConditionII( nameMall, price, dateII, conditionII, timeoftypeII, type1,
				timeII1, dateI, conditionI));
		session.setAttribute("conditions", null);
		session.setAttribute("sizeofcon", "" + 2);
		return mav;
	}

	// true
	@RequestMapping(value = "/update-conditionIII-parking", method = RequestMethod.GET)
	public ModelAndView updateConditonIII(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-editparking");
		AddMallManager mm = new AddMallManager();
		EditParkingAdminManager em = new EditParkingAdminManager();
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
		System.out.println(em.updateConditionIII(price3, time3, date3, con3, price2, date2, con2, type1, time1, date1,
				con1, nameMall));
		session.setAttribute("conditions", null);
		session.setAttribute("sizeofcon", "" + 3);
		return mav;
	}

}
