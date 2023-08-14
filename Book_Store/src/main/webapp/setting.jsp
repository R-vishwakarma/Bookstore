<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all-Component/all-css.jsp"%>
</head>
<body>
<%@include file="all-Component/navbar.jsp"%>



<h4 class="text-center pt-2">
		<b><i class="fa-solid fa-user"></i> Hello Admin</b>
	</h4>
	<div class="container mt-2">
		<div class="row p-5">

			<div class="col-md-3">
				<a href="Edit_profile.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-regular fa-pen-to-square fa-5x text-primary"></i><br><br>
							<h4> Edit Profile </h4>
							
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="User_address.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-location-dot fa-5x text-success"></i><br><br>
							<h4>Your Address</h4>
						
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="user_order.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-box text-danger fa-5x"></i></i><br><br>
							<h4>My Order</h4>
							
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="Helpline.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-circle-user fa-5x text-dark"></i><br><br>
							<h4>Help Center</h4>
							
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>




<%@include file="all-Component/footer.jsp"%>
</body>
</html>