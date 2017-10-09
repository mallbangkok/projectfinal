package com.spring.admincontroller;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Login;

public class AdminProfileManager {
	@SuppressWarnings("unchecked")
	public List<Login> getAllLogin() {
		List<Login> list = new ArrayList<Login>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from Login").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public String doHibernateUpdateLogin(String uname ,String upass) {
		try {
			Login login = new Login(uname,upass);
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(login);
			session.getTransaction().commit();
			session.close();
			return "Update Admin Profile Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Update Admin Profile !!!";
		}
	}
}
