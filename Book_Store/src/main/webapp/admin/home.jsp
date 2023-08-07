<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Home</title>
<%@include file="all-css.jsp"%>

</head>
<body>
	<%@include file="navbar.jsp"%>
     
     <h4 class="text-center pt-2"><b><i class="fa-solid fa-user"></i> Hello Admin</b></h4>
	<div class="container mt-10">
		<div class="row p-5">
			
			<div class="col-md-3">
			<a href="add_books.jsp">
				<div class="card">
					<div class="card-body text-center">
					<i class="fa-regular fa-square-plus fa-5x text-success"></i><br>
					<h4>Add Books</h4>
					---------
					</div>
				</div>
				</a>
			</div>
			
			<div class="col-md-3">
			<a href="all_books.jsp">
				<div class="card">
					<div class="card-body text-center">
					<i class="fa-solid fa-book-open fa-5x text-warning"></i><br>
					<h4>All Books</h4>
					---------
					</div>
				</div>
				</a>
			</div>
			
			<div class="col-md-3">
			<a href="orders.jsp">
				<div class="card">
					<div class="card-body text-center">
					<i class="fa-solid fa-people-carry-box fa-5x text-danger"></i><br>
					<h4>Order </h4>
					---------
					</div>
				</div>
				</a>
			</div>
			
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
					<i class="fa-solid fa-right-from-bracket fa-5x text-secondary"></i><br>
					<h4>Logout</h4>
					---------
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>