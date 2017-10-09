package com.spring.addmall;

import java.io.UnsupportedEncodingException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Facilities;

@Controller
public class AddMallController {
	@RequestMapping(value = "/submit", method = RequestMethod.GET)
	public ModelAndView loadAddMallPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("submit");
		AddMallManager am = new AddMallManager();
		List<Facilities> listFac = am.listFacilities();
		session.setAttribute("listFac", listFac);
		return mav;
	}
	
	@RequestMapping(value = "/submit", method = RequestMethod.POST)
	public ModelAndView do_addMall(HttpServletRequest request, HttpSession session, Model md) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView("my-properties");
		
		AddMallManager mm = new AddMallManager();
		
		String mallNameEng = request.getParameter("mallnameEng");
		String mallNameThai = request.getParameter("mallNameThai");
		String type = request.getParameter("type");
		String area = request.getParameter("area");
		String mallGroup = request.getParameter("mallgroup");
		String statusMall = request.getParameter("statusmall");
		String timeMall = request.getParameter("timemall");
		String phoneNumber = request.getParameter("phonenumber");
		String imageName = request.getParameter("file");
		String[] facilities = request.getParameterValues("facilites");
		
		String message = mm.isAddMall(mallNameEng, mallNameThai, type, area, mallGroup, statusMall, timeMall, phoneNumber, imageName, facilities);
		md.addAttribute("message",message);
		return mav;
	}
}
