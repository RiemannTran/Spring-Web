package com.trangialam.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trangialam.dao.ChiTietHoaDonDao;
import com.trangialam.entity.ChiTietHoaDon;

@Service
public class ChiTietHoaDonService {
	
	@Autowired
	ChiTietHoaDonDao chitiethoadondao;
	
	public boolean themChiTietHoaDon(ChiTietHoaDon chitiethoadon) {
		return chitiethoadondao.themChiTietHoaDon(chitiethoadon);
		
	}

}
