package com.devpro;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.github.slugify.Slugify;

public class GeneratePassword {
	public  static String GenerPass(String passwd) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(8);
		passwd = encoder.encode(passwd);
		System.out.println(passwd);
		return passwd;
	}
}
