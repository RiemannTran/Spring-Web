package com.trangialam.service;


import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.trangialam.dao.UserInfoDAO;
import com.trangialam.entity.NhanVien;
import com.trangialam.entity.Role;



@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private UserInfoDAO userInfoDAO;
	

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		NhanVien user = userInfoDAO.findUserInfo(username);
		
		if (user == null) {
			throw new UsernameNotFoundException("User not ound");
		}
		Set<GrantedAuthority> grantedAuthorities = new HashSet<GrantedAuthority>();
        Set<Role> roles = user.getRoles();
        for (Role role : roles) {
            grantedAuthorities.add(new SimpleGrantedAuthority(role.getTenrole()));
        }

        return new org.springframework.security.core.userdetails.User(
                user.getEmail(), user.getMatkhau(), grantedAuthorities);
		

	}

}
