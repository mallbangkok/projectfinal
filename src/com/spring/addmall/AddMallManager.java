package com.spring.addmall;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.Facilities;
import com.spring.model.HibernateConnection;
import com.spring.model.Mall;

public class AddMallManager {
	public String doHibernateAddMall(Mall mall) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(mall);
			session.getTransaction().commit();
			session.close();
			return "Add Mall Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Mall !!!";
		}
	}

	@SuppressWarnings("unchecked")
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

	@SuppressWarnings("unchecked")
	public List<String> getMallGroup() {
		List<String> list = new ArrayList<String>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("select distinct(mallGroup) from Mall").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public String isAddMall(String mallNameEng, String mallNameThai, String type, String area, String mallGroup,
			String statusMall, String timeMall,String phoneNumber, String imageName,String[] facilities) {
		Mall mall = new Mall(mallNameEng, mallNameThai, type, area, mallGroup, statusMall, getCurrentDate(), timeMall,
				phoneNumber, imageName);

		List<Facilities> list = this.listFacilities();
		String message = "";
		
		if (facilities == null) {
			message = this.doHibernateAddMall(mall);
			System.out.println(message);
			return message;
		} else {
			Facilities fac = null;
			for (Facilities f : list) {
				for (String s : facilities) {
					if (s.equals(f.getFacilitiesId())) {
						mall.getFacilites().add(f);
						fac = f;
						fac.getMalls().add(mall);
					}
				}
			}
			message = this.doHibernateAddMall(mall);
			System.out.println(message);
			return message;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Facilities> listFacilities(){
		List<Facilities> list = new ArrayList<Facilities>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from Facilities").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public String getCurrentDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("MMM-dd-yyyy", Locale.ENGLISH);
		String date = sdf.format(new Date());
		return date;
	}
}
