package com.devpro.controller.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.services.ProductService;

@Controller
public class CategoryController extends BaseController {

	@Autowired
	ProductService productService;

	@RequestMapping(value = "/product/category/{seo}", method = RequestMethod.GET)
	public String getFoosBySimplePathWithPathVariable(@PathVariable("seo") String seo, final ModelMap model,
			final HttpServletRequest request, final HttpServletResponse response) {

		// lấy sản phẩm từ category.
		model.addAttribute("products", productService.findProductByCategory(seo));

		return "users/UserHome";
	}

}