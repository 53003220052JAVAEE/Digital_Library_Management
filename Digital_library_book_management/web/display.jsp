<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.io.*,java.util.*,java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page with Search</title>
    <script>
        function confirmGo(m, u) // m=message, u=record
        {
            if (confirm(m)) {
                window.location = u;
            }
        }
    </script>
</head>
<body>
    <h1>Library Book List</h1>
    
    <!-- Search Form -->
    <form method="get">
        <label for="searchQuery">Search by Book ID or Title:</label>
        <input type="text" id="searchQuery" name="searchQuery" placeholder="Enter Book ID or Title">
        <button type="submit">Search</button>
    </form>
    <br>

    <!-- Database Query with Search Filter -->
    <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="root" />
    <sql:query dataSource="${dbsource}" var="result">
        SELECT * FROM books
        <c:if test="${not empty param.searchQuery}">
            WHERE id LIKE ? OR title LIKE ?
            <sql:param value="%${param.searchQuery}%" />
            <sql:param value="%${param.searchQuery}%" />
        </c:if>
    </sql:query>

    <!-- Display Book Table -->
    <form action="">
        <table border="1">
            <tr>
                <th>Book Id</th>
                <th>Book Name</th>
                <th>Book Author</th>
                <th>Book Genre</th>
                <th>Book Status</th>
                <th colspan="2">Book Action</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.id}" /></td>
                <td><c:out value="${row.title}" /></td>
                <td><c:out value="${row.author}" /></td>
                <td><c:out value="${row.genre}" /></td>
                <td><c:out value="${row.status}" /></td>
                <td><a href="updatebook.jsp?id=<c:out value='${row.id}' />">Update</a></td>
                <td><a href="javascript:confirmGo('Sure to delete this record?', 'deletedb.jsp?id=<c:out value='${row.id}' />')">Delete</a></td>
            </tr>
            </c:forEach>
        </table>
    </form>
    
    <br>
    <a href="index.html">Go Home</a>
</body>
</html>
