package com.devpro.controller.users;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.entities.Category;
import com.devpro.entities.Contact;
import com.devpro.repositories.CategoryRepo;
import com.devpro.repositories.ContactRepo;



@Controller
public class HomeController extends BaseController{
	
//	@Autowired  //lấy bean từ container's spring.
//	private CategoryRepo categoryRepo;
//	
	@RequestMapping(value = { "/home", "/index", "/" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		
//		List<Category> categories = categoryRepo.findAll();
//		for(Category category : categories) {
//			System.out.println(category.getName());
//		}
		return "users/UserHome";
	}
}
