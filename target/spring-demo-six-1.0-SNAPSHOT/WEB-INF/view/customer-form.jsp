<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: BILL YENGO
  Date: 6/21/2020
  Time: 9:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Entry Form</title>
    <style>
        .error{color: red; background-color: peachpuff}
    </style>
</head>
<body>
    <p>Customer Entry | (*required fields)</p>
    <form:form action="processForm" modelAttribute="customer">
        First name: <form:input path="firstName" />
        <br><br>
        Last name(*): <form:input path="lastName" />
        <form:errors path="lastName" cssClass="error" />

        <c:if test="lastName" >
            <i class="error">Error found</i>
        </c:if>

        <br><br>
        <input type="submit" value="Submit">
    </form:form>
</body>
</html>
