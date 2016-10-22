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
<h1>Hello</h1>
<a href="login.jsp">登录</a> <br/>
<a href="login_logout.action">退出登录</a>

<br/><br/><br/><br/>
<a href="resource_logined.action">敏感资源，登录后才能访问</a> <br/>
<a href="resource_security.action">超敏感资源，super!</a> <br/>
<a href="resource_simple.action">游客访问</a>
</body>
</html>
