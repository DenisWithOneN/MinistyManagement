<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit event page</title>
<link
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css"
	rel="stylesheet">
</head>
<body>



	<%-- <form:form method="post"
		action="${pageContext.request.contextPath}/events/edit"
		modelAttribute="event">
		<div>
			<label for="id">id</label>
			<div>
				<form:input path="id" name="id" />
			</div>
			<label for="eventTitle">event title</label>
			<div>
				<form:input path="eventTitle" name="eventTitle" />
			</div>
			<label for="eventDate">event date</label>
			<div>
				<form:input path="eventDate" name="eventDate" type="date" />
			</div>
			<label for="location">location</label>
			<div>
				<form:input path="location" name="location" />
			</div>
			<label for="eventTime">event time</label>
			<div>
				<form:input path="eventTime" name="eventTime" type="text" />
			</div>
			<label for="eventPresence">est. presence</label>
			<div>
				<form:input path="eventPresence" name="eventPresence" />
			</div>
		</div> --%>

	<div class="flex flex-col items-center mt-8">
		<h1>edit event</h1>
		<form:form method="post"
			action="${pageContext.request.contextPath}/events/edit"
			modelAttribute="event" class="max-w-sm mx-auto">

			<div class="mb-5">
				<label for="id" class="block mb-2 text-sm font-medium text-gray-900">ID</label>
				<form:input path="id" name="id"
					class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-green-500 focus:border-green-500 block w-full p-2.5"></form:input>
			</div>
			<div class="mb-5">
				<label for="event title"
					class="block mb-2 text-sm font-medium text-gray-900">Event
					Title</label>
				<form:input path="eventTitle" name="eventTitle"
					class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-green-500 focus:border-green-500 block w-full p-2.5"></form:input>
			</div>
			<div class="flex"><div class="mb-5 mr-2">
				<label for="event title"
					class="block mb-2 text-sm font-medium text-gray-900">Event
					Date</label>
				<form:input path="eventDate" name="eventDate" type="date"
					class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-green-500 focus:border-green-500 block w-full p-2.5"></form:input>
			</div>
			<div class="mb-5 ml-2">
				<label for="eventTime"
					class="block mb-2 text-sm font-medium text-gray-900">Event
					Time</label>
				<form:input path="eventTime" name="eventTime"
					class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-green-500 focus:border-green-500 block w-full p-2.5"></form:input>
			</div></div>
			<div class="mb-5">
				<label for="location"
					class="block mb-2 text-sm font-medium text-gray-900">Location</label>
				<form:input path="location" name="location"
					class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-green-500 focus:border-green-500 block w-full p-2.5"></form:input>
			</div>
			
			<div class="mb-5">
				<label for="eventPresence"
					class="block mb-2 text-sm font-medium text-gray-900">Event
					Presence</label>
				<form:input path="eventPresence" name="eventPresence"
					class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-green-500 focus:border-green-500 block w-full p-2.5"></form:input>
			</div>
			<button type="submit"
				class="text-white bg-green-500 hover:bg-green-800 focus:ring-4 focus:outline-none focus:ring-green-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center">Submit</button>
			<a
				class="text-white bg-green-500 hover:bg-green-800 focus:ring-4 focus:outline-none focus:ring-green-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center"
				href="${pageContext.request.contextPath}/events/all">Anuleaza</a>
		</form:form>


	</div>





</body>
</html>