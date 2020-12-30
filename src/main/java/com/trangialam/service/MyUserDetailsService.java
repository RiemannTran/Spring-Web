package com.trangialam.service;


import java.util.Collection;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.trangialam.dao.UserInfoDAO;
import com.trangialam.entity.NhanVien;



@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private UserInfoDAO userInfoDAO;
	

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		NhanVien user = userInfoDAO.findUserInfo(username);
		
		if (user == null) {
			throw new UsernameNotFoundException("User not ound");
		}
		

		return new org.springframework.security.core.userdetails.User(username, user.getTendangnhap(), (Collection<? extends GrantedAuthority>) user.getRoles());
	}

}
