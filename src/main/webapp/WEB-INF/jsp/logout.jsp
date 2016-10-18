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
    <h1>Logout</h1>
    <a href="index.jsp">首页</a>
</body>
</html>
