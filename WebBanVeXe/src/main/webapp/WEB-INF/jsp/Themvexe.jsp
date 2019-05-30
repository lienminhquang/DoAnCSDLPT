<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Quản Lí Vé Xe</title>
  
  
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="css/themvexe.css">

  
</head>

<body>

  <h2 class="tip">VexeOnline</h2>
  <div class="cont">
    <p style="padding:10px;">Xin chào Admin: <span>Hoàng Phong Sang</span></p>
    <div class="form">

      <h2 style="margin-bottom: 20px;font-weight: 700">Thêm Chuyến xe</h2>

      <form action="">
       <div class="row">
        <div class="col-lg-6 col-md-6" style="border-right:1px solid #f1f1f1;">
          <p>ID xe</p>
          <input class="form-control"type="text"/>
          <p>Chọn tài xế</p>
          <select name="tuyenduong" class="select-tuyenduong">
            <option value="1">Sang đẹp trai</option>
            <option value="2">Quang bê đê</option>
            <option value="3">Hiển ML</option>
          </select>

          <p>Chọn ngày </p>
          <input class="form-control" id="date" name="date" placeholder="MM/DD/YYYY" type="text"/>
          <p>Chọn điểm đi </p>
          <select name="tuyenduong" class="select-tuyenduong">
            <option value="cr">Cam Ranh</option>
            <option value="qn">Quãng Ngãi</option>
            <option value="db">Bình Định</option>
            <option value="nt">Nha Trang</option>
          </select>
          <p>Chọn điểm đến </p>
          <select name="tuyenduong" class="select-tuyenduong">
            <option value="cr">Cam Ranh</option>
            <option value="qn">Quãng Ngãi</option>
            <option value="db">Bình Định</option>
            <option value="nt">Nha Trang</option>
          </select>
        </div>
        <div class="col-lg-6 col-md-6">
          <input type="submit" class="btn-themchuyen" value="Thêm chuyến">
          <div class="note">
            <p style=""><strong>Tính mạng con người là trên hết</strong></p>
            <ul>
              <li><i>không được uống rượu bia khi lái xe</i></li>
              <li><i>chấp hành tốt an toàn luật giao thông</i></li>
              <li><i>phát hiện sẽ trừ nửa tháng lương</i></li>
            </ul>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
      orientation: 'top' 
    })
  })
</script>
<%@ include file = "footer.jsp" %>
</body>

</html>
