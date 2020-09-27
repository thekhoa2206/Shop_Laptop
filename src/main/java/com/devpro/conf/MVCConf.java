package com.devpro.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration // khai báo 1 bean. Bean dùng để cấu hình MVC.
public class MVCConf implements WebMvcConfigurer {

	// cấu hình cho MVC biết chỗ folder để lấy view trả về cho Browser.
	@Bean public ViewResolver viewResolver() {
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		bean.setViewClass(JstlView.class);
		bean.setPrefix("/WEB-INF/views/");
		bean.setSuffix(".jsp");
		return bean;
	}

	/**
	* classpath <-> src/main/resources
	*/
	@Override
		public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("classpath:/META-INF/css/");
		registry.addResourceHandler("/js/**").addResourceLocations("classpath:/META-INF/js/");
		registry.addResourceHandler("/images/**").addResourceLocations("classpath:/META-INF/images/");
		registry.addResourceHandler("/summernote/**").addResourceLocations("classpath:/META-INF/summernote/");
		
		
		// dành cho thư mục upload.
		registry.addResourceHandler("/file/upload/**").addResourceLocations("file:D:/JavaWeb10_VuTheKhoa_Day27/com.devpro.shop/upload/");
		}
	}
