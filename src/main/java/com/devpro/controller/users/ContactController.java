package com.devpro.controller.users;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.entities.AjaxResponse;
import com.devpro.entities.Contact;
import com.devpro.repositories.CategoryRepo;
import com.devpro.repositories.ContactRepo;

@Controller
public class ContactController{
	@Autowired
	ContactRepo contactRepo;
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("contact", new Contact());
		return "users/UserContact";
	}
	
	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
	public String saveContact(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
							  @ModelAttribute("contact") Contact contact)
			throws IOException {
		System.out.println("First Name is: " + contact.getFirstName());
		System.out.println("Last Name is: " + contact.getLastName());
		System.out.println("Email is: " + contact.getEmail());
		System.out.println("Subject is: " + contact.getSubject());
		model.addAttribute("message", "Đã lưu thành công!");
		model.addAttribute("contact", new Contact());
		return "users/UserContact";
	}

	// Ajax
	@RequestMapping(value = { "/save-contact-with-ajax" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> subscribe(@RequestBody Contact data
	,final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		String firstName = String.valueOf(data.getFirstName());
		String lastName = String.valueOf(data.getLastName());
		String email = String.valueOf(data.getEmail());
		String subject = String.valueOf(data.getSubject());
		System.out.println(firstName);
		System.out.println(lastName);
		System.out.println(email);
		System.out.println(subject);
		Contact contact = new Contact();
		contact.setFirstName(firstName);
		contact.setLastName(lastName);
		contact.setEmail(email);
		contact.setSubject(subject);
		contact.setStatus(true);
		contactRepo.save(contact);
		return ResponseEntity.ok(new AjaxResponse(200, data));
	}
}