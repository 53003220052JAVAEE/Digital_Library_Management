<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import= "java.io.*,java.util.*,java.sql.*"%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Update Book Page</title> 
</head> 
<body> 
<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="root" /> 
<sql:update dataSource="${dbsource}" var="count"> 
UPDATE books SET title = ?, author = ?, genre = ?, status = ? WHERE id = ${param.id}; 
<sql:param value="${param. title}"/> 
<sql:param value="${param.author}"/> 
<sql:param value="${param.genre}"/>
<sql:param value="${param.status}"/>
</sql:update> 
<c:if test="${count>=1}"> 
<font size="5" color="green">Congratulations!! Data Updated Successfully 
</font> 
<br> 
<a href="display.jsp"> Go to See Updated Records</a> 
</c:if> 
</body> 
</html> 