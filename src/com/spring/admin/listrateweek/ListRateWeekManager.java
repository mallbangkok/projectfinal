package com.spring.admin.listrateweek;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.spring.model.HibernateConnection;
import com.spring.model.Week;

public class ListRateWeekManager {
	public List<Week> listWeek(int week) {
		List<Week> listCondition = new ArrayList<>();
		for (Week s : this.getAllWeek()) {
			if (s.getConditions().getConditionId() == week) {
				listCondition.add(s);

			}
		}
		return listCondition;
	}

	public int countPagesWeek(int id) {
		List<Week> listCondition = this.listWeek(id);
		double value = listCondition.size() / 20.0;
		int mPages = (int) Math.ceil(value);
		return mPages;
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
}
