package com.devpro.entities;

import java.math.BigDecimal;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "tbl_saleorder")
public class SaleOrder extends BaseEntity {
	@Column(name = "code")
	private String code;

	@Column(name = "total", precision = 13, scale = 2, nullable = false)
	private BigDecimal total;

	@Column(name = "customer_phone")
	private String customerPhone;

	@Column(name = "customer_name")
	private String customerName;

	@Column(name = "customer_address")
	private String customerAddress;
	
	@Column(name = "customer_email")
	private String customerEmail;
	
	@Column(name = "seo")
	private String seo;

	@Transient
	private String totalVN;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "saleOrder"/* tên property category trong class product */
			, fetch = FetchType.LAZY)
	private List<SaleOrderProducts> saleOrderProducts = new ArrayList<SaleOrderProducts>();

	public void addSaleOrderProducts(SaleOrderProducts _saleOrderProducts) {
		_saleOrderProducts.setSaleOrder(this);
		saleOrderProducts.add(_saleOrderProducts);
	}

//	@OneToOne(cascade = CascadeType.ALL)
//	@JoinColumn(name = "user_id", referencedColumnName = "id")
//	private User user;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public List<SaleOrderProducts> getSaleOrderProducts() {
		return saleOrderProducts;
	}

	public void setSaleOrderProducts(List<SaleOrderProducts> saleOrderProducts) {
		this.saleOrderProducts = saleOrderProducts;
	}

	public String getTotalVN() {
		Locale locale = new Locale("vi", "VN");
		NumberFormat fmt = NumberFormat.getCurrencyInstance(locale);
		return fmt.format(getTotal());
	}

	public void setTotalVN(String totalVN) {
		this.totalVN = totalVN;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}


//	public User getUser() {
//		return user;
//	}
//
//	public void setUser(User user) {
//		this.user = user;
//	}

}
