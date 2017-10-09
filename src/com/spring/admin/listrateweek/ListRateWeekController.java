package com.spring.admin.listrateweek;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.spring.model.Week;

@Controller
public class ListRateWeekController {
	@RequestMapping(value = "/seacch-rate-week", method = RequestMethod.GET)
	public ModelAndView loadAdminListRatePage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-list-ratetimeofcondition");
		ListRateWeekManager alsm = new ListRateWeekManager();

		String mid = request.getParameter("conId");
		int conditionId = Integer.parseInt(mid);

		List<Week> listWeek = alsm.listWeek(conditionId);
	
		int pages = alsm.countPagesWeek(conditionId);

		session.setAttribute("pages", pages);
		session.setAttribute("listWeek", listWeek);
		session.setAttribute("listWeekSize", listWeek.size());
		return mav;
	}
}
