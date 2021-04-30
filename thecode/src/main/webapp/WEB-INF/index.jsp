<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> 
<%@ page import = "java.io.*,java.util.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>The Code</title>
        <!-- <link rel="stylesheet" href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" />
            <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
            <script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
    </head>
    <body>
        <div>
            <h1>Enter</h1>
            <p>Page views: ${pageViews}
            </p> 			       	
        </div>	
        <div>
            <h3>Dare to enter secret code?</h3>
            <form action= "/code" method="post" >
                <div>
                    <input type="text" name="code" />
                    <input type="submit" value="Best Guess?" />
                </div>
            </form>
            
            <c:forEach items="${bestGuess}" var="bestGuess" varStatus="loop">
                ><h1>${loop.index +1} : ${bestGuess}</h1>
            </c:forEach>
        </div>
    </body>
</html>