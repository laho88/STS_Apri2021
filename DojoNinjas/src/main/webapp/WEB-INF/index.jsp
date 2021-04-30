<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
</head>
<body>
	<h1>Hello World!</h1>
	
	<a href="/createDojo">create a new dojo!</a> | <a href="/createNinja">create a new Ninja!</a>
	
	<hr>
	
	<c:forEach items="${dojos}" var="dojo">
		<h3><c:out value="${dojo.name}"></c:out></h3>
		<c:forEach items="${dojo.ninjas}"  var="nin">
			<p><c:out value="${nin.firstName}"></c:out></p>
		</c:forEach>
		<hr />
	</c:forEach>

</body>
</html>