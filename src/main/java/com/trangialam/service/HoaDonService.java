package com.trangialam.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trangialam.dao.HoaDonDao;
import com.trangialam.entity.HoaDon;


@Service
public class HoaDonService {
	
	@Autowired
	HoaDonDao hoadondao;
	
	public int themHoaDon(HoaDon hoadon){
		
		return hoadondao.themHoaDon(hoadon);
		
	}
	

}
