package com.spring.model;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import com.spring.addMallController.ArticleManager;
import com.spring.addMallController.FacilitiesManager;
import com.spring.addMallController.MallManager;
import com.spring.loginController.AddUserManager;
import com.spring.loginController.LoginMannager;

public class Run {

	public static void main(String[] args) {
		AddUserManager aum = new AddUserManager();
		Login login = new Login("admin","1234");
		LoginMannager lmg = new LoginMannager();
		List<Login> list = lmg.getAllLogin();
		
		ArticleManager am = new ArticleManager();
		
//		ImageArticle ia1 = new ImageArticle("image1");
//		ImageArticle ia2 = new ImageArticle("image2");
		
//		Article a1 = new Article("Article1","Hello World","10.30 pm","No");
//		a1.getArticleImages().add(ia1);
//		a1.getArticleImages().add(ia2);
//		ia1.setArticle(a1);
//		ia2.setArticle(a1);
//		System.out.println(am.doHibernateAddArticle(a1));

		
		//System.out.println(mm.doHibernateAddMall(m2));
		//addMall();
		
//		SimpleDateFormat sdf = new SimpleDateFormat("MMM-dd-yyyy" , Locale.ENGLISH);
//		String date = sdf.format(new Date());
//		System.out.println(date); 
	}
	
	public static void addMall(){
		MallManager mm = new MallManager();
		FacilitiesManager fm = new FacilitiesManager();
		
		Facilities f1 = fm.getAllFacilities().get(0);
		Mall m1 = new Mall("Robinson Lifestyle Center Samutprakan","Regional Mall","South-East Bangkok"
				,"Central Group","Open","07 Jan 2017","10:00 - 22:00 Everyday","021742911-21","robinson-samutprakan");
		
		Mall m2 = new Mall("CentralPlaza Salaya (เซ็นทรัล ศาลายา)","Regional Mall","South-West Bangkok"
				,"Central Group","Open","02 Dec 2016","11:00 - 21:30 Everyday","021742911-21","central-salaya");
		m1.getFacilites().add(f1);
		f1.getMalls().add(m1);
		
		System.out.println(mm.doHibernateAddMall(m1));
		//System.out.println(mm.doHibernateAddMall(m2));
	}
	
	public static double calculateTime(String timeIn,String timeOut){
		CalculateParking cp1 = new CalculateParking(timeIn,timeOut);
		NoStamp ns1 = new NoStamp("NS1","�Ѵ� ��.�� 30 /�Ѵ��ա ��.�� 40 /�� ��� 3 �繵�� ��.�� 20");
		Service s1 = new Service("S01","20 �ҷ","3 ��",ns1);
		String[] values = s1.getNoStamp().getCondition().split("/");
		String[] hour1 = values[0].split(" ");
		String[] hour2 = values[1].split(" ");
		String[] hour3 = values[2].split(" ");
		
		double priceHour1 = Double.parseDouble(hour1[hour1.length - 1]);
		double priceHour2 = Double.parseDouble(hour2[hour2.length - 1]);
		double priceHour3 = Double.parseDouble(hour3[hour3.length - 1]);
		
		double hours = Double.parseDouble(cp1.getTimeOut()) - Double.parseDouble(cp1.getTimeIn());
		double hour = hours - 3; // free 1st hour and 2nd hour = 30 , 3th hour = 40
		
		double sum = (priceHour1 + priceHour2) + (priceHour3 * hour);
		return sum;
	}
}
