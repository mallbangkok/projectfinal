package com.spring.model;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
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

import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;

import com.spring.addmallcontroller.*;
import com.spring.logincontroller.AddUserManager;
import com.spring.logincontroller.LoginMannager;
import com.spring.store.controller.StoreManager;

public class Run {

	public static void main(String[] args) throws Exception {
		MallManager mm = new MallManager();
		FacilitiesManager fm = new FacilitiesManager();
		StoreManager sm = new StoreManager();
		
//		BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\demon\\Documents\\GitHub\\projectfinal\\WebContent\\WEB-INF\\assets\\test3.txt"));
//		try {
//		    StringBuilder sb = new StringBuilder();
//		    String line = br.readLine();
//
//		    while (line != null) {
//		        sb.append(line);
//		        sb.append(System.lineSeparator());
//		        line = br.readLine();
//		    }
//		    String everything = sb.toString();
//		    System.out.print(everything);
//		} finally {
//		    br.close();
//		}
		
		//readFile("test3.txt");
		
//		for(Store s : sm.getAllStores()){
//			if(s.getMall().getMallId() == 12){
//				System.out.println(s.getStoreName() + " " + s.getMall().getMallNameEng());
//			}
//		}
		double value = 43 / 10.0;
		System.out.println(value);
		int pages = (int) Math.ceil(value);
		System.out.println(pages);
	}
	
	public static String readFile(String filename) throws IOException{
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
		    System.out.println(everything);
		    return everything;
		} finally {
		    br.close();
		}
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
