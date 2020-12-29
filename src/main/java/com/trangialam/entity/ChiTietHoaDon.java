package com.trangialam.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

@Entity(name = "CHITIETHOADON")
@IdClass(ChiTietHoaDonId.class)
public class ChiTietHoaDon {
	@Id
	int mahoadon ;
	
	@Id
	int machitietsanpham ;
	int soluong ;
	String giatien ;
	
	public int getMahoadon() {
		return mahoadon;
	}
	public void setMahoadon(int mahoadon) {
		this.mahoadon = mahoadon;
	}
	public int getMachitietsanpham() {
		return machitietsanpham;
	}
	public void setMachitietsanpham(int machitietsanpham) {
		this.machitietsanpham = machitietsanpham;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public String getGiatien() {
		return giatien;
	}
	public void setGiatien(String giatien) {
		this.giatien = giatien;
	}

}
