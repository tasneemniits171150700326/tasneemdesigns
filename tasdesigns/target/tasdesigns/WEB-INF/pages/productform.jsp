<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PRODUCT FORM </title>
</head>
<body>
<div class="container-wrapper">
<div class="container">
<url:url var="url" admin="/admin/product/saveproduct"></url:url>
<form:form action = "${url }" modelAttribute="product" method = "post">
<div class="form-group">
<lable for="productId"></lable>
<form:hidden path="productId"/>
<form:errors path="productId" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<lable for="productName"></lable>
<form:hidden path="productName"/>
<form:errors path="productName" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<lable for="productPrice"></lable>
<form:hidden path="productPrice"/>
<form:errors path="productPrice" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<lable for="productManufacturer"></lable>
<form:hidden path="productManufacturer"/>
<form:errors path="productManufacturer" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<lable for="unitInStock"></lable>
<form:hidden path="unitInStock"/>
<form:errors path="unitInStock" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<lable for="productDiscription"></lable>
<form:hidden path="productDiscription"/>
<form:errors path="productDiscription" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<lable for="category">Select Category</lable>
<c:forEach items="${categoryDetails}" var="c">
<form:radiobutton path="category.cid" value="${cid }"/>${c.categoryDetails}
</c:forEach>
<form:errors path="category" cssStyle="color:red"></form:errors>
</div>
<input type="submit" value = "Add Product">
</form:form>
</div>
</div>
</body>
<%@ include file= "footer.jsp" %>
</html>