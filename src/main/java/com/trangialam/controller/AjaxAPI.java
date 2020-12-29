package com.trangialam.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.trangialam.entity.GioHang;

@Controller
@RequestMapping("api/")
@SessionAttributes("giohang")
public class AjaxAPI {

	@GetMapping("ThemGioHang/")
	@ResponseBody
	public String themGioHang(@RequestParam int masanpham, @RequestParam int mamau, @RequestParam String tensanpham,
			@RequestParam String giatien, @RequestParam String tenmau, @RequestParam String tenhang,@RequestParam int machitiet,
			HttpSession httpsession) {
		if (null == httpsession.getAttribute("giohang")) {
			List<GioHang> listGioHang = new ArrayList<GioHang>();
			GioHang gioHang = new GioHang();
			gioHang.setMasanpham(masanpham);
			gioHang.setMamau(mamau);
			gioHang.setTensanpham(tensanpham);
			gioHang.setGiatien(giatien);
			gioHang.setTenmau(tenmau);
			gioHang.setTenhang(tenhang);
			gioHang.setSoluong(1);
			gioHang.setMachitietsanpham(machitiet);
			listGioHang.add(gioHang);
			httpsession.setAttribute("giohang", listGioHang);
			return listGioHang.size() +"";

		} else {
			@SuppressWarnings("unchecked")
			List<GioHang> listGioHangs = (List<GioHang>) httpsession.getAttribute("giohang");

			int index = indexItemInGioHang(listGioHangs, httpsession, masanpham, mamau);
			if (index == -1) {
				GioHang gioHang = new GioHang();
				gioHang.setMasanpham(masanpham);
				gioHang.setMamau(mamau);
				gioHang.setTensanpham(tensanpham);
				gioHang.setGiatien(giatien);
				gioHang.setTenmau(tenmau);
				gioHang.setTenhang(tenhang);
				gioHang.setSoluong(1);
				gioHang.setMachitietsanpham(machitiet);
				listGioHangs.add(gioHang);

			} else {
				int amount = listGioHangs.get(index).getSoluong() + 1;
				listGioHangs.get(index).setSoluong(amount);

			}
			return listGioHangs.size() +"";


		}

	}

	private int indexItemInGioHang(List<GioHang> listGioHangs, HttpSession httpsession, int masanpham, int mamau) {
		for (int i = 0; i < listGioHangs.size(); i++) {
			if (listGioHangs.get(i).getMasanpham() == masanpham && listGioHangs.get(i).getMamau() == mamau) {
				return i;
			}

		}

		return -1;

	}
	@GetMapping("UpdateCart/")
	@ResponseBody
	public void capnhatgiohang(HttpSession httpsession , @RequestParam int masanpham,@RequestParam int mamau,@RequestParam int soluong) {
		if (null != httpsession.getAttribute("giohang")) {
			@SuppressWarnings("unchecked")
			List<GioHang> listGioHangs = (List<GioHang>) httpsession.getAttribute("giohang");
			int index = indexItemInGioHang(listGioHangs, httpsession, masanpham, mamau);
			listGioHangs.get(index).setSoluong(soluong);

		}
	}
	
	@GetMapping("RemoveCart/")
	@ResponseBody
	public void xoagiohang(HttpSession httpsession , @RequestParam int masanpham,@RequestParam int mamau) {
		if (null != httpsession.getAttribute("giohang")) {
			@SuppressWarnings("unchecked")
			List<GioHang> listGioHangs = (List<GioHang>) httpsession.getAttribute("giohang");
			int index = indexItemInGioHang(listGioHangs, httpsession, masanpham, mamau);
			listGioHangs .remove(index);

		}
	}
	
	
	

}
