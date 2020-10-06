package com.devpro.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.entities.AjaxResponse;
import com.devpro.entities.CartItem;
import com.devpro.entities.Product;
import com.devpro.entities.ProductImages;
import com.devpro.entities.SaleOrder;
import com.devpro.entities.User;
import com.devpro.repositories.ProductRepo;
import com.devpro.repositories.SaleOrderProductsRepo;
import com.devpro.repositories.SaleOrderRepo;
import com.devpro.services.ProductService;
import com.devpro.services.SaleOrderService;

@Controller
public class AdminSaleOrderController {
	@Autowired
	ProductService productService;
	@Autowired
	SaleOrderService saleOrderService;
	@Autowired
	public ProductRepo productRepo;
	@Autowired
	public SaleOrderRepo saleOrderRepo;
	@Autowired
	public SaleOrderProductsRepo saleOrderProductsRepo;

	@RequestMapping(value = { "/admin/list-order" }, method = RequestMethod.GET)
	public String listOrder(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("saleOrders", saleOrderRepo.findAll());
		return "admin/sale-order/list-order";
	}

	@RequestMapping(value = { "/admin/view-order/{id}" }, method = RequestMethod.GET)
	public String viewListProductOrder(final ModelMap model, @PathVariable("id") int id,
			final HttpServletRequest request, final HttpServletResponse response) throws Exception {
		model.addAttribute("saleOrder", saleOrderService.findSaleOrderById(id));
		model.addAttribute("saleOrderProduct", saleOrderService.findOrderProductByOrderId(id));
		return "admin/sale-order/view-order";
	}

	@RequestMapping(value = { "/admin/list-order/delete-saleOrder-with-ajax/{id}" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> subscribe(@PathVariable("id") int id, final ModelMap model,
			final HttpServletRequest request, final HttpServletResponse response) throws Exception {

		SaleOrder saleOrders = saleOrderService.findSaleOrderById(id);

		saleOrders.setStatus(false);
		saleOrderRepo.save(saleOrders);

		return ResponseEntity.ok(new AjaxResponse(200, "SUCCESS"));
	}
}
