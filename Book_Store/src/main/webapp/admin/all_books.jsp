<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DB_Connect"%>
<%@page import="com.DOA.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin All Books</title>
<%@include file="all-css.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<h4 class="text-center pt-2">
		<b><i class="fa-solid fa-user"></i> Hello Admin</b>
	</h4>

	<table class="table table-striped">
		<thead class="bg-secondary text-white">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Image</th>
				<th scope="col">Book Name</th>
				<th scope="col">Price</th>
				<th scope="col">Catagories</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>

			<%
			BookDAOImpl dao = new BookDAOImpl(DB_Connect.getConn());
			List<BookDtls> list = dao.getAllBooks();

			for (BookDtls b : list) {
			%>

			<tr>
				<td><%=b.getBookId()%></td>
				<td><img src="../../books/<%=b.getPhotoName()%>"
					style="height: 50px;"></td>
				<td><%=b.getBookName()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getBookCategory()%></td>
				<td><%=b.getStatus()%></td>

				<td><a href="#" class="btn btn-sm btn-success">Edit</a> <a
					href="#" class="btn btn-sm btn-danger">Delete</a></td>
			</tr>

			<%
			}
			%>





		</tbody>
	</table>


</body>
</html>