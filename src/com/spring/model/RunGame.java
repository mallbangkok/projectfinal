package com.spring.model;

import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.addmall.AddMallManager;

public class RunGame {
	public static void main(String[] arge) {
		System.out.println( do_deleteCondition(57));
	}

	public static String do_deleteCondition(int conid) {
		try {
			String message = "";
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();

			for (Conditions a : getAllConditions()) {
				if (conid == a.getConditionId()) {
					session.delete(a);
					message = "Delete Conditions Successfully...";
					break;
				} else {
					message = "Cannot Delete , You don't have Conditions id " + conid;
				}
			}
			session.getTransaction().commit();
			session.close();
			return message;
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Delete Article !!!";
		}
	}

	public static List<Conditions> getAllConditions() {
		List<Conditions> list = new ArrayList<Conditions>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from Conditions").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public void testcalculate() {
		AddMallManager mm = new AddMallManager();
		String mallNameI = "Platform Wongwianyai";
		String mallNameII = "The Up Rama 3";
		Mall mall = new Mall();
		Conditions con1 = new Conditions();
		Conditions con2 = new Conditions();
		Conditions con3 = new Conditions();
		Week wc1 = new Week();
		Week wc2 = new Week();
		Week wc3 = new Week();
		// Search mall by name input
		for (Mall m : mm.getAllMalls()) {
			if (mallNameII.equals(m.getMallNameEng())) {
				mall = m;
			}
		}
		// Date input
		// String dateOfWeek = "จันทร์";
		// String dateOfWeek = "เสาร์";
		String dateOfWeek = "จันทร์";
		for (Conditions c : mall.getConditions()) {
			if (c.getTypeOfCon().equals("I")) {
				con1 = c;
				for (Week w : con1.getWeek()) {
					if ("จันทร์-อาทิตย์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("จันทร์") || dateOfWeek.equals("อังคาร") || dateOfWeek.equals("พูธ")
								|| dateOfWeek.equals("พฤหัสบดี") || dateOfWeek.equals("ศุกร์")
								|| dateOfWeek.equals("เสาร์") || dateOfWeek.equals("อาทิตบ์")) {
							wc1 = w;
						}
					} else if ("จันทร์-ศุกร์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("จันทร์") || dateOfWeek.equals("อังคาร") || dateOfWeek.equals("พูธ")
								|| dateOfWeek.equals("พฤหัสบดี") || dateOfWeek.equals("ศุกร์")) {
							wc1 = w;
						}

					} else if ("เสาร์-อาทิตย์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("เสาร์") || dateOfWeek.equals("อาทิตบ์")) {
							wc1 = w;
						}
					}
				}

			} else if (c.getTypeOfCon().equals("II")) {
				con2 = c;
				for (Week w : con2.getWeek()) {
					if ("จันทร์-อาทิตย์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("จันทร์") || dateOfWeek.equals("อังคาร") || dateOfWeek.equals("พูธ")
								|| dateOfWeek.equals("พฤหัสบดี") || dateOfWeek.equals("ศุกร์")
								|| dateOfWeek.equals("เสาร์") || dateOfWeek.equals("อาทิตบ์")) {
							wc2 = w;
						}
					} else if ("จันทร์-ศุกร์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("จันทร์") || dateOfWeek.equals("อังคาร") || dateOfWeek.equals("พูธ")
								|| dateOfWeek.equals("พฤหัสบดี") || dateOfWeek.equals("ศุกร์")) {
							wc2 = w;
						}

					} else if ("เสาร์-อาทิตย์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("เสาร์") || dateOfWeek.equals("อาทิตบ์")) {
							wc2 = w;
						}
					}
				}
			} else if (c.getTypeOfCon().equals("III")) {
				con3 = c;
				for (Week w : con3.getWeek()) {
					if ("จันทร์-อาทิตย์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("จันทร์") || dateOfWeek.equals("อังคาร") || dateOfWeek.equals("พูธ")
								|| dateOfWeek.equals("พฤหัสบดี") || dateOfWeek.equals("ศุกร์")
								|| dateOfWeek.equals("เสาร์") || dateOfWeek.equals("อาทิตบ์")) {
							wc3 = w;
						}
					} else if ("จันทร์-ศุกร์".equals(w.getDayOfWeek())) {
						if (dateOfWeek.equals("จันทร์") || dateOfWeek.equals("อังคาร") || dateOfWeek.equals("พูธ")
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
		String timeIn = "06:00";
		String timeOut = "12:10";
		String[] splitTimeIn = timeIn.split(":");
		String[] splitTimeOut = timeOut.split(":");
		int hourIn = Integer.parseInt(splitTimeIn[0]);
		int hourOut = Integer.parseInt(splitTimeOut[0]);
		int miniteIn = Integer.parseInt(splitTimeIn[1]);
		int miniteOut = Integer.parseInt(splitTimeOut[1]);
		int aMin = 0, aHour = 0, total = 0;
		if (miniteOut < miniteIn) {
			aMin = (miniteOut + 60) - miniteIn;
			aHour = (hourOut - 1) - hourIn;
		} else {
			aMin = miniteOut - miniteIn;
			aHour = hourOut - hourIn;
		}
		// Serach time of stamp start
		int freeOfStamp = 0;
		int[] stamp = {};
		for (Integer st : stamp) {
			for (Stamp s : mall.getStamp()) {
				if (st == s.getStampId()) {
					freeOfStamp += s.getHourOfStamp();
				}
			}
		}
		System.out.println(mall.getMallNameEng());
		System.out.println("Stamp:" + freeOfStamp + " Hour");
		// Serach time of stamp stop

		if (mall.getConditions().size() == 2) {
			int conditionIFree = 0;
			System.out.println("2222222222");
			boolean typeOfHour = false;
			if ("ชั่วโมง".equals(wc1.getTypeOfTime())) {
				typeOfHour = true;
				conditionIFree = wc1.getRateTime();
			} else {
				typeOfHour = false;
				conditionIFree = wc1.getRateTime();
			}
			if (typeOfHour) {// calculate to hour
				int freeHour = wc1.getRateTime() + freeOfStamp;
				if (aMin > 0) {// MiniteFii +1 hour
					aHour += 1;
				}
				if (aHour < freeHour) {
					total += 0;
				} else {
					total += (aHour - freeHour) * wc2.getPrice();
				}

			} else {// calculate to minute
				if (conditionIFree < aMin) {// MiniteFii 45<50 minIn check
											// minite to hour +1
					aHour += 1;
				}
				if (aHour < freeOfStamp) {// HourIn 3<5 FreeStamp
					total = 0;
				} else {
					aHour -= freeOfStamp;
					if (aHour < wc2.getRateTime()) {
						total += 0;
					} else {
						total += aHour * wc2.getPrice();
					}
				}
			}
		} else if (mall.getConditions().size() == 3) {
			Boolean typeOfHour = false;
			int conditionIFree = 0;
			if ("ชั่วโมง".equals(wc1.getTypeOfTime())) {
				typeOfHour = true;
				conditionIFree = wc1.getRateTime();
			} else {
				typeOfHour = false;
				conditionIFree = wc1.getRateTime();
			}
			if (typeOfHour) {// calculate by hour
				int freeHour = wc1.getRateTime() + freeOfStamp;
				if (aMin > 0) {// MiniteFii +1 hour
					aHour += 1;
					System.out.println("+++++++1");
				}
				if (aHour < freeHour) {// HourIn 4 < 3+2
					total += 0;
				} else {
					aHour -= freeHour;
					if (aHour > 0) {
						if ((aHour + wc1.getRateTime()) > wc3.getRateTime()) {
							total += ((wc3.getRateTime() - wc1.getRateTime()) * wc2.getPrice())
									+ (((aHour + wc1.getRateTime()) - wc3.getRateTime()) * wc3.getPrice());
							System.out.println(">>>");
						} else if (aHour < wc1.getRateTime()) {
							total += 0;
						} else if (aHour >= wc1.getRateTime() && aHour <= wc3.getRateTime()) {
							total += aHour * wc2.getPrice();
						}
					} else {
						total += 0;
					}
				}

			} else {// calculate by Minite3333
				if (aMin <= wc1.getRateTime() && aHour <= 0) {
					total += 0;
				} else {
					if (aMin > wc1.getRateTime()) {
						aHour += 1;
					}
					if ((aHour - freeOfStamp) > wc3.getRateTime()) {
						total += (((aHour - freeOfStamp) - wc3.getRateTime()) * wc3.getPrice())
								+ wc3.getRateTime() * wc2.getPrice();
					} else if ((aHour - freeOfStamp) >= 1 && (aHour - freeOfStamp) <= wc3.getRateTime()) {
						total += (aHour - freeOfStamp) * wc2.getPrice();
					}
				}
			}

		}

		System.out.println("Time Out :" + timeOut);
		System.out.println("Time In :" + timeIn);
		System.out.println("Condition I :" + wc1.getRateTime() + " " + wc1.getTypeOfTime());
		System.out.println("Condition II :" + wc2.getPrice() + " Batch");
		System.out.println("Condition II :" + " Hour at " + wc3.getRateTime() + " " + wc3.getPrice() + " Batch");
		System.out.println("Stamp:" + freeOfStamp);
		System.out.println("Time Hour :" + aHour);
		System.out.println("Time Minute :" + aMin);
		System.out.println("Total: " + total);

	}
	// End Calculate
	// ------------------------------------------------------------------------------------------------>
	// End Calculate

	public static List<Mall> getAllMalls() {
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

	public static Mall searchMall(String nameMall) {
		Mall mall = new Mall();
		for (Mall m : getAllMalls()) {
			if (nameMall.equals(m.getMallNameEng())) {
				mall = m;
			}
		}
		return mall;
	}

	public void calculateII() {
		Conditions con1 = new Conditions();
		Conditions con2 = new Conditions();
		Conditions con3 = new Conditions();
		Week wc1 = new Week();
		Week wc2 = new Week();
		Week wc3 = new Week();
		Mall mall = searchMall("The JAS Ramintra");
		String dateOfWeek = "จันทร์";
		for (Conditions c : mall.getConditions()) {
			if (c.getTypeOfCon().equals("I")) {
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
			} else if (c.getTypeOfCon().equals("II")) {
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
			} else if (c.getTypeOfCon().equals("III")) {
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
		boolean minite = false;
		int totalOfParking = 0;
		int free = 0;
		int arMin = 0;
		int aHour = 0;
		String timeIn = "06:00";
		String timeOut = "10:00";
		String[] splitTimeIn = timeIn.split(":");
		String[] splitTimeOut = timeOut.split(":");
		int hourIn = Integer.parseInt(splitTimeIn[0]);
		int hourOut = Integer.parseInt(splitTimeOut[0]);
		int miniteIn = Integer.parseInt(splitTimeIn[1]);
		int miniteOut = Integer.parseInt(splitTimeOut[1]);

		if ("ชั่วโมง".equals(wc1.getTypeOfTime())) {
			free = wc1.getRateTime();
			minite = true;
		} else {
			free = wc1.getRateTime();
			minite = false;
		}
		if (miniteOut < miniteIn) {
			arMin = (miniteOut + 60) - miniteIn;
			aHour = (hourOut - 1) - hourIn;
		} else {
			arMin = miniteOut - miniteIn;
			aHour = hourOut - hourIn;
		}
		int check = 0;
		int price2 = wc2.getPrice();
		int price3 = wc3.getPrice();
		int hour3 = wc3.getRateTime();
		if (minite) {
			check = aHour - free;
			System.out.println("444444");
		} else {
			check = aHour;
			System.out.println("5555");
		}
		if (check <= hour3) {
			if (minite) {
				System.out.println("2222");
				if (aHour < free) {
					totalOfParking = 0;
				} else {
					if (arMin > 0) {
						aHour += 1;
					}
					totalOfParking = (aHour - free) * price2;
				}
			} else {
				System.out.println("111111");
				if (arMin <= free) {
					totalOfParking = aHour * price2;
				} else {
					aHour += 1;
					totalOfParking = (aHour * price2);
				}
			}
		} else {
			System.out.println("No");
			System.out.println("Check:" + check + " <= " + hour3);
			if (arMin > 0) {
				aHour += 1;
			}
			totalOfParking = ((hour3 - free) * price2) + ((aHour - hour3) * price3);
		}
		System.out.println(timeOut);
		System.out.println(timeIn);
		System.out.println("Free:" + free + wc1.getTypeOfTime());
		System.out.println("Price:" + price2);
		System.out.println("Hour: " + aHour);
		System.out.println(price3 + " >><< " + hour3);
		System.out.println("Minite:" + arMin);
		System.out.println("Totle : " + totalOfParking);

	}

	public void addWeek() {
		AddMallManager mm = new AddMallManager();
		Mall mall = new Mall();
		for (Mall m : mm.getAllMalls()) {
			if ("Siam Discovery".equals(m.getMallNameEng())) {
				mall = m;
			}
		}
		Conditions con = new Conditions();
		for (Conditions c : mall.getConditions()) {
			con = c;
		}

		Week w1 = new Week(100, 100, "hour", "ever-day");
		w1.setConditions(con);
		con.getWeek().add(w1);
		System.out.println(addWeek(w1));

	}

	public static String addConditions(Conditions s) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(s);
			session.getTransaction().commit();
			session.close();
			return "Add Conditions successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Conditions !!!";
		}
	}

	public static String addWeek(Week w) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(w);
			session.getTransaction().commit();
			session.close();
			return "Add Week successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Week !!!";
		}
	}

	public void writeFile() {
		String area = "WebContent/WEB-INF/assets/text/areas1.txt";
		String malls = "WebContent/WEB-INF/assets/text/listmalls1.txt";
		AddMallManager mm = new AddMallManager();
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
