package com.trangialam.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity(name = "KHUYENMAI")
public class KhuyenMai {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int makhuyenmai;
	String tenkhuyenmai;
	String thoigianbatdau;
	String thoigianketthuc;
	String mota;
	String hinhanhkhuyenmai;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "CHITIETKHUYENMAI", joinColumns = @JoinColumn(name = "makhuyenmai", referencedColumnName = "makhuyenmai"),
			inverseJoinColumns=@JoinColumn(name="masanpham", referencedColumnName = "masanpham"))
	Set<SanPham> danhsachsanpham;
	
	
	
	public Set<SanPham> getDanhsachsanpham() {
		return danhsachsanpham;
	}
	public void setDanhsachsanpham(Set<SanPham> danhsachsanpham) {
		this.danhsachsanpham = danhsachsanpham;
	}
	public int getMakhuyenmai() {
		return makhuyenmai;
	}
	public void setMakhuyenmai(int makhuyenmai) {
		this.makhuyenmai = makhuyenmai;
	}
	public String getTenkhuyenmai() {
		return tenkhuyenmai;
	}
	public void setTenkhuyenmai(String tenkhuyenmai) {
		this.tenkhuyenmai = tenkhuyenmai;
	}
	public String getThoigianbatdau() {
		return thoigianbatdau;
	}
	public void setThoigianbatdau(String thoigianbatdau) {
		this.thoigianbatdau = thoigianbatdau;
	}
	public String getThoigianketthuc() {
		return thoigianketthuc;
	}
	public void setThoigianketthuc(String thoigianketthuc) {
		this.thoigianketthuc = thoigianketthuc;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public String getHinhanhkhuyenmai() {
		return hinhanhkhuyenmai;
	}
	public void setHinhanhkhuyenmai(String hinhanhkhuyenmai) {
		this.hinhanhkhuyenmai = hinhanhkhuyenmai;
	}
	
	

}
