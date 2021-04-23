<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
	<!-- <c:out value="someVariable"/> -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Welcome Devs!</title>
	</head>
	<body>
		
		<div>
			<p style="color:blue"><a href="/date">Get the formatted Date!</a></p>
			<p style="color:green"><a href="/time">Get the formatted Time!</a></p>
			<c:out value="${date}"/>
			<p>	
				<fmt:formatDate value="${date}"/>
			</p>
		</div>
		
	</body>
</html>