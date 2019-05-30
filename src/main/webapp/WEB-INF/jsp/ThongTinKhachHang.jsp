<%@ page import="com.app.model.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/ThongTinKH.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel=”stylesheet” href=”https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css”>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Dosis|Source+Code+Pro" rel="stylesheet">
	<link rel="stylesheet" href="css/style.css">
	<title>Thông tin khách hàng</title>

</head>
<body>
	<div class="head">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 head_item" ><i class="fas fa-car"></i>VexeOnline</div>
				<div class="col-lg-6 col-md-6 col-sm-6 items">
					<a href="/">Home</a>
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
	
	
	<div class="container">
		<p style="text-align: center;">Thông Tin Khách Hàng</p>
		<div class="container" >
			<div class="row" style="padding: 50px 30px 30px">
				<div class="col-md-6 col-lg-6">
					<p>Họ và tên</p><input type="text" value="<%=user.getHoTen()%>">
					<p>Số điện thoại</p><input type="text" value="<%=user.getSdt()%>">
				</div>
				<div class="col-md-6 col-lg-6">
					<p>Username</p><input type="text" value="<%=user.getUsername()%>">
					<p>Password</p><input type="text" value="<%=user.getPassword()%>">
				</div>
			</div>
			
			
			<div class="form">
				<table border="1px" cellpadding="0px" cellspacing="0px" width="100%">
				<tr><th colspan="6">Số vé đã giao dịch</th></tr>
				<tr>
					<th>ID_Vexe</th>
					<th>Điểm xuất phát</th>
					<th>Điểm đến</th>
					<th>Thời gian đi</th>
					<th>Thời gian đến</th>
					<th>Vị trí</th>
				</tr>
				
				<%ArrayList<VeXe> vexes = (ArrayList<VeXe>)request.getAttribute("vexes");%>
				<%for(VeXe ve: vexes){%>
				<%	ChuyenXe chuyenXe = ve.getChuyenXe();%>
				
				<tr>
					<td><%=ve.getId()%></td>
					<td><%=chuyenXe.getDiemXuatPhat()%></td>
					<td><%=chuyenXe.getDiemDen()%></td>
					<td><%=chuyenXe.getThoiGianDi()%></td>
					<td><%=chuyenXe.getThoiGianDen()%></td>
					<td>Ghế <%=ve.getVitri()%></td>
				</tr>
				
				<%}%>
			</table>
			</div>
			

		</div>
	</div>

</div>

</div>
















<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

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
</body>
</html>