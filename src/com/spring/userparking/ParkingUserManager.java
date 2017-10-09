package com.spring.userparking;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.addmall.AddMallManager;
import com.spring.model.Conditions;
import com.spring.model.HibernateConnection;
import com.spring.model.Mall;
import com.spring.model.Stamp;
import com.spring.model.Week;

public class ParkingUserManager {
	public String checkNumber(String nameMall) {
		String number = "";
		Mall mall = this.doSearchMall(nameMall);
		if (mall.getConditions().size() == 0) {
			number = "0";
		} else {
			number = "" + mall.getConditions().size();
		}
		return number;
	}

	public List<String> doSearchCondition(String nameMall) {
		List<String> list = new ArrayList();
		Mall mall = this.doSearchMall(nameMall);
		String number = "";
		try {
			if (mall.getConditions().size() == 0) {
				number = "0";

			} else {
				number = "" + mall.getConditions().size();
				if ("1".equals(number)) {
					for (Conditions c : mall.getConditions()) {
						if ("I".equals(c.getTypeOfCon())) {
							list.add(c.getConditionName());
							for (Week w : c.getWeek()) {
								list.add(w.getDayOfWeek());
							}
						}
					}
				} else if ("2".equals(number)) {
					boolean ant = true;
					for (Conditions c : mall.getConditions()) {
						if ("I-II".equals(c.getTypeOfCon())) {
							for (Week w : c.getWeek()) {
								list.add(c.getConditionName() + " " + w.getRateTime() + " " + w.getTypeOfTime() + "  "
										+ w.getDayOfWeek());
							}
						}
					}
					for (Conditions c : mall.getConditions()) {
						if ("II-II".equals(c.getTypeOfCon())) {
							for (Week w : c.getWeek()) {
								if (ant) {
									list.add(c.getConditionName() + " " + w.getPrice() + " บาท ");
									ant = false;
								}
							}
						}
					}

				} else if ("3".equals(number)) {
					boolean ant = true;
					for (Conditions c : mall.getConditions()) {
						if ("I-II".equals(c.getTypeOfCon())) {
							for (Week w : c.getWeek()) {
								list.add(c.getConditionName() + " " + w.getRateTime() + " " + w.getTypeOfTime() + "  "
										+ w.getDayOfWeek());
							}
						}
					}
					for (Conditions c : mall.getConditions()) {
						if ("II-II".equals(c.getTypeOfCon())) {
							for (Week w : c.getWeek()) {
								if (ant) {
									list.add(c.getConditionName() + " " + w.getPrice() + " บาท ");
									ant = false;
								}
							}
						}
					}
					boolean ant1 = true;
					for (Conditions c : mall.getConditions()) {
						if ("III-II".equals(c.getTypeOfCon())) {
							for (Week w : c.getWeek()) {
								if (ant1) {
									list.add(" เกินชั่วโมงที่ " + w.getRateTime() + " คิดชั่วโมงละ  " + w.getPrice()
											+ " บาท ");
									ant1 = false;
								}
							}
						}
					}
				}

			}
		} catch (Exception e) {
		}
		return list;
	}

	

	public Mall doSearchMall(String name) {
		Mall mall = new Mall();
		for (Mall m : getAllMalls()) {
			if (name.equals(m.getMallNameEng())) {
				mall = m;
			}
		}
		return mall;
	}

	public List<Mall> doSearchTypeMall(String name) {
		List<Mall> listMallByType = new ArrayList<>();
		for (Mall m : getAllMalls()) {
			if (m.getType().equals(name)) {
				listMallByType.add(m);
			}
		}
		return listMallByType;
	}

	public List<String> getMallType() {
		List<String> list = new ArrayList<String>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("select distinct(type) from Mall").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public int checkCalculate(String nameMall, String timeIn, String timeOut, String dateOfWeek,String[] stamp) {
		
		Mall mall = this.doSearchMall(nameMall);
		Conditions con1 = new Conditions();
		Conditions con2 = new Conditions();
		Conditions con3 = new Conditions();
		Week wc1 = new Week();
		Week wc2 = new Week();
		Week wc3 = new Week();
		// Search mall by name input
		
		for (Conditions c : mall.getConditions()) {
			if (c.getTypeOfCon().equals("I-II")) {
				con1 = c;
				for (Week w : con1.getWeek()) {
					if ("จันทร์-อาทิตย์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("จันทร์") || dateOfWeek.equals("อังคาร") || dateOfWeek.equals("พุธ")
								|| dateOfWeek.equals("พฤหัสบดี") || dateOfWeek.equals("ศุกร์")
								|| dateOfWeek.equals("เสาร์") || dateOfWeek.equals("อาทิตย์")) {
							wc1 = w;
						}
					} else if ("จันทร์-ศุกร์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("จันทร์") || dateOfWeek.equals("อังคาร") || dateOfWeek.equals("พุธ")
								|| dateOfWeek.equals("พฤหัสบดี") || dateOfWeek.equals("ศุกร์")) {
							wc1 = w;
						}

					} else if ("เสาร์-อาทิตย์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("เสาร์") || dateOfWeek.equals("อาทิตย์")) {
							wc1 = w;
						}
					}
				}

			} else if (c.getTypeOfCon().equals("II-II")) {
				con2 = c;
				for (Week w : con2.getWeek()) {
					if ("จันทร์-อาทิตย์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("จันทร์") || dateOfWeek.equals("อังคาร") || dateOfWeek.equals("พุธ")
								|| dateOfWeek.equals("พฤหัสบดี") || dateOfWeek.equals("ศุกร์")
								|| dateOfWeek.equals("เสาร์") || dateOfWeek.equals("อาทิตย์")) {
							wc2 = w;
						}
					} else if ("จันทร์-ศุกร์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("จันทร์") || dateOfWeek.equals("อังคาร") || dateOfWeek.equals("พุธ")
								|| dateOfWeek.equals("พฤหัสบดี") || dateOfWeek.equals("ศุกร์")) {
							wc2 = w;
						}

					} else if ("เสาร์-อาทิตย์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("เสาร์") || dateOfWeek.equals("อาทิตย์")) {
							wc2 = w;
						}
					}
				}
			} else if (c.getTypeOfCon().equals("III-II")) {
				con3 = c;
				for (Week w : con3.getWeek()) {
					if ("จันทร์-อาทิตย์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("จันทร์") || dateOfWeek.equals("อังคาร") || dateOfWeek.equals("พุธ")
								|| dateOfWeek.equals("พฤหัสบดี") || dateOfWeek.equals("ศุกร์")
								|| dateOfWeek.equals("เสาร์") || dateOfWeek.equals("อาทิตย์")) {
							wc3 = w;
						}
					} else if ("จันทร์-ศุกร์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("จันทร์") || dateOfWeek.equals("อังคาร") || dateOfWeek.equals("พุธ")
								|| dateOfWeek.equals("พฤหัสบดี") || dateOfWeek.equals("ศุกร์")) {
							wc3 = w;
						}

					} else if ("เสาร์-อาทิตย์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("เสาร์") || dateOfWeek.equals("อาทิตย์")) {
							wc3 = w;
						}
					}
				}
			}
		}
		// Time in and Time out
		
		String[] splitTimeIn = timeIn.split(":");
		String[] splitTimeOut = timeOut.split(":");
		int hourIn = Integer.parseInt(splitTimeIn[0]);
		int hourOut = Integer.parseInt(splitTimeOut[0]);
		int miniteIn = Integer.parseInt(splitTimeIn[1]);
		int miniteOut = Integer.parseInt(splitTimeOut[1]);
		int aMin=0,aHour=0,total=0;
		if (miniteOut < miniteIn) {
			aMin = (miniteOut + 60) - miniteIn;
			aHour = (hourOut - 1) - hourIn;
		} else {
			aMin = miniteOut - miniteIn;
			aHour = hourOut - hourIn;
		}
		// Serach time of stamp start
		int freeOfStamp = 0;
		
		if(stamp!=null){
			for (String st : stamp) {
				for (Stamp s : mall.getStamp()) {
					if (Integer.parseInt(st) == s.getStampId()) {
						freeOfStamp += s.getHourOfStamp();
					}
				}
			}	
		}
		
		System.out.println(mall.getMallNameEng());
		System.out.println("Stamp:" + freeOfStamp + " Hour");
		// Serach time of stamp stop

		if (mall.getConditions().size() == 2) {
			int conditionIFree =0;
			boolean typeOfHour =false;
			if("ชั่วโมง".equals(wc1.getTypeOfTime())){
				typeOfHour = true;
				conditionIFree =wc1.getRateTime();
			}else{
				typeOfHour = false;
				conditionIFree =wc1.getRateTime();
			}
			if(typeOfHour){//calculate to hour
				int freeHour =wc1.getRateTime()+freeOfStamp;
				if(aMin>0){//MiniteFii +1 hour
					aHour+=1;
				}
				if(aHour<freeHour){
					total+=0;
				}else{
					total+=(aHour-freeHour)*wc2.getPrice();
				}
				
				
			}else{//calculate to minute
				if(conditionIFree<aMin){//MiniteFii 45<50 minIn check minite to hour +1
					aHour+=1;
				}
				if(aHour<freeOfStamp){//HourIn 3<5 FreeStamp
					total =0;
				}else{
					aHour-=freeOfStamp;
					if(aHour<wc2.getRateTime()){
						total+=0;
					}else{
						total+=aHour*wc2.getPrice();
					}
				}
			}
		} else if (mall.getConditions().size() == 3) {
			Boolean typeOfHour =false;
			int conditionIFree=0;
			if("ชั่วโมง".equals(wc1.getTypeOfTime())){
				typeOfHour = true;
				conditionIFree =wc1.getRateTime();
			}else{
				typeOfHour = false;
				conditionIFree =wc1.getRateTime();
			}
			if(typeOfHour){//calculate by hour
				int freeHour =wc1.getRateTime()+freeOfStamp;
				if(aMin>0){//MiniteFii +1 hour
					aHour+=1;
				}
				if(aHour<freeHour){//HourIn 4 < 3+2
					total +=0;
				}else{
					aHour-=freeHour;
					if(aHour>0){
						if((aHour+wc1.getRateTime())>wc3.getRateTime()){
							total+=((wc3.getRateTime()-wc1.getRateTime())*wc2.getPrice())+(((aHour+wc1.getRateTime())-wc3.getRateTime())*wc3.getPrice());
						}else if(aHour<wc1.getRateTime()){
							total+=0;
						}else if(aHour>=wc1.getRateTime()&&aHour<=wc3.getRateTime()){
							total+= aHour*wc2.getPrice();
						}
					}else{
						total+=0;
					}
				}
				
			}else{//calculate by Minite3333
				if(aMin<=wc1.getRateTime()&& aHour<=0){
					total +=0;
				}else{
					if(aMin>wc1.getRateTime()){
						aHour+=1;
					}
					if((aHour-freeOfStamp)>wc3.getRateTime()){
						total+=(((aHour-freeOfStamp)-wc3.getRateTime())*wc3.getPrice())+wc3.getRateTime()*wc2.getPrice();
					}else if((aHour-freeOfStamp)>=1 &&(aHour-freeOfStamp)<=wc3.getRateTime()){
						total+=(aHour-freeOfStamp)*wc2.getPrice();
					}
				}
			}
			
		}

		System.out.println("Time Out :" + timeOut);
		System.out.println("Time In :" + timeIn);
		System.out.println("Condition I :" + wc1.getRateTime() + " " + wc1.getTypeOfTime());
		System.out.println("Condition II :" + wc2.getPrice()+" Batch");
		System.out.println("Condition II :"+" Hour at "+ wc3.getRateTime()+" " + wc3.getPrice()+" Batch");
		System.out.println("Stamp:"+freeOfStamp);
		System.out.println("Time Hour :"+aHour);
		System.out.println("Time Minute :"+aMin);
		System.out.println("Total: "+total);
		return total;
	}

	public Mall searchMall(String nameMall) {
		Mall mall = new Mall();
		for (Mall m : getAllMalls()) {
			if (nameMall.equals(m.getMallNameEng())) {
				mall = m;
			}
		}
		return mall;
	}

	

	
	public List<Mall> getAllMalls() {
		List<Mall> list = new ArrayList<Mall>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from Mall").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
