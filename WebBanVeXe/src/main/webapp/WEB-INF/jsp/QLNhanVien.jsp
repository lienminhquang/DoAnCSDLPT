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
	<%ArrayList<NhanVien> nvs = (ArrayList<NhanVien>)request.getAttribute("nvs");%>

  <h2 class="tip">VexeOnline</h2>
  <div class="cont">
    <p style="padding:10px;">Xin chào Admin: <span><%=admin.getHoTen()%></span></p>
    <div class="form">
      <h2 style="margin-bottom: 20px;">Quản lí nhân viên</h2>
      <table border="1px" cellpadding="0px" cellspacing="0px" width="100%">
        
        <tr>
          <th>Mã nhân viên</th>
          <th>Họ tên</th>
          <th>Ngày sinh</th>
          <th>SDT</th>
          <th>Chức vụ</th>
		  <th>Lương</th>
		  <th></th>
		  <th></th>
        </tr>
		
		<%for(NhanVien nv: nvs) {%>
        <tr>
          <td><%=nv.getId()%></td>
          <td><%=nv.getHoTen()%></td>
          <td><%=nv.getNgaySinh()%></td>
          <td><%=nv.getSdt()%></td>
		  <td><%=nv.getChucVu().getTenChucVu()%></td>
		  <td><%=nv.getLuong()%></td>
          <td><a style="text-decoration:none" href="/"><button type="button" class="submit">Sửa</button></a></td>
		  <td><a style="text-decoration:none" href="/test"><button type="button" class="submit">Xóa</button></a></td>
        </tr>
		<%}%>
		
      </table>
	  
	    
    </div>
	<%ArrayList<ChucVu> cvs = (ArrayList<ChucVu>) request.getAttribute("cvs");%>
	<%Object thongBao = request.getAttribute("thongBao");%>
	<form  action="/admin/QLNhanVien" method="post">
		<fieldset>
			<legend>Thêm nhân viên</legend>
			
			<%if(thongBao != null){%>
				<label style="color:red;"><%=(String)thongBao%></label>
			<%}%>
			
			<br/>
			<label style="display: inline-block; width: 200px;" for="dd">Họ tên</label>
			<input id="dd" type="text" name="hoTen">
			
			<br/>
			<label style="display: inline-block; width: 200px;" for="tgdn">Ngày sinh</label>
			<input id="tgdn" type="date" name="ngaySinh">
			
			<br/>
			<label style="display: inline-block; width: 200px;" for="dd">SĐT</label>
			<input id="dd" type="text" name="sdt">
			
			<br/>
			<label style="display: inline-block; width: 200px;" class="lb" for="idtaixe">Chức vụ</label>
			<input list="ltaixes" name="idChucVu">
			<datalist id="ltaixes">
				<%for(ChucVu cv : cvs){%>
				<option value="<%=cv.getId()%>"><%=cv.getTenChucVu()%></option>
				<%}%>
			</datalist>
			 
			 <br/>
			<label style="display: inline-block; width: 200px;" for="dd">Lương</label>
			<input id="dd" type="text" name="luong">
			
			<input type="submit" ></input>
		</fieldset>
	</form>
  </div>
  
 


<%@ include file = "footer.jsp" %>

</body>

</html>
