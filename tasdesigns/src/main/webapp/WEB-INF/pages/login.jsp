<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="security" 
    uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false" %>
<%@ include file="header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

<div class="container">
<div class="formdiv">
<div class="headline3">
<h2 class="head">Login</h2>
</div>
<br>
${error }
${logout }
${registrationSuccess }
<br>
<form class = "form-group" action="<c:url value="j_spring_security_check"></c:url>" method="post">
<br>
ENTER USERNAME <input class="forminput" type="text" name="j_username"  path="Username" cssStyle="margin-left:106px" ><br>
<br>
ENTER PASSWORD <input class="forminput" type="password" name="j_password"  path="password" cssStyle="margin-left:106px" ><br>
<br>
<input class="addone" type ="submit" value="submit">
<div>

<button class="login">
  <c:if test="${pageContext.request.userPrincipal.name==null }" >
  <url:url value="/all/registrationform" var="url"></url:url>
   <a href="${url }">Click here to Register</a>
    </c:if>
</button>
</div>
</form>



</div>

</div>











</body>
<%@ include file="footer.jsp" %>
</html>