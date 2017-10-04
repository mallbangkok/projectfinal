package com.spring.updatemall;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.Facilities;
import com.spring.model.FacilitiesManager;
import com.spring.model.HibernateConnection;
import com.spring.model.Mall;

public class UpdateMallManager {
	public String doHibernateUpdateMall(Mall mall) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(mall);
			session.getTransaction().commit();
			session.close();
			return "Update Mall Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Update !!!";
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

	@SuppressWarnings("unchecked")
	public List<String> getMallArea() {
		List<String> list = new ArrayList<String>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("select distinct(area) from Mall").list();
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
	
	public Mall isSelectedMall(long mallId){
		Mall mall = null;
		for (Mall m : this.getAllMalls()) {
			if (mallId == m.getMallId()) {
				mall = m;
			}
		}
		return mall;
	}
	
	public String isUpdateMall(long mallid,String mallNameEng, String mallNameThai, String type, String area, String mallGroup, String statusMall,
			String updatedDate, String timeMall, String phoneNumber, String imageName,String[] facilities){
		Mall mall = new Mall(mallid,mallNameEng, mallNameThai, type, area, mallGroup, statusMall, getCurrentDate(),
				timeMall, phoneNumber, imageName);

		FacilitiesManager fm = new FacilitiesManager();
		List<Facilities> list = fm.listFacilities();
		
		String message = "";
		
		if (facilities == null) {
			message = this.doHibernateUpdateMall(mall);
			System.out.println(message);
			return message;
		} else {
			for(String s : facilities){
				for(Facilities f : list){
					if (s.equals(f.getFacilitiesId())) {
						mall.getFacilites().add(f);
						f.getMalls().add(mall);
					}
				}
			}
			message = this.doHibernateUpdateMall(mall);
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
