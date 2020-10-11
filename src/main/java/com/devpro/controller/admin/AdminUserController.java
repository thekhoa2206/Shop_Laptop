package com.devpro.controller.admin;

import java.util.ArrayList;
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
import com.devpro.entities.Product;
import com.devpro.entities.Role;
import com.devpro.entities.User;
import com.devpro.repositories.RoleRepo;
import com.devpro.repositories.UserRepo;
import com.devpro.services.UserService;



@Controller
public class AdminUserController {
	@Autowired
	public UserRepo userRepo;
	@Autowired
	public RoleRepo roleRepo;
	@Autowired
	UserService userService;
	@RequestMapping(value = { "/admin/list-user" }, method = RequestMethod.GET)
	public String listUser(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		model.addAttribute("users", userRepo.findAll());
		return "admin/user/list-user";
	}

	@RequestMapping(value = { "/admin/add-user" }, method = RequestMethod.GET)
	public String addUser(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("role", roleRepo.findAll());
		model.addAttribute("user", new User());
		return "admin/user/add-user";
	}
	
	@RequestMapping(value = { "/admin/edit-user/{id}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable("id") int id,@ModelAttribute("user") User user, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		
		model.addAttribute("role", roleRepo.findAll());

		model.addAttribute("user", userService.findUserById(id));
		return "admin/user/add-user";
	}

	@RequestMapping(value = { "/admin/save-user" }, method = RequestMethod.POST)
	public String saveUser(@RequestParam("images") MultipartFile[] images, @ModelAttribute("user") User user,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		userService.saveUser(images, user);

		return "redirect:/admin/list-user";
	}
	@RequestMapping(value = { "/admin/list-user/delete-user-with-ajax/{id}" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> subscribe(@ModelAttribute("user") User user,
			@PathVariable("id") int id, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {


		User users = userService.findUserById(id);

//				System.out.println("ID:  "+products.getId());
//				System.out.println("title :  "+products.getTitle());
//				System.out.println("price:  "+products.getPrice());
//				System.out.println("Seo Pr:  "+products.getSeo());
//				System.out.println("Status:  "+products.getStatus());
		users.setStatus(false);
		userRepo.save(users);

		return ResponseEntity.ok(new AjaxResponse(200, "Success"));
	}
}
