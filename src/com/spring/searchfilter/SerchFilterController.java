package com.spring.searchfilter;

import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.addmallcontroller.MallManager;
import com.spring.model.Mall;
import com.spring.model.Store;
import com.spring.store.controller.StoreManager;

@Controller
public class SerchFilterController {
	@RequestMapping(value = "/loadsearchfilter", method = RequestMethod.GET)
	public ModelAndView loadPageSerch(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("index-search-filter");
		MallManager mm = new MallManager();
		Mall mall = new Mall();
		String area = "WebContent/WEB-INF/assets/text/area1.txt";
		String malls = "WebContent/WEB-INF/assets/text/listmall1.txt";

		Set<String> listArea = new HashSet();
		Set<String> listDepart = new HashSet();
		Set<String> listGroup = new HashSet();
		for (Mall m : mm.getAllMalls()) {
			listArea.add(m.getArea());
			listDepart.add(m.getType());
			listGroup.add(m.getMallGroup());

		}
		String[] liArea = listArea.toArray(new String[listArea.size()]);
		String[] liDepart = listDepart.toArray(new String[listDepart.size()]);
		String[] liGroup = listGroup.toArray(new String[listGroup.size()]);
		try {
			FileWriter out = new FileWriter(area);
			FileWriter outMall = new FileWriter(malls);
			for (int i = 0; i < liArea.length; i++) {
				out.write("Area:::" + liArea[i] + "\n");
			}
			for (int i = 0; i < liDepart.length; i++) {
				out.write("Depart:::" + liDepart[i] + "\n");
			}
			for (int i = 0; i < liGroup.length; i++) {
				out.write("Groups:::" + liGroup[i] + "\n");
			}
			out.close();
			for (Mall m : mm.getAllMalls()) {
				outMall.write(m.getArea() + ":::" + m.getMallNameEng() + "\n");
				outMall.write(m.getType() + ":::" + m.getMallNameEng() + "\n");
				outMall.write(m.getMallGroup() + ":::" + m.getMallNameEng() + "\n");
			}
			outMall.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		for (Mall m : mm.getAllMalls()) {
			if ("Siam Square One".equals(m.getMallNameEng())) {
				mall = m;
			}
		}
		List<String> listFood = new ArrayList();
		List<String> listShopping = new ArrayList();
		List<String> listService = new ArrayList();
		for (Store s : mall.getStores()) {
			if (s.getStoreType().equals("Food")) {
				listFood.add(s.getStoreName() + " Level " + s.getFloor());
			}
			if (s.getStoreType().equals("Shopping")) {
				listShopping.add(s.getStoreName() + " Level " + s.getFloor());
			}
			if (s.getStoreType().equals("Service")) {
				listService.add(s.getStoreName() + " Level " + s.getFloor());
			}
		}
		Collections.sort(listFood);
		Collections.sort(listShopping);
		Collections.sort(listService);

		session.setAttribute("listShopping", listShopping);
		session.setAttribute("listFood", listFood);
		session.setAttribute("listService", listService);
		session.setAttribute("dataMall", mall);
		return mav;

	}

	@RequestMapping(value = "/search-mall", method = RequestMethod.GET)
	public ModelAndView doLoadSelectMall(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("index-search-filter");
		MallManager mm = new MallManager();
		String name = request.getParameter("malls");
		System.out.println("--" + name + "--");
		Mall mall = new Mall();
		for (Mall m : mm.getAllMalls()) {
			String demo = (m.getMallNameEng());
			System.out.println("-*-" + demo + "-*-");
			if (name.equals(demo)) {
				mall = m;
			}
		}
		List<String> listFood = new ArrayList();
		List<String> listShopping = new ArrayList();
		List<String> listService = new ArrayList();
		for (Store s : mall.getStores()) {
			if (s.getStoreType().equals("Food")) {
				listFood.add(s.getStoreName() + " Level " + s.getFloor());
			}
			if (s.getStoreType().equals("Shopping")) {
				listShopping.add(s.getStoreName() + " Level " + s.getFloor());
			}
			if (s.getStoreType().equals("Service")) {
				listService.add(s.getStoreName() + " Level " + s.getFloor());
			}
		}

		session.setAttribute("listShopping", listShopping);

		session.setAttribute("listFood", listFood);
		session.setAttribute("listService", listService);
		session.setAttribute("dataMall", mall);

		return mav;
	}

}
