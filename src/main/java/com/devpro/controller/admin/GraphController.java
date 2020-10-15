package com.devpro.controller.admin;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.devpro.entities.SaleOrder;
import com.devpro.repositories.SaleOrderRepo;



@Controller
public class GraphController {
	@Autowired
	SaleOrderRepo saleOrderRepo; 
	
	@GetMapping("/admin/BarGraph")
	public String barGraph(Model model) {
		List<SaleOrder> saleOrders = saleOrderRepo.findAll();
		Map<String, Integer> saleOrder = new LinkedHashMap<>();
		int sum1 = 0,sum2 = 0,sum3 = 0,sum4 = 0,sum5 = 0,sum6 = 0,sum7 = 0,sum8 = 0,sum9 = 0,sum10 = 0,sum11 = 0,sum12 =0 ;
		int sum = 0;
		int quantity = 0;
		for (SaleOrder saleOrder1 : saleOrders) {
			
			LocalDateTime  date =  saleOrder1.getCreatedDate();
			Date in = new Date();
			Date out = Date.from(date.atZone(ZoneId.systemDefault()).toInstant());  // chuyển từ localdatetime về date
			
			SimpleDateFormat formatter = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy");
			String dateFormat = formatter.format(out);                             // chuyển từ date về string
			sum = sum + saleOrder1.getTotal().intValue();
			for (int i = 0; i < saleOrder1.getSaleOrderProducts().size(); i++) {
				quantity =quantity +saleOrder1.getSaleOrderProducts().get(i).getQuantity();
			}
			String month =  (String) dateFormat.subSequence(4, 7);
			if(month.equals("Jan")) {
				sum1 = sum1 + saleOrder1.getTotal().intValue();
			}
			if(month.equals("Feb")) {
				sum2 = sum2 + saleOrder1.getTotal().intValue();
			}
			if(month.equals("Mar")) {
				sum3 = sum3 + saleOrder1.getTotal().intValue();
			}
			if(month.equals("Apr")) {
				sum4 = sum4 + saleOrder1.getTotal().intValue();		
			}
			if(month.equals("May")) {
				sum5 = sum5 + saleOrder1.getTotal().intValue();		
			}
			if(month.equals("Jun")) {
				sum6 = sum6 + saleOrder1.getTotal().intValue();	
			}
			if(month.equals("Jul")) {
				sum7 = sum7 + saleOrder1.getTotal().intValue();				
			}
			if(month.equals("Aug")) {
				sum8 = sum8 + saleOrder1.getTotal().intValue();		
			}
			if(month.equals("Sep")) {
				sum9 = sum9 + saleOrder1.getTotal().intValue();		
			}
			if(month.equals("Oct")) {
				sum10 = sum10 + saleOrder1.getTotal().intValue();	
			}
			if(month.equals("Nov")) {
				sum11 = sum11 + saleOrder1.getTotal().intValue();	
			}
			if(month.equals("Dec")) {
				sum12 = sum12 + saleOrder1.getTotal().intValue();
			}
			
			String day = (String) dateFormat.subSequence(8, 10);
			System.out.println(dateFormat);
			System.out.println(month);
		}
		
		saleOrder.put("1", sum1);
		saleOrder.put("2", sum2);
		saleOrder.put("3", sum3);
		saleOrder.put("4", sum4);
		saleOrder.put("5", sum5);
		saleOrder.put("6", sum6);
		saleOrder.put("7", sum7);
		saleOrder.put("8", sum8);
		saleOrder.put("9", sum9);
		saleOrder.put("10", sum10);
		saleOrder.put("11", sum11);
		saleOrder.put("12", sum12);
		model.addAttribute("saleOrder", saleOrder);
		
		Locale locale = new Locale("vi", "VN");
		NumberFormat fmt = NumberFormat.getCurrencyInstance(locale);
		String sums = fmt.format(sum);
		
		model.addAttribute("sum", sums);
		
		model.addAttribute("quantity", quantity);
		return "admin/BarChart";
	}

}
