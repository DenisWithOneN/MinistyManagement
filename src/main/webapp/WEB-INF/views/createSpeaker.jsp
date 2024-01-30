<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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


	<%-- <form:form method="post"
		action="${pageContext.request.contextPath}/speakers/create"
		modelAttribute="speaker">

		<div>
			<label for="speakerName">speaker name</label>
			<div>
				<form:input path="speakerName" name="speakerName" />
			</div>
			<label for="speakerPhoneNumber">phone number</label>
			<div>
				<form:input path="speakerPhoneNumber" name="speakerPhoneNumber"/>
			</div>
			<label for="emailAdress">email adress</label>
			<div>
				<form:input path="emailAdress" name="emailAdress" />
			</div>
		</div>

		<button type="submit">insert</button>
	</form:form> --%>
	
	
	<div class="flex flex-col items-center mt-8">
		<form:form method="post"
			action="${pageContext.request.contextPath}/speakers/create"
			modelAttribute="speaker" class="max-w-sm mx-auto">

			<div class="mb-5">
				<label for="speakerName"
					class="block mb-2 text-sm font-medium text-gray-900">Speaker
					Name</label>
				<form:input path="speakerName" name="speakerName"
					class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-purple-500 focus:border-purple-500 block w-full p-2.5"></form:input>
			</div>
			<div class="mb-5">
				<label for="speakerPhoneNumber"
					class="block mb-2 text-sm font-medium text-gray-900">Phone
					Number</label>
				<form:input path="speakerPhoneNumber" name="speakerPhoneNumber" 
					class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-purple-500 focus:border-purple-500 block w-full p-2.5"></form:input>
			</div>
			<div class="mb-5">
				<label for="emailAdress"
					class="block mb-2 text-sm font-medium text-gray-900">e-mail</label>
				<form:input path="emailAdress" name="emailAdress"
					class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-purple-500 focus:border-purple-500 block w-full p-2.5"></form:input>
			</div>
			<button type="submit"
				class="text-white bg-purple-500 hover:bg-purple-800 focus:ring-4 focus:outline-none focus:ring-purple-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center">Submit</button>
				<a class="text-white bg-purple-500 hover:bg-purple-800 focus:ring-4 focus:outline-none focus:ring-purple-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center" href="./all">Anuleaza</a>
		</form:form>
	</div>


</body>
</html>