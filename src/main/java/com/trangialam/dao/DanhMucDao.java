package com.trangialam.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.trangialam.entity.DanhMuc;

@Repository
public class DanhMucDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public List<DanhMuc> layDanhSachDanhMuc(){
		Session session = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<DanhMuc> listDanhMuc =(List<DanhMuc>) session.createQuery("from DANHMUC").getResultList();
		return listDanhMuc;
	}

}
