package com.trangialam.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name = "AUTHORITIES")
public class Authorities {
	
	@Id
	String authority;
	
	@ManyToOne
	@JoinColumn(name = "machucvu")
	ChucVu chucvu;

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public ChucVu getChucvu() {
		return chucvu;
	}

	public void setChucvu(ChucVu chucvu) {
		this.chucvu = chucvu;
	}

}
