package com.spring.model;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import com.spring.addmallcontroller.*;
import com.spring.logincontroller.AddUserManager;
import com.spring.logincontroller.LoginMannager;
import com.spring.store.controller.StoreManager;

public class Run {

	public static void main(String[] args) {
		MallManager mm = new MallManager();
		FacilitiesManager fm = new FacilitiesManager();
//		List<Mall> list =
//		list.get(0).getFacilites()
		
		//System.out.println(mm.do_deleteMall(1));
		
		for(Mall m : mm.getAllMalls()){
			System.out.println(m.getMallId());
			for(Facilities f : m.getFacilites()){
				System.out.println(f.getFacilitiesId());
			}
		}
		
//		String[] facilities = {"fac1","fac2","fac3","fac4","fac5"};
//		Mall mall = new Mall("asdf", "asdf", "Regional Mall", "asdf", "asdf", "asdf", getCurrentDate(),
//				"asdf", "asdf", "asdf");
//		Facilities fac = null;
//		for(Facilities f : fm.getAllFacilities()){
//			for(String s : facilities){
//				if(s.equals(f.getFacilitiesId())){
//					mall.getFacilites().add(f);
//					fac = f;
//					fac.getMalls().add(mall);
//				}
//			}
//		}
//		System.out.println(mm.doHibernateAddMall(mall));
	}
	public static String getCurrentDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("MMM-dd-yyyy", Locale.ENGLISH);
		String date = sdf.format(new Date());
		return date;
	}
	public static double calculateTime(String timeIn, String timeOut) {
		CalculateParking cp1 = new CalculateParking(timeIn, timeOut);
		NoStamp ns1 = new NoStamp("NS1",
				"๏ฟฝัด๏ฟฝ ๏ฟฝ๏ฟฝ.๏ฟฝ๏ฟฝ 30 /๏ฟฝัด๏ฟฝ๏ฟฝีก ๏ฟฝ๏ฟฝ.๏ฟฝ๏ฟฝ 40 /๏ฟฝ๏ฟฝ ๏ฟฝ๏ฟฝ๏ฟฝ 3 ๏ฟฝ็นต๏ฟฝ๏ฟฝ ๏ฟฝ๏ฟฝ.๏ฟฝ๏ฟฝ 20");
		Service s1 = new Service("S01", "20 ๏ฟฝาท", "3 ๏ฟฝ๏ฟฝ", ns1);
		String[] values = s1.getNoStamp().getCondition().split("/");
		String[] hour1 = values[0].split(" ");
		String[] hour2 = values[1].split(" ");
		String[] hour3 = values[2].split(" ");

		double priceHour1 = Double.parseDouble(hour1[hour1.length - 1]);
		double priceHour2 = Double.parseDouble(hour2[hour2.length - 1]);
		double priceHour3 = Double.parseDouble(hour3[hour3.length - 1]);

		double hours = Double.parseDouble(cp1.getTimeOut()) - Double.parseDouble(cp1.getTimeIn());
		double hour = hours - 3; // free 1st hour and 2nd hour = 30 , 3th hour =
									// 40

		double sum = (priceHour1 + priceHour2) + (priceHour3 * hour);
		return sum;

	}
}
