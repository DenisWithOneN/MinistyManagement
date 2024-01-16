<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>single event page</h1>

<p>id: ${singleEvent.id }</p>
<p>Title: ${singleEvent.eventTitle}</p>
<p>Date of the event: ${singleEvent.eventDate}</p>
<p>Location: ${singleEvent.location}</p>
<p>Starting hour: ${singleEvent.eventTime}</p>
<p>Est. Presence: ${singleEvent.eventPresence} </p>
<a href="./all">home</a>

</body>
</html>