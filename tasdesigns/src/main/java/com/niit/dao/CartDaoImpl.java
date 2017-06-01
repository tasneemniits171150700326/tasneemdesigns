package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;


@Repository
public class CartDaoImpl implements CartDao {
    @Autowired
	private SessionFactory sessionFactory;

	public Cart saveGrandTotal(int id) {

		Session session = sessionFactory.openSession();
		session.save(session);
		session.flush();
		session.close();
		
	
		return null;
	
	}
}
	