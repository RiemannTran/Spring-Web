package com.trangialam.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.trangialam.entity.SanPham;
import com.trangialam.service.DanhMucService;
import com.trangialam.service.SanPhamService;

@Controller
@RequestMapping("details/")
@SessionAttributes("giohang")
public class ChiTietController {
	
	@Autowired
	SanPhamService sanphamservice;
	
	@Autowired
	DanhMucService danhmucservice;
	
	@GetMapping("/{masanpham}")
     public String Default(@PathVariable int masanpham, ModelMap model ) {
		model.addAttribute("listDanhMuc", danhmucservice.layDanhSachDanhMuc());

		SanPham sanPham = sanphamservice.layDanhSachSanPhamTheoMa(masanpham);
//		System.out.println("masanpham " + masanpham);
		model.addAttribute("sanpham", sanPham);
		return "details";
		
	}
	

}
