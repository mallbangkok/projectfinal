package com.spring.admin.listcondition;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.spring.model.Conditions;
@Controller
public class ListConditionController {
	@RequestMapping(value = "/list-show-condition-admin", method = RequestMethod.GET)
	public ModelAndView loadAdminListConditionPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("admin-list-condition");
		ListConditionManager alsm = new ListConditionManager();

		String mid = request.getParameter("mallid");
		Long mallid = Long.parseLong(mid);
		List<Conditions> listCondition = alsm.listCondition(mallid);
		
		int pages = alsm.countPages(mallid);

		session.setAttribute("pages", pages);
		session.setAttribute("listCondition", listCondition);
		session.setAttribute("listConditionSize", listCondition.size());
		return mav;
	}
}
