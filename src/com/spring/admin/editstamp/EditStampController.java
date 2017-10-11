package com.spring.admin.editstamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.admin.updateparking.UpdateParkingManager;
import com.spring.model.Stamp;

@Controller
public class EditStampController {
	@RequestMapping(value = "/edit-stamp", method = RequestMethod.GET)
	public ModelAndView loadEditStamp(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-update-rate");
		EditStampManager upm = new EditStampManager();
		String id = request.getParameter("stampid");
		Stamp stamp = upm.getStampUpdate(Integer.parseInt(id));
		session.setAttribute("stamp", stamp);
		session.setAttribute("week", null);
		return mav;
	}

	@RequestMapping(value = "/update-stamp", method = RequestMethod.GET)
	public ModelAndView upDateStamp(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("my-properties");
		String message = "";
		EditStampManager upm = new EditStampManager();
		String id = request.getParameter("stampid");
		String hour = request.getParameter("freeHour");
		String price = request.getParameter("price4");
		message = upm.updateStamp(id, price, hour);
		md.addAttribute("message",message);
		session.setAttribute("stamp", null);
		return mav;
	}
}
