package com.trangialam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trangialam.dao.DanhMucDao;
import com.trangialam.entity.DanhMuc;

@Service
public class DanhMucService {
	
	@Autowired
	DanhMucDao danhmucdao;
	
	public List<DanhMuc> layDanhSachDanhMuc(){
		
		return danhmucdao.layDanhSachDanhMuc();
	}
}
