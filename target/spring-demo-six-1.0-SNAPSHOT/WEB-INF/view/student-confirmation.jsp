<%--
  Created by IntelliJ IDEA.
  User: BILL YENGO
  Date: 6/17/2020
  Time: 12:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>Information for ${student.firstName}</title>
</head>
<body>
<h3>The student is confirmed</h3>
<p>First name : ${student.firstName}</p>
<p>Last name : ${student.lastName}</p>
<p>Country : ${student.country}</p>
<p>The student's favorite language is : ${student.favoriteLanguage}</p>
OperatingSystems:
<ul>
    <c:forEach var="temp" items="${student.operatingSystems}" >
        <li>${temp}</li>
    </c:forEach>

</ul>



</body>
</html>
