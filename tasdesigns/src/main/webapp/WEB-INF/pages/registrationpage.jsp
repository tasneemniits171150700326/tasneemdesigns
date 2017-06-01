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

<title>Registration Page</title>
</head>
<body id="register">
<div class="container-wrapper">
<div class="container">
<div id="reg">
<url:url value="/all/register" var="url"></url:url>
<form:form action="${url }" modelAttribute="customer" method="post">
<div class =" headline3">
<h1><i>Join Us by Entering the following Details</i></h1>
</div>
<div class="form-group">
<label for ="id"></label>
<form:hidden path="id"/>
<form:errors path="id" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<label for ="firstName">Enter First Name</label>
<form:input class="forminput" path="firstName" placeholder="first name" cssStyle="margin-left:99px"></form:input>
<form:errors path="firstName" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<label for ="lastName">Enter Last Name</label>
<form:input  class="forminput" path="lastName" placeholder="last name" cssStyle="margin-left:99px"></form:input>
<form:errors path="lastName" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<label for ="email">Enter Email</label>
<form:input  class="forminput" path="email" placeholder="email" cssStyle="margin-left:99px"></form:input>
<form:errors path="email" cssStyle="color:red"></form:errors>
<span class="color:red">${duplicateEmail }</span>
</div>
<div class="form-group">
<label for ="phoneNo">Enter Phone No</label>
<form:input  class="forminput" path="phoneNo" placeholder="Phone no" cssStyle="margin-left:99px"></form:input>
<form:errors path="phoneNo" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<label for ="users.username">Enter UsersName</label>
<form:input  class="forminput" path="users.username" placeholder="user name" cssStyle="margin-left:99px"></form:input>
<form:errors path="users.username" cssStyle="color:red"></form:errors>
<span class="color:red">${duplicateUsername }</span>
</div>
<div class="form-group">
<label for ="users.password">Enter Password</label>
<form:input  class="forminput" path="users.password" placeholder="password" cssStyle="margin-left:99px"></form:input>
<form:errors path="users.password" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<label for ="billingAddress.apartmentNumber">Enter Apartment Number</label>
<form:input  class="forminput" path="billingAddress.apartmentNumber" placeholder="Apartment no" cssStyle="margin-left:99px"></form:input>
<form:errors path="billingAddress.apartmentNumber" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<label for ="billingAddress.streetName">Enter Street Name</label>
<form:input class="forminput" path="billingAddress.streetName" placeholder="Street name" cssStyle="margin-left:99px"></form:input>
<form:errors path="billingAddress.streetName" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<label for ="billingAddress.city">Enter City </label>
<form:input  class="forminput" path="billingAddress.city" placeholder="City" cssStyle="margin-left:99px"></form:input>
<form:errors path="billingAddress.city" cssStyle="color:red" ></form:errors>
</div>
<div class="form-group">
<label for ="billingAddress.country">Enter Country </label>
<form:input  class="forminput" path="billingAddress.country" placeholder="Country" cssStyle="margin-left:99px"></form:input>
<form:errors path="billingAddress.country" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<label for ="billingAddress.zipcode">Enter Zipcode </label>
<form:input class="forminput" path="billingAddress.zipcode" placeholder="Zipcode" cssStyle="margin-left:99px"></form:input>
<form:errors path="billingAddress.zipcode" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<label for ="shippingAddress.apartmentNumber">Enter Apartment Number</label>
<form:input  class="forminput" path="shippingAddress.apartmentNumber" placeholder="Apartment no" cssStyle="margin-left:99px"></form:input>
<form:errors path="shippingAddress.apartmentNumber" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<label for ="shippingAddress.streetName">Enter Street Name</label>
<form:input  class="forminput" path="shippingAddress.streetName" placeholder="Streetname" cssStyle="margin-left:99px"></form:input>
<form:errors path="shippingAddress.streetName" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<label for ="shippingAddress.city">Enter City </label>
<form:input  class="forminput" path="shippingAddress.city" placeholder="City" cssStyle="margin-left:99px"></form:input>
<form:errors path="shippingAddress.city" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<label for ="shippingAddress.country">Enter Country </label>
<form:input  class="forminput" path="shippingAddress.country" placeholder="Country" cssStyle="margin-left:99px"></form:input>
<form:errors path="shippingAddress.country" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<label for ="shippingAddress.zipcode">Enter Zipcode </label>
<form:input  class="forminput" path="shippingAddress.zipcode" placeholder="zipcode" cssStyle="margin-left:99px"></form:input>
<form:errors path="shippingAddress.zipcode" cssStyle="color:red"></form:errors>
</div>

<input  class="addone" type="submit" value="Register">
</form:form>
</div>
</div>
</div>





</body>
<%@ include file="footer.jsp" %>
</html>