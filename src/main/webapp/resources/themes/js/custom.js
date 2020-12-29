$(document).ready(function() {
	$(".btn-giohang").click(function () {
		
		var tensp =$("#tensp").text();
		var masp =$("#tensp").attr("data-masanpham");
		var hang =$("#tensp").attr("data-tenhang");
		var tenmau1 = $(".mausac :selected").text();
		var mamau1 =  $(".mausac").val();
		var machitietsp = $(".mausac :selected").attr("data-machitiet");

		
		
		var tien =$("#giatien").text();
		
		$.ajax({
			url:"/webshop/api/ThemGioHang/",
		    type:"GET",
		    data:{
		    	masanpham:masp,
		    	mamau :mamau1,
		    	tensanpham:tensp,
		    	giatien:tien,
		    	tenmau:tenmau1,
		    	tenhang:hang,
		    	machitiet:machitietsp
		    	
		    	
		    },
		    success: function(result){
//		    	alert( machitiet);
		    	
		    }
		})
		
	})
	
	$(".remove-cart").click(function () {
		var self = $(this);
		var masp = $(this).closest("tr").find(".sanpham").attr("data-masanpham");
		var mamau1 = $(this).closest("tr").find(".sanpham").attr("data-mamau");
		
		$.ajax({
			url:"/webshop/api/RemoveCart/",
		    type:"GET",
		    data:{
		    	masanpham:masp,
		    	mamau :mamau1,
		    	
		    },
		    success: function(result){
		    	 self.closest("tr").remove();
		    	 gantongtien(true);
		    	
		    }
		})

	})

	gantongtien();
	$(".soluong-giohang").change(function () {
		var soluong = $(this).val();
		var giatien = $(this).closest("tr").find(".giatien").text();
		var tongtien = soluong*parseInt(giatien);
		var tongtienformat =  tongtien.toFixed(3).replace(/(\d)(?=(\d{3})+(?!\.))/g, "$1.").toString();
		$(this).closest("tr").find(".tongtien").html(tongtienformat);
		gantongtien(true);
		
		
		
		var masp = $(this).closest("tr").find(".sanpham").attr("data-masanpham");
		var mamau1 = $(this).closest("tr").find(".sanpham").attr("data-mamau");

		$.ajax({
			url:"/webshop/api/UpdateCart/",
		    type:"GET",
		    data:{
		    	masanpham:masp,
		    	mamau :mamau1,
		    	soluong:soluong
		    },
		    success: function(result){
		    	
		    	
		    }
		})
	})
	
	function gantongtien(isEventChange) {
		var tongtiensanpham = 0;
		
		$(".tongtien").each(function () {
			
			var giatien1 = $(this).closest("tr").find(".giatien").text();
			var soluong = $(this).closest("tr").find(".soluong-giohang").val();
			var tongtien = soluong*parseInt(giatien1);
			
//			if (isEventChange) {
//				$(this).html(format);
//			}
//			$(this).html(format);
			var tongtienformat =  tongtien.toFixed(3).replace(/(\d)(?=(\d{3})+(?!\.))/g, "$1.").toString();
			$(this).closest("tr").find(".tongtien").html(tongtienformat);
			var giatien = $(this).text();
			var format =  parseFloat(giatien).toFixed(3).replace(/(\d)(?=(\d{3})+(?!\.))/g, "$1.").toString();
			tongtiensanpham = tongtiensanpham +  parseFloat(format);
			
			if (isEventChange) {
				$(this).html(format);
			}
			$(this).html(format);

			var formattongtien =  tongtiensanpham.toFixed(3).replace(/(\d)(?=(\d{3})+(?!\.))/g, "$1.").toString();
			$(this).closest("tr").closest("tbody").find("#tongtiengiohang").html(formattongtien+"");


		})
	}
})