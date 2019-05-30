<%@ page import="com.app.model.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>



<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/timve.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	<link rel=”stylesheet” href=”https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css”>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Dosis|Source+Code+Pro" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<title>Tìm vé</title>
	
	
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="head">
		<div class="container">
			<div class="row" style="margin: 0;padding:0">
				<div class="col-lg-6 col-md-6 col-sm-6 head_item" ><i class="fas fa-car"></i>VexeOnline</div>
				<div class="col-lg-6 col-md-6 col-sm-6 items">
					<a  href="#">Support</a>
					<a href="#">About</a>
					
					<%KhachHang user = (KhachHang)request.getAttribute("user");%>
					<%if(user != null){%>
						<div class="dropdown">
						  <button onclick="myFunction()" class="dropbtn"><%=user.getHoTen()%></button>
						  <div id="myDropdown" class="dropdown-content">
							<a href="/thongTin">Thông tin</a>
							<a href="/logout">Đăng xuất</a>
							
						  </div>
						</div>
					<%}else {%>
						<a href="/login">Đăng nhập</a>
					<%}%>
					
				</div>
			</div>
		</div>
	</div>
	<div class="home-bage">

		<%ArrayList<ChuyenXe> chuyenXes = (ArrayList<ChuyenXe>)request.getAttribute("chuyenXes");%>
		<%ArrayList<VeXe> vexes = (ArrayList<VeXe>) request.getAttribute("vexes");%>
		
		<%String diemDi = (String)request.getAttribute("diemDi");%>
		<%String diemDen = (String)request.getAttribute("diemDen");%>
		<%String date = (String)request.getAttribute("date");%>
		<div class="container">
			<h2>Vé xe từ <%=diemDi%> đến <%=diemDen%></h2>
		</div>
		<div class=" home-search">
			<div class="row">
				<div class="container search-ticket">
					<form action="/timve" >				
						<div class="ticket-seclect">
							<i class="fas fa-map-marker-alt icon-items"></i>
							<input type="text" name="diemdi" value="<%=diemDi%>">
							<i style="color: white;font-size: 30px; position: relative;left: 10px" class="fas fa-angle-double-right"></i>
							<i class="fas fa-map-marker-alt icon-items"></i>
							<input  type="text" name="diemden" value="<%=diemDen%>">
							<i class="fas fa-calendar-alt icon-items"></i>
							<input id="date" name="date" type="text" value="<%=date%>" />
							<input type="submit" style="background-color:#334FFF;color: white;" value="Tìm Vé">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<%for(int i = 0; i < chuyenXes.size(); i++) {%>
	<%	ChuyenXe chuyenXe = chuyenXes.get(i);%>
	
	<!-- thông tin vé và chọn vé -->
	<div style="border-bottom: solid 1px #aaa;border-top: solid 1px #aaa;">
		<div class="container" >
			<div class="row searchResults">
				<div class="col-lg-2 col-md-2" style="margin: 0;padding: 0">
					<i style="font-size: 40px;color: #aaa" class="fas fa-bus icon-panel"></i>
					<span>Quê Hương</span>
				</div>
				<div class="col-lg-2 col-md-2" style="margin: 0;padding: 0">
					<span style="font-weight: 700"><%=chuyenXe.getThoiGianDi().toString().split(" ")[1]%></span><br>
					<p><%=chuyenXe.getDiemXuatPhat()%></p>
				</div>
				<div class="col-lg-2 col-md-2" style="margin: 0;padding: 0">
					<p><i style="font-size: 15px;position: relative;top: 10px;"></i></p><br>
					<img style="width: 60px;height: 15px;margin:auto;position: relative;top: -10px" src="https://storage.googleapis.com/fe-production/images/from-to2.png">
					<p ><i style="font-size: 15px;position: relative;top: -10px;">dự kiến</i></p>
				</div>
				<div class="col-lg-2 col-md-2" style="margin: 0;padding: 0">
					<span style="font-weight: 700"><%=chuyenXe.getThoiGianDen().toString().split(" ")[1]%></span>
					<p><%=chuyenXe.getDiemDen()%></p>
				</div>
				<div class="col-lg-2 col-md-2" style="margin: 0;padding: 0">
					<p>30 ghế</p>
					<p><%=chuyenXe.getSoGheTrong()%> ghế trống</p>
				</div>
				<div class="col-lg-2 col-md-2" style="margin: 0;padding: 0">
					<span style="font-size: 20px;"><strong><%=chuyenXe.getGiave()%></strong></span><sup>đ</sup>
					<button type="button" class="accordion" data-toggle="collapse" href="#ve<%=i%>">Chọn chỗ</button>
				</div>
			</div>
			<p style="margin-top:20px;"><i>*Thuộc chuyến xe <%=chuyenXe.getDiemXuatPhat()%>-<%=chuyenXe.getDiemDen()%> <%=chuyenXe.getThoiGianDi().toString().split(" ")[0]%></i></p>
		</div>
	</div>
	<!-- end thông tin vé và chọn vé -->
	<!-- thông tin chi tiết và from  -->
	<div id="ve<%=i%>" class="collapse" style="	background-color: #F0F0F0;padding-bottom: 20px;">
		<div class="container">

			<div class="title-head">
				<div class="row">
					<div class="col-md-4 col-lg-4"> <p >1 - Chọn chỗ</p></div>
					<div class="col-md-4 col-lg-4"><p > 2 - Điểm đi-Điểm đến</p></div>
					<div class="col-md-4 col-lg-4"><p style="	background-color: #F0F0F0;padding-bottom: 20px;" >3 - Thông tin khách hàng</p></div>
				</div>			
			</div>
			<div class="detail-booking" style="background-color: white;">
				<form action="/datve" method="get">
					<div class="row">
						<!-- col 1 -->
						<div class="col-md-4 col-lg-4" >
							<div style="width: 100%;height: 40px;background-color: #aaa;margin: 7px;text-align: center;font-size: 20px;"><p>Sơ đồ xe</p></div>
							<div class="sodoxe">
								<!--<p> vẽ xe ở đây nhé</p><br><br><br><br><br>-->
								<img src="sodoxe.png" >
							</div>
							
							<div class="sodoxe-choncho">
								<h5>Vui lòng chọn chỗ ngồi : </h5>
								<select name="idvexe" >
									<%for(VeXe ve: vexes) {%>
										<%if(ve.getChuyenXe() == chuyenXe)%>
											<option value="<%=ve.getId()%>"><%=ve.getVitri()%></option>
									<%}%>
								</select>
								<span style="font-weight: 700;color: red"><%=chuyenXe.getGiave()%><sup>đ</sup></span>
						</div>
						</div>
						<!-- end col 1 -->
						<!-- col 2 -->
						<div class="col-md-4 col-lg-4" style="padding: 0;">
							<div class="khung2" style="border: 1px solid #f1f1f1;">
								<ul class="nav nav-tabs">
									<li class="active"><a data-toggle="tab" href="#diemdi" >Điểm đi</a></li>
									<li><a data-toggle="tab" href="#diemden">Điểm đến</a></li>
								</ul>										
								<div class="tab-content">
									<div id="diemdi" class="tab-pane fade in active">
										<p ><strong>Điểm đón</strong></p>
										<ul>
											<li>
												<p><i class="fas fa-map-marker-alt"></i><%=chuyenXe.getDiemXuatPhat()%></p>
											</li>
											
										</ul>
									</div>
									<div id="diemden" class="tab-pane fade">
										<p ><strong>Điểm đến</strong></p>
										<ul>
											<li>
												<p><i class="fas fa-map-marker-alt"></i><%=chuyenXe.getDiemDen()%></p>
											</li>
											
										</ul>
									</div>
									<div id="menu2" class="tab-pane fade">

									</div>
								</div>
							</div>
						</div>
						<!-- end col 2 -->
						<!-- col 3 -->
						
						
						<%if(user != null){%>
						<div class="col-md-4 col-lg-4 ">
							<div class="khung3">
							
								<p>Họ tên <sup style="color: red">*</sup>:</p>
								<input type="text" value="<%=user.getHoTen()%>" name="hoten">
								<p>Số điện thoại<sup style="color: red">*</sup>:</p>
								<input type="text" value="<%=user.getSdt()%>" name="sdt">
								<input type="submit" style="margin-top: 50px;background-color:#f8c13b;border: none;border-radius: 3px;height: 40px" value="Đặt vé">
							
							</div>
						</div>
						<%} else {%>
						<div class="col-md-4 col-lg-4 ">
							<div class="khung3">
							
								<p>Họ tên <sup style="color: red">*</sup>:</p>
								<input type="text" value="" name="hoten">
								<p>Số điện thoại<sup style="color: red">*</sup>:</p>
								<input type="text" value="" name="sdt">
								<input type="submit" style="margin-top: 50px;background-color:#f8c13b;border: none;border-radius: 3px;height: 40px" value="Đặt vé">
							
							</div>
						</div>
						
						<%}%>
						
						<!-- end col 3 -->
					</div>
				</form>
			</div>

		</div>
	</div>
	<!-- end -->
	
	
	
	<%}%>



	


	


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
	<!-- Extra JavaScript/CSS added manually in "Settings" tab -->
	<!-- Include jQuery -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

	<!-- Include Date Range Picker -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
	<script src="js/timve.js"></script>
	<script>
		$(document).ready(function(){
		var date_input=$('input[name="date"]'); //our date input has the name "date"
		var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
		date_input.datepicker({
			format: 'mm/dd/yyyy',
			container: container,
			todayHighlight: true,
			autoclose: true,
			orientation: 'top' 
		})
	})
</script>

<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>

<style>
.bg-4 { 
  background-color: #2f2f2f;
  color: #ffffff;
}
</style>

<%@ include file = "footer.jsp" %>
</body>
</html>