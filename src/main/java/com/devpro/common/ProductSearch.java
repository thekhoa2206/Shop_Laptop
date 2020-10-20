package com.devpro.common;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import com.devpro.entities.Product;
import com.devpro.services.ProductService;

public class ProductSearch {
	public static int SIZE_ITEMS_ON_PAGE = 8;
	private String seoCategory;
	private String seoProduct;
	private int id;
	private String name;
	private Integer currentPage;
	private String sort; 
	private String keyword;
	private String typePrice;
	@Autowired ProductService productService;
	
	public void parseRequest(final HttpServletRequest request) { // phân trang
		Integer currentPage = null;

		String strPage = request.getParameter("page");	
		System.out.println(request);
		if (strPage != null && !strPage.isEmpty()) {
			currentPage = Integer.parseInt(strPage);
		}
		this.setCurrentPage(currentPage);
		
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getSeoCategory() {
		return seoCategory;
	}

	public void setSeoCategory(String seoCategory) {
		this.seoCategory = seoCategory;
	}

	public String getSeoProduct() {
		return seoProduct;
	}

	public void setSeoProduct(String seoProduct) {
		this.seoProduct = seoProduct;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getTypePrice() {
		return typePrice;
	}

	public void setTypePrice(String typePrice) {
		this.typePrice = typePrice;
	}
	
}
