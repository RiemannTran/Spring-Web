package com.trangialam.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/")
public class AdminController {

	@GetMapping
	public String Default( ModelMap model) {
        
        
        

		return "admin";
		
	}
}
