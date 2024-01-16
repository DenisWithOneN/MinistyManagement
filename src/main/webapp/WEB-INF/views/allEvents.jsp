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

<h1>All Events</h1>

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
<td><c:out value="${e.eventDate}"/></td>
<td><c:out value="${e.location}"/></td>
<td><c:out value="${e.eventTime}"/></td>
<td><c:out value="${e.eventPresence}"/></td>
<td><a href="<c:url value="/events/${e.id}"/>">Detalii</a></td>
<td><a href="<c:url value="/events/delete/${e.id}"/>">Sterge</a></td>


</tr>
</c:forEach>
</table>

<a href="<c:url value="/events/create"/>">Add new event</a>
</body>
</html>