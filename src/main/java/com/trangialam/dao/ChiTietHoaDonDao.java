package com.trangialam.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.trangialam.entity.ChiTietHoaDon;
import com.trangialam.entity.ChiTietHoaDonId;

@Repository
public class ChiTietHoaDonDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	
	public boolean themChiTietHoaDon(ChiTietHoaDon chitiethoadon) {
		Session session = sessionFactory.getCurrentSession();
		ChiTietHoaDonId chitietID =  (ChiTietHoaDonId) session.save(chitiethoadon);
		if (null !=chitietID) {
			return true;
		} else {
			return false;


		}
		
	}

}
