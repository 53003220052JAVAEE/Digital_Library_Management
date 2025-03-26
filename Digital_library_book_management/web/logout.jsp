<%@ page language="java" %>
<%@ page session="false" %>
<%
    // Invalidate the user session
    session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Logged Out</title>
</head>
<body>
    <h1>You have successfully exited the system!</h1>
    <p><a href="login.html">Go to Login Page</a></p>
</body>
</html>
