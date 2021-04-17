<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
	<!-- <c:out value="someVariable"/> -->
	<!-- <c:out value="${}"/> -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Doing Java</title>
	</head>
	<body>
		<div>
			<h1>Hello 
				<c:out value="${firstName}"/>
				<c:out value="${lastName}"/>
			</h1>
			<h3>Welcome to the Dojo!</h3>
		</div>
	</body>
</html>