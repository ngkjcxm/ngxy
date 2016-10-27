<%--
  Created by IntelliJ IDEA.
  User: gcl
  Date: 2016/10/27
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>提交横向课题</title>
</head>
<body>

<form method="post" action="horizontalFormAction_form.action">
    <input name="project.projectName">
    <input name="project.consignor">
    <input name="project.outlay">
    <input name="project.projectDirector">
    <input name="project.directorUnit">
    <button type="submit">Submit</button>
</form>
</body>
</html>
