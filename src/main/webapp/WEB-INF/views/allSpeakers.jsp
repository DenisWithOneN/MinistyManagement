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

<%-- <h1>All Speakers</h1>

<table >
<tr>
<th>ID</th>
<th>Speaker name</th>
<th>Phone Number</th>
<th>email</th>
</tr>

<c:forEach var="s" items="${speaker}">

<tr>
<td><c:out value="${s.id }"/></td>
<td><c:out value="${s.speakerName }"/></td>
<td><c:out value="${s.speakerPhoneNumber}"/></td>
<td><c:out value="${s.emailAdress}"/></td>
<td><a href="<c:url value="/speakers/${s.id}"/>">Detalii</a></td>
<td><a href="<c:url value="/speakers/delete/${s.id}"/>">Sterge</a></td>
<td><a href="<c:url value="/speakers/edit/${s.id}"/>">Editeaza</a></td>



</tr>
</c:forEach>
</table>

<a href="<c:url value="/speakers/create"/>">Add new event</a>
 --%>
 
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
	<h1 class="text-2xl text-center my-8">All Speakers</h1>
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
										Speaker Name</th>
									<th scope="col"
										class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
										Phone Number</th>
									<th scope="col"
										class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
										e-mail</th>
									
									
									<th scope="col" class="p-4"><span class="sr-only"></span>
									</th>
									<th scope="col" class="p-4"><span class="sr-only"></span>
									</th>
									<th scope="col" class="p-4"><span class="sr-only"></span>
									</th>
								</tr>
							</thead>

							<c:forEach var="s" items="${speaker}">
								<tr class="hover:bg-gray-100 dark:hover:bg-gray-700">

									<td
										class="py-4 px-6 text-sm font-medium text-gray-900 whitespace-nowrap text-center"><c:out
											value="${s.id }" /></td>
									<td
										class="py-4 px-6 text-sm font-medium text-gray-900 whitespace-nowrap text-center"><c:out
											value="${s.speakerName}" /></td>
									<td
										class="py-4 px-6 text-sm font-medium text-gray-500 whitespace-nowrap text-center"><c:out
											value="${s.speakerPhoneNumber}" /></td>
									<td
										class="py-4 px-6 text-sm font-medium text-gray-900 whitespace-nowrap text-center"><c:out
											value="${s.emailAdress}" /></td>
						
								
									<td class="py-4 px-6 text-sm font-medium text-right whitespace-nowrap text-purple-500"><a href="<c:url value="/speakers/${s.id}"/>">Detalii</a></td>
									<td class="py-4 px-6 text-sm font-medium text-right whitespace-nowrap text-purple-500"><a href="<c:url value="/speakers/delete/${s.id}"/>">Sterge</a></td>
									<td class="py-4 px-6 text-sm font-medium text-right whitespace-nowrap text-purple-500"><a href="<c:url value="/speakers/edit/${s.id}"/>">Editeaza</a></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>

		
	</div>
	<a class="bg-purple-500 rounded-lg p-2 text-white mt-5" href="<c:url value="/speakers/create"/>">Add new speaker</a></div>
</body>
</html>