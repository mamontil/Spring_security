<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Администратор
  Date: 06.05.2021
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>view_for_all_employees</title>
</head>
<body>

<h2>information for all employees</h2>
<br>
<br>

<security:authorize access="hasRole('HR')">
<button onclick="window.location.href='hr_info'">Salary</button>
Only for HR staff
</security:authorize>
<br>
<br>
<security:authorize access="hasRole('MANAGER')">
<button  type="button" onclick="window.location.href='manager_info'">Performance</button>
Only for Managers
</security:authorize>

</body>
</html>
