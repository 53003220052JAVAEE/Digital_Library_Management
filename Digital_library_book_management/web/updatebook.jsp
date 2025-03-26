<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.io.*,java.util.*,java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Book Page</title>
    <style>
        table {
            width: 70%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        caption {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center;">Update Book Details</h1>
    <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost/test" user="root" password="root" />
    <sql:query dataSource="${dbsource}" var="result">
        SELECT * FROM books WHERE id = ?;
        <sql:param value="${param.id}" />
    </sql:query>
    <form action="updatebookdb.jsp">
        <table>
            <caption>Update Book Details</caption>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Genre</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
            <tr>
                <td>
                    <input type="text" value="${row.id}" name="id" readonly>
                </td>
                <td>
                    <input type="text" value="${row.title}" name="title">
                </td>
                <td>
                    <input type="text" value="${row.author}" name="author">
                </td>
                <td>
                    <input type="text" value="${row.genre}" name="genre">
                </td>
                <td>
                    <input type="text" value="${row.status}" name="status">
                </td>
                <td>
                    <input type="submit" value="Update">
                </td>
            </tr>
            </c:forEach>
        </table>
        <div style="text-align: center;">
            <a href="display.jsp">Go To View Book</a>
        </div>
    </form>
</body>
</html>
