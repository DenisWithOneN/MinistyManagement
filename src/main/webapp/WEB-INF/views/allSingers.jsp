<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<%-- <h1>All Singers</h1>

<table >
<tr>
<th>ID</th>
<th>Singer name</th>
<th>Phone Number</th>
<th>Band members</th>
</tr>

<c:forEach var="s" items="${singer}">

<tr>
<td><c:out value="${s.id }"/></td>
<td><c:out value="${s.singerName }"/></td>
<td><c:out value="${s.singerPhoneNumber}"/></td>
<td><c:out value="${s.bandMembers}"/></td>
<td><a href="<c:url value="/singers/${s.id}"/>">Detalii</a></td>
<td><a href="<c:url value="/singers/delete/${s.id}"/>">Sterge</a></td>
<td><a href="<c:url value="/singers/edit/${s.id}"/>">Editeaza</a></td>



</tr>
</c:forEach>
</table>

<a href="<c:url value="/singers/create"/>">Add new singer</a> --%>

<div class="bg-gray-200 p-3">
      <div class="flex items-start">
        <button class="bg-green-500 px-2 py-1 mx-1 rounded-lg text-white font-semibold hover:bg-green-600 drop-shadow"><a href="${pageContext.request.contextPath}/events/all">Events</a></button>
        <button class="bg-blue-500 px-2 py-1 mx-1 rounded-lg text-white font-semibold hover:bg-blue-600 drop-shadow"><a href="${pageContext.request.contextPath}/singers/all">Singer</a></button>
        <button class="bg-purple-500 px-2 py-1 mx-1 rounded-lg text-white font-semibold hover:bg-purple-600 drop-shadow"><a href="${pageContext.request.contextPath}/speakers/all">Speaker</a></button>
      </div>
    </div>

<!-- component -->
	<!-- This is an example component -->
	<div class="flex flex-col items-center">
	<div class=" mx-auto">
	<h1 class="text-2xl text-center my-8">All Singers</h1>
		<div class="flex flex-col">
			<div class="overflow-x-auto shadow-md sm:rounded-lg">
				<div class="inline-block min-w-full align-middle">
				
					<div class="overflow-hidden ">
						<table
							class="min-w-full divide-y divide-gray-200 table-fixed">
							<thead class="bg-gray-100 dark:bg-gray-700">
								<tr>
									<th scope="col"
										class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
										ID</th>
									<th scope="col"
										class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
										Singer Name</th>
									<th scope="col"
										class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
										Phone Number</th>
									<th scope="col"
										class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
										Band Members</th>
									
									
									<th scope="col" class="p-4"><span class="sr-only"></span>
									</th>
									<th scope="col" class="p-4"><span class="sr-only"></span>
									</th>
									<th scope="col" class="p-4"><span class="sr-only"></span>
									</th>
								</tr>
							</thead>

							<c:forEach var="s" items="${singer}">
								<tr class="hover:bg-gray-100 dark:hover:bg-gray-700">

									<td
										class="py-4 px-6 text-sm font-medium text-gray-900 whitespace-nowrap text-center"><c:out
											value="${s.id }" /></td>
									<td
										class="py-4 px-6 text-sm font-medium text-gray-900 whitespace-nowrap text-center"><c:out
											value="${s.singerName}" /></td>
									<td
										class="py-4 px-6 text-sm font-medium text-gray-500 whitespace-nowrap text-center"><c:out
											value="${s.singerPhoneNumber}" /></td>
									<td
										class="py-4 px-6 text-sm font-medium text-gray-900 whitespace-nowrap text-center"><c:out
											value="${s.bandMembers}" /></td>
						
								
									<td class="py-4 px-6 text-sm font-medium text-right whitespace-nowrap text-blue-500"><a href="<c:url value="/singers/${s.id}"/>">Detalii</a></td>
									<td class="py-4 px-6 text-sm font-medium text-right whitespace-nowrap text-blue-500"><a href="<c:url value="/singers/delete/${s.id}"/>">Sterge</a></td>
									<td class="py-4 px-6 text-sm font-medium text-right whitespace-nowrap text-blue-500"><a href="<c:url value="/singers/edit/${s.id}"/>">Editeaza</a></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>

		
	</div>
	<a class="bg-blue-500 rounded-lg p-2 text-white mt-5" href="<c:url value="/singers/create"/>">Add new singer</a></div>
</body>
</html>