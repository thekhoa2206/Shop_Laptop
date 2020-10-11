package com.devpro.controller.users;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.devpro.entities.AjaxResponse;
import com.devpro.entities.Cart;
import com.devpro.entities.CartItem;
import com.devpro.entities.Product;
import com.devpro.entities.SaleOrder;
import com.devpro.entities.SaleOrderProducts;
import com.devpro.entities.User;
import com.devpro.repositories.ProductRepo;
import com.devpro.repositories.SaleOrderRepo;
import com.devpro.services.ProductService;
import com.devpro.services.SaleOrderService;

@Controller
public class CartController extends BaseController {

	@Autowired
	ProductRepo productRepo;
	@Autowired
	SaleOrderRepo saleOrderRepo;
	@Autowired
	ProductService productService;
	@Autowired
	SaleOrderService saleOrderService;
	
	@RequestMapping(value = { "/cart/finish" }, method = RequestMethod.POST)
	public String finish(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		HttpSession httpSession = request.getSession();
		String customerName = null;
		String customerAddress = null;
		String customerPhone = null;
		String customerEmail = null;
		
		if(SecurityContextHolder.getContext().getAuthentication().getPrincipal() != null) {
			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			if (principal instanceof org.springframework.security.core.userdetails.UserDetails) {
				customerPhone = ((User)principal).getPhone();
				customerName = ((User)principal).getName();
				customerAddress = ((User)principal).getAddress();
				customerEmail = ((User)principal).getEmail();
				
				model.addAttribute("customerName", ((User)principal).getName());
				model.addAttribute("customerAddress", ((User)principal).getAddress());
				model.addAttribute("customerPhone", ((User)principal).getPhone());
				model.addAttribute("customerEmail", ((User)principal).getEmail());
			}
		} else {
			customerPhone = request.getParameter("customerPhone");
			customerAddress = request.getParameter("customerAddress");
			customerName = request.getParameter("customerName");
			customerEmail = request.getParameter("customerEmail");
			
			model.addAttribute("customerName", request.getParameter("customerName"));
			model.addAttribute("customerAddress", request.getParameter("customerAddress"));
			model.addAttribute("customerPhone", request.getParameter("customerPhone"));
			model.addAttribute("customerEmail", request.getParameter("customerEmail"));
		}
		
		SaleOrder saleOrder = new SaleOrder();
		Cart cart = (Cart) httpSession.getAttribute("GIO_HANG");
		List<CartItem> cartItems = cart.getCartItems();
		
		BigDecimal sum = new BigDecimal(0);
		String sumVN =null;
		for(CartItem item : cartItems) {
			SaleOrderProducts saleOrderProducts = new SaleOrderProducts();
			saleOrderProducts.setProduct(productRepo.getOne(item.getProductId()));
			saleOrderProducts.setQuantity(item.getQuantity());
			saleOrder.addSaleOrderProducts(saleOrderProducts);
			for (int i = 1; i <= item.getQuantity(); i++) {
			sum = sum.add(saleOrderProducts.getProduct().getPrice());
			}
			Locale locale = new Locale("vi", "VN");
			NumberFormat fmt = NumberFormat.getCurrencyInstance(locale);
			 sumVN =fmt.format(sum);
		}
		model.addAttribute("cartItems", cartItems );
		model.addAttribute("sumVN", sumVN);
		saleOrderService.saveOrderProduct(customerAddress, customerName,customerPhone,customerEmail, httpSession);
		return "users/finish";
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
