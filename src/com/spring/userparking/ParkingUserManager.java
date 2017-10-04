package com.spring.userparking;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.spring.model.ConditionOfParking;
import com.spring.model.HibernateConnection;
import com.spring.model.Mall;

public class ParkingUserManager {
	public String checkNumber(String nameMall) {
		String number = "";
		Mall mall = this.doSearchMall(nameMall);
		if (mall.getConditionOfParking().size() == 0) {
			number = "0";
		} else {
			number = "" + mall.getConditionOfParking().size();
		}
		return number;
	}

	public List<String> doSearchConditionOfMall(String nameMall) {
		List<String> list = new ArrayList();
		Mall mall = this.doSearchMall(nameMall);
		String number = "";
		try {
			if (mall.getConditionOfParking().size() == 0) {
				number = "0";
			} else {
				number = "" + mall.getConditionOfParking().size();
				if ("1".equals(number)) {
					for (ConditionOfParking c : mall.getConditionOfParking()) {
						list.add(c.getConName());
						list.add(c.getDateOfCon());
					}
				} else if ("2".equals(number)) {
					String con1 = "";
					String con2 = "";
					String date = "";
					for (ConditionOfParking c : mall.getConditionOfParking()) {
						if ("1".equals(c.getType())) {
							if (60 <= c.getTimeOfCon()) {
								con1 = "" + c.getConName() + " " + (c.getTimeOfCon() / 60) + " ชั่วโมง";
							} else {
								con1 = "" + c.getConName() + " " + c.getTimeOfCon() + " นาที";
							}

						} else if ("2".equals(c.getType())) {
							con2 = "" + c.getConName() + " " + c.getPriceOfCon() + " บาท";
							date = c.getDateOfCon();
						}
					}
					list.add(con1);
					list.add(con2);
					list.add(date);
				} else if ("3".equals(number)) {
					String con1 = "";
					String con2 = "";
					String con3 = "";
					String date = "";
					for (ConditionOfParking c : mall.getConditionOfParking()) {
						if ("1".equals(c.getType())) {
							if (60 <= c.getTimeOfCon()) {
								con1 = "" + c.getConName() + " " + (c.getTimeOfCon() / 60) + " ชั่วโมง";
							} else {
								con1 = "" + c.getConName() + " " + c.getTimeOfCon() + " นาที";
							}

						} else if ("2".equals(c.getType())) {
							con2 = "" + c.getConName() + " " + c.getPriceOfCon() + " บาท";

						} else if ("3".equals(c.getType())) {
							con3 = "ชั่วโมงที่ " + (c.getTimeOfCon()) + " เป็นต้นไป คิดเป็นชั่วโมงละ "
									+ c.getPriceOfCon() + " บาท";
							date = c.getDateOfCon();
						}
					}
					list.add(con1);
					list.add(con2);
					list.add(con3);
					list.add(date);
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

	public String addConditionI(ConditionOfParking c) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(c);
			session.getTransaction().commit();
			session.close();
			return "Add Condition Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Condition !!!";
		}
	}

	public int checkCalculate(String name, String timeIn, String timeOut, String dates, String type) {
		int price = 0;
		if (type.equals("2")) {
			price = calculateParkingI(name, timeIn, timeOut, dates);

		} else if (type.equals("3")) {
			price = calculateParkingII(name, timeIn, timeOut, dates);
		}
		return price;
	}

	public int calculateParkingII(String name, String timeIn, String timeOut, String dates) {
		int totalOfParking = 0;
		int free = 0;
		int price = 0;
		int hourCon3 = 0;
		int priceCon3 = 0;
		boolean minite = false;
		Mall mall = new Mall();
		for (Mall m : getAllMalls()) {
			if (name.equals(m.getMallNameEng())) {
				mall = m;
			}
		}
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
			} else if (c.getType().equals("3")) {
				if (c.getTimeOfCon() >= 60) {
					hourCon3 = c.getTimeOfCon() / 60;
				} else {
					hourCon3 = c.getTimeOfCon();

				}
				priceCon3 = c.getPriceOfCon();

			}
		}
		int arMin = 0;
		int aHour = 0;
		String[] splitTimeIn = timeIn.split(":");
		String[] splitTimeOut = timeOut.split(":");
		int hourIn = Integer.parseInt(splitTimeIn[0]);
		int hourOut = Integer.parseInt(splitTimeOut[0]);
		int miniteIn = Integer.parseInt(splitTimeIn[1]);
		int miniteOut = Integer.parseInt(splitTimeOut[1]);
		if (miniteOut < miniteIn) {
			arMin = (miniteOut + 60) - miniteIn;
			aHour = (hourOut - 1) - hourIn;
		} else {
			arMin = miniteOut - miniteIn;
			aHour = hourOut - hourIn;
		}
		int check = 0;
		if (minite) {
			check = aHour - free;
		} else {
			check = aHour;
		}
		if (check <= hourCon3) {
			if (minite) {
				if (aHour < free) {
					totalOfParking = 0;
				} else {
					if (arMin > 0) {
						aHour += 1;
					}
					totalOfParking = (aHour - free) * price;
				}
			} else {

				if (arMin <= free) {
					totalOfParking = aHour * price;
				} else {
					aHour += 1;
					totalOfParking = (aHour * price);
				}
			}
		} else {
			System.out.println("No");
			if (arMin > 0) {
				aHour += 1;
			}
			totalOfParking = ((hourCon3 - free) * price) + ((aHour - hourCon3) * priceCon3);
		}
		return totalOfParking;
	}

	public int calculateParkingI(String name, String timeIn, String timeOut, String dates) {
		int totalOfParking = 0;
		int free = 0;
		int price = 0;
		boolean minite = false;
		Mall mall = new Mall();
		for (Mall m : getAllMalls()) {
			if (name.equals(m.getMallNameEng())) {
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
		int arMin = 0;
		int aHour = 0;
		String[] splitTimeIn = timeIn.split(":");
		String[] splitTimeOut = timeOut.split(":");

		int hourIn = Integer.parseInt(splitTimeIn[0]);
		int hourOut = Integer.parseInt(splitTimeOut[0]);
		int miniteIn = Integer.parseInt(splitTimeIn[1]);
		int miniteOut = Integer.parseInt(splitTimeOut[1]);
		if (miniteOut < miniteIn) {
			arMin = (miniteOut + 60) - miniteIn;
			aHour = (hourOut - 1) - hourIn;
			System.out.println(666);
		} else {
			arMin = miniteOut - miniteIn;
			aHour = hourOut - hourIn;
		}
		if (minite) {
			if (aHour < free) {
				totalOfParking = 0;
			} else {
				if (arMin > 0) {
					aHour += 1;
				}
				totalOfParking = (aHour - free) * price;
			}
		} else {
			if (arMin <= free) {
				totalOfParking = aHour * price;
			} else {
				aHour += 1;
				totalOfParking = (aHour * price);
			}
		}
		return totalOfParking;

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
