<%--
  Created by IntelliJ IDEA.
  User: gcl
  Date: 2016/10/15
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>Title</title>
    <base href=" <%=basePath%>">
</head>
<body>
<h1>Login</h1>
<form action="login_login.action" method="POST">
    <input type="text" name="username">
    <input type="password" name="password">
    <button type="submit">提交</button>
</form>
</body>
</html>
