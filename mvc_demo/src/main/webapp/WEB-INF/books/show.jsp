<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>     

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Book Summary</title>
</head>
<body>
	<h3><c:out value="${book.title}"/></h3>
	<p>Description: <c:out value="${book.description}"/></p>
	<p>Language: <c:out value="${book.language}"/></p>
	<p>Number of pages: <c:out value="${book.numberOfPages}"/></p>
	<br>
	<a href="/books/${book.id}/edit"><button>Edit Book</button></a>
	<a href="/books/delete/${book.id}"/><button>Delete</button></a>
	
	<%-- <form action="/books/delete/${book.id}" method="POST">
	    <input type="hidden" name="_method" value="DELETE">
	    <button type="submit" value="Delete">Remove Book</button>
	</form> --%>
</body>
</html>