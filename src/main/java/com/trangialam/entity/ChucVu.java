package com.trangialam.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name = "CHUCVU")
public class ChucVu {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int machucvu;
	String tenchucvu;
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	Set<Authorities> lisAuthorities = new HashSet<Authorities>();

	
	public Set<Authorities> getLisAuthorities() {
		return lisAuthorities;
	}
	public void setLisAuthorities(Set<Authorities> lisAuthorities) {
		this.lisAuthorities = lisAuthorities;
	}
	public int getMachucvu() {
		return machucvu;
	}
	public void setMachucvu(int machucvu) {
		this.machucvu = machucvu;
	}
	public String getTenchucvu() {
		return tenchucvu;
	}
	public void setTenchucvu(String tenchucvu) {
		this.tenchucvu = tenchucvu;
	}
	

}
