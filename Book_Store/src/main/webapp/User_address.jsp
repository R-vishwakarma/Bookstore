<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Address</title>
<%@include file="all-Component/all-css.jsp"%>
</head>
<body>
	<%@include file="all-Component/navbar.jsp"%>
<h4 class="text-center text-dark mt-4"> Add Address</h4>

	<div class="container p-2">
		<div class="row p-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">

						<form action="">
						<div class="form-row">
						<div class="form-group col-md-12">
							<label for="inputPassword4">Address</label> <input type="text"
								class="form-control" id="inputPassword4" >
						</div></div>
						<div class="form-row">
							

						<div class="form-group col-md-6">
							<label for="inputPassword4">Landmark</label> <input type="text"
								class="form-control" id="inputPassword4" >
						</div>
						<div class="form-group col-md-4">
							<label for="inputEmail4">City</label> <input type="text"
								class="form-control" id="inputEmail4" >
						</div>
					</div>
					<div class="form-row">
						
						<div class="form-group col-md-4">
							<label for="inputPassword4">State</label> <input type="text"
								class="form-control" id="inputPassword4" ">

						</div>
						<div class="form-group col-md-4">
							<label for="inputPassword4">Pin Code</label> <input type="text"
								class="form-control" id="inputPassword4" >
						</div>
					</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary "> Add </button></div>
						</form>

					
				</div>


			</div>
		</div>
	</div>
	</div>








<%@include file="all-Component/footer.jsp"%>
	
</body>
</html>