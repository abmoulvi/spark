<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form action="Servlet1">
	Select State <Select name="state">
	<option value="MH">Maharashtra</option>
	<option value="KA">Karnataka</option>
	<option value="TN">TamilNadu</option>
	<option value="WB">West Bengal</option>
	</Select><br>
	<input type="submit" value="get">
	</form>

<%! String state; Map<String,String> m; %>
<%
if(session.getAttribute("capitals")!=null)
{
	state = session.getAttribute("state").toString();
	m = (Map)session.getAttribute("capitals");

%>
Capital of <%= state %> is <%= m.get(state) %>
<%
}
%>

</body>
</html>