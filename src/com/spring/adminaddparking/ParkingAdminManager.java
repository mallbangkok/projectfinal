package com.spring.adminaddparking;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.ConditionOfParking;
import com.spring.model.HibernateConnection;
import com.spring.model.Mall;

public class ParkingAdminManager {
	public List<Mall> getMallShow(String t) {
		List<Mall> list = new ArrayList<>();
		for (Mall m : getAllMalls()) {
			if (m.getType().equals(t)) {
				list.add(m);
			}
		}
		return list;
	}

	public String doAddConditionIII(String nameMall, String con1, String date1, String time1, String type1, String con2,
			String date2, String price2, String con3, String date3, String time3, String price3) {
		String status = "";
		int times = Integer.parseInt(time1);
		ConditionOfParking c1 = new ConditionOfParking(con1, times, 0, date1, "1");
		ConditionOfParking c2 = new ConditionOfParking(con2, 0, Integer.parseInt(price2), date2, "2");
		ConditionOfParking c3 = new ConditionOfParking(con3, Integer.parseInt(time3), Integer.parseInt(price3), date3,
				"3");
		Mall mall = this.searchMall(nameMall);
		try {
			mall.getConditionOfParking().add(c1);
			mall.getConditionOfParking().add(c2);
			mall.getConditionOfParking().add(c3);
			c1.setMall(mall);
			c2.setMall(mall);
			c3.setMall(mall);
			System.out.println(this.addCondition(c1));
			System.out.println(this.addCondition(c2));
			System.out.println(this.addCondition(c3));

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public String doAddConditionII(String nameMall, String conditionI, String dateI, String timeII1,
			String timeoftypeII, String conditionII, String dateII, String price) {
		String status = "";
		int times = Integer.parseInt(timeII1);
		ConditionOfParking c1 = new ConditionOfParking(conditionI, times, 0, dateI, "1");
		ConditionOfParking c2 = new ConditionOfParking(conditionII, 0, Integer.parseInt(price), dateII, "2");
		Mall mall = this.searchMall(nameMall);

		try {
			mall.getConditionOfParking().add(c1);
			mall.getConditionOfParking().add(c2);
			c1.setMall(mall);
			c2.setMall(mall);
			System.out.println(this.addCondition(c1));
			System.out.println(this.addCondition(c2));

			status = "Add Condition Success !";
		} catch (Exception e) {
			e.printStackTrace();
			status = "Can't Add Condition  !";
		}
		return status;
	}

	public String doAddConditionI(String name, String conditionI, String dateI) {
		String status = "";
		ConditionOfParking c = new ConditionOfParking(conditionI, 0, 0, dateI, "1");
		Mall mall = this.searchMall(name);
		try {
			mall.getConditionOfParking().add(c);
			c.setMall(mall);
			System.out.println(this.addCondition(c));
			status = "Add Condition Success !";
		} catch (Exception e) {
			e.printStackTrace();
			status = "Can't Add Condition  !";
		}
		return status;
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

	public int checkHour(String s, int times) {
		int time = 0;
		if ("ชั่วโมง".equals(s)) {
			times = (times * 60);
		}
		return time;
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

	public String addCondition(ConditionOfParking c) {
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
}
