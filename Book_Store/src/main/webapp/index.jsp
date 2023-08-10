
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DOA.BookDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DB_Connect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Index Page</title>
<%@include file="all-Component/all-css.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/b1.jpg");
	height: 50vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>
</head>
<body>
	<%@include file="all-Component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-center text-light">
			<i class="fa-solid fa-book-open"></i> Welcome To Book Store
		</h2>
	</div>



	<!-- Starting of recent book -->
	<div class="container-fluid" style="background-color: #e8eded;">
		<h3 class="text-center p-4">Recent book</h3>
		<div class="row">

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/java.jpg"
							style="width: 200px; height: 250px";>
						<h6>DSA using Java</h6>
						<div class="row">

							<a href="" class="btn btn-secondary btn-sm ml-5"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-info btn-sm ml-5">View</a> <a href=""
								class="btn btn-success btn-sm ml-5">₹500</a>
						</div>




					</div>

				</div>

			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/c++.jpg"
							style="width: 200px; height: 250px";>
						<h6>DSA using C++</h6>
						<div class="row">
							<a href="" class="btn btn-secondary btn-sm ml-5"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-info btn-sm ml-5">View</a> <a href=""
								class="btn btn-success btn-sm ml-5">₹550</a>
						</div>
					</div>

				</div>

			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/c.jpg" style="width: 200px; height: 250px";>
						<h6>DSA using C</h6>
						<div class="row">
							<a href="" class="btn btn-secondary btn-sm ml-5"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-info btn-sm ml-5">View</a> <a href=""
								class="btn btn-success btn-sm ml-5">₹600</a>
						</div>
					</div>

				</div>

			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/python.jpg"
							style="width: 200px; height: 250px";>
						<h6>DSA using Python</h6>
						<div class="row">
							<a href="" class="btn btn-secondary btn-sm ml-5"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-info btn-sm ml-5">View</a> <a href=""
								class="btn btn-success btn-sm ml-5">₹200</a>
						</div>
					</div>

				</div>

			</div>

		</div>
		<div class="text-center ml-1 p-5">
			<a href="" class="btn btn-primary btn-sm text-white">View All</a>
		</div>

	</div>
	<!-- Ending of recent book -->


	<!-- Starting of New book -->
	<div class="container" style="background-color: #e8eded;">
		<h3 class="text-center">New book</h3>
		<div class="row">
              
               <%
               BookDAOImpl dao = new BookDAOImpl(DB_Connect.getConn());
               List<BookDtls> list = dao.getNewBook();
               for(BookDtls b:list)
               {%>
                <div class="col-md-3">
            	 <div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px;" class="img-thumblin">
						<h6><%=b.getBookName() %></h6>
						<h6>Categories : <%=b.getBookCategory() %></h6>
						<div class="row">
							<a href="" class="btn btn-secondary btn-sm ml-3"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-info btn-sm ml-1">View</a> <a href=""
								class="btn btn-success btn-sm ml-1"><i class="fa-solid fa-rupee-sign"></i>.<%=b.getPrice() %></a>
						</div>
					</div>

				</div>
					</div>
            	   
               <%}
               %>
               
				

		
               


		</div>
		<div class="text-center ml-1 p-5">
			<a href="" class="btn btn-primary btn-sm text-white">View All</a>
		</div>

	</div>
	<!-- Ending of New book -->


	<!-- Starting of Old book -->
	<div class="container-fluid" style="background-color: #e8eded;">
		<h3 class="text-center">Old book</h3>
		<div class="row">

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/c_java.jpeg"
							style="width: 200px; height: 250px";>
						<h6>Basic Java Programming</h6>
						<div class="row">
							<a href="" class="btn btn-secondary btn-sm ml-5"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-info btn-sm ml-5">View</a> <a href=""
								class="btn btn-success btn-sm ml-5">₹500</a>
						</div>
					</div>

				</div>

			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/c_c++.jpg"
							style="width: 200px; height: 250px";>
						<h6>Basic C++ Programming</h6>
						<div class="row">
							<a href="" class="btn btn-secondary btn-sm ml-5"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-info btn-sm ml-5">View</a> <a href=""
								class="btn btn-success btn-sm ml-5">₹550</a>
						</div>
					</div>

				</div>

			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/c_c.jpg"
							style="width: 200px; height: 250px";>
						<h6>Basic C Programming</h6>
						<div class="row">
							<a href="" class="btn btn-secondary btn-sm ml-5"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-info btn-sm ml-5">View</a> <a href=""
								class="btn btn-success btn-sm ml-5">₹600</a>
						</div>
					</div>

				</div>

			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/c_py.jpg"
							style="width: 200px; height: 250px";>
						<h6>Basic Python Programming</h6>
						<div class="row">
							<a href="" class="btn btn-secondary btn-sm ml-5"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-info btn-sm ml-5">View</a> <a href=""
								class="btn btn-success btn-sm ml-5">₹200</a>
						</div>
					</div>

				</div>

			</div>

		</div>
		<div class="text-center ml-1 p-5">
			<a href="" class="btn btn-primary btn-sm text-white">View All</a>
		</div>

	</div>
	<!-- Ending of Old book -->

	<%@include file="all-Component/footer.jsp"%>

</body>
</html>