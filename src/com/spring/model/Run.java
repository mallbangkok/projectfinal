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
		List<Mall> listMall = mm.getAllMalls();
		List<Mall> listMallLastedUpdate = new ArrayList<>();
		
		for(int i = 0;i < 4;i++){
			listMallLastedUpdate.add(listMall.get(listMall.size() - (i + 1)));
		}
		
		for(Mall m : listMallLastedUpdate){
			System.out.println(m.getMallNameEng());
		}
		
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
}
