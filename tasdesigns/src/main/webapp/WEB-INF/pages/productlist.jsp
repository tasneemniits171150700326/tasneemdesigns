<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ include file="header.jsp" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	$(document).ready(function() {
		var searchCondition = '${searchCondition}';
		$('.table').DataTable({
			"lengthMenu" : [ [ 5, 5, 7, -1 ], [ 5, 5, 7, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
			}
		})
	});
</script>

</head>
<body>
<div class="container">

<table class="table table-striped" border="1">
<thead class="listhead">
<tr>
<th>Image</th>
<th>Product Name</th>
<th>Price</th>
<th>Category</th>
<th>Action</th>
</tr>
</thead>
<c:forEach items="${products}" var="p">
<tr>
<url:url value="/resources/images/${p.productId }.png" var="url"></url:url>
<td><img src="${url }" height="50" width="50"></td>
<td>${p.productName}</td>
<td>${p.productPrice }</td>
<td>${p.category.categoryDetails }</td>
<url:url value="/all/product/viewproduct/${p.productId }" var="url"></url:url>
<td>
<a href="${url }"><span
class="glyphicon glyphicon-info-sign"></span></a> 

<security:authorize access="hasRole('ROLE_ADMIN')">
<url:url value="/admin/product/editproduct/${p.productId }" var="url2"></url:url>
<a href="${url2 }"><span class="glyphicon glyphicon-pencil"></span></a>

<url:url value="/admin/product/deleteproduct/${p.productId }" var="url1"></url:url>
<a href="${url1 }"><span class="glyphicon glyphicon-trash"></span></a>
</security:authorize>

<c:if test="${pageContext.request.userPrincipal.name=='user' || pageContext.request.userPrincipal.name !='admin' }">
<a href="${pageContext.request.contextPath }/user/cart/order/${p.productId }" >
Add to Cart </a>
</c:if>
</td>
</tr>
</c:forEach>
</table>
</div>
</body>
<%@ include file="footer.jsp"%>
</html>