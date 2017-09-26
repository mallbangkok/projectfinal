package com.spring.logincontroller;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Login;

public class AddUserManager {
	public String doHibernateAddUser(Login login) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(login);
			session.getTransaction().commit();
			session.close();
			return "Add User Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add User !!!";
		}
	}
	
	public String doHibernateUpdateUser(Login login) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(login);
			session.getTransaction().commit();
			session.close();
			return "Update User Successfully...";
		} catch (Exception e) {
			e.printStackTrace();
			return "Cannot Add Update !!!";
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Login> getHibernateLogin() {
		List<Login> list = new ArrayList<Login>();
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("From Login").list();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
