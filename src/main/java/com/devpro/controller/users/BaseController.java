package com.devpro.controller.users;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.devpro.entities.Category;
import com.devpro.entities.Contact;
import com.devpro.entities.Product;
import com.devpro.entities.Role;
import com.devpro.entities.User;
import com.devpro.repositories.CategoryRepo;
import com.devpro.repositories.ContactRepo;
import com.devpro.repositories.ProductRepo;
import com.devpro.repositories.RoleRepo;
import com.devpro.repositories.UserRepo;
import com.devpro.services.ProductService;


public abstract class BaseController {
	
	@Autowired //lấy bean từ container's spring.
	CategoryRepo categoryRepo;
		
	@Autowired
	ContactRepo contactRepo;
	
	@Autowired
	ProductRepo productRepo;
	
	@Autowired
	ProductService productService; 
	
	@Autowired
	UserRepo userRepo;

	@Autowired
	RoleRepo roleRepo;
	
	
	@ModelAttribute("categories")
	public List<Category> getCategories() {
		return categoryRepo.findAll();
	}
	
	@ModelAttribute("contacts")
	public List<Contact> getContacts() {
		return contactRepo.findAll();
	}
	
	@ModelAttribute("products")
	public List<Product> getProducts() {
		return productService.findProductByStatus();
	}						
	
	@ModelAttribute("users")
	public List<User> getUsers() {
		return userRepo.findAll();
	}
	
	@ModelAttribute("roles")
	public List<Role> getRoles() {
		return roleRepo.findAll();
	}

	
	
	
}
