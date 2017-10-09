package com.spring.admin.updateparking;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.Conditions;
import com.spring.model.Facilities;
import com.spring.model.HibernateConnection;
import com.spring.model.Mall;
import com.spring.model.Stamp;
import com.spring.model.Store;
import com.spring.model.Week;

public class UpdateParkingManager {
	public String removeStamp(int stampId) {
		try {
			String message = "";
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();

			for (Stamp s : this.getAllStamp()) {
				if (stampId == s.getStampId()) {
					session.delete(s);
					message = "Delete Stamp Successfully...";
					break;
				} else {
					message = "Cannot Delete , You don't have Stamp id " + stampId;
				}
			}
			session.getTransaction().commit();
			session.close();
			return message;
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Delete Mall !!!";
		}
	}

	public String removeCondition(int condition) {
		try {
			String message = "";
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();

			for (Conditions w : this.getAllCondition()) {
				if (condition == w.getConditionId()) {
					session.delete(w);
					message = "Delete Condition Successfully...";
					break;
				} else {
					message = "Cannot Delete , You don't have Condition id " + condition;
				}
			}
			session.getTransaction().commit();
			session.close();
			return message;
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Delete Mall !!!";
		}
	}

	public String removeRateOfCondition(int weekId) {
		try {
			String message = "";
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();

			for (Week w : this.getAllWeek()) {
				if (weekId == w.getWeekId()) {
					session.delete(w);
					message = "Delete Rate Successfully...";
					break;
				} else {
					message = "Cannot Delete , You don't have Rate id " + weekId;
				}
			}
			session.getTransaction().commit();
			session.close();
			return message;
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Delete Mall !!!";
		}
	}

	public String updateStamp(String id, String price, String hour) {
		String status = "";
		Stamp stamp = this.getStampUpdate(Integer.parseInt(id));
		stamp.setHourOfStamp(Integer.parseInt(hour));
		stamp.setPriceOfStamp(Integer.parseInt(price));
		status = this.doHibernateUpdateStamp(stamp);
		return status;
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

	public String doHibernateUpdateStamp(Stamp stamp) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(stamp);
			session.getTransaction().commit();
			session.close();
			return "Update Stamp Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot  Update !!!";
		}
	}

	public Week getWeekUpdate(int id) {
		Week week = new Week();
		for (Week w : this.getAllWeek()) {
			if (id == w.getWeekId()) {
				week = w;
			}
		}
		return week;
	}

	public Stamp getStampUpdate(int id) {
		Stamp stamp = new Stamp();
		for (Stamp s : this.getAllStamp()) {
			if (id == s.getStampId()) {
				stamp = s;
			}
		}
		return stamp;
	}

	public int countPages(long mallid) {
		List<Conditions> listCondition = this.listCondition(mallid);
		double value = listCondition.size() / 20.0;
		int mPages = (int) Math.ceil(value);
		return mPages;
	}

	public int countPagesStamp(long mallid) {
		List<Stamp> listCondition = this.listStamp(mallid);
		double value = listCondition.size() / 20.0;
		int mPages = (int) Math.ceil(value);
		return mPages;
	}

	public int countPagesWeek(int id) {
		List<Week> listCondition = this.listWeek(id);
		double value = listCondition.size() / 20.0;
		int mPages = (int) Math.ceil(value);
		return mPages;
	}

	@SuppressWarnings("unchecked")
	public List<Store> getAllStores() {
		List<Store> list = new ArrayList<Store>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from Store").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@SuppressWarnings("unchecked")
	public List<Conditions> getAllCondition() {
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

	@SuppressWarnings("unchecked")
	public List<Stamp> getAllStamp() {
		List<Stamp> list = new ArrayList<Stamp>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from Stamp").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
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

	public List<Conditions> listCondition(long mallid) {
		List<Conditions> listCondition = new ArrayList<>();
		for (Conditions s : this.getAllCondition()) {
			if (s.getMall().getMallId() == mallid) {
				listCondition.add(s);

			}
		}
		return listCondition;
	}

	public List<Stamp> listStamp(long mallid) {
		List<Stamp> listStamp = new ArrayList<>();
		for (Stamp s : this.getAllStamp()) {
			if (s.getMall().getMallId() == mallid) {
				listStamp.add(s);

			}
		}
		return listStamp;
	}

	public List<Week> listWeek(int week) {
		List<Week> listCondition = new ArrayList<>();
		for (Week s : this.getAllWeek()) {
			if (s.getConditions().getConditionId() == week) {
				listCondition.add(s);

			}
		}
		return listCondition;
	}

	@SuppressWarnings("unchecked")
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
