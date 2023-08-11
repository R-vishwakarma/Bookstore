<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DB_Connect"%>
<%@page import="com.DOA.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Details</title>
<%@include file="all-Component/all-css.jsp"%>
</head>
<body>
	<%@include file="all-Component/navbar.jsp"%>
	
	<% 
	int id = Integer.parseInt(request.getParameter("bid"));
	BookDAOImpl dao = new BookDAOImpl(DB_Connect.getConn());
	BookDtls b = dao.getBookId(id);
	%>
	
	<div class="container-fluid">
		<div class="row ml-4 mr-4">
			<div class="col-md-6 text-center border bg-white p-5 mt-4">
				<img src="books/<%=b.getPhotoName() %>" style="height: 280px; width: 220px;">
                 <h5 class="mt-4">Book Name : <span class="text-secondary"><%= b.getBookName()  %></span></h5>
                 <h5 class="mt-2">Category : <span class="text-secondary"><%=b.getBookCategory()  %></span></h5>
			</div>

			<div class="col-md-6 text-center border bg-white p-5 mt-4">
				<h2 class="mt-6"><%= b.getBookName()  %></h2>
				<div class="row mt-5">
					<div class="col-md-4 text-center text-success p-2 ">

						<i class="fa-solid fa-money-check-dollar fa-2x"></i>
						<h5>Cash On Delivery</h5>
					</div>
					<div class="col-md-4 text-center text-secondary p-2">
						<i class="fa-solid fa-arrow-rotate-left fa-2x"></i>
						<h5>7 Days Return Policy</h5>
					</div>
					<div class="col-md-4 text-center text-info p-2">
						<i class="fa-solid fa-truck fa-2x"></i>
						<h5>Free Shipping</h5>
					</div>

				</div>
				<div class="text-center mt-5">
					<a href="" class="btn btn-secondary btn-lg ml-3"><i
						class="fa-solid fa-cart-shopping"></i> Add Cart</a> <a href=""
						class="btn btn-success btn-lg ml-1"><i
						class="fa-solid fa-rupee-sign"></i>. <%= b.getPrice()  %></a>

				</div>

			</div>
		</div>
	</div>

</body>
</html>