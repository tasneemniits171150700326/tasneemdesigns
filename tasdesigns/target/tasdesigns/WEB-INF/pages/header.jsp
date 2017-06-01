<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file= "includes.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ecommerce Site</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/design.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
</head>
<body>
<nav class = "navbar navbar-inverse" role="navigation">
   <div class = "container-fluid">
      <button type = "button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
         <span class ="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
          <span class="icon-bar"></span>
       </button>
   <div class ="navbar-header">	 
	    <a class = "navbar-brand" href="#"><img src ="brand.jpg" alt ="TAS DESIGN's" height = "30px" width = "30px"></a>
	</div>
	   <div class="collapse navbar-collapse" id="collapse-example">
	      <ul class= "nav navbar-nav">
	         <li class = "active"><a href="home">Home</a></li>
	         <li><a href="aboutus">About us </a></li>
	         <url:url value="admin/product/productform" var="url"></url:url>
                <li><a href="${url }">Add New Product</a></li>
	         <li><a href ="contact">Contact</a></li>
	         <li class="My list">
	         <a href="#" class="dropdown-toggle" data-toggle="dropdown">My List<span class="caret"></span></a>
	        <ul class="dropdown-menu">
	             <li><a href="#">Edit</a></li>
	             <li><a href="#">Delete</a></li>
	             <li><a href="#">View</a></li>
	             </ul>
              </li>
	        </ul>
	<ul class="nav navbar-nav navbar-right">
	<li><a href="#">Login</a></li>
	</ul>
	</div>
	</div>
</nav>
</body>
</html>