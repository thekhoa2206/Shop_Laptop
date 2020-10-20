package com.devpro.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.repositories.ContactRepo;
import com.devpro.services.ProductService;

@Controller
public class AdminContactController {
	@Autowired
	ContactRepo contactRepo;
	
	@RequestMapping(value = { "/admin/contact" }, method = RequestMethod.GET)
	public String listCategory(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		model.addAttribute("contacts", contactRepo.findAll());
		return "admin/contact/list-contact";
	}
}
