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


<script  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDiKW3zGzNHmFPZ3DvEFph_j6b9VnqBUNs&callback=initMap"
  type="text/javascript"></script>
<script type="text/javascript">

var map;
function initialize() {
  var mapOptions = {
    zoom: 8,
    center: new google.maps.LatLng(13.050954718778828,80.27770009704591)
  };
  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>
<title> Contact</title>
</head>
<body>
<div class= "container">
<div id ="contact">
<div id="map-canvas" style="height:400px; width:500px; margin:35px; border: solid black; float:left;" ></div>
<div id = "inside" style="margin:120px;">
<p>
<b>Address</b>: <br>
 No-101, Nicha Square,<br>
 Near Citi Center,
 Dr. Radha Krishnan Road ,<br>
 Mylapore <br>
 Chennai 600004 <br>
 Tamilnadu.
 <br>
 <b>Phone no</b>: +919090909090
 <br>
<b>Email</b> : xyz@yahoo.com , care@tasdesigns.com
</p>
</div>
</div>
</div>
</body>
<%@ include file="footer.jsp" %>
</html>