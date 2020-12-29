package com.trangialam.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.transaction.annotation.Transactional;

import com.trangialam.service.MyUserDetailsService;

@Configuration
@EnableWebSecurity
@Transactional
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private MyUserDetailsService myUserDetailsService;

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {

		
		auth.userDetailsService(myUserDetailsService);

	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		http.csrf().disable();

		http.authorizeRequests().antMatchers("/**", "/cart/", "/login/", "/products/**","/register/","/redirectLogout").permitAll();

		http.authorizeRequests().antMatchers("/userInfo/").access("hasAnyRole('ROLE_USER', 'ROLE_ADMIN')");

		http.authorizeRequests().antMatchers("/admin/").access("hasRole('ROLE_ADMIN')");

		http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/login/");

		http.authorizeRequests().and().formLogin()//

				.loginProcessingUrl("/j_spring_security_check") // Submit URL
				.loginPage("/login")//
				.defaultSuccessUrl("/userInfo/")//
				.failureUrl("/login?error=true")//
				.usernameParameter("tendangnhap")//
				.passwordParameter("matkhau")

				.and().logout().logoutUrl("/redirectLogout").logoutSuccessUrl("/");

	}

}
