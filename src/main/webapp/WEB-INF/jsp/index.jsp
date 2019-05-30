<%@ page import="com.app.model.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/index.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel=”stylesheet” href=”https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css”>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Dosis|Source+Code+Pro" rel="stylesheet">
	<title>CarTicket</title>
<style>
	.dropbtn {
	  background-color: #3498DB;
	  color: white;
	  padding: 16px;
	  font-size: 16px;
	  border: none;
	  cursor: pointer;
	}

	.dropbtn:hover, .dropbtn:focus {
	  background-color: #2980B9;
	}

	.dropdown {
	  position: relative;
	  display: inline-block;
	}

	.dropdown-content {
	  display: none;
	  position: absolute;
	  background-color: #f1f1f1;
	  min-width: 160px;
	  overflow: auto;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  z-index: 1;
	}

	.dropdown-content a {
	  color: black;
	  padding: 12px 16px;
	  text-decoration: none;
	  display: block;
	}

	.dropdown a:hover {background-color: #ddd;}

	.show {display: block;}
	</style>

</head>
<body>
	<div class="head">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 head_item" ><i class="fas fa-car"></i>VexeOnline</div>
				<div class="col-lg-6 col-md-6 col-sm-6 items">
					
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
		<section>
			<img src="anh.png" alt="">
		</section>	
		<div class="container home-search">
			<div class="row">
				<div class="search-ticket">
					<h1>VexeOnline.com</h1>
					<form action="/timve" >				
						<div class="ticket-seclect">
							<i class="fas fa-map-marker-alt icon-items"></i>
							<input name="diemdi" type="text" placeholder="Điểm đi">
							<i style="color: white;font-size: 30px; position: relative;left: 10px" class="fas fa-angle-double-right"></i>
							<i class="fas fa-map-marker-alt icon-items"></i>
							<input name="diemden" type="text" placeholder="Điểm đến">
							<i class="fas fa-calendar-alt icon-items"></i>
							<input id="date" name="date" placeholder="MM/DD/YYYY" type="text"/>
							<input type="submit" style="background-color:#334FFF;color: white;" value="Tìm Vé">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="intro-panel">
		<div class="container">
			<div class="row" style="padding: 10px">
				<div class="col-lg-4 col-md-4"><i class="fas fa-route icon-panel"></i><p style="margin: 0px;padding-left:80px;font-weight: 700;font-size: 22px;">20+</p><p style="margin: 0px;padding-left:80px">Tuyến đường</p></div>
				<div class="col-lg-4 col-md-4"><i class="fas fa-bus icon-panel"></i><p style="margin: 0px;padding-left:80px;font-weight: 700;font-size: 22px">100+</p><p style="margin: 0px;padding-left:80px">Nhà xe</p></div>
				<div class="col-lg-4 col-md-4"><i class="fas fa-dollar-sign icon-panel"></i><p style="margin: 0px;padding-left:80px;font-weight: 700;font-size: 22px">999+</p><p style="margin: 0;padding-left:80px">khuyến mãi cực khủng</p></div>
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
		$(document).ready(function(){
		var date_input=$('input[name="date"]'); //our date input has the name "date"
		var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
		date_input.datepicker({
			format: 'mm/dd/yyyy',
			container: container,
			todayHighlight: true,
			autoclose: true,
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
<%@ include file = "footer.jsp" %>
</body>
</html>