package com.spring.article;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Article;

@Controller
public class UpdateArticleController {
	@RequestMapping(value = "/list-update-article", method = RequestMethod.GET)
	public ModelAndView loadAdminUpdatePage(HttpSession session, HttpServletRequest request) throws IOException {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView("admin-update-article");
		ArticleManager am = new ArticleManager();
		
		String aid = request.getParameter("articleid");
		long article_id = Long.parseLong(aid);
		
		Article art = null;
		for(Article a : am.getAllArticle()){
			if(article_id == a.getArticleid()){
				art = a;
			}
		}
		
		session.setAttribute("article", art);
		session.setAttribute("articleid", article_id);
		session.setAttribute("description", readFile(art.getFilename()));
		return mav;
	}
	
	@RequestMapping(value = "/article-update", method = RequestMethod.POST)
	public ModelAndView do_addArticle(HttpServletRequest request, HttpSession session, Model md) {
		ModelAndView mav = new ModelAndView("my-properties");
		ArticleManager am = new ArticleManager();
		String aName = request.getParameter("articlename");
		String txt = request.getParameter("textarea");
		String articletype = request.getParameter("articletype");
		System.out.println(txt);
		
		String aid = request.getParameter("article-id");
		long article_id = Long.parseLong(aid);
		Article art = new Article(article_id,aName,aName+".txt",getCurrentDate(),0,articletype);
		System.out.println(am.doHibernateUpdateArticle(art));
		
		saveFile(aName,txt);
		
		return mav;
	}
	
	public void saveFile(String filename,String text){
		String FILENAME = "C:\\Users\\demon\\Documents\\GitHub\\projectfinal\\WebContent\\WEB-INF\\assets\\" + filename + ".txt";
		
		try (BufferedWriter bw = new BufferedWriter(new FileWriter(FILENAME))) {
			bw.write(text);
			// no need to close it.
			bw.close();
			System.out.println("Write Update File Successfully...");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public String readFile(String filename) throws IOException{
		BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\demon\\Documents\\GitHub\\projectfinal\\WebContent\\WEB-INF\\assets\\" + filename));
		try {
		    StringBuilder sb = new StringBuilder();
		    String line = br.readLine();

		    while (line != null) {
		        sb.append(line);
		        sb.append(System.lineSeparator());
		        line = br.readLine();
		    }
		    String everything = sb.toString();
		    return everything;
		} finally {
		    br.close();
		}
	}
	
	public String getCurrentDate(){
		SimpleDateFormat sdf = new SimpleDateFormat("MMM-dd-yyyy" , Locale.ENGLISH);
		String date = sdf.format(new Date());
		return date;
	}
}
