<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UserDetails user2 = (UserDetails) session.getAttribute("userD");
if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login...");
}
%>

<!DOCTYPE html>
<html>
<head>
<%@include file="all_component/allcss.jsp"%>
<style type="text/css">
.div-color {
	background-image: linear-gradient(to right top, #7cf0f3, #00cefc, #00a8ff, #007aff,
		#0739e9);
	height: 500px;
}
</style>
<style type="text/css">
.back-img {
	background: url("img/notepad3.png");
	width: 20%;
	height: 50vh;
	background-repeat: no-repeat;
	
     
}
</style>

<meta charset="UTF-8">
<title>HomePage</title>
</head>
<body>
	<div class="container-fluid p-0">
		<%@include file="all_component/navbar.jsp"%>
		<div class="card py-4  text-center" style="max-width: 1060px;">
			<div class="card body text-center mt-3">
				<h1>Start taking your notes</h1>
				<div>
					<a href="addNotes.jsp" class="btn btn-secondary text-center"
						style="max-width: 150px;">Click here to start</a>
				</div>
				<div class="container-fluid back-img mt-3 p-0"></div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>