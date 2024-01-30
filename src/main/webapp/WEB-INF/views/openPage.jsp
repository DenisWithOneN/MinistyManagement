<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>

<div class="bg-gray-200 p-3">
      <div class="flex items-start">
        <button class="bg-green-500 px-2 py-1 mx-1 rounded-lg text-white font-semibold hover:bg-green-600 drop-shadow"><a href="${pageContext.request.contextPath}/events/all">Events</a></button>
        <button class="bg-blue-500 px-2 py-1 mx-1 rounded-lg text-white font-semibold hover:bg-blue-600 drop-shadow"><a href="${pageContext.request.contextPath}/singers/all">Singer</a></button>
        <button class="bg-purple-500 px-2 py-1 mx-1 rounded-lg text-white font-semibold hover:bg-purple-600 drop-shadow"><a href="${pageContext.request.contextPath}/speakers/all">Speaker</a></button>
      </div>
    </div>

<div class="mt-40 flex flex-col justif-center items-center">
      <div class="text-xl font-bold">
        Welcome to the Youth Ministry Management App
      </div>
      <div class="flex items-center justify-center">
        <p class="pr-1">Happy</p>
        <p class="font-semibold text-blue-500 hover:drop-shadow hover:animate-ping">Database</p>
        <p>ing</p>
      </div>
    </div>
</body>
</html>