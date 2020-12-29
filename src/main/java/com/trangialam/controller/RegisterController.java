package com.trangialam.controller;

import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.trangialam.entity.NhanVien;
import com.trangialam.service.DanhMucService;
import com.trangialam.service.NhanVienService;

@Controller
@RequestMapping("register/")
public class RegisterController {
	
	
	@Autowired
	NhanVienService nhanvienservice;
	
	@Autowired
	DanhMucService danhmucservice;
	
	
	@GetMapping
	public String Default(ModelMap model) {
		model.addAttribute("listDanhMuc", danhmucservice.layDanhSachDanhMuc());
		return "register";
		
	}
	@PostMapping
	public String register(@RequestParam String hoten,@RequestParam String tendangnhap,@RequestParam String email,@RequestParam String matkhau,@RequestParam String rematkhau,ModelMap model ) {
		boolean isEmail = isValid(email);
		if (isEmail&(tendangnhap!= "")&(hoten != "")&(matkhau.length()>=8)) {
			if (matkhau.equals(rematkhau)) {
				NhanVien nv = new NhanVien();
				nv.setHoten(hoten);
				nv.setTendangnhap(tendangnhap);
				nv.setEmail(email);
				nv.setMatkhau(matkhau);
				
				boolean checkRegister = nhanvienservice.themnhanvien(nv);
				if (checkRegister) {
					model.remove("tendangnhap");
					model.remove("hoten");
					model.remove("matkhau");
					model.remove("email");

					return "redirect:/login/";
				} else {
					model.addAttribute("tendangnhap", tendangnhap);
					model.addAttribute("matkhau", matkhau);
					model.addAttribute("hoten", hoten);
					model.addAttribute("email", email);
					return "redirect:/register/";

				}
			} else {
				model.addAttribute("tendangnhap", tendangnhap);
				model.addAttribute("matkhau", matkhau);
				model.addAttribute("hoten", hoten);
				model.addAttribute("email", email);
				return "redirect:/register/";
				
			}
			
		} else {
			model.addAttribute("tendangnhap", tendangnhap);
			model.addAttribute("matkhau", matkhau);
			model.addAttribute("hoten", hoten);
			model.addAttribute("email", email);

			return "redirect:/register/";
		}
		

	}
	public static boolean isValid(String email) 
    { 
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+ 
                            "[a-zA-Z0-9_+&*-]+)*@" + 
                            "(?:[a-zA-Z0-9-]+\\.)+[a-z" + 
                            "A-Z]{2,7}$"; 
                              
        Pattern pat = Pattern.compile(emailRegex); 
        if (email == null) 
            return false; 
        return pat.matcher(email).matches(); 
    } 

}
