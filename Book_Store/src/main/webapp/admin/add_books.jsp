<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin add book</title>
<%@include file="all-css.jsp"%>
</head>
<body style="background-color:#fcf7f7;">
	<%@include file="navbar.jsp"%>
	<h4 class="text-center p-2">Add Book</h4>
	<div class="container">
		<div class="row p-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">

						<form action="register" method="post">

							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label"> Book
									Name*</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required">

							</div>
						<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Price*</label>
								<input type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required">

							</div>
							<div class="form-group">
								<label for="inputState">Book Catagories</label>
								<select id="inputState" name="btype" class="form-control">
								<option selected>--select--</option>
								<option value="New">Recent Book</option>
								<option value="New">New Book</option>
								<option value="New">Old Book</option>
								</select> 
							</div>

							<div class="form-group">
								<label for="inputState">Book Status</label>
								<select id="inputState" name="bstatus" class="form-control">
								<option selected>--select--</option>
								<option value="New">Active</option>
								<option value="New">Inactive</option>
								</select> 
							</div>
							
							
							<div class="form-group">
								<label for="exampleFormControlFile1">Upload Book
									</label> <input type="file" name="bimg" class="form-control-file"
									id="exampleFormControlFile1">

							</div>
							
							
							<button type="submit" class="btn btn-success offset-md-5">Add</button>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>




</body>
</html>