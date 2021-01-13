<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="myvar" value="Hello" scope="session"> </c:set>
<c:out value="${ myvar }"></c:out>
<c:forEach var="k" begin="1" end="10" step="2">
	<c:out value="${ k }"></c:out>
</c:forEach><br><br>
<c:forTokens items="apple,grapes,orange,mango" delims="," var="car">
		<h1 style="color:red"><c:out value="${ car}"></c:out></h1><br>
</c:forTokens>

</body>
</html>