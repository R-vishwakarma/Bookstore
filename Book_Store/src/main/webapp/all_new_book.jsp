<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DB_Connect"%>
<%@page import="com.DOA.BookDAOImpl"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All New Books</title>
<%@include file="all-Component/all-css.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #ddeff0;
}

</style>
</head>
<body>

	

	<%@include file="all-Component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row">


			<%
			BookDAOImpl dao2 = new BookDAOImpl(DB_Connect.getConn());
			List<BookDtls> list2 = dao2.getAllNewbook();
			for (BookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px;" class="img-thumblin">
						<h6><%=b.getBookName()%></h6>
						<h6>
							Categories :
							<%=b.getBookCategory()%></h6>
						<div class="row-ml-5">
							<a href="" class="btn btn-secondary btn-sm ml-3"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
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
	</div>

</body>
</html>