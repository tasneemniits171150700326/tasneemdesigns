<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>

<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body id ="prolist">
<div class="view">
<div class="headline">
<br>
<h1>Product Info</h1>
</div>
<div class = "insideview">
<div class="imgview">
<url:url value="/resources/images/${product.productId }.png" var="url"></url:url>
<img src="${url }" height="320" width="320"><br><br>
</div>
<b>PRODUCT ID:</b>  ${product.productId}         <br>
<b>PRODUCT NAME:</b>  ${product.productName}         <br>
<b>PRODUCT PRICE:</b>        Rs.${product.productPrice}         <br>
<b>PRODUCT MANUFACTURER:</b>   ${product.productManufacturer }         <br>
<b>PRODUCT DESCRIPTION:</b>	${product.productDiscription }		<Br>
<b>PRODUCT UNIT IN STOCK:</b>	${product.unitInStock }		<Br>
<b>CATEGORY:</b>  ${product.category.categoryDetails}<br>


<url:url value="/all/product/productlist" var="url"></url:url>
<a href="${url}"><i>Browse All Products</i></a> 
</div>
</div>
</body>
<%@include file="footer.jsp" %>
</html>