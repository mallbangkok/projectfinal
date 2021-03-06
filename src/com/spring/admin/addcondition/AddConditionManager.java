package com.spring.admin.addcondition;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.Conditions;
import com.spring.model.HibernateConnection;
import com.spring.model.Mall;
import com.spring.model.Week;

public class AddConditionManager {
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
	public List<Mall> getMallShow(String t) {
		List<Mall> list = new ArrayList<>();
		for (Mall m : getAllMalls()) {
			if (m.getType().equals(t)) {
				list.add(m);
			}
		}
		return list;
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
	public String doAddConditionI(String name, String conditionI, String dateI) {
		String status = "";
		Conditions condition = new Conditions(conditionI, "I-I");
		Week week = new Week(0, 0, "", dateI);
		Mall mall = this.searchMall(name);
		try {
			if (mall.getConditions().size() > 0) {
				System.out.println("Size:" + mall.getConditions().size());
				Conditions c = new Conditions();
				for (Conditions s : mall.getConditions()) {
					if ("I".equals(s.getTypeOfCon())) {
						c = s;
					}
				}
				mall.getConditions().add(c);
				c.getWeek().add(week);
				c.setMall(mall);
				week.setConditions(c);
				c.getWeek().add(week);
				System.out.println(this.addWeek(week));

			} else {
				mall.getConditions().add(condition);
				condition.setMall(mall);
				week.setConditions(condition);
				System.out.println(this.addConditions(condition));
				System.out.println(this.addWeek(week));

			}

			status = "Add Condition Success !";
		} catch (Exception e) {
			e.printStackTrace();
			status = "Can't Add Condition  !";
		}
		return status;
	}
	public String doAddConditionII(String nameMall, String conditionI, String dateI, String timeII1,
			String timeoftypeII, String conditionII, String dateII, String price) {
		String status = "";
		Week w1 = new Week(0, Integer.parseInt(timeII1), timeoftypeII, dateI);
		Week w2 = new Week(Integer.parseInt(price), 0, "ชั่วโมง", dateII);

		Mall mall = this.searchMall(nameMall);

		try {
			if (mall.getConditions().size() > 0) {
				Conditions c1 = new Conditions();
				Conditions c2 = new Conditions();
				for (Conditions s : mall.getConditions()) {
					if ("I-II".equals(s.getTypeOfCon())) {
						c1 = s;
					} else if ("II-II".equals(s.getTypeOfCon())) {
						c2 = s;
					}
				}
				
				c1.setMall(mall);
				c2.setMall(mall);
				w1.setConditions(c1);
				w2.setConditions(c2);
				c1.getWeek().add(w1);
				c2.getWeek().add(w2);
				System.out.println(this.addWeek(w1));
				System.out.println(this.addWeek(w2));
				System.out.println(">>0");
			} else {
				Conditions c1 = new Conditions(conditionI, "I-II");
				Conditions c2 = new Conditions(conditionII, "II-II");
				System.out.println("0<<");
				mall.getConditions().add(c1);
				mall.getConditions().add(c2);
				c1.setMall(mall);
				c2.setMall(mall);
				c1.getWeek().add(w1);
				w1.setConditions(c1);
				w2.setConditions(c2);
				c2.getWeek().add(w2);
				System.out.println(this.addConditions(c1));
				System.out.println(this.addWeek(w1));
				System.out.println(this.addConditions(c2));
				System.out.println(this.addWeek(w2));
			}
			status = "Add Condition Success !";
		} catch (Exception e) {
			e.printStackTrace();
			status = "Can't Add Condition  !";
		}
		return status;
	}
	public String doAddConditionIII(String nameMall, String con1, String date1, String time1, String type1, String con2,
			String date2, String price2, String con3, String date3, String time3, String price3) {
		String status = "";
		Mall mall = this.searchMall(nameMall);
		Week w1 = new Week(0, Integer.parseInt(time1), type1, date1);
		Week w2 = new Week(Integer.parseInt(price2), 0, "ชั่วโมง", date2);
		Week w3 = new Week(Integer.parseInt(price3), Integer.parseInt(time3), "ชั่วโมง", date3);
		try {
			if (mall.getConditions().size() > 0) {
				Conditions c1 = new Conditions();
				Conditions c2 = new Conditions();
				Conditions c3 = new Conditions();
				for (Conditions s : mall.getConditions()) {
					if ("I-II".equals(s.getTypeOfCon())) {
						c1 = s;
					} else if ("II-II".equals(s.getTypeOfCon())) {
						c2 = s;
					} else if ("III-II".equals(s.getTypeOfCon())) {
						c3 = s;
					}
				}
				w1.setConditions(c1);
				w2.setConditions(c2);
				w3.setConditions(c3);
				c1.getWeek().add(w1);
				c2.getWeek().add(w2);
				c3.getWeek().add(w3);
				System.out.println(this.addWeek(w1));
				System.out.println(this.addWeek(w2));
				System.out.println(this.addWeek(w3));

			} else {

				Conditions c1 = new Conditions(con1, "I-II");
				Conditions c2 = new Conditions(con2, "II-II");
				Conditions c3 = new Conditions(con3, "III-II");
				c1.setMall(mall);
				c2.setMall(mall);
				c3.setMall(mall);
				mall.getConditions().add(c1);
				mall.getConditions().add(c2);
				mall.getConditions().add(c3);
				w1.setConditions(c1);
				w2.setConditions(c2);
				w3.setConditions(c3);
				c1.getWeek().add(w1);
				c2.getWeek().add(w2);
				c3.getWeek().add(w3);
				System.out.println(this.addConditions(c1));
				System.out.println(this.addWeek(w1));
				System.out.println(this.addConditions(c2));
				System.out.println(this.addWeek(w2));
				System.out.println(this.addConditions(c3));
				System.out.println(this.addWeek(w3));
			}
			status = "Add Condition Success !";
		} catch (Exception e) {
			e.printStackTrace();
			status = "Can't Add Condition  !";
		}

		return status;
	}
	public String addWeek(Week w) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(w);
			session.getTransaction().commit();
			session.close();
			return "Add Condition Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Condition !!!";
		}
	}
	public String addConditions(Conditions c) {
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
	public Mall searchMall(String name) {
		Mall mall = new Mall();
		for (Mall m : this.getAllMalls()) {
			if (name.equalsIgnoreCase(m.getMallNameEng())) {
				mall = m;
			}
		}
		return mall;
	}
	
}
