<%@ page import="com.app.model.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Quản Lí nhân viên</title>
  
  
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>

  <!--<link rel="stylesheet" href="css/QLVexe.css">-->


  
</head>



<body>

<%@ include file = "adminHeader.jsp" %>

	<%NhanVien admin = (NhanVien)request.getAttribute("admin");%>
	<%ArrayList<KhachHang> khs = (ArrayList<KhachHang>)request.getAttribute("khs");%>

  <h2 class="tip">VexeOnline</h2>
  <div class="cont">
    <p style="padding:10px;">Xin chào Admin: <span><%=admin.getHoTen()%></span></p>
    <div class="form">
      <h2 style="margin-bottom: 20px;">Quản lí khách hàng</h2>
      <table border="1px" cellpadding="0px" cellspacing="0px" width="100%">
        
        <tr>
          <th>Mã khách hàng</th>
          <th>Họ tên</th>
          <th>SĐT</th>
          <th>Username</th>
          <th>Password</th>
		  <th></th>
		  <th></th>
        </tr>
		
		<%for(KhachHang kh: khs) {%>
        <tr>
          <td><%=kh.getId()%></td>
          <td><%=kh.getHoTen()%></td>
          <td><%=kh.getSdt()%></td>
		  <td><%=kh.getUsername()%></td>
		  <td><%=kh.getPassword()%></td>
          <td><a style="text-decoration:none" href="/"><button type="button" class="submit">Sửa</button></a></td>
		  <td><a style="text-decoration:none" href="/test"><button type="button" class="submit">Xóa</button></a></td>
        </tr>
		<%}%>
		
      </table>
	  
	    
    </div>
	<%Object thongBao = request.getAttribute("thongBao");%>
	<form  action="/admin/QLKhachHang" method="post">
		<fieldset>
			<legend>Thêm khách hàng</legend>
			
			<%if(thongBao != null){%>
				<label style="color:red;"><%=(String)thongBao%></label>
			<%}%>
			
			<br/>
			<label style="display: inline-block; width: 200px;" for="dd">Họ tên</label>
			<input id="dd" type="text" name="hoTen">
			
			<br/>
			<label style="display: inline-block; width: 200px;" for="tgdn">SĐT</label>
			<input id="tgdn" type="text" name="sdt">
			
			<br/>
			<label style="display: inline-block; width: 200px;" for="dd">username</label>
			<input id="dd" type="text" name="username">
			
			<br/>
			<label style="display: inline-block; width: 200px;" for="dd">password</label>
			<input id="dd" type="text" name="password">

			<input type="submit" ></input>
		</fieldset>
	</form>
  </div>
  
 


<%@ include file = "footer.jsp" %>

</body>

</html>
