package com.trangialam.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.trangialam.service.DanhMucService;
import com.trangialam.service.NhanVienService;


@Controller
@RequestMapping("login/")
@SessionAttributes("tendangnhap")
public class LoginController {
	
	

	@Autowired
	NhanVienService nhanvienservice;
	
	@Autowired
	DanhMucService danhmucservice;
	
	
	
	@GetMapping
	public String Default( ModelMap model) {
		model.addAttribute("listDanhMuc", danhmucservice.layDanhSachDanhMuc());
        
		
		return "login";
		
	}
	@RequestMapping("/redirectRegister")
	public String redirectRegister() {

		return "redirect:/register/";
	}
	
	@PostMapping
	public String login(@RequestParam String tendangnhap,@RequestParam String matkhau, ModelMap model) {
        boolean isAccount = nhanvienservice.kiemtradangnhap(tendangnhap, matkhau);

		if (isAccount) {
			model.addAttribute("tendangnhap", tendangnhap);
			return "redirect:/{tendangnhap}";
		} else {
			return "login";

		}

		
	}


}
