<%@page import="com.entity.Book_Order"%>
<%@page import="java.util.List"%>
<%@page import="javax.swing.undo.AbstractUndoableEdit"%>
<%@page import="com.DB.DB_Connect"%>
<%@page import="com.DOA.BookOrderDAOImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Order</title>
<%@include file="all-Component/all-css.jsp"%>
</head>
<body>

<c:if test="${empty userobj}">

		<c:redirect url="login.jsp"></c:redirect>

	</c:if>

	<%@include file="all-Component/navbar.jsp"%>
	<h4 class="text-center text-dark mt-4">Your Order</h4>

	<div class="container-fluid p-2">


		<table class="table table-striped">
			<thead class="bg-secondary text-white">
				<tr>
					<th scope="col">Oredr Id</th>
					<th scope="col">Name</th>
					<th scope="col">Book Name</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>
				</tr>
			</thead>
			<tbody>

				<%
				User u = (User) session.getAttribute("userobj");
				BookOrderDAOImpl dao = new BookOrderDAOImpl(DB_Connect.getConn());
				List<Book_Order> blist = dao.getBook(u.getEmail());
				for (Book_Order b : blist) {
				%>


				<tr>
					<th scope="row"><%=b.getOrderId()%></th>
					<td><%=b.getUserName() %></td>
					<td><%=b.getBookName() %></td>
					<td><%=b.getPrice() %></td>
					<td><%=b.getPaymentType() %></td>

				</tr>

				<%
				}
				%>


			</tbody>
		</table>




	</div>




	<div class="p-5">
	<%@include file="all-Component/footer.jsp"%></div>
</body>
</html>