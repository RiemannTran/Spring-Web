package com.trangialam.controller;



import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.trangialam.entity.ChiTietHoaDon;
import com.trangialam.entity.ChiTietHoaDonId;
import com.trangialam.entity.GioHang;
import com.trangialam.entity.HoaDon;
import com.trangialam.service.ChiTietHoaDonService;
import com.trangialam.service.DanhMucService;
import com.trangialam.service.HoaDonService;

@Controller
@RequestMapping("cart/")
public class MyCartController {

	@Autowired
	DanhMucService danhmucservice;

	@Autowired
	HoaDonService hoadonservice;
	
	@Autowired
	ChiTietHoaDonService chitiethoadonservice;

	@GetMapping
	public String Default(HttpSession httpsession, ModelMap model) {
		if (null != httpsession.getAttribute("giohang")) {
			@SuppressWarnings("unchecked")
			List<GioHang> listGioHangs = (List<GioHang>) httpsession.getAttribute("giohang");
			model.addAttribute("soluongsanpham", listGioHangs.size());
			model.addAttribute("listGioHang", listGioHangs);

		}
		model.addAttribute("listDanhMuc", danhmucservice.layDanhSachDanhMuc());

		return "cart";

	}

	@PostMapping
	public String themHoaDon(HttpSession httpsession,@RequestParam String tenkhachhang, @RequestParam String sodt,
			@RequestParam String diachigiaohang, @RequestParam String ghichu) {
		
		
		if (null != httpsession.getAttribute("giohang")) {
			@SuppressWarnings("unchecked")
			List<GioHang> listGioHangs = (List<GioHang>) httpsession.getAttribute("giohang");
			
			HoaDon hoadon = new HoaDon();
			hoadon.setTenkhachhang(tenkhachhang);
			hoadon.setSodt(sodt);
			hoadon.setDiachigiaohang(diachigiaohang);
			hoadon.setGhichu(ghichu);
			
            int idhoadon = hoadonservice.themHoaDon(hoadon);
			if (idhoadon>0) {
				
				
				for (GioHang gioHang : listGioHangs) {
					ChiTietHoaDonId chitietID = new ChiTietHoaDonId();
					chitietID.setMachitietsanpham(gioHang.getMachitietsanpham());
					
					ChiTietHoaDon chitiethoadon = new ChiTietHoaDon();
					chitiethoadon.setMahoadon(idhoadon);
			        chitiethoadon.setMachitietsanpham(chitietID.getMachitietsanpham());
			        chitiethoadon.setGiatien(gioHang.getGiatien());
			        chitiethoadon.setSoluong(gioHang.getSoluong());
			        
			        chitiethoadonservice.themChiTietHoaDon(chitiethoadon);
			        
				}
				System.out.println("thành công");
			} else {
				System.out.println("thất bại");
			}

						
		}
		
		

		return "cart";
	}

}
