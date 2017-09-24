package com.spring.calculateparking;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.spring.addmallcontroller.MallManager;
import com.spring.model.Mall;

public class ParkingUserController {
	@RequestMapping(value = "/gettype-user", method = RequestMethod.GET)
	public ModelAndView getType(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("parking-user");
		MallManager mm = new MallManager();
		List<String> listType = mm.getMallType();
		String t = request.getParameter("type");
		md.addAttribute("types", listType);
		List<Mall> listMallByType = new ArrayList<>();
		for (Mall m : mm.getAllMalls()) {
			if (m.getType().equals(t)) {
				listMallByType.add(m);
			}
		}
		session.setAttribute("mallType", listMallByType);
		session.setAttribute("typeMall", t);
		session.setAttribute("nameMall", null);
		return mav;
	}
}
