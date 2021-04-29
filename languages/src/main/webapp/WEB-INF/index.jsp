<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    

<!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>Languages!</title>
    </head>
        <body>
        <h3><a href="/languages">Dashboard</a><h3>
        <table>
            <thead>
            <tr>
                <th>Name</th>
                <th>Creator</th>
                <th>Version</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${languages}" var="language">
                <tr>
                    <td><c:out value="${language.name}"/></td>
                    <td><c:out value="${language.creator}"/></td>
                    <td><c:out value="${language.version}"/></td>
                    <td><a href="/languages/edit/${language.id}"> Edit</a></td>
                    <td><a href="/languages/delete/${language.id}"> Delete</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <h1>Add language:</h1>
        <form:form action="/languages" method="post" modelAttribute="language">
            <p>
                <form:label path="language">Language</form:label>
                <form:errors path="language"/>
                <form:input path="language"/>
            </p>
            <p>
                <form:label path="creator">Created by:</form:label>
                <form:errors path="creator"/>
                <form:textarea path="creator"/>
            </p>
            <p>
                <form:label path="version">Version</form:label>
                <form:errors path="version"/>
                <form:input path="version"/>
            </p>
            <input type="submit" value="Submit"/>
        </form:form>

        </body>
    </html> 