<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
	background: url("img/notebook4.jpg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	backgroung-size: cover;
	
}
</style>
<meta charset="UTF-8">
<title>Home Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
	<div class="text-center header-size">
		<h1 class="text" style="color:#ad1457;"><i class="fa fa-book" aria-hidden="true"></i>Welcome to E-Notes</h1>
		<a href="login.jsp" class="btn btn-light"><i class="fa fa-user-circle-o" aria-hidden="true"></i>Login</a> 
		<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
	</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>