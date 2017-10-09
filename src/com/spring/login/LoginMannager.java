package com.spring.login;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.spring.model.HibernateConnection;
import com.spring.model.Login;

public class LoginMannager {
	public String doHibernateLogin(Login login) {
		try {
			SessionFactory sessionFactory = HibernateConnection.doHibernateConnection();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			@SuppressWarnings("unchecked")
			List<Login> user = session.createQuery("From Login where username='"+login.getUsername()+"' and password='"+
					login.getPassword()+"'").list();
			session.close();
			if(user.size() == 1){
				return "Login Success";
			}else{
				return "Username and Password doesn't match !!";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "Please try again...";
		}
	}
}
