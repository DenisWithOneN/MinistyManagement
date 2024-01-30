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

<%-- 
	<form:form method="post"
		action="${pageContext.request.contextPath}/singers/create"
		modelAttribute="singer">

		<div>
			<label for="singerName">singer name</label>
			<div>
				<form:input path="singerName" name="singerName" />
			</div>
			<label for="singerPhoneNumber">phone number</label>
			<div>
				<form:input path="singerPhoneNumber" name="singerPhoneNumber"/>
			</div>
			<label for="bandMembers">band members</label>
			<div>
				<form:input path="bandMembers" name="bandMembers" />
			</div>
		</div>

		<button type="submit">insert</button>
	</form:form> --%>


	<div class="flex flex-col items-center mt-8">
		<form:form method="post"
			action="${pageContext.request.contextPath}/singers/create"
			modelAttribute="singer" class="max-w-sm mx-auto">

			<div class="mb-5">
				<label for="singerName"
					class="block mb-2 text-sm font-medium text-gray-900">Singer
					Name</label>
				<form:input path="singerName" name="singerName"
					class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"></form:input>
			</div>
			<div class="mb-5">
				<label for=""
					class="block mb-2 text-sm font-medium text-gray-900">Phone
					Number</label>
				<form:input path="singerPhoneNumber" name="singerPhoneNumber" 
					class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"></form:input>
			</div>
			<div class="mb-5">
				<label for="bandMembers"
					class="block mb-2 text-sm font-medium text-gray-900">Band Members</label>
				<form:input path="bandMembers" name="bandMembers"
					class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"></form:input>
			</div>
			<button type="submit"
				class="text-white bg-blue-500 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center">Submit</button>
				<a class="text-white bg-blue-500 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center" href="./all">Anuleaza</a>
		</form:form>
	</div>

</body>
</html>