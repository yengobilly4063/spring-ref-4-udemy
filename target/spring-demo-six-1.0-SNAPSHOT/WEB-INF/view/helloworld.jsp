<%--
  Created by IntelliJ IDEA.
  User: BILL YENGO
  Date: 6/16/2020
  Time: 6:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome - ${param.studentName}</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body>

    <h2>Hello world of Spring</h2>
    <br>
    <p>Student name: ${param.studentName}</p>
    <br>
    <hr>
    <p>The message : ${message}</p>
    <br>
    <hr>
    <p><a href="/hello/showForm">Show Form</a> || <a href="/">Home</a></p>


</body>

</html>
