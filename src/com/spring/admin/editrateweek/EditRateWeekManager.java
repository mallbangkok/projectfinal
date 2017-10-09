package com.spring.admin.editrateweek;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Week;

public class EditRateWeekManager {

	public Week getWeekUpdate(int id) {
		Week week = new Week();
		for (Week w : this.getAllWeek()) {
			if (id == w.getWeekId()) {
				week = w;
			}
		}
		return week;
	}
	@SuppressWarnings("unchecked")
	public List<Week> getAllWeek() {
		List<Week> list = new ArrayList<Week>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from Week").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public String updateParking(String type, String condition, String date, String time, String typeOfTime,
			String weekId, int price) {
		Week week = getWeekUpdate(Integer.parseInt(weekId));
		String status = "";
		if ("I-I".equals(type)) {
			week.setDayOfWeek(date);
		} else if ("I-II".equals(type)) {
			week.setDayOfWeek(date);
			week.setPrice(price);
			week.setRateTime(Integer.parseInt(time));
			week.setTypeOfTime(typeOfTime);
			status = doHibernateUpdateWeek(week);
		} else if ("II-II".equals(type)) {
			week.setPrice(price);
			week.setDayOfWeek(date);
			status = doHibernateUpdateWeek(week);
		} else if ("III-II".equals(type)) {
			week.setPrice(price);
			week.setDayOfWeek(date);
			week.setRateTime(Integer.parseInt(time));
			status = doHibernateUpdateWeek(week);
		}
		return status;
	}
	public String doHibernateUpdateWeek(Week week) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(week);
			session.getTransaction().commit();
			session.close();
			return "Update Week Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot  Update !!!";
		}
	}
}
