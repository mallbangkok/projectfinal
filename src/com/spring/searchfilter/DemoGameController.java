package com.spring.searchfilter;

import java.util.ArrayList;
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

@Controller
public class DemoGameController {
	@RequestMapping(value = "/demo-test-game", method = RequestMethod.GET)
	public ModelAndView loadPageDemo(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("demo-test-game");
	
		MallManager mm = new MallManager();
		Set<String> list = new HashSet<String>();
		for (Mall m : mm.getAllMalls()) {
			list.add(m.getArea());
		}
		List<String> listMall = new ArrayList();
		List<String> listMalls = new ArrayList();
		for (String s : list) {
			listMall.add(s);
		}
		List<String> lists = new ArrayList<String>();
		for (String s : listMall) {
			String demos = "";
			int num = 1;
			for (Mall m : mm.getAllMalls()) {
				if (s.equals(m.getArea())) {
					demos = demos + "'" + m.getMallNameEng() + "'";
					if (num < mm.getAllMalls().size()) {
						demos = demos + ",";
					}
					num++;
				}
			}
			listMalls.add(demos);

		}
		session.setAttribute("listMall", listMall);
		session.setAttribute("listMalls", listMalls);

		return mav;
	}
}
