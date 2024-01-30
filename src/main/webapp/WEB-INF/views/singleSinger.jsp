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

<%-- <h1>single singer page</h1>

<p>id: ${singleSinger.id }</p>
<p>Singer Name: ${singleSinger.singerName}</p>
<p>Phone Number: ${singleSinger.singerPhoneNumber}</p>
<p>Band Members: ${singleSinger.bandMembers}</p>
<a href="./all">home</a>
 --%>
<div class="flex flex-col items-center justify-center my-8">
		<div class="bg-blue-500 p-5 rounded-lg">
			<p class="text-2xl text-white text-center p-2">item ${singleSinger.id}</p>
			<hr class="border-2 border-blue-700">
			<p class="text-lg text-white">Singer Name: ${singleSinger.singerName}</p>
			<p class="text-lg text-white">Phone Number: ${singleSinger.singerPhoneNumber}</p>
			<p class="text-lg text-white">Band Members: ${singleSinger.bandMembers}</p>
		</div>
		<a href="./all">home</a>
	</div>

</body>
</html>