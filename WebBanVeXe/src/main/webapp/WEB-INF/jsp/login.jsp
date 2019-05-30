<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login/Registration Form Transition</title>
  
  
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>

      <link rel="stylesheet" href="css/login.css">

  
</head>

<body>

  <h2 class="tip">VexeOnline</h2>
<div class="cont">
	<form action="/login" method="post">
		<div class="form sign-in">
			<h2>Chào mừng bạn,</h2>
			<label>
			  <span>Tên tài khoảng</span>
			  <input type="text" name="username"/>
			</label>
			<label>
			  <span>Mật khẩu</span>
			  <input type="password" name="password"/>
			</label>
			<p class="forgot-pass">Quên mật khẩu?</p>
			<button type="submit" class="submit">Đăng nhập</button>
		</div>
	
	</form>
  
  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--up">
        <p>Sign up and discover great amount of new opportunities!</p>
      </div>
      <div class="img__text m--in">
        <p>If you already has an account, just sign in. We've missed you!</p>
      </div>
      <div class="img__btn">
        <span class="m--up">Đăng ký</span>
        <span class="m--in">Đăng nhập</span>
      </div>
    </div>
	
	<form action="/signup" method="post">
		<div class="form sign-up">
		  <h2>Time to feel like home,</h2>
		  <label>
			<span>Tên</span>
			<input type="text" name="hoten" placeholder="Nhập tên"/>
		  </label>
		  <label>
			<span>Số điện thoại</span>
			<input type="text" name="sdt" placeholder="Nhập số điện thoại"/>
		  </label>
		  <label>
			<span>Tên tài khoảng</span>
			<input type="text" name="username" placeholder="Nhập username"/>
		  </label>
		   <label>
			<span>Mật khẩu</span>
			<input type="password" name="password" placeholder="Nhập mật khẩu"/>
		  </label>
		  <button type="submit" class="submit">Đăng ký</button>

		</div>
	</form>
  </div>
</div>
  

    <script  src="js/login.js"></script>


<%@ include file = "footer.jsp" %>

</body>

</html>
