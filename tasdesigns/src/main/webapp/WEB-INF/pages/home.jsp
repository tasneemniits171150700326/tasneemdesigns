<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ include file="header.jsp" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> HOME </title>

</head>
<body >
<div class = "sideright">
 <p>&nbsp &nbsp &nbsp <b>TAS DESIGN's</b> is one of the most Loved and visited Shop in Chennai for Hand made Bags .It has won The Young Entrepreneur of the Year Award for the year 2015. </p>
<p>Grand Online Sale is going on with many more exciting benefits.</p>
 <p> New Arrivals for Summer 2017 is here.</p>
 <p>Join us on Facebook and Instagram with the link below.</p>
 <div class="social">
<a href="https://www.facebook.com/choolaibags/"><img src="resources/images/facebook.png" style= "height:50px; width:50px; margin:10px;"></a>
<a href = "https://www.instagram.com/?hl=en"><img src="resources/images/instagram.png" style= "height:50px; width:50px; margin:10px;"></a> 


<img id="tool" src="resources/images/call.png" title="Call us for any enquiry on +919090909090" style= "height:50px; width:50px; margin:10px;" >


  <url:url value="/contact" var="url5"></url:url>
 <a href="${url5 }"><img src="resources/images/address.png" style= "height:50px; width:50px; margin:10px;"></a>
 </div>
</div>
<div class ="container-fluid">
 <div id="myCarousel" class="carousel slide" data-ride="carousel">
  
   <ol class="carousel-indicators">
     <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
     <li data-target="#myCarousel" data-slide-to="1"></li>
     <li data-target="#myCarousel" data-slide-to="2"></li>
	 <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

 <div class="carousel-inner">
   <div class="item active">
     <img class="img-responsive center-block"  src="resources/images/bagone.jpg" >
   <div class="container">
     <div class="carousel-caption">
      <h1> NEW ARRIVALS </h1>
      </div>
    </div> 
   </div>
   <div class="item">
     <img class="img-responsive center-block"  src="resources/images/bagtwo.jpg" >
    <div class="container">
     <div class="carousel-caption">
       <h1> OUR SHOP </h1>
     </div>
    </div> 
   </div>
   <div class="item">
     <img class="img-responsive center-block"  src="resources/images/bagthree.jpg" >
     <div class="container">
     <div class="carousel-caption">
       <h1> SUMMER SALE IS HERE .. </h1>
     </div>
    </div>  
   </div>
   <div class="item">
     <img class="img-responsive center-block" src="resources/images/bagfour.jpg">
     <div class="container">
     <div class="carousel-caption">
       <h1> WE MAKE OUR OWN BAGS </h1>
     </div>
    </div>  
   </div>
</div>

<a class="left carousel-control" href="#myCarousel" data-slide="prev">
   <span class="glyphicon glyphicon-chevron-left"></span>
   <span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide="next">
   <span class="glyphicon glyphicon-chevron-right"></span>
   <span class="sr-only">Next</span>
</a>
 </div>
</div>
<script>
$(document).ready(function(){         
	   
	$("#tool").tooltip();
		
})

</script>

</body>

<%@ include file="footer.jsp" %>

</html>