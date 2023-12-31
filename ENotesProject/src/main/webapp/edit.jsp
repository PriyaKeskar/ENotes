<%@page import="com.User.Post"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.PostDAO"%>
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
<title>Edit Page</title>
</head>
<body>
	<%
	Integer noteid = Integer.parseInt(request.getParameter("note_id"));
	PostDAO post = new PostDAO(DBConnect.getConn());
	Post p = post.getDataById(noteid);
	%>
	<div class="Container-fluid">
		<%@include file="all_component/navbar.jsp"%>
		<h1 class="text-center">Edit your notes</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="NoteEditServlet1" method="post">
					<input type="hidden" value="<%=noteid%>" name="noteid">
						<div class="form-group">

							<label for="exampleInputEmail1">Enter Title </label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								area-describedby="emailHelp" name="title" required="required" value="<%=p.getTitle() %>">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Notes </label>
							<textarea rows="9" cols="" class="form-control" name="content"
								required="required"> <%=p.getContent() %></textarea>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Update Notes</button>

						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>