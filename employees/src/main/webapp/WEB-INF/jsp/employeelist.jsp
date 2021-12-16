<%@page language="java" contentType="text/html; ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Person List</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
</head>
<body>
<h1>Person List</h1>

<br/><br/>
<div>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Email</th>
            <th>Phone</th>
        </tr>
        <c:forEach  items="${employees}" var ="employees">
            <tr>
                <td>${employees.id}</td>
                <td>${employees.name}</td>
                <td>${employees.email}</td>
                <td>${employees.phone}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>

</html>