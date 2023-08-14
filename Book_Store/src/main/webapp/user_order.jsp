<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all-Component/all-css.jsp"%>
</head>
<body>
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
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>@mdo</td>



				</tr>
				<tr>
					<th scope="row">2</th>
					<td>Jacob</td>
					<td>Mark</td>
					<td>Thornton</td>
					<td>@fat</td>

				</tr>
				<tr>
					<th scope="row">3</th>
					<td>the Bird</td>
					<td>Mark</td>
					<td>Otto</td>
					<td>@twitter</td>



				</tr>
			</tbody>
		</table>




	</div>




	<%@include file="all-Component/footer.jsp"%>
</body>
</html>