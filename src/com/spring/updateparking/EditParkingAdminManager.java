package com.spring.updateparking;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.ConditionOfParking;
import com.spring.model.HibernateConnection;
import com.spring.model.Mall;

public class EditParkingAdminManager {
	public int getTime(int t, String s) {
		int total = 0;
		if ("ชั่วโมง".equals(s)) {
			total = (t * 60);
		} else {
			total = t;
		}
		return total;
	}

	public String updateConditionIII(String price3, String time3, String date3, String con3, String price2,
			String date2, String con2, String type1, String time1, String date1, String con1, String name) {
		int times = Integer.parseInt(time1);
		int time = getTime(times, type1);
		ConditionOfParking c1 = new ConditionOfParking(0, con1, time, 0, date1, "1");
		ConditionOfParking c2 = new ConditionOfParking(0, con2, 0, Integer.parseInt(price2), date2, "2");
		ConditionOfParking c3 = new ConditionOfParking(0, con3, Integer.parseInt(time3), Integer.parseInt(price3),
				date3, "3");
		String status = "";
		Mall mall = new Mall();
		System.out.println("2" + name + "2");
		for (Mall m : getAllMalls()) {
			if (name.equalsIgnoreCase(m.getMallNameEng())) {
				mall = m;
			}
		}
		for (ConditionOfParking c : mall.getConditionOfParking()) {
			if ("1".equals(c.getType())) {
				c1.setConditionId(c.getConditionId());
			} else if ("2".equals(c.getType())) {
				c2.setConditionId(c.getConditionId());
			} else if ("3".equals(c.getType())) {
				c3.setConditionId(c.getConditionId());
			}

		}
		try {
			c1.setMall(mall);
			c2.setMall(mall);
			c3.setMall(mall);
			doUpdateCondition(c1);
			doUpdateCondition(c2);
			doUpdateCondition(c3);
			status = "Success!";
		} catch (Exception e) {
			e.printStackTrace();
			status = "Can't update";
		}
		return status;
	}

	public String updateConditionI(String conditionI, String dateI, String name) {
		ConditionOfParking c1 = new ConditionOfParking(0, conditionI, 0, 0, dateI, "1");
		String status = "";
		Mall mall = new Mall();
		System.out.println("2" + name + "2");
		for (Mall m : getAllMalls()) {
			if (name.equalsIgnoreCase(m.getMallNameEng())) {
				mall = m;
			}
		}
		for (ConditionOfParking c : mall.getConditionOfParking()) {
			if ("1".equals(c.getType())) {
				c1.setConditionId(c.getConditionId());
			}
		}
		try {
			c1.setMall(mall);
			doUpdateCondition(c1);
			status = "Success!";
		} catch (Exception e) {
			e.printStackTrace();
			status = "Can't update";
		}
		return status;
	}

	public String updateConditionII(String name, String price, String dateII, String conditionII, String timeoftypeII,
			String type1, String timeII1, String dateI, String conditionI) {
		int times = Integer.parseInt(timeII1);
		int time = getTime(times, type1);
		ConditionOfParking c1 = new ConditionOfParking(0, conditionI, time, 0, dateI, "1");
		ConditionOfParking c2 = new ConditionOfParking(0, conditionII, 0, Integer.parseInt(price), dateII, "2");
		String status = "";
		Mall mall = new Mall();
		System.out.println("2" + name + "2");
		for (Mall m : getAllMalls()) {
			if (name.equalsIgnoreCase(m.getMallNameEng())) {
				mall = m;
			}
		}
		for (ConditionOfParking c : mall.getConditionOfParking()) {
			if ("1".equals(c.getType())) {
				c1.setConditionId(c.getConditionId());
			} else if ("2".equals(c.getType())) {
				c2.setConditionId(c.getConditionId());
			}
		}
		try {
			c1.setMall(mall);
			c2.setMall(mall);
			doUpdateCondition(c1);
			doUpdateCondition(c2);
			status = "Success!";
		} catch (Exception e) {
			e.printStackTrace();
			status = "Can't update";
		}
		return status;
	}

	public String doUpdateCondition(ConditionOfParking con) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(con);
			session.getTransaction().commit();
			session.close();
			return "Update  Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Update !!!";
		}
	}

	public List<ConditionOfParking> doSearchCondition(String s) {
		List<ConditionOfParking> list = new ArrayList<>();
		Mall mall = new Mall();
		for (Mall m : getAllMalls()) {
			if (s.equals(m.getMallNameEng())) {
				mall = m;
			}
		}
		int number = mall.getConditionOfParking().size();
		if (number == 1) {
			for (ConditionOfParking c : mall.getConditionOfParking()) {
				if (c.getType().equals("1")) {
					list.add(c);
				}
			}
		} else if (number == 2) {
			ConditionOfParking con1 = new ConditionOfParking();
			ConditionOfParking con2 = new ConditionOfParking();
			for (ConditionOfParking c : mall.getConditionOfParking()) {
				if (c.getType().equals("1")) {
					con1 = c;
				} else if (c.getType().equals("2")) {
					con2 = c;
				}
			}
			list.add(con1);
			list.add(con2);
		} else if (number == 3) {
			ConditionOfParking con1 = new ConditionOfParking();
			ConditionOfParking con2 = new ConditionOfParking();
			ConditionOfParking con3 = new ConditionOfParking();
			for (ConditionOfParking c : mall.getConditionOfParking()) {
				if (c.getType().equals("1")) {
					con1 = c;
				} else if (c.getType().equals("2")) {
					con2 = c;
				} else if (c.getType().equals("3")) {
					con3 = c;
				}
			}
			list.add(con1);
			list.add(con2);
			list.add(con3);
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

	public List<Mall> doSearchTypeMall(String name) {
		List<Mall> listMallByType = new ArrayList<>();
		for (Mall m : getAllMalls()) {
			if (m.getType().equals(name)) {
				listMallByType.add(m);
			}
		}
		return listMallByType;
	}
}
