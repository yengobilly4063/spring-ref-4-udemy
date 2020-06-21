<%--
  Created by IntelliJ IDEA.
  User: BILL YENGO
  Date: 6/16/2020
  Time: 6:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello World - Input Form</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<form method="get" action="processFormVersionThree">
    <input type="text" name="studentName" placeholder="What's you name?">
    <input type="submit" value="Submit Query">
</form>
<hr>
<a href="/">Home</a>
</body>
</html>