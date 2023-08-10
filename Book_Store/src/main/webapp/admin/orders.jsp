<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Order</title>
<%@include file="all-css.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp">

		</c:redirect>
	</c:if>

	<h4 class="text-center pt-2">
		<b><i class="fa-solid fa-user"></i> Hello Admin</b>
	</h4>

	<table class="table table-striped">
		<thead class="bg-secondary text-white">
			<tr>
				<th scope="col">Oredr Id</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Phone No</th>
				<th scope="col">Book Name</th>
				<th scope="col">Price</th>
				<th scope="col">Payment Type</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>@mdo</td>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>



			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Mark</td>
				<td>Thornton</td>
				<td>@fat</td>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>

			</tr>
			<tr>
				<th scope="row">3</th>
				<td>the Bird</td>
				<td>Mark</td>
				<td>Otto</td>
				<td>@twitter</td>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>


			</tr>
		</tbody>
	</table>
	<%@include file="footer.jsp"%>

</body>
</html>