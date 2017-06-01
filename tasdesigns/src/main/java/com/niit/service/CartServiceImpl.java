package com.niit.service;

import org.springframework.stereotype.Service;

import com.niit.dao.CartDao;
import com.niit.model.Cart;
@Service
public class CartServiceImpl implements CartService {

	private CartDao cartDao;
	
	public Cart saveGrandTotal(int id) {
		
		return cartDao.saveGrandTotal(id);
	}

}
