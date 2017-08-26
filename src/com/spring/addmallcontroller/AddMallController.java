package com.spring.addmallcontroller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.*;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Mall;
import com.spring.model.Facilities;;

@Controller
public class AddMallController {
	@RequestMapping(value = "/submit", method = RequestMethod.GET)
	public ModelAndView loadAddMallPage() {
		ModelAndView mav = new ModelAndView("submit");
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
		ModelAndView mav = new ModelAndView("submit");
		MallManager mm = new MallManager();
		FacilitiesManager fm = new FacilitiesManager();
		List<Facilities> list = fm.getAllFacilities();
		String mallName = request.getParameter("mallname");
		String type = request.getParameter("type");
		String area = request.getParameter("area");
		String mallGroup = request.getParameter("mallgroup");
		String statusMall = request.getParameter("statusmall");
		String timeMall = request.getParameter("timemall");
		String phoneNumber = request.getParameter("phonenumber");
		String imageName = request.getParameter("file");
		String[] facilities = request.getParameterValues("facilites");
		
		Mall mall = new Mall(mallName,type,area,mallGroup,statusMall,getCurrentDate(),timeMall,phoneNumber,imageName);
		
		if(facilities == null){
			System.out.println(mm.doHibernateAddMall(mall));
		}else{
			Facilities fac = null;
			for(Facilities f : list){
				for(String s : facilities){
					if(s.equals(f.getFacilitiesId())){
						mall.getFacilites().add(f);
						fac = f;
						fac.getMalls().add(mall);
					}
				}
			}
			System.out.println(mm.doHibernateAddMall(mall));
		}
		return mav;
	}
	
	public String getCurrentDate(){
		SimpleDateFormat sdf = new SimpleDateFormat("MMM-dd-yyyy" , Locale.ENGLISH);
		String date = sdf.format(new Date());
		return date;
	}
}
