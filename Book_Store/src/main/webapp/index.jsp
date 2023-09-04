
<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DOA.BookDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DB_Connect"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Index Page</title>
<%@include file="all-Component/all-css.jsp"%>
<style type="text/css">


.crd-ho:hover {
	background-color: #f7f6da;
}


</style>
</head>
<body>

	<%
	User u = (User) session.getAttribute("userobj");
	%>

	<%@include file="all-Component/navbar.jsp"%>
 

 <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="img/x3.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/x1.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/x2.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>




	<!-- Starting of recent book -->

	<div class="container-fluid" style="background-color: #f7f6da;">
		<h3 class="text-center">Recent book</h3>
		<div class="row">

			<%
			BookDAOImpl dao = new BookDAOImpl(DB_Connect.getConn());
			List<BookDtls> list = dao.getRecentBooks();
			for (BookDtls b : list) {
			%>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName()%>"
							style="width: 130px; height: 175px;" class="img-thumblin">
						<h6><%=b.getBookName()%></h6>
						<h6>
							Categories :
							<%=b.getBookCategory()%></h6>
						<div class="row-ml-5">
						
						
						
							<%
							if (u == null) {
							%>

							<a href="login.jsp" class="btn btn-secondary btn-sm ml-3"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a>

							<%
							} else {
							%>

							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-secondary btn-sm ml-3"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a>

							<%
							}
							%>
							
						
						
							<a href="view_book.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-info btn-sm ml-1">View</a> <a href=""
								class="btn btn-success btn-sm ml-1"><i
								class="fa-solid fa-rupee-sign"></i>.<%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>

			<%
			}
			%>
		</div>
		<div class="text-center ml-1 p-5">
			<a href="all_recent_book.jsp"
				class="btn btn-primary btn-sm text-white">View All</a>
		</div>
	</div>

	<!-- Ending of recent book -->



	<!-- Starting of New book -->
	<div class="container-fluid" style="background-color: #f7f6da;">
		<h3 class="text-center">New book</h3>
		<div class="row">

			<%
			BookDAOImpl dao2 = new BookDAOImpl(DB_Connect.getConn());
			List<BookDtls> list2 = dao2.getNewBook();
			for (BookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName()%>"
							style="width: 130px; height: 175px;" class="img-thumblin">
						<h6><%=b.getBookName()%></h6>
						<h6>Categories :<%=b.getBookCategory()%></h6>
						<div class="row-ml-5">

							<%
							if (u == null) {
							%>

							<a href="login.jsp" class="btn btn-secondary btn-sm ml-3"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a>

							<%
							} else {
							%>

							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-secondary btn-sm ml-3"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a>

							<%
							}
							%>


							<a href="view_book.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-info btn-sm ml-1">View</a> <a href=""
								class="btn btn-success btn-sm ml-1"><i
								class="fa-solid fa-rupee-sign"></i><%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<div class="text-center ml-1 p-5">
			<a href="all_new_book.jsp" class="btn btn-primary btn-sm text-white">View
				All</a>
		</div>
	</div>
	<!-- Ending of New book -->



	<!-- Starting of Old book -->

	<div class="container-fluid" style="background-color: #f7f6da;">
		<h3 class="text-center">Old book</h3>
		<div class="row">

			<%
			BookDAOImpl dao3 = new BookDAOImpl(DB_Connect.getConn());
			List<BookDtls> list3 = dao3.getOldBooks();
			for (BookDtls b : list3) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName()%>"
							style="width: 130px; height: 175px;" class="img-thumblin">
						<h6><%=b.getBookName()%></h6>
						<h6>
							Categories :
							<%=b.getBookCategory()%></h6>
						<div class="row-ml-5">


							<%
							if (u == null) {
							%>

							<a href="login.jsp" class="btn btn-secondary btn-sm ml-3"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a>

							<%
							} else {
							%>

							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-secondary btn-sm ml-3"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a>

							<%
							}
							%>
							

							<a href="view_book.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-info btn-sm ml-1">View</a> <a href=""
								class="btn btn-success btn-sm ml-1"><i
								class="fa-solid fa-rupee-sign"></i>.<%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<div class="text-center ml-1 p-5">
			<a href="all_old_book.jsp" class="btn btn-primary btn-sm text-white">View
				All</a>
		</div>
	</div>

	<!-- Ending of Old book -->

	<%@include file="all-Component/footer.jsp"%>

</body>
</html>