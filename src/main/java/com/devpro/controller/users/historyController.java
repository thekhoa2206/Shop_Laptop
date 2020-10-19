package com.devpro.controller.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.services.SaleOrderService;
import com.devpro.services.UserService;

@Controller
public class historyController extends BaseController{
	@Autowired
	SaleOrderService saleOrderService;
	@Autowired 
	UserService userService;
	
	@RequestMapping(value = { "/history/{id}"}, method = RequestMethod.GET)
	public String history(@PathVariable("id") String id,final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		int userId = Integer.parseInt(id);

		model.addAttribute("saleOrders", saleOrderService.findSaleOrderByUserId(userId));
		return "users/history";
	}
	@RequestMapping(value = { "/order/view/{code}"}, method = RequestMethod.GET)
	public String saleOrderProduct(@PathVariable("code") String code,final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {

		model.addAttribute("saleOrderProducts", saleOrderService.findSaleOrderProductbyCode(code));
		model.addAttribute("saleOrders", saleOrderService.findSaleOrderByCode(code));
		return "users/orderView";
	}
}
