package com.spring.admin.liststamp;

import java.util.List;

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
public class ListStampController {
	@RequestMapping(value = "/list-show-stamp-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListStampPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-list-stamp");
		ListStampManager alsm = new ListStampManager();
		String mid = request.getParameter("mallid");
		Long mallid = Long.parseLong(mid);
		List<Stamp> listStamp = alsm.listStamp(mallid);
		int pages = alsm.countPagesStamp(mallid);
		session.setAttribute("pages", pages);
		session.setAttribute("listStamp", listStamp);
		session.setAttribute("listStampSize", listStamp.size());
		return mav;
	}
}
