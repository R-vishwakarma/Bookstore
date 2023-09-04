<%@page import="java.util.List"%>
<%@page import="com.entity.Cart"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DB_Connect"%>
<%@page import="com.DOA.CartDAOImpl"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Page</title>
<%@include file="all-Component/all-css.jsp"%>
</head>
<body>
	<%@include file="all-Component/navbar.jsp"%>

	<c:if test="${empty userobj}">

		<c:redirect url="login.jsp"></c:redirect>

	</c:if>

	<c:if test="${not empty succMsg }">
		<div class="alert alert-primary" role="alert">${succMsg}</div>
		<c:remove var="succMsg" scope="session" />

	</c:if>

	<c:if test="${not empty failedMsg }">
		<div class="alert alert-primary" role="alert">${failedMsg }</div>

		<c:remove var="failedMsg" scope="session" />

	</c:if>




	<div class="container-fluid">
		<div class="row ml-4 mr-4">
			<div class="col-md-6 text-center border bg-white p-3 mt-4">

				<h3 class="text-center  text-primary">
					<i class="fa-solid fa-bag-shopping"></i> Your Selected Books
				</h3>
				<div class="card">
					<div class="card-body">

						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">Book Name</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								User u = (User) session.getAttribute("userobj");
								CartDAOImpl dao = new CartDAOImpl(DB_Connect.getConn());
								List<Cart> cart = dao.getBookByUser(u.getId());
								Double totalPrice = 0.00;

								for (Cart c : cart) {
									totalPrice = c.getTotalPrice();
								%>

								<tr>
									<th scope="row"><%=c.getBookName()%></th>
									<td><%=c.getPrice()%></td>
									<td><a
										href="remove_book?bid=<%=c.getBid()%>&&uid=<%=c.getUserId()%>"
										class="btn btn-danger"><i class="fa-solid fa-xmark"></i>
											Remove </a></td>
								</tr>



								<%
								}
								%>

								<tr>
									<td class=""><h4>Total Price</h4></td>

									<td></td>
									<td class="text-success"><h5>
											<i class="fa-solid fa-rupee-sign"></i>
											<%=totalPrice%></h5></td>
								</tr>


							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-6 mt-4 mb-5">
				<div class="card">
					<div class="card-body">

						<h3 class="text-center  text-primary">Your Details</h3>
						<form action="order" method="post">
						
						<input type="hidden" value="${userobj.id}" name="id">
						
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Name</label> <input type="text" name="username"
										class="form-control" id="inputEmail4" value="<%=u.getName()%>" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Email</label> <input type="email" name="email"
										class="form-control" id="inputPassword4"
										value="<%=u.getEmail()%>" required>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Mobile No</label> <input type="number" name="phno"
										class="form-control" id="inputEmail4" value="<%=u.getPhno()%>" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Address</label> <input type="text" name="address"
										class="form-control" id="inputPassword4"
										value="<%=u.getAddress()%>" required>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Landmark</label> <input type="text" name="landmark"
										class="form-control" id="inputEmail4"
										value="<%=u.getLandmark()%>" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">City</label> <input type="text" name="city"
										class="form-control" id="inputPassword4"
										value="<%=u.getCity()%>" required>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">State</label> <input type="text" name="state"
										class="form-control" id="inputEmail4"
										value="<%=u.getState()%>" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Pin Code</label> <input name="pincode"
										type="number" class="form-control" id="inputPassword4"
										value="<%=u.getPincode()%>" required>
								</div>
							</div>

							<div class="form-group ">
								<label>Payment Mode </label> <select class="form-control" name="payment">
									<option value="noselect">--Select--</option>
									<option value="COD">Cash on delivery</option>
									<option value="online">Card Payment</option>
								</select>
							</div>
							<div class="text-center">
								<button class="btn btn-success">Order Now</button>
								<a href="index.jsp" class="btn btn-info"> Continue Shopping</a>
							</div>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="all-Component/footer.jsp"%>
</body>
</html>