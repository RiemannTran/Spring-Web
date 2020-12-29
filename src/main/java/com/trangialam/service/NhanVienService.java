package com.trangialam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.trangialam.dao.NhanVienDao;
import com.trangialam.entity.NhanVien;

@Service
public class NhanVienService {
	
	@Autowired
	NhanVienDao nhanviendao;
	
	public boolean kiemtradangnhap(String account,String pass) {
		boolean isAccount = nhanviendao.kiemtradangnhap(account, pass);
		return isAccount;
		
	}
	
	public boolean themnhanvien(NhanVien nhanvien) {
		boolean checkRegister = nhanviendao.themnhanvien(nhanvien);

		return checkRegister;
		
	}
	
}
