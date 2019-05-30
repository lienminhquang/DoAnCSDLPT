<%@ page import="com.app.model.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Quản Lí chuyến xe</title>
  
  
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>

  <!--<link rel="stylesheet" href="css/QLVexe.css">-->


  
</head>



<body>
<%@ include file = "adminHeader.jsp" %>
	<%NhanVien admin = (NhanVien)request.getAttribute("admin");%>
	<%ArrayList<ChuyenXe> chuyenXes = (ArrayList<ChuyenXe>)request.getAttribute("chuyenXes");%>

  <h2 class="tip">VexeOnline</h2>
  <div class="cont">
    <p style="padding:10px;">Xin chào Admin: <span><%=admin.getHoTen()%></span></p>
    <div class="form">
      <h2 style="margin-bottom: 20px;">Quản lí chuyến xe</h2>
      <table border="1px" cellpadding="0px" cellspacing="0px" width="100%">
        
        <tr>
          <th>Mã chuyến</th>
          <th>Tài xế</th>
          <th>Mã Xe</th>
          <th>Điểm xuất phát</th>
          <th>Điểm đến</th>
		  <th>Thời gian đi</th>
		  <th>Thời gian đến</th>
		  <th>Giá vé</th>
		  <th></th>
		  <th></th>
        </tr>
		
		<%for(ChuyenXe cx: chuyenXes) {%>
        <tr>
          <td><%=cx.getId()%></td>
          <td><a href="/admin/QLNhanVien?idnv=<%=cx.getTaiXe().getId()%>"><%=cx.getTaiXe().getHoTen()%></a></td>
          <td><a href="/admin/QLXe?idxe=<%=cx.getXe().getId()%>"><%=cx.getXe().getId()%></a></td>
          <td><%=cx.getDiemXuatPhat()%></td>
		  <td><%=cx.getDiemDen()%></td>
		  <td><%=cx.getThoiGianDi()%></td>
		  <td><%=cx.getThoiGianDen()%></td>
		  <td><%=cx.getGiave()%></td>
          <td><a style="text-decoration:none" href="/"><button type="button" class="submit">Sửa</button></a></td>
		  <td><a style="text-decoration:none" href="/test"><button type="button" class="submit">Xóa</button></a></td>
        </tr>
		<%}%>
		
      </table>
	  
	    
    </div>
	<%ArrayList<NhanVien> aa = (ArrayList<NhanVien>) request.getAttribute("taiXes");%>
	<%ArrayList<Xe> xes = (ArrayList<Xe>) request.getAttribute("xes");%>
	<%Object thongBao = request.getAttribute("thongBao");%>
	<form  action="/admin/QLVexe" method="post">
		<fieldset>
			<legend>Thêm chuyến xe</legend>
			
			<%if(thongBao != null){%>
				<label style="color:red;"><%=(String)thongBao%></label>
			<%}%>
			
			<br/>
			<label style="display: inline-block; width: 200px;" class="lb" for="idtaixe">Tài xế</label>
			<input list="ltaixes" name="idtaixe">
			<datalist id="ltaixes">
				<%for(NhanVien taiXe : aa){%>
				<option value="<%=taiXe.getId()%>"><%=taiXe.getHoTen()%></option>
				<%}%>
			</datalist>
			 
			 <br/>
			<label style="display: inline-block; width: 200px;" for="idxe">Xe</label>
			<input list="lxes" name="idxe">
			<datalist id="lxes">
				<%for(Xe xe: xes){%>
				<option value="<%=xe.getId()%>"><%=xe.getSoXe()%></option>
				<%}%>
			</datalist>
			
			<br/>
			<label style="display: inline-block; width: 200px;" for="xp">Điểm xuất phát</label>
			<input id="xp" type="text" name="diemxuatphat">
			
			<br/>
			<label style="display: inline-block; width: 200px;" for="dd">Điểm đến</label>
			<input id="dd" type="text" name="diemden">
			
			<br/>
			<label style="display: inline-block; width: 200px;" for="tgd">Thời gian đi</label>
			<input id="tgd" type="datetime-local" name="thoigiandi">
			
			<br/>
			<label style="display: inline-block; width: 200px;" for="tgdn">Thời gian đến</label>
			<input id="tgdn" type="datetime-local" name="thoigianden">
			
			<br/>
			<label style="display: inline-block; width: 200px;" for="gv">Giá vé</label>
			<input id="gv" type="text" name="giave">
			<br/>
			<input type="submit" ></input>
		</fieldset>
	</form>
  </div>
  
 


<%@ include file = "footer.jsp" %>

</body>

</html>
