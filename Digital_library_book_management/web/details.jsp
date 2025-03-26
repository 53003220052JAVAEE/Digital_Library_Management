<!DOCTYPE html>
<html>
<head>
    <title>Details Page</title>
    <style>
        table {
            width: 50%;
            margin: 50px auto;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid black;
        }
        th {
            background-color: #f2f2f2;
        }
        a {
            text-decoration: none;
            color: #000;
        }
        a:hover {
            color: #007bff;
        }
        .exit-button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            text-align: center;
            background-color: #ff4d4d;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            width: 100px;
        }
        .exit-button:hover {
            background-color: #d60000;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center;">Library Management Options</h1>
    <table>
        <tr>
            <th>Option</th>
            <th>Action</th>
        </tr>
        <tr>
            <td>Add Book</td>
            <td><a href="addbook.jsp">Go to Add Book</a></td>
        </tr>
        <tr>
            <td>View Books</td>
            <td><a href="display.jsp">Go to View Books</a></td>
        </tr>
    </table>
    <a href="logout.jsp" class="exit-button">Exit System</a>
</body>
</html>
