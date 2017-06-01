package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import java.util.*;
import com.niit.model.*;

import com.niit.service.ProductService;

@Controller
@RequestMapping("/user/cart")
public class CartController {
	
	@Autowired
	private ProductService productService;
	

	@RequestMapping(method=RequestMethod.GET)
	public String index(ModelMap modelMap)
	{
		modelMap.put("title", "Cart");
		modelMap.put("action", "cart");
		return "cart";
		
	}

	
	@RequestMapping(value="/order/{productId}" , method=RequestMethod.GET)
	public String Order( @PathVariable(value="productId") int productId ,
			HttpSession session,
			ModelMap modelMap)
	{
		modelMap.put("title", "Cart");
		if(session.getAttribute("cart")==null)
		{
			List<Item> cart= new ArrayList<Item>();
			cart.add(new Item(productService.getProductById(productId),1));
			session.setAttribute("cart", cart);
		}
		else
		{
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			int index=isExisting(productId,session);
			if(index == -1)
			{
			cart.add(new Item(productService.getProductById(productId),1));
			}
			else
			{
			int quantity=cart.get(index).getQuantity()+1;
			cart.get(index).setQuantity(quantity);
			}
			session.setAttribute("cart", cart);
			
		}
		
		return "cart";  
		
	}
	
	@RequestMapping(value="/delete/{productId}" , method=RequestMethod.GET)
	public String DeleteOrder( @PathVariable(value="productId") int productId ,
			HttpSession session)
	{
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index=isExisting(productId,session);
		cart.remove(index);
		session.setAttribute("cart", cart);
		return "cart";
		
	}
	@RequestMapping(value="/checkout",method=RequestMethod.GET)
	public String checkout(HttpSession session,ModelMap modelMap )
	{
		
		modelMap.put("title", "Cart");
		if(session.getAttribute("cart")==null)
		{
			return "login";
		}
		else
		{
		   return "thankyou";
		}}
	
	
	private int isExisting(int productId , HttpSession session)
	{

		List<Item> cart = (List<Item>) session.getAttribute("cart");
		for(int i=0; i<cart.size(); i++)
			if(cart.get(i).getProduct().getProductId()==productId)
				return i;
		return -1;
	}
}
