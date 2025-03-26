<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import= "java.io.*,java.util.*,java.sql.*"%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Add Book</title> 
</head> 
<body> 
<c:if test="${empty param.id or empty param.title or empty 
param.author or empty param.genre or empty param.status}"> 
<c:redirect url="addbook.jsp"> 
<c:param name="errMsg" value="Please enter the Book Details"/> 
</c:redirect> 
</c:if> 
<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost/test" user="root" password="root" /> 
<sql:update dataSource="${dbsource}" var="result"> 
INSERT INTO books VALUES(?,?,?,?,?); 
<sql:param value="${param.id}"/> 
<sql:param value="${param.title}"/> 
<sql:param value="${param.author}"/> 
<sql:param value="${param.genre}"/> 
<sql:param value="${param.status}"/> 
</sql:update> 
<c:if test="${result>=1}"> 
<font size="5" color="green">Congratulations !! Data inserted successfully </font> 
<c:redirect url="display.jsp"> 
<c:param name="susMsg" value="Congratulations !! Data inserted 
successfully"></c:param> 
</c:redirect>  
</c:if> 
</body> 
</html> 