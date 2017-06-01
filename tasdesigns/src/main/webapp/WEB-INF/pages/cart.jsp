<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My cart</title>
</head>
<body>
<table class= "table table-striped" border="1">

<thead>
<th> option</th>
<th> Id</th>
<th> product name</th>
<th> unit price</th>
<th> quantity</th>
<th> sub total</th>

</thead>
<c:set var="s" value="0"></c:set>
<c:forEach var="item" items="${sessionScope.cart }">
<c:set var="s" value="${ s +item.product.productPrice * item.quantity }"></c:set>
<tr>

<td align="center"> <a class="click" href="${pageContext.request.contextPath }/user/cart/delete/${item.product.productId }" >
Delete</a></td>
<td>${item.product.productId}</td>
<td>${item.product.productName}</td>
<td>${item.product.productPrice }</td>
<td>${item.quantity }</td>
<td>${item.product.productPrice * item.quantity }</td>

</tr>

</c:forEach>
<tr>
<td>sum</td>
<td>${s}</td>

</tr>
</tbody>
</table>

<a class="click" href="${pageContext.request.contextPath }/all/product/productlist" >
continue shopping</a>
<br>
<br>

<a class="click" href="${pageContext.request.contextPath }/user/cart/checkout" >
Check out </a>






</body>
<%@include file="footer.jsp" %>
</html>