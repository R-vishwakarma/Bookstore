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
  <h4 class="text-center pt-2"><b><i class="fa-solid fa-user"></i> Hello Admin</b></h4>
  
  <table class="table table-striped">
  <thead class="bg-secondary text-white">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Book Name</th>
      <th scope="col">Price</th>
      <th scope="col">Catagories</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td><a href="#" class="btn btn-sm btn-success">Edit</a>
      <a href="#" class="btn btn-sm btn-danger">Delete</a>
      </td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Mark</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td><a href="#" class="btn btn-sm btn-success">Edit</a>
      <a href="#" class="btn btn-sm btn-danger">Delete</a>
      </td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>the Bird</td>
      <td>Mark</td>
      <td>Otto</td>
      <td>@twitter</td>
      <td><a href="#" class="btn btn-sm btn-success">Edit</a>
      <a href="#" class="btn btn-sm btn-danger">Delete</a>
      </td>
    </tr>
  </tbody>
</table>


</body>
</html>