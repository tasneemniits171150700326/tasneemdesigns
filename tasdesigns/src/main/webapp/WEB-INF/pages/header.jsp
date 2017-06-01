<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="security" 
    uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false" %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tas Design's</title>
<link rel="stylesheet"
href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Angular Js -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

<!-- JQuery -->
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">

<link href='<c:url value="/resources/css/mystyle.css" />' rel="stylesheet">
</head>

<body>

<div id = "header">
 <div class = "container-fluid">
  <div class ="navbar-header">	 
   <a class= "navbar-brand" href="#"><img src ='<c:url value="/resources/images/brandone.png" />'height ="30px" ></a>
   <a class= "navbar-brand" href="#"><img src ='<c:url value="/resources/images/brandtwo.png" />' height ="30px" ></a>
   
  
   </div>
  </div>
 </div>


<nav class = "navbar navbar-inverse" role="navigation">
 <div class = "container-fluid">
  <button type = "button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
   <span class ="icon-bar"></span>
   <span class="icon-bar"></span>
   <span class="icon-bar"></span>
   <span class="icon-bar"></span>
  </button>
       
<div class ="collapse navbar-collapse" id="collapse-example">
 <ul class= "nav navbar-nav">
  <url:url value="/home" var="url"></url:url>
  <li class = "one"><a href="${url }">Home</a></li>
  <url:url value="/aboutus" var="url"></url:url>
  <li class="one"><a href="${url }">About us </a></li>
  
<security:authorize access="hasRole('ROLE_ADMIN')">
  <url:url value="/admin/product/productform" var="url3"></url:url>
  <li class="one"><a href="${url3 }">Add New Product</a></li>
</security:authorize>
  
  <url:url value="/all/product/productlist" var="url4"></url:url>
  <li class="one"><a href="${url4 }">Browse All Products</a></li> 
 <li class="dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">
                     Select by Category<b class="caret"></b></a>
			<ul class="dropdown-menu">
			<c:forEach var="c" items="${categories }">
			<li >
<a href="<c:url value="/all/product/productsByCategory?searchCondition=${c.categoryDetails }"></c:url>" >
  ${c.categoryDetails }</a></li>
			</c:forEach>
			</ul>
			</li>
    
    <url:url value="/contact" var="url5"></url:url>
  <li class="one"><a href="${url5 }">Contact</a></li>
  
  
  
  
 </ul>
 <ul class="nav navbar-nav navbar-right">
 
   <c:if test="${pageContext.request.userPrincipal.name!=null }">			
 <li class="one"><a href="">Welcome ${pageContext.request.userPrincipal.name }</a></li>
 </c:if>
  
<security:authorize access="hasRole('ROLE_USER')">
	<li class="one">
	<div class="ex">
	${sessionScope.cart !=null ? sessionScope.cart.size():0} x items 
	<c:set var="s" value="0"></c:set>
	<c:forEach var="item" items="${sessionScope.cart }" >
	<c:set var="s" value="${s + item.product.productPrice * item.quantity }"></c:set>
    </c:forEach>
    <span class="red">Total: ${s }<img src ='<c:url value="/resources/images/cart.png" />' height ="50px" ></span>
</div>
</li>
	
	<li class="one"><a href="${pageContext.request.contextPath }/user/cart">My Cart</a></li>
</security:authorize>
   
  
 <c:if test="${pageContext.request.userPrincipal.name==null }" >
  <url:url value="/login" var="url"></url:url>
	<li class="one"><a href="${url }"><img src ='<c:url value="/resources/images/signin.png" />' height ="20px" > Login</a></li>

</c:if>

<c:if test="${pageContext.request.userPrincipal.name!=null }">
<li class="one"><a href="<c:url value="/j_spring_security_logout"></c:url>"><img src ='<c:url value="/resources/images/logout.png" />' height ="20px" >logout</a></li>

</c:if>
</ul>
</div>
</div>
</nav>

</body>
</html>