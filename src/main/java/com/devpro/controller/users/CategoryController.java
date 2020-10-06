package com.devpro.controller.users;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.common.ProductSearch;
import com.devpro.entities.Product;
import com.devpro.services.ProductService;

@Controller
public class CategoryController extends BaseController {

	@Autowired
	ProductService productService;

	@RequestMapping(value = "/product/category/{seo}", method = RequestMethod.GET)
	public String getFoosBySimplePathWithPathVariable(@PathVariable("seo") String seo, final ModelMap model,
			final HttpServletRequest request, final HttpServletResponse response) {
		
		ProductSearch productSearch = new ProductSearch();
		productSearch.setSeoCategory(seo);

		List<Product> product = productService.search(productSearch);
		int numberOfPage = product.size()/productSearch.SIZE_ITEMS_ON_PAGE +1;
		System.out.println("numberOfPage: "+numberOfPage);
		 ArrayList numberOP = new ArrayList();
		for (int i = 1; i < numberOfPage+1; i++) {
			numberOP.add(i);
		}	
		productSearch.parseRequest(request);
		
		model.addAttribute("numberOP", numberOP);
		model.addAttribute("numberOfPage", numberOfPage);
		// lấy sản phẩm từ category.
		model.addAttribute("products", productService.search(productSearch));

		return "users/UserHome";
	}

}