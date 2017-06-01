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

<title>Product Form </title>
</head>
<body id ="bodyform">

<div class="container-wrapper">
<div class="container">
<div class = "formdiv">
<url:url var="url" value="/admin/product/saveproduct"></url:url>
<form:form action="${url }" modelAttribute="product" method="post" enctype="multipart/form-data">
<div class =" headline3">
<h1>Add or Edit Product </h1>

</div>
<div class="form-group">
<label for="productId"></label>
<form:hidden path="productId" ></form:hidden>
<form:errors path="productId" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<label for="productName">Product Name</label>
<form:input class="forminput"  path="productName" placeholder="Enter Product Name" cssStyle="margin-left:99px"></form:input>
<form:errors path="productName" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<label for="productPrice">Product Price</label>
<form:input class="forminput"   path="productPrice" cssStyle="margin-left:106px" ></form:input>
<form:errors path="productPrice" cssStyle="color:red"></form:errors>
</div>


<div class="form-group">
<label for="productDiscription">Product Description</label>
<form:input class="forminput"  path="productDiscription"  placeholder="Enter Product Description" cssStyle="margin-left:40px"></form:input>
<form:errors path="productDiscription" cssStyle="color:red"></form:errors>
</div>


<div class="form-group">
<label for="productManufacturer">Product Manufacturer</label>
<form:input class="forminput"  path="productManufacturer" placeholder="Enter Product Manufacturer"></form:input>
<form:errors path="productManufacturer" cssStyle="color:red"></form:errors>
</div>


<div class="form-group">
<label for="unitInStock">Unit In Stock</label>
<form:input class="forminput"   path="unitInStock" cssStyle="margin-left:113px"></form:input>
<form:errors path="unitInStock" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<label for="category">Select Category</label>
<c:forEach items="${categoryDetails }" var="c">
 
<form:radiobutton path="category.cid" value="${c.cid }"/>${c.categoryDetails }

</c:forEach>
<form:errors path="category" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<label for="image">Upload Image</label>
<input type="file" name="image" >
</div>
<br>
<br>
<c:if test="${product.productId ==0}">
<c:set value="ADD" var="val"></c:set></c:if>

<c:if test="${product.productId !=0}">
<c:set value="EDIT" var="val"></c:set></c:if>

<input class="addone" type="submit" value="${val}">

</form:form>
</div>
</div>

</div>

</body>
<%@ include file="footer.jsp" %>
</html>