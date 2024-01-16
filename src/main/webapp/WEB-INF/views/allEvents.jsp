<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>All Folders</h1>

<table >
<tr>
<th>ID</th>
<th>Title</th>
<th>Date of the event</th>
<th>Location</th>
<th>Starting Hour</th>
<th>Est. Presence</th>
</tr>

<c:forEach var="e" items="${eventView}">

<tr>
<td><c:out value="${e.id }"/></td>
<td><c:out value="${e.eventTitle }"/></td>


</tr>
</c:forEach>
</table>
</body>
</html>