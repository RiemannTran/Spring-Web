package com.trangialam.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.trangialam.dao.UserInfoDAO;
import com.trangialam.entity.Role;
import com.trangialam.entity.User;


@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private UserInfoDAO userInfoDAO;
	

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userInfoDAO.findUserInfo(username);
		
		if (user == null) {
			throw new UsernameNotFoundException("User not ound");
		}
		

		return new org.springframework.security.core.userdetails.User(username, user.getPassword(), user.getAuthorities());
	}

}
