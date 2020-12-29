package com.trangialam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trangialam.entity.SanPham;
import com.trangialam.service.DanhMucService;
import com.trangialam.service.SanPhamService;


@Controller
@RequestMapping("products/")
public class ProductsController {
	
	@Autowired
	SanPhamService sanphamservice;
	
	@Autowired
	DanhMucService danhmucservice;
	
	@GetMapping()
    public String  ProductsDefault( ModelMap model ) {
		model.addAttribute("listSanPham",sanphamservice.layDanhSachSanPham(0));
		model.addAttribute("listDanhMuc", danhmucservice.layDanhSachDanhMuc());
		return "products";
		
	}

	
	@GetMapping("/{madanhmuc}/{tendanhmuc}")
    public String Products(@PathVariable int madanhmuc,@PathVariable String tendanhmuc, ModelMap model ) {
		List<SanPham> listSanPham = sanphamservice.layDanhSachSanPhamTheoMaDanhMuc(madanhmuc);
		model.addAttribute("listDanhMuc", danhmucservice.layDanhSachDanhMuc());
		model.addAttribute("tendanhmuc", tendanhmuc);

		model.addAttribute("listSanPham", listSanPham);

		return "products";
		
	}
	

}
