package com.spring.listmallcontroller;

import java.util.ArrayList;
import java.util.List;

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
public class ListMallController {
	@RequestMapping(value = "/list-mall", method = RequestMethod.GET)
	public ModelAndView loadListMallPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("list-mall");
		MallManager mm = new MallManager();
		List<Mall> list = mm.getAllMalls();
		List<Mall> listByType = new ArrayList<>();
		String typename = request.getParameter("typename");
		
		for(Mall m : list){
			if(m.getType().equals(typename)){
				listByType.add(m);
			}
		}
		session.setAttribute("type", typename);
		session.setAttribute("listByType", listByType);
		session.setAttribute("size", listByType.size());
		return mav;
	}
	
	@RequestMapping(value = "/list-mall", method = RequestMethod.POST)
	public ModelAndView ListMallPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("mall-detail");
		MallManager mm = new MallManager();
		
		String m = request.getParameter("valueClick");
		long mallId = Long.parseLong(m);
		List<Mall> list = mm.getAllMalls();

		for(Mall mall : list){
			if(mall.getMallId() == mallId){
				session.setAttribute("mall", mall);
			}
		}
		return mav;
	}
}
