package com.trangialam.dao;

import java.util.HashSet;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.trangialam.entity.NhanVien;


@Repository
public class NhanVienDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public boolean kiemtradangnhap(String account,String pass){
		Session session = sessionFactory.getCurrentSession();
		try {
			NhanVien nhanvien =(NhanVien) session.createQuery("From NHANVIEN where tendangnhap = '" + account +"'AND matkhau = '" + pass +"'").getSingleResult();
        if (nhanvien != null) {
        	return true;
	
        } else {
        	return false;

        }
			
		} catch (Exception e) {
			return false;
		}
	
	}
	
	@Transactional
	public boolean themnhanvien(NhanVien nhanvien) {
		Session session = sessionFactory.getCurrentSession();
		int id = (Integer) session.save(nhanvien);
		if (id>0) {
			return true;
		} else {
			return false;


		}
		
	}
	
	
	@Transactional
	public NhanVien loadNhanVien(String username) {
		Session session = sessionFactory.getCurrentSession();
		NhanVien nhanvien = (NhanVien) session.createQuery("from NHANVIEN nv where tendangnhap = '"+username+"'").getSingleResult();
		return nhanvien;

	}

}
