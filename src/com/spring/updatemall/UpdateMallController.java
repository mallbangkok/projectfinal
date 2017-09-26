package com.spring.updatemall;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Facilities;
import com.spring.model.Mall;

@Controller
public class UpdateMallController {
	@RequestMapping(value = "/list-update-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminUpdateMallPage(HttpSession session, HttpServletRequest request) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView("admin-update-mall");

		UpdateMallManager umm = new UpdateMallManager();
		
		String mid = request.getParameter("mallid");
		long mallId = Long.parseLong(mid);
		Mall mall = umm.isSelectedMall(mallId);
		
		List<Facilities> listFac = umm.listFacilities();
		
		session.setAttribute("mallid", mallId);
		session.setAttribute("mall", mall);
		session.setAttribute("listFac", listFac);
		return mav;
	}

	@RequestMapping(value = "/list-update-admin", method = RequestMethod.POST)
	public ModelAndView do_AdminUpdateMall(HttpSession session, HttpServletRequest request) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		ModelAndView mav = new ModelAndView("my-properties");
		UpdateMallManager umm = new UpdateMallManager();

		long mid = (long) session.getAttribute("mallid");
		//System.out.println(mm.do_deleteMall(mid));
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
		
		String message = umm.isUpdateMall(mid, mallNameEng, mallNameThai, type, area, mallGroup, statusMall, umm.getCurrentDate(), timeMall, phoneNumber, imageName, facilities);
		session.setAttribute("message", message);
		return mav;
	}
}
