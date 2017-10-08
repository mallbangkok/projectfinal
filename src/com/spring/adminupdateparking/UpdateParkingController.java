package com.spring.adminupdateparking;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.spring.addmall.AddMallManager;
import com.spring.adminliststore.AdminListStoreManager;
import com.spring.model.Conditions;
import com.spring.model.Mall;
import com.spring.model.Stamp;
import com.spring.model.Store;
import com.spring.model.Week;


@Controller
public class UpdateParkingController {
	@RequestMapping(value = "/admin-delete-stamp", method = RequestMethod.GET)
	public ModelAndView deleteStamp(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("my-properties");
		UpdateParkingManager upm = new UpdateParkingManager();
		String id = request.getParameter("stampid");
		System.out.println(upm.removeStamp(Integer.parseInt(id)));
		return mav;
	}
	@RequestMapping(value = "/update-stamp", method = RequestMethod.GET)
	public ModelAndView upDateStamp(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("my-properties");
		UpdateParkingManager upm = new UpdateParkingManager();
		String id = request.getParameter("stampid");
		String hour = request.getParameter("freeHour");
		String price = request.getParameter("price4");
		System.out.println(upm.updateStamp(id, price, hour));
		return mav;
	}
	@RequestMapping(value = "/edit-stamp", method = RequestMethod.GET)
	public ModelAndView loadEditStamp(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-update-rate");
		UpdateParkingManager upm = new UpdateParkingManager();
		String id = request.getParameter("stampid");
		Stamp stamp = upm.getStampUpdate(Integer.parseInt(id));
		session.setAttribute("stamp", stamp);
		
		return mav;
	}
	
	@RequestMapping(value = "/admin-delete-condition", method = RequestMethod.GET)
	public ModelAndView removeCondition(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("my-properties");
		UpdateParkingManager upm = new UpdateParkingManager();
		String conId = request.getParameter("conditionid");
		System.out.println(upm.removeCondition(Integer.parseInt(conId)));
		
		return mav;
	}
	@RequestMapping(value = "/admin-update-parking", method = RequestMethod.GET)
	public ModelAndView upDateParking(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("my-properties");
		UpdateParkingManager upm = new UpdateParkingManager();
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
	@RequestMapping(value = "/edit-rateofcondition", method = RequestMethod.GET)
	public ModelAndView loadAdminUpdateRatePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-update-rate");
		UpdateParkingManager upm = new UpdateParkingManager();
		String weekId = request.getParameter("conId");
		Week week = upm.getWeekUpdate(Integer.parseInt(weekId));
		session.setAttribute("week", week);
		return mav;
	}
	
	@RequestMapping(value = "admin-editparking", method = RequestMethod.GET)
	public ModelAndView addStamp(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView("admin-list-condition-category");
		UpdateParkingManager ea = new UpdateParkingManager();
		List<String> types = ea.getMallType();
		session.setAttribute("type", types);
		session.setAttribute("page", 1);
		return mav;
	}
	//true
	@RequestMapping(value = "/list-mall-condition-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListMallStorePage(HttpSession session, HttpServletRequest request) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView("admin-list-mall-condition");
		UpdateParkingManager alsm = new UpdateParkingManager();
		String type = request.getParameter("type");
		List<Mall> listMalls = new ArrayList<>();
		for (Mall m : alsm.getAllMalls()) {
			if (type.equals(m.getType())) {
				listMalls.add(m);
			}
		}
		session.setAttribute("listMalls", listMalls);
		session.setAttribute("listMallSize", listMalls.size());
		return mav;
	}
	//false
	@RequestMapping(value = "/list-show-condition-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListConditionPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-list-condition");
		UpdateParkingManager alsm = new UpdateParkingManager();

		String mid = request.getParameter("mallid");
		Long mallid = Long.parseLong(mid);
		List<Conditions> listCondition = alsm.listCondition(mallid);
		
		int pages = alsm.countPages(mallid);

		session.setAttribute("pages", pages);
		session.setAttribute("listCondition", listCondition);
		session.setAttribute("listConditionSize", listCondition.size());
		return mav;
	}
	
	@RequestMapping(value = "/list-show-stamp-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListStampPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-list-stamp");
		UpdateParkingManager alsm = new UpdateParkingManager();
		String mid = request.getParameter("mallid");
		Long mallid = Long.parseLong(mid);
		List<Stamp> listStamp = alsm.listStamp(mallid);
		int pages = alsm.countPagesStamp(mallid);
		System.out.println("Size::::::::"+listStamp.size());
		session.setAttribute("pages", pages);
		session.setAttribute("listStamp", listStamp);
		session.setAttribute("listStampSize", listStamp.size());
		return mav;
	}
	
	@RequestMapping(value = "/admin-delete-rate", method = RequestMethod.GET)
	public ModelAndView removeRateOfCondition(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("my-properties");
		UpdateParkingManager upm = new UpdateParkingManager();
		String weekId = request.getParameter("rateid");
		System.out.println(upm.removeRateOfCondition(Integer.parseInt(weekId)));
		
		return mav;
	}
	@RequestMapping(value = "/seacch-rate-week", method = RequestMethod.GET)
	public ModelAndView loadAdminListRatePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-list-ratetimeofcondition");
		UpdateParkingManager alsm = new UpdateParkingManager();

		String mid = request.getParameter("conId");
		int conditionId = Integer.parseInt(mid);

		List<Week> listWeek = alsm.listWeek(conditionId);
	
		int pages = alsm.countPagesWeek(conditionId);

		session.setAttribute("pages", pages);
		session.setAttribute("listWeek", listWeek);
		session.setAttribute("listWeekSize", listWeek.size());
		return mav;
	}


	// true
	@RequestMapping(value = "/gettype-edit", method = RequestMethod.GET)
	public ModelAndView getType(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-editparking");
		UpdateParkingManager em = new UpdateParkingManager();
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

	

	

	
	@RequestMapping(value = "/change-page-mall-condition", method = RequestMethod.GET)
	public ModelAndView changedAdminListStorePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-list-mall-condition");
		
		String p = request.getParameter("page");
		System.out.println(p);
		
		int page = Integer.parseInt(p);
		session.setAttribute("page", page);
		return mav;
	}
}
