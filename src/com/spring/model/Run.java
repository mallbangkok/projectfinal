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
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.spring.searchcustom.SearchCustomManager;



public class Run {
	
	
	public static void main(String[] args) throws Exception {
		String result = "KFC";
		SearchCustomManager sm = new SearchCustomManager();
		List<Store> listStore = new ArrayList<>();
		
		
		for(Store s : sm.getAllStores()){
			if(s.getStoreName().matches(result + "(.*)")){
				listStore.add(s);
			}
		}
	    
	    for(Store s : listStore){
	    	System.out.println(s.getStoreName() + " " + s.getMall().getMallNameEng());
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
