<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Edit Language</title>
    </head>
    <body>
        <h1>Edit </h1>
                <form:form action="/languages" method="post" modelAttribute="language">
                    <p>
                        <form:label path="language">Language</form:label>
                        <form:errors path="language"/>
                        <form:input path="language"/>
                        <form:placeholder path="language"/><c:out value="${language.name}"/>
                    </p>
                    <p>
                        <form:label path="creator">Created by:</form:label>
                        <form:errors path="creator"/>
                        <form:textarea path="creator"/>
                        <form:placeholder path="creator"/><c:out value="${language.creator}"/>
                    </p>
                    <p>
                        <form:label path="version">Version</form:label>
                        <form:errors path="version"/>
                        <form:input path="version"/>
                        <form:placeholder path="version"/><c:out value="${language.version}"/>
                    </p>
                    <button value="Submit"/>Edit</button>
                </form:form>

                    <a href="/languages"> Dashboard</a>
                    <a href="/languages/delete/${language.id}"> Delete</a>


    </body>
</html>