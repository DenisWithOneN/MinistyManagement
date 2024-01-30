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
<%-- 
<h1>single speaker page</h1>

<p>id: ${singleSpeaker.id}</p>
<p>Singer Name: ${singleSpeaker.speakerName}</p>
<p>Phone Number: ${singleSpeaker.speakerPhoneNumber}</p>
<p>Band Members: ${singleSpeaker.emailAdress}</p>
 --%>

<div class="flex flex-col items-center justify-center my-8">
		<div class="bg-purple-500 p-5 rounded-lg">
			<p class="text-2xl text-white text-center p-2">item ${singleSpeaker.id}</p>
			<hr class="border-2 border-purple-700">
			<p class="text-lg text-white">Singer Name: ${singleSpeaker.speakerName}</p>
			<p class="text-lg text-white">Phone Number: ${singleSpeaker.speakerPhoneNumber}</p>
			<p class="text-lg text-white">Band Members: ${singleSpeaker.emailAdress}</p>
		</div>
		<a href="./all">home</a>
	</div>

</body>
</html>