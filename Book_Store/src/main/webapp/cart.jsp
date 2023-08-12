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

	<div class="container-fluid">
		<div class="row ml-4 mr-4">
			<div class="col-md-6 text-center border bg-white p-5 mt-4">

				<h3 class="text-center  text-primary">Your Selected Books</h3>
				<div class="card">
					<div class="card-body">

						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">First</th>
									<th scope="col">Last</th>
									<th scope="col">Handle</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>Mark</td>
									<td>Otto</td>
									<td>@mdo</td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>Jacob</td>
									<td>Thornton</td>
									<td>@fat</td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td>Larry</td>
									<td>the Bird</td>
									<td>@twitter</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-6 mt-4">
				<div class="card">
					<div class="card-body">

						<h3 class="text-center  text-primary">Your Details</h3>
						<form>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Name</label> <input type="text"
										class="form-control" id="inputEmail4">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Email</label> <input type="email"
										class="form-control" id="inputPassword4">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Mobile No</label> <input type="number"
										class="form-control" id="inputEmail4">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Address</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Landmark</label> <input type="text"
										class="form-control" id="inputEmail4">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">City</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">State</label> <input type="text"
										class="form-control" id="inputEmail4">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Zip Code</label> <input
										type="number" class="form-control" id="inputPassword4">
								</div>
							</div>

							<div class="form-group ">
								<label>Payment Mode </label> 
								<select class="form-control">
								<option>--Select--</option>
									<option>Cash on delivery</option>
									</select>
							</div>
							<div class="text-center">
							<button class="btn btn-success"> Order Now</button>
							<a href="index.jsp" class="btn btn-info"> Continue Shopping</a></div>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>