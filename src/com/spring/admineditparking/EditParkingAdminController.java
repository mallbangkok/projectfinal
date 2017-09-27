package com.spring.admineditparking;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.ConditionOfParking;
import com.spring.model.Mall;

@Controller
public class EditParkingAdminController {
	@RequestMapping(value = "admin-editparking", method = RequestMethod.GET)
	public ModelAndView addStamp(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin-editparking");
		return mav;
	} 
	
	@RequestMapping(value = "searchmall-parking", method = RequestMethod.GET)
	public ModelAndView searchMallParking(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView("admin-editparking");
		EditParkingAdminManager em  = new EditParkingAdminManager();
		String name= request.getParameter("nameMall");
		Mall mall = em.doSearchMall(name);
		List<ConditionOfParking> list = em.doSearchCondition(name);
		
		session.setAttribute("datamall", mall);
		session.setAttribute("conditions", list);
		session.setAttribute("sizeofcon", ""+list.size());
		return mav;
	} 
	@RequestMapping(value = "/gettype-edit", method = RequestMethod.GET)
	public ModelAndView getType(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-editparking");
		EditParkingAdminManager em  = new EditParkingAdminManager();
		String t = request.getParameter("type");
		List<String> listType = em.getMallType();
		md.addAttribute("types", listType);
		List<Mall> listMallByType = em.doSearchTypeMall(t);
		session.setAttribute("mallType", listMallByType);
		session.setAttribute("typeMall", t);
		session.setAttribute("nameMall", null);
		return mav;
	}

}
