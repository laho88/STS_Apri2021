<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Details</title>
    </head>
    <body>
        <h1>View Details</h1>
        <c:out value="${language.name}"/>
        <c:out value="${language.creator}"/>
        <c:out value="${language.version}"/>
        <a href="/languages/edit/${language.id}"> Edit</a>
        <a href="/languages/delete/${language.id}"> Delete</a>
        <a href="/languages"> Dashboard</a>
    </body>
</html>