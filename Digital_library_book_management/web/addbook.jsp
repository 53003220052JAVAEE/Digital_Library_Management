<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>JSP Page</title> 
</head> 
<body> 
<form action="addbookdb.jsp"> 
<table border="1">  
<tr> 
<th colspan="2"> Add Book</th> 
</tr> 
<tr> 
<td> Book Id: </td> 
<td><input type="text" name="id"> </td> 
</tr> 
<tr> 
<td> Book Name/Title: </td> 
<td><input type="text" name="title"> </td> 
</tr> 
<tr> 
<td> Book Author:  </td> 
<td><input type="text" name="author"> </td> 
</tr> 
<tr> 
<td> Book Genre:  </td> 
<td><input type="text" name="genre"> </td> 
</tr> 
<tr> 
<td> Book Status:  </td> 
<td><input type="text" name="status"> </td> 
</tr> 
<tr> 
<td><input type="submit" name="save" value="Save"> </td> 
<td><input type="reset" name="reset" value="Reset"> </td> 
</tr> 
</table> 
</form> 
<font color="red"> 
<c:if test="${not empty param.errMsg}"> 
<c:out value="${param.errMsg}"/> 
<a href="display.jsp">Go Back to check</a> 
</c:if> 
</font> 
<font color="green"> 
<c:if test="${not empty param.susMsg}"> 
<c:out value="${param.susMsg}"/> 
<a href="display.jsp">View Books</a> 
</c:if> 
</font>     
</body> 
</html> 