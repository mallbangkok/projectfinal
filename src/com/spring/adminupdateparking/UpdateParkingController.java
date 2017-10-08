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
import com.spring.model.Mall;
import com.spring.model.Store;


@Controller
public class UpdateParkingController {
	@RequestMapping(value = "admin-editparking", method = RequestMethod.GET)
	public ModelAndView addStamp(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView("admin-list-condition-category");
		UpdateParkingManager ea = new UpdateParkingManager();
		List<String> types = ea.getMallType();

		session.setAttribute("type", types);
		session.setAttribute("page", 1);
		return mav;
	}

	@RequestMapping(value = "/list-mall-condition-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListMallStorePage(HttpSession session, HttpServletRequest request) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		ModelAndView mav = new ModelAndView("admin-list-mall-condition");

		AdminListStoreManager alsm = new AdminListStoreManager();

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

	@RequestMapping(value = "/list-show-condition-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListStorePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-list-condition");
		AdminListStoreManager alsm = new AdminListStoreManager();

		String mid = request.getParameter("mallid");
		Long mallid = Long.parseLong(mid);

		List<Store> listStore = alsm.listStore(mallid);

		int pages = alsm.countPages(mallid);

		session.setAttribute("pages", pages);
		session.setAttribute("listStore", listStore);
		session.setAttribute("listStoreSize", listStore.size());
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

	// true
	@RequestMapping(value = "/update-conditionI-parking", method = RequestMethod.GET)
	public ModelAndView updateConditonI(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-editparking");
		UpdateParkingManager em = new UpdateParkingManager();
		String nameMall = request.getParameter("nameMalls");
		String conditionI = request.getParameter("typeOfFreeConditionI");
		String dateI = request.getParameter("dateofTypeConditonI");

		session.setAttribute("sizeofcon", "" + 1);
		return mav;
	}

	@RequestMapping(value = "/update-conditionII-parking", method = RequestMethod.GET)
	public ModelAndView updateConditonII(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-editparking");
		UpdateParkingManager em = new UpdateParkingManager();
		String nameMall = request.getParameter("nameMalls");
		String conditionI = request.getParameter("nameConII1");
		String dateI = request.getParameter("dateoftypeII1");
		String timeII1 = request.getParameter("timeII1");
		String type1 = request.getParameter("timeoftypeII");
		String timeoftypeII = request.getParameter("timeoftypeII");
		String conditionII = request.getParameter("nameConII2");
		String dateII = request.getParameter("dateoftypeII2");
		String price = request.getParameter("priceConII");

		session.setAttribute("conditions", null);
		session.setAttribute("sizeofcon", "" + 2);
		return mav;
	}

	// true
	@RequestMapping(value = "/update-conditionIII-parking", method = RequestMethod.GET)
	public ModelAndView updateConditonIII(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-editparking");
		AddMallManager mm = new AddMallManager();
		UpdateParkingManager em = new UpdateParkingManager();
		String nameMall = request.getParameter("nameMalls");
		String con1 = request.getParameter("conditionIII1");
		String date1 = request.getParameter("dateIII1");
		String time1 = request.getParameter("timeIII1");
		String type1 = request.getParameter("typeIII1");
		String con2 = request.getParameter("conIII2");
		String date2 = request.getParameter("dateIII2");
		String price2 = request.getParameter("priceIII2");
		String con3 = request.getParameter("conIII3");
		String date3 = request.getParameter("dateIII3");
		String time3 = request.getParameter("timeIII3");
		String price3 = request.getParameter("priceIII3");

		session.setAttribute("conditions", null);
		session.setAttribute("sizeofcon", "" + 3);
		return mav;
	}
}
