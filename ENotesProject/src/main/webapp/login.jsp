<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>Login Page</title>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center bg-custom text-white">
						<i class="fa fa-user-circle-o fa-3x" aria-hidden="true"></i>
						<h2>Login</h2>
					</div>
					
					<%
						String invalidMsg=(String)session.getAttribute("login-failed");
						if(invalidMsg!=null)
						{%>
							<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>
						<%
						session.removeAttribute("login-failed");
						}
						%>
						
						<%
							String withoutLogin=(String)session.getAttribute("Login-error");
						if (withoutLogin!=null)
						{
						%>
							<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>
						<%
						session.removeAttribute("Login-error");
						}
						%>
						
						<%
							String lgMsg=(String)session.getAttribute("logoutMsg");
						if (lgMsg!=null)
						{
						%>
							<div class="alert alert-success" role="alert"><%=lgMsg%></div>
						<%
						session.removeAttribute("logoutMsg");
						}
						%>
					
					<div class="card-body">
						<form action="loginServlet1" method="post">
							<div class="form-group">
								<label>Email Address</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">

							</div>
							<div class="form-group">
								<label>Password</label> <input type="password"
									class="form-control" id="exampleInputPassword1" name="upassword">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>