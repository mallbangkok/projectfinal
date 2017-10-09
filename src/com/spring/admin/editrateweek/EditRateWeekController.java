package com.spring.admin.editrateweek;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.admin.updateparking.UpdateParkingManager;
import com.spring.model.Week;
@Controller
public class EditRateWeekController {
	@RequestMapping(value = "/edit-rateofcondition", method = RequestMethod.GET)
	public ModelAndView loadAdminUpdateRatePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-update-rate");
		EditRateWeekManager upm = new EditRateWeekManager();
		String weekId = request.getParameter("conId");
		Week week = upm.getWeekUpdate(Integer.parseInt(weekId));
		session.setAttribute("week", week);
		return mav;
	}
	@RequestMapping(value = "/admin-update-parking", method = RequestMethod.GET)
	public ModelAndView upDateParking(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("my-properties");
		EditRateWeekManager upm = new EditRateWeekManager();
		String type= request.getParameter("typeOfCondition");
		String weekId =request.getParameter("weekId");
		if("I-I".equals(type)){
			String date = request.getParameter("dateofTypeConditonI");
			System.out.println(upm.updateParking(type,"", date, "", "", weekId,0));
		}else if("I-II".equals(type)){
			String condition =request.getParameter("conditionIII1");
			String date = request.getParameter("dateIII1");
			String time = request.getParameter("timeIII1");
			String typeOfTime= request.getParameter("typeIII1");
			System.out.println(upm.updateParking(type,condition, date, time, typeOfTime, weekId,0));
			
		}else if("II-II".equals(type)){
			String date = request.getParameter("dateIII2");
			String time = "";
			String typeOfTime= "";
			String price = request.getParameter("priceIII2");
			System.out.println(upm.updateParking(type,"", date, time, typeOfTime, weekId,Integer.parseInt(price)));
		}else if("III-II".equals(type)){
			String date = request.getParameter("dateIII3");
			String time = request.getParameter("timeIII3");
			String typeOfTime= "ชั่วโมง";
			String price = request.getParameter("priceIII3");
			System.out.println(upm.updateParking(type,"", date, time, typeOfTime, weekId,Integer.parseInt(price)));
		}
		
		return mav;
	}
	
	
}
