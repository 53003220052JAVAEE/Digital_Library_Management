<%@page import= "java.io.*,java.util.*,java.sql.*"%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>JSP Page</title> 
</head> 
<body> 
<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost/test" user="root" password="root" /> 
<sql:update dataSource="${dbsource}" var="del"> 
DELETE FROM books WHERE id = "${param.id}"; 
</sql:update> 
<c:if test="${del>=1}"> 
<font size="5" color="green">Data Deleted Successfully </font> 
<br> 
<a href="display.jsp"> Go to View Books</a> 
</c:if>    </body>  </html> 
