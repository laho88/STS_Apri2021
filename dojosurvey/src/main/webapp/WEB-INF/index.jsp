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
			<form method="POST" action="/submit">
			    <label>Name: <input type="text" name="username"></label><br>
			    <label>Dojo Location: 
			    	<select name="dojoLocale">
		    	  		<option value="Burbank" label="Burbank"/>
						<option value="San Jose" label="San Jose"/>
						<option value="Seattle" label="Seattle"/>
  						<option value="Houston" label="Houston"/>
  						<option value="Springfield" label="Springfield"/>
  					</select>
  				</label><br>
  				<label>Favorite Language: 
  					<select name="langList">
		    	  		<option value="java">Java</option>
						<option value="react">React</option>
						<option value="c#">C#</option>
  						<option value="c++">C++</option>
  						<option value="python">Python</option>
  					</select>
  				</label><br>
  				<label>Comments (optional): 
  					<textarea rows="5" cols="20" name="comment"></textarea>
  				</label><br>
  				
			    <button type="submit" value="button">Submit</button>
			</form>
		</div>	
	</body>
</html>