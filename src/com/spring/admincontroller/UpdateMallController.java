package com.spring.admincontroller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.addmallcontroller.FacilitiesManager;
import com.spring.addmallcontroller.MallManager;
import com.spring.model.Facilities;
import com.spring.model.Mall;

@Controller
public class UpdateMallController {
	@RequestMapping(value = "/list-update-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminUpdatePage(HttpSession session, HttpServletRequest request) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView("admin-update-mall");

		MallManager mm = new MallManager();
		Mall mall = null;
		String mid = request.getParameter("mallid");
		long mallId = Long.parseLong(mid);
		for (Mall m : mm.getAllMalls()) {
			if (mallId == m.getMallId()) {
				mall = m;
			}
		}
		session.setAttribute("mallid", mallId);
		session.setAttribute("mall", mall);

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
		MallManager mm = new MallManager();
		FacilitiesManager fm = new FacilitiesManager();
		List<Facilities> list = fm.getAllFacilities();

		long mid = (long) session.getAttribute("mallid");
		System.out.println(mm.do_deleteMall(mid));
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
		
		Mall mall = new Mall(mallNameEng, mallNameThai, type, area, mallGroup, statusMall, getCurrentDate(),
				timeMall, phoneNumber, imageName);
		
		if (facilities == null) {
			System.out.println(mm.doHibernateUpdateMall(mall));
		} else {
			for(String s : facilities){
				for(Facilities f : list){
					if (s.equals(f.getFacilitiesId())) {
						mall.getFacilites().add(f);
						f.getMalls().add(mall);
					}
				}
			}
			System.out.println(mm.doHibernateUpdateMall(mall));
		}

		return mav;
	}

	public String getCurrentDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("MMM-dd-yyyy", Locale.ENGLISH);
		String date = sdf.format(new Date());
		return date;
	}
}
