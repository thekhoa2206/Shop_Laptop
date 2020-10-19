package com.devpro.controller.users;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.common.ProductSearch;
import com.devpro.entities.Product;
import com.devpro.entities.User;
import com.devpro.services.ProductService;

@Controller
public class HomeController extends BaseController {
	@Autowired
	ProductService productService;

//	@Autowired  //lấy bean từ container's spring.
//	private CategoryRepo categoryRepo;
//	
	@RequestMapping(value = { "/home", "/index", "/" }, method = RequestMethod.GET)
	public String index(final ModelMap model, @Param("keyword") String keyword, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {

//		List<Category> categories = categoryRepo.findAll();
//		for(Category category : categories) {
//			System.out.println(category.getName());
//		}
		
		
		
		ProductSearch productSearch = new ProductSearch();

		keyword = request.getParameter("keyword");

		List<Product> product = productService.search(productSearch);
		
		if (keyword != null) {
			List<Product> listProducts = productService.listAll(keyword);
			int numberOfPage = listProducts.size() / productSearch.SIZE_ITEMS_ON_PAGE + 1;
		
			ArrayList numberOP = new ArrayList();
			for (int i = 1; i < numberOfPage + 1; i++) {
				numberOP.add(i);
			}
			productSearch.parseRequest(request);
			model.addAttribute("products", listProducts);
			model.addAttribute("keyword", keyword);
			model.addAttribute("numberOP", numberOP);
			model.addAttribute("numberOfPage", numberOfPage);
			for (Product listProduct : listProducts) {
				System.out.println("Price "+listProduct.getPrice());
			}
		}

		else {
			int numberOfPage = product.size() / productSearch.SIZE_ITEMS_ON_PAGE + 1;
			System.out.println("numberOfPage: " + numberOfPage);
			ArrayList numberOP = new ArrayList();
			for (int i = 1; i < numberOfPage + 1; i++) {
				numberOP.add(i);
			}
			productSearch.parseRequest(request);
			model.addAttribute("numberOP", numberOP);
			model.addAttribute("numberOfPage", numberOfPage);
			model.addAttribute("products", productService.search(productSearch));
		}
		return "users/UserHome";
	}
}
