<%@ page import="com.app.model.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Quản Lí xe</title>
  
  
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>

  <!--<link rel="stylesheet" href="css/QLVexe.css">-->


  
</head>



<body>

<%@ include file = "adminHeader.jsp" %>

	<%NhanVien admin = (NhanVien)request.getAttribute("admin");%>
	<%ArrayList<Xe> xes = (ArrayList<Xe>)request.getAttribute("xes");%>

  <h2 class="tip">VexeOnline</h2>
  <div class="cont">
    <p style="padding:10px;">Xin chào Admin: <span><%=admin.getHoTen()%></span></p>
    <div class="form">
      <h2 style="margin-bottom: 20px;">Quản lí xe</h2>
      <table border="1px" cellpadding="0px" cellspacing="0px" width="100%">
        
        <tr>
          <th>Mã xe</th>
          <th>Số xe</th>
          <th>Trạng thái</th>
          <th>Số ghế</th>
		  <th></th>
		  <th></th>
        </tr>
		
		<%for(Xe xe: xes) {%>
        <tr>
			<td><%=xe.getId()%></td>
			<td><%=xe.getSoXe()%></td>
			<td><%=xe.getTrangThai()%></td>
			<td><%=xe.getSoghe()%></td>
			<td><a style="text-decoration:none" href="/"><button type="button" class="submit">Sửa</button></a></td>
			<td><a style="text-decoration:none" href="/test"><button type="button" class="submit">Xóa</button></a></td>
        </tr>
		<%}%>
		
      </table>
	  
	    
    </div>
	
	<%Object thongBao = request.getAttribute("thongBao");%>
	<form  action="/admin/QLXe" method="post">
		<fieldset>
			<legend>Thêm xe</legend>
			
			<%if(thongBao != null){%>
				<label style="color:red;"><%=(String)thongBao%></label>
			<%}%>
			
			<br/>
			<label style="display: inline-block; width: 200px;" for="dd">Số xe</label>
			<input id="dd" type="text" name="soXe">
			
			<br/>
			<label style="display: inline-block; width: 200px;" for="tgdn">Trạng thái</label>
			<input id="tgdn" type="text" name="trangThai">
			
			<br/>
			<label style="display: inline-block; width: 200px;" for="dd">Số ghế</label>
			<input id="dd" type="text" name="soGhe">
			
			<input type="submit" ></input>
		</fieldset>
	</form>
  </div>
  
 


<%@ include file = "footer.jsp" %>

</body>

</html>
