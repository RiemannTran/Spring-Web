package com.trangialam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trangialam.dao.SanPhamDao;
import com.trangialam.entity.SanPham;

@Service
public class SanPhamService {
	
	@Autowired
	SanPhamDao sanphamdao;
	
	public List<SanPham> layDanhSachSanPham(int spbatdau){
		 
		
		return sanphamdao.layDanhSachSanPham(spbatdau);
	}
	
    public SanPham layDanhSachSanPhamTheoMa(int masanpham){
		
		return   sanphamdao.layDanhSachSanPhamTheoMa(masanpham);
	}

	public List<SanPham> layDanhSachSanPhamTheoMaDanhMuc(int madanhmuc) {
		return   sanphamdao.layDanhSachSanPhamTheoMaDanhMuc(madanhmuc);
	}

}
