<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
	<!-- <c:out value="someVariable"/> -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Doing Java</title>
	</head>
	<body>
	
		<div>
			<h2>This is the date view</h2>
			<h3><c:out value="${date}"/></h3>
			
		</div>
		
	</body>
</html>