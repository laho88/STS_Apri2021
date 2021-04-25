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
			<h1>Results:</h1>
			<p>Name: <c:out value="${myName}"/></p>
			<p>Dojo Location: <c:out value="${dojoName}"/></p>
			<p>Favorite Language: <c:out value="${language}"/></p>
			<p>Comment: <c:out value="${comment}"/></p>
			<a href="/">Go Back</a>
		</div>	
	</body>
</html>