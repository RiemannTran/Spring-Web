package com.trangialam.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.trangialam.entity.SanPham;

@Repository
public class SanPhamDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public List<SanPham> layDanhSachSanPham(int spbatdau){
		Session session = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<SanPham> listSanPham =(List<SanPham>) session.createQuery("from SANPHAM").setFirstResult(spbatdau).setMaxResults(10).getResultList();
		return listSanPham;
	}
	
	@Transactional
	public SanPham layDanhSachSanPhamTheoMa(int masanpham){
		Session session = sessionFactory.getCurrentSession();
		SanPham sanPham = (SanPham) session.createQuery("from SANPHAM sp where sp.masanpham =" + masanpham).getSingleResult();
		
		return sanPham;
	}

	@Transactional
	public List<SanPham> layDanhSachSanPhamTheoMaDanhMuc(int madanhmuc) {
		Session session = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<SanPham> listSanPham =(List<SanPham>) session.createQuery("from SANPHAM sp where sp.danhmuc.madanhmuc =" +  madanhmuc ).getResultList();
		return listSanPham;
	}


}
