<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
			<h1>You visited <a href="http://localhost:8080/">http://localhost:8080/</a> <c:out value="${count}"/> times.</h1>
			<h1><a href="http://localhost:8080/">Test another visit?</a></h1>
		</div>
		
	</body>
</html>