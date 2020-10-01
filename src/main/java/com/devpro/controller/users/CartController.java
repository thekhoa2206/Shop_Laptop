package com.devpro.controller.users;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.entities.AjaxResponse;
import com.devpro.entities.Cart;
import com.devpro.entities.CartItem;
import com.devpro.entities.Product;
import com.devpro.entities.SaleOrder;
import com.devpro.entities.SaleOrderProducts;
import com.devpro.repositories.ProductRepo;
import com.devpro.repositories.SaleOrderRepo;
import com.devpro.services.ProductService;

@Controller
public class CartController extends BaseController {

	@Autowired
	ProductRepo productRepo;
	@Autowired
	SaleOrderRepo saleOrderRepo;
	@Autowired
	ProductService productService;

	@RequestMapping(value = { "/cart/finish" }, method = RequestMethod.POST)
	public String finish(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		String customerEmail = request.getParameter("customerEmail");
		String customerAddress = request.getParameter("customerAddress");

		HttpSession httpSession = request.getSession();
		productService.saveOrderProduct(customerAddress, customerEmail, httpSession);

		return "users/finish";
	}

	@RequestMapping(value = { "/cart/check-order" }, method = RequestMethod.POST)
	public String check(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		String customerEmail = request.getParameter("customerEmail");
		String customerAddress = request.getParameter("customerAddress");
		System.out.println("customerEmail: " + customerEmail);
		model.addAttribute("customerEmail", request.getParameter("customerEmail"));
		model.addAttribute("customerAddress", request.getParameter("customerAddress"));
		
		HttpSession httpSession = request.getSession();
		SaleOrder saleOrder = new SaleOrder();
		Cart cart = (Cart) httpSession.getAttribute("GIO_HANG");
		List<CartItem> cartItems = cart.getCartItems();
		BigDecimal sum = new BigDecimal(0);
		for(CartItem item : cartItems) {
			SaleOrderProducts saleOrderProducts = new SaleOrderProducts();
			saleOrderProducts.setProduct(productRepo.getOne(item.getProductId()));
			saleOrderProducts.setQuantity(item.getQuantity());
			saleOrder.addSaleOrderProducts(saleOrderProducts);
			sum = sum.add(saleOrderProducts.getProduct().getPrice());
		}
		model.addAttribute("sum1", sum);
		
		return "users/check-order";
	}

	@RequestMapping(value = { "/cart/check-out" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		return "users/checkout";
	}

	@RequestMapping(value = { "/cart/mua-hang" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> muaHang(@RequestBody CartItem data, final ModelMap model,
			final HttpServletRequest request, final HttpServletResponse response) throws IOException {
		HttpSession httpSession = request.getSession();

		Cart cart = null;

		if (httpSession.getAttribute("GIO_HANG") != null) {
			cart = (Cart) httpSession.getAttribute("GIO_HANG");
		} else {
			cart = new Cart();
			httpSession.setAttribute("GIO_HANG", cart);
		}

		List<CartItem> cartItems = cart.getCartItems();
		boolean isExists = false;
		for (CartItem item : cartItems) {
			if (item.getProductId() == data.getProductId()) {
				isExists = true;
				item.setQuantity(item.getQuantity() + data.getQuantity());
			}
		}
		if (!isExists) {

			Product product = productRepo.getOne(data.getProductId());
			data.setProductName(product.getTitle());
			data.setUnitPrice(product.getPrice());

			cart.getCartItems().add(data);
		}

		httpSession.setAttribute("SL_SP_GIO_HANG", cart.getCartItems().size());

		return ResponseEntity.ok(new AjaxResponse(200, String.valueOf(cart.getCartItems().size())));
	}

}
