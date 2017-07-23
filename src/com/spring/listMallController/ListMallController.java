package com.spring.listMallController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.addMallController.MallManager;
import com.spring.model.Mall;

@Controller
public class ListMallController {
	@RequestMapping(value = "/list-mall", method = RequestMethod.GET)
	public ModelAndView loadListMallPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("list-mall");
		MallManager mm = new MallManager();
		List<Mall> list = mm.getAllMalls();
		
		session.setAttribute("list", list);
		md.addAttribute("list",list);
		md.addAttribute("size",list.size());
		return mav;
	}
	
	@RequestMapping(value = "/list-mall", method = RequestMethod.POST)
	public ModelAndView ListMallPage(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("mall-detail");
		MallManager mm = new MallManager();
		String[] m = request.getParameterValues("mallid");
//		System.out.println(""+m[2]);
//		long mallId = Long.parseLong(m);
//		List<Mall> list = mm.getAllMalls();
//		for(Mall mall : list){
//			if(mall.getMallId() == mallId){
//				System.out.println(mall.getMallName());
//				md.addAttribute("mall" , mall);
//			}
//		}
		return mav;
	}
}
