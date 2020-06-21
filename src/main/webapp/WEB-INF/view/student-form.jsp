<%--
  Created by IntelliJ IDEA.
  User: BILL YENGO
  Date: 6/17/2020
  Time: 12:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>
    <form:form action="/student/processForm" modelAttribute="student">
        First name: <form:input path="firstName" /> <br><br>
        Last name: <form:input path="lastName" />

        <br><br>
        Country :
        <form:select path="country">
            <form:options items="${theCountryOptions}" />
        </form:select>

        <br><br>
        Favorite Language :
        <form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}" />

        <br><br>
        Operating Systems:
        Linux <form:checkbox path="operatingSystems" value="Linux" />
        Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
        Windows <form:checkbox path="operatingSystems" value="Windows" />

        <br><br>
        <input type="submit">
    </form:form>
</body>
</html>
