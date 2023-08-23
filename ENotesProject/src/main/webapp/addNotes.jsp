<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="Container-fluid">
		<%@include file="all_component/navbar.jsp"%>
		<h1 class="text-center">Add your notes</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="AddNotesServlet1" method="post">
						<div class="form-group">
							<%
							UserDetails us = (UserDetails) session.getAttribute("userD");
							if (us != null) {
							%>
							<input type="hidden" value="<%=us.getId()%>" name="uid">
							<%
							}
							%>

							<label for="exampleInputEmail1">Enter Title </label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								area-describedby="emailHelp" name="title" required="required">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Notes </label>
							<textarea rows="9" cols="" class="form-control" name="content"
								required="required"></textarea>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Add Notes</button>

						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>