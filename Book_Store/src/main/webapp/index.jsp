
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
	background-color: #ddeff0;
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
							<a href="view_book.jsp?bid=<%=b.getBookId() %>" class="btn btn-info btn-sm ml-1">View</a> <a href=""
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
			<a href="all_recent_book.jsp" class="btn btn-primary btn-sm text-white">View All</a>
		</div>
	</div>

	<!-- Ending of recent book -->



	<!-- Starting of New book -->
	<div class="container-fluid" style="background-color: #e8eded;">
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
						<h6>
							Categories :
							<%=b.getBookCategory()%></h6>
						<div class="row-ml-5">
							<a href="" class="btn btn-secondary btn-sm ml-3"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a>
								 <a href="view_book.jsp?bid=<%=b.getBookId() %>"
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
			<a href="all_new_book.jsp" class="btn btn-primary btn-sm text-white">View All</a>
		</div>
	</div>
	<!-- Ending of New book -->



	<!-- Starting of Old book -->

	<div class="container-fluid" style="background-color: #e8eded;">
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

							<a href="" class="btn btn-secondary btn-sm ml-3"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> 
								<a href="view_book.jsp?bid=<%=b.getBookId() %>"
								class="btn btn-info btn-sm ml-1">View</a> 
								<a href=""
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
			<a href="all_old_book.jsp" class="btn btn-primary btn-sm text-white">View All</a>
		</div>
	</div>

	<!-- Ending of Old book -->

	<%@include file="all-Component/footer.jsp"%>

</body>
</html>