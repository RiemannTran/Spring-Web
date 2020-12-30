package com.trangialam.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity(name = "ROLES")
public class Role {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int marole;
	String tenrole;
	
	
	@ManyToMany(cascade = CascadeType.ALL, mappedBy = "roles")
    private Set<NhanVien> users;


	public Role() {
		
	}

	public int getMarole() {
		return marole;
	}


	public void setMarole(int marole) {
		this.marole = marole;
	}


	public String getTenrole() {
		return tenrole;
	}


	public void setTenrole(String tenrole) {
		this.tenrole = tenrole;
	}


	public Set<NhanVien> getUsers() {
		return users;
	}


	public void setUsers(Set<NhanVien> users) {
		this.users = users;
	}
	
	
	
	
	

}
