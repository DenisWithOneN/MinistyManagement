<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Create a new Event</h1>
<form:form method="post" 
	action="${pageContext.request.contextPath}/events/create"
	modelAttribute="event">
	

	<hr>
	<label for="eventTitle">Title</label>
	<form:input path="eventTitle"/>
	<hr>
	<label for="eventDate">Date</label>
	<form:input path="eventDate"/>
	<hr>
	<label for="location">Location</label>
	<form:input path="location"/>
	<hr>
	<label for="eventTime">Starting hour</label>
	<form:input path="eventTime"/>
	<hr>
	<label for="eventPresence">Est. Presence</label>
	<form:input path="eventPresence"/>
	
	

	
	<input type="submit" value="Salveaza" />
	</form:form>
	
	<a href="./all">Anuleaza</a>

</body>
</html>