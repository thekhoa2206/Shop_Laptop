package com.devpro.controller.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.entities.Contact;
import com.devpro.entities.User;
import com.devpro.services.UserService;
@Controller
public class SignupController {
	
	@Autowired
	UserService userService;
	@RequestMapping(value = { "/signup" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("user", new User());
		return "users/UserSignUp";
	}
	@RequestMapping(value = { "/save-guestUser" }, method = RequestMethod.POST)
	public String saveGuestUser(@ModelAttribute("user") User user, final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("user", new User());
		userService.saveGuestUser(user);
		return "redirect:/home";
	}

}
