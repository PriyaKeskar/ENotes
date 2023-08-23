<%@page import="java.util.List"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.PostDAO"%>
<%@page import="com.User.UserDetails"%>
<%@page import="com.User.Post"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UserDetails user3 = (UserDetails) session.getAttribute("userD");
if (user3 == null) {
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
<title>Show Notes</title>
</head>
<body>
	<div class="Container-fluid">
		<%@include file="all_component/navbar.jsp"%>
		<%
		String updateMsg = (String) session.getAttribute("updateMsg");
		if (updateMsg != null) {
		%>

		<div class="alert alert-success" role="alert"><%=updateMsg%></div>

		<%
		session.removeAttribute("updateMsg");
		}
		%>
		
		<%
		String wrongMsg = (String) session.getAttribute("wrongMsg");
		if (wrongMsg != null) {
		%>

		<div class="alert alert-danger" role="alert"><%=wrongMsg%></div>

		<%
		session.removeAttribute("wrongMsg");
		}
		%>
		
		<h1 class="text-center">All notes</h1>
		<div class="container">
		<div class="row">
			<div class="col-md-12">


				<%
				if (user3 != null) {
					PostDAO ob = new PostDAO(DBConnect.getConn());
					List<Post> post = ob.getData(user3.getId());
					for (Post po : post) {
				%>

				<div class="card mt-3">
					<div class="card body p-4">
						<h5 class="card title text-center"><%=po.getTitle()%></h5>
						<p><%=po.getContent()%>.
						</p>

						<p>
							<b class="text-success">Published by:<%=user3.getName()%></b></br> <b
								class="text-primary"></b>
						</p>

						<p>
							<b class="text-success">Published by:<%=po.getPdate()%></b></br> <b
								class="text-primary"></b>
						</p>

						<div class="container text-center mt-2">
							<a href="DeleteServlet1?note_id=<%=po.getId() %>" class="btn btn-danger">Delete</a>

							<a href="edit.jsp?note_id=<%=po.getId()%>"
								class="btn btn-secondary">Edit</a>
						</div>
					</div>
				</div>

				<%
				}
				}
				%>

			</div>
		</div>
		</div>
	</div>
</body>
</html>