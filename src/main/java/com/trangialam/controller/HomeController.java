package com.trangialam.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trangialam.service.DanhMucService;
import com.trangialam.service.SanPhamService;



@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired
	SanPhamService sanphamservice;
	
	
	@Autowired
	DanhMucService danhmucservice;
	
	
	@RequestMapping("/redirectLogin")
	public String redirectLogin() {

		return "redirect:/login/";
	}
	
	@RequestMapping("login/")
	public String redirectlogin() {

		return "login";
	}
	
	@RequestMapping("admin/")
	public String redirectadmin() {

		return "admin";
	}
	
	@RequestMapping("/redirectLogout")
	public String redirectLogout( HttpSession session) {
		session.removeAttribute("tendangnhap");
		return "redirect:/";
	}
//	
	@GetMapping()
	public String HomeDefault( ModelMap model) {
		
		model.addAttribute("listSanPham",sanphamservice.layDanhSachSanPham(0));
		model.addAttribute("listDanhMuc", danhmucservice.layDanhSachDanhMuc());
		return "home";
		
		
	}
	@RequestMapping("/{tendangnhap}")
	public String Home( @PathVariable String tendangnhap,ModelMap model) {
		model.addAttribute("listSanPham",sanphamservice.layDanhSachSanPham(0));
		model.addAttribute("listDanhMuc", danhmucservice.layDanhSachDanhMuc());

		return "home";
		
	}

}
