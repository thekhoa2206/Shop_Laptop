package com.devpro.entities;

import java.math.BigDecimal;
import java.text.NumberFormat;
import java.util.Locale;

public class CartItem {
	private int productId;
	private String productName;
	private int quantity;
	private BigDecimal unitPrice;
	private String unitPriceVN;

	public BigDecimal getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(BigDecimal unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getProductName() {
		return productName;
	}

	public String getUnitPriceVN() {
		Locale locale = new Locale("vi", "VN");
		NumberFormat fmt = NumberFormat.getCurrencyInstance(locale);
		unitPriceVN =fmt.format(unitPrice);
		return unitPriceVN;
	}

	public void setUnitPriceVN(String unitPriceVN) {
		this.unitPriceVN = unitPriceVN;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
