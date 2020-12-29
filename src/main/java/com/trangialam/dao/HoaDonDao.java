package com.trangialam.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.trangialam.entity.HoaDon;

@Repository
public class HoaDonDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public int themHoaDon(HoaDon hoadon){
		Session session = sessionFactory.getCurrentSession();
		int id = (Integer) session.save(hoadon);
		if (id>0) {
			return id;
		} else {
			return 0;


		}
	}

}
