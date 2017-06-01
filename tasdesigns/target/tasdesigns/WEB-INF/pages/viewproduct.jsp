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
<body>
PRODUCT ID:   ${product.productId}         <br>
PRODUCT NAME:   ${product.productName}         <br>
PRODUCT PRICE       :   ${product.productPrice}         <br>
PRODUCT MANUFACTURER:   ${product.productManufacturer }         <br>
PRODUCT DESCRIPTION :	${product.productDiscription }		<Br>
PRODUCT UNIT IN STOCK :	${product.unitInStock }		<Br>

<url:url value="/all/product/productlist" var="url"></url:url>
<a href="${url}">Browse All Products</a>
</body>
<%@include file="footer.jsp" %>
</html>