<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css"
	rel="stylesheet">
</head>
<body>

	<%-- <p>id: ${singleEvent.id }</p>
	<p>Title: ${singleEvent.eventTitle}</p>
	<p>Date of the event: ${singleEvent.eventDate}</p>
	<p>Location: ${singleEvent.location}</p>
	<p>Starting hour: ${singleEvent.eventTime}</p>
	<p>Est. Presence: ${singleEvent.eventPresence}</p>
	<a href="./all">home</a> --%>


	<div class="flex flex-col items-center justify-center my-8">
		<div class="bg-green-500 p-5 rounded-lg">
			<p class="text-2xl text-white text-center p-2">item ${singleEvent.id }</p>
			<hr class="border-2 border-green-700">
			<p class="text-lg text-white">Title: ${singleEvent.eventTitle}</p>
			<p class="text-lg text-white">Date of the event: ${singleEvent.eventDate}</p>
			<p class="text-lg text-white">Location: ${singleEvent.location}</p>
			<p class="text-lg text-white">Starting hour: ${singleEvent.eventTime}</p>
			<p class="text-lg text-white">Estimated Presence: ${singleEvent.eventPresence}</p>
		</div>
		<a href="./all">home</a>
	</div>
	

</body>
</html>