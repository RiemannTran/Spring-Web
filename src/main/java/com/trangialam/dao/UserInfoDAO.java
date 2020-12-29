package com.trangialam.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.trangialam.entity.User;


@Repository
public class UserInfoDAO {
	
	@Autowired
    private SessionFactory sessionFactory;

	
	@Transactional
	public User findUserInfo(String userName) {
 
        Session session = sessionFactory.getCurrentSession();
 
        @SuppressWarnings("unchecked")
		User user=  (User) session.createQuery("from user where user.username='"+userName+"'").getSingleResult();
         
        return   user;
    }
	@Transactional
	public List<String> getUserRoles(String userName) {
	        String sql = "SELECT authority FROM authorities,nhanvien where authorities.machucvu=nhanvien.machucvu and nhanvien.tendangnhap = '" +userName+"'";
	        Session session = sessionFactory.getCurrentSession();
	        @SuppressWarnings("unchecked")
			List<String> roles = session.createQuery(sql).getResultList();
	        return roles;
	    }
	
	
}
