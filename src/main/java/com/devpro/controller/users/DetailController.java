package com.devpro.controller.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.common.ProductSearch;
import com.devpro.repositories.CategoryRepo;
import com.devpro.services.ProductService;

@Controller
public class DetailController extends BaseController {

	@Autowired
	ProductService productService;

	@RequestMapping(value = { "/detail-product/{seo}" }, method = RequestMethod.GET)
	public String detailProduct(@PathVariable("seo") String seo, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		ProductSearch productSearch = new ProductSearch();
		productSearch.setSeoProduct(seo);
		
		model.addAttribute("categories", categoryRepo.findAll());
		model.addAttribute("product", productService.search(productSearch).get(0));
		return "users/UserDetail";
	}
}
