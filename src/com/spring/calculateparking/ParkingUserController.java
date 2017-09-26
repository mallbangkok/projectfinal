package com.spring.calculateparking;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
<<<<<<< HEAD

import com.spring.addmall.AddMallManager;
=======
import com.spring.addmallcontroller.MallManager;
import com.spring.model.ConditionOfParking;
>>>>>>> 06d692f8cbb00615c2734dfcd0a5750aa396552f
import com.spring.model.Mall;

@Controller
public class ParkingUserController {
	@RequestMapping(value = "/parking-user", method = RequestMethod.GET)
	public ModelAndView loadPageCalculateParkingUser(HttpSession session) {
		ModelAndView mav = new ModelAndView("parking-user");
		ArrayList<String> list = new ArrayList<String>();
		list.add("55");
		list.add("55");
		list.add("55");
		list.add("55");
		session.setAttribute("listCondition", list);
		return mav;
	}
	
	@RequestMapping(value = "/gettype-user", method = RequestMethod.GET)
	public ModelAndView getType(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("parking-user");
<<<<<<< HEAD
		AddMallManager mm = new AddMallManager();
		List<String> listType = mm.getMallType();
=======
		ParkingUserManager pm = new ParkingUserManager();
>>>>>>> 06d692f8cbb00615c2734dfcd0a5750aa396552f
		String t = request.getParameter("type");
		List<String> listType = pm.getMallType();
		md.addAttribute("types", listType);
		List<Mall> listMallByType = pm.doSearchTypeMall(t);
		session.setAttribute("mallType", listMallByType);
		session.setAttribute("typeMall", t);
		session.setAttribute("nameMall", null);
		return mav;
	}

	@RequestMapping(value = "/dosearchmall-user", method = RequestMethod.GET)
	public ModelAndView doSearchMall(HttpServletRequest request,HttpSession session) {
		ModelAndView mav = new ModelAndView("parking-user");
		ParkingUserManager pm = new ParkingUserManager();
		MallManager mm = new MallManager();
		String nameMall = request.getParameter("nameMall");
		Mall mall = pm.doSearchMall(nameMall);
		
		String number = ""; 
		try{
			if(mall.getConditionOfParking().size()==0){
				number="0";
				session.setAttribute("number", null);
				System.out.println(number);
			}else{
				number=""+mall.getConditionOfParking().size();
				if("1".equals(number)){
					session.setAttribute("malls", mall);	
					session.setAttribute("number", number);
				}else if("2".equals(number)){
					String con1 = "";
					String con2 = "";
					String date ="";
					for(ConditionOfParking c:mall.getConditionOfParking()){
						if("1".equals(c.getType())){
							if(60<c.getTimeOfCon()){
								con1 =""+c.getConName()+" "+(c.getTimeOfCon()/60)+" ชั่วโมง";
							}else{
								con1 =""+c.getConName()+" "+c.getTimeOfCon() +" นาที";
							}
							 
						}else if("2".equals(c.getType())){
							 con2 =""+c.getConName()+" "+c.getPriceOfCon()+" บาท";
							 date =c.getDateOfCon();
						}
					}
					session.setAttribute("con1", con1);
					session.setAttribute("con2", con2);
					session.setAttribute("date", date);
					session.setAttribute("number", number);
				}else if ("3".equals(number)){
					String con1 ="";
					String con2 ="";
					String con3 ="";
					String date ="";
					for(ConditionOfParking c:mall.getConditionOfParking()){
						if("1".equals(c.getType())){
							if(60<c.getTimeOfCon()){
								con1 =""+c.getConName()+" "+(c.getTimeOfCon()/60)+" ชั่วโมง";
							}else{
								con1 =""+c.getConName()+" "+c.getTimeOfCon() +" นาที";
							}
							 
						}else if("2".equals(c.getType())){
							 con2 =""+c.getConName()+" "+c.getPriceOfCon()+" บาท";
							 
						}else if("3".equals(c.getType())){
							con3="ชั่วโมงที่ "+(c.getTimeOfCon())+" เป็นต้นไป คิดเป็นชั่วโมงละ "+c.getPriceOfCon()+" บาท";
							date =c.getDateOfCon();
						}
					}
					session.setAttribute("con1", con1);
					session.setAttribute("con2", con2);
					session.setAttribute("con3", con3);
					session.setAttribute("date", date);
					session.setAttribute("number", number);
				}
				session.setAttribute("malls", mall);
				
				
			}
		}catch(Exception e){}
		
		return mav;
	}
	@RequestMapping(value = "/docalculate-user", method = RequestMethod.GET)
	public ModelAndView doCalculate(HttpServletRequest request,HttpSession session) {
		ParkingUserManager pm = new ParkingUserManager();
		ModelAndView mav = new ModelAndView("parking-user");
		String timeIn= request.getParameter("timeIn");
		String timeOut = request.getParameter("timeOut");
		String nameMall = request.getParameter("mallsName");
		String type= request.getParameter("typeNumber");
		String date = request.getParameter("dateOfCal");
		int price=pm.checkCalculate(nameMall,timeIn,timeOut,date,type);
		session.setAttribute("priceafter",""+price);
		
		
		return mav;
	}
}
