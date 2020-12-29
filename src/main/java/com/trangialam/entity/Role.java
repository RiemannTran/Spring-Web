package com.trangialam.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "ROLE")
public class Role {
	
	@Id
	int roleId;
	String roleName;
	
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
	
	

}
