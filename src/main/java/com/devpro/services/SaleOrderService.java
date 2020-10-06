package com.devpro.services;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.common.Utilities;
import com.devpro.entities.Cart;
import com.devpro.entities.CartItem;
import com.devpro.entities.Category;
import com.devpro.entities.SaleOrder;
import com.devpro.entities.SaleOrderProducts;
import com.devpro.entities.User;
import com.devpro.repositories.ProductRepo;
import com.devpro.repositories.SaleOrderRepo;

@Service
public class SaleOrderService {
	@Autowired
	ProductRepo productRepo;
	@PersistenceContext
	protected EntityManager entityManager;
	@Autowired
	SaleOrderRepo saleOrderRepo;

	public List<SaleOrderProducts> findOrderProductByOrderId(int id) {

//		String jpql = "Select p from Product p where p.seo = '" + seo + "'";
//		Query query = entityManager.createQuery(jpql, Product.class);

		String sql = "select * from tbl_saleorder_products where saleorder_id = " + id;
		Query query = entityManager.createNativeQuery(sql, SaleOrderProducts.class);
		return query.getResultList();
	}
	public SaleOrder findSaleOrderById(int id) {

//		String jpql = "Select p from Product p where p.seo = '" + seo + "'";
//		Query query = entityManager.createQuery(jpql, Product.class);

		String sql = "select * from tbl_saleorder where id = " + id;
		Query query = entityManager.createNativeQuery(sql, SaleOrder.class);
		return (SaleOrder) query.getSingleResult();
	}
	@Transactional(rollbackOn = Exception.class)
	public void saveSaleOrder(SaleOrder saleOrder) throws Exception {
		
		try {
			saleOrder.setStatus(false);
			saleOrderRepo.save(saleOrder);
		} catch (Exception e) {
			throw e;
		}
	}

	@Transactional(rollbackOn = Exception.class)
	public void saveOrderProduct(String customerAddress, String customerName, String customerPhone,
			HttpSession httpSession) throws Exception {
		SaleOrder saleOrder = new SaleOrder();
		saleOrder.setCode("ORDER-" + System.currentTimeMillis());
		saleOrder.setSeo("ORDER-" + System.currentTimeMillis());
		saleOrder.setCustomerName(customerName);
		saleOrder.setCustomerAddress(customerAddress);
		saleOrder.setCustomerPhone(customerPhone);
		saleOrder.setStatus(true);

		Cart cart = (Cart) httpSession.getAttribute("GIO_HANG");
		List<CartItem> cartItems = cart.getCartItems();

		BigDecimal sum = new BigDecimal(0);

		for (CartItem item : cartItems) {
			SaleOrderProducts saleOrderProducts = new SaleOrderProducts();
			saleOrderProducts.setProduct(productRepo.getOne(item.getProductId()));
			saleOrderProducts.setQuantity(item.getQuantity());
			saleOrder.addSaleOrderProducts(saleOrderProducts);
			saleOrderProducts.setStatus(true);
			sum = sum.add(saleOrderProducts.getProduct().getPrice());
		}
		saleOrder.setTotal(sum);
		saleOrderRepo.save(saleOrder);
		httpSession.setAttribute("SL_SP_GIO_HANG", 0);
		httpSession.setAttribute("GIO_HANG", null);
	}
}
