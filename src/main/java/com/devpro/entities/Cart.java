package com.devpro.entities;

import java.util.ArrayList;
import java.util.List;

/**
 * giỏ hàng.
 * @author admin
 */
public class Cart {
	private List<CartItem> cartItems = new ArrayList<CartItem>();

	public List<CartItem> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}

}