package com.spring.model;

import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.swing.plaf.synth.SynthSpinnerUI;

import com.spring.addmallcontroller.MallManager;

public class RunGame {
	public static void main(String[] arge) {
		System.out.println("Start");
		MallManager mm = new MallManager();
		Mall mall = new Mall();
		int totalOfParking = 0;
		int free = 0;
		int price= 0;
		boolean minite = false;
		for (Mall m : mm.getAllMalls()) {
			if ("Big C Extra Ratchadapisek".equals(m.getMallNameEng())) {
				mall = m;
			}
		}

		ConditionOfParking con1 = new ConditionOfParking();
		ConditionOfParking con2 = new ConditionOfParking();
		for (ConditionOfParking c : mall.getConditionOfParking()) {
			if (c.getType().equals("1")) {
				if (c.getTimeOfCon() >= 60) {
					free = c.getTimeOfCon() / 60;
					minite = true;
				} else {
					free = c.getTimeOfCon();
					minite = false;
				}
			} else if (c.getType().equals("2")) {
				price = c.getPriceOfCon();
			}
		}
		int arMin=0;
		int aHour=0;
		String timeIn = "07:25";
		String timeOut = "16:12";
		String[] splitTimeIn = timeIn.split(":");
		String[] splitTimeOut = timeOut.split(":");
		
		int hourIn = Integer.parseInt(splitTimeIn[0]);
		int hourOut = Integer.parseInt(splitTimeOut[0]);
		int miniteIn = Integer.parseInt(splitTimeIn[1]);
		int miniteOut = Integer.parseInt(splitTimeOut[1]);
		if(miniteOut<miniteIn){
			 arMin = (miniteOut+60)-miniteIn;
			 aHour = (hourOut-1) -hourIn;
			 System.out.println(666);
		}else{
			 arMin =miniteOut-miniteIn;
			 aHour = hourOut -hourIn;
			System.out.println(555);
		}if(arMin>0){
			aHour+=1;
		}
		if(minite){
			if(aHour<free){
				totalOfParking=0;
			}else{
				totalOfParking=(aHour-free)*price;
			}
		}else{
			//ต้องทำ
		}
		System.out.println(timeOut);
		System.out.println(timeIn);
		System.out.println("Free:"+free);
		System.out.println(18-7);
		System.out.println("Hour: "+aHour);
		System.out.println("Minite:"+arMin);
		System.out.println("Totle : "+totalOfParking);

	}

	public  void writeFile() {
		String area = "WebContent/WEB-INF/assets/text/areas1.txt";
		String malls = "WebContent/WEB-INF/assets/text/listmalls1.txt";
		MallManager mm = new MallManager();
		Set<String> listArea = new HashSet();
		Set<String> listDepart = new HashSet();
		Set<String> listGroup = new HashSet();
		for (Mall m : mm.getAllMalls()) {
			listArea.add(m.getArea());
			listDepart.add(m.getType());
			listGroup.add(m.getMallGroup());

		}
		for (String s : listArea) {
			System.out.println(s);
		}
		String[] liArea = listArea.toArray(new String[listArea.size()]);
		String[] liDepart = listDepart.toArray(new String[listDepart.size()]);
		String[] liGroup = listGroup.toArray(new String[listGroup.size()]);
		try {
			FileWriter out = new FileWriter(area);
			FileWriter outMall = new FileWriter(malls);
			for (int i = 0; i < liArea.length; i++) {
				out.write("Area:::" + liArea[i] + ":::a\n");
			}
			for (int i = 0; i < liDepart.length; i++) {
				out.write("Depart:::" + liDepart[i] + ":::a\n");
			}
			for (int i = 0; i < liGroup.length; i++) {
				out.write("Groups:::" + liGroup[i] + ":::a\n");
			}
			out.close();
			for (Mall m : mm.getAllMalls()) {
				outMall.write(m.getArea() + ":::" + m.getMallNameEng() + ":::a\n");
				outMall.write(m.getType() + ":::" + m.getMallNameEng() + ":::a\n");
				outMall.write(m.getMallGroup() + ":::" + m.getMallNameEng() + ":::a\n");
			}
			outMall.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
