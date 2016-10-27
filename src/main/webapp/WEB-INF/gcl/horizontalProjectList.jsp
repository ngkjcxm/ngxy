<%--
  Created by IntelliJ IDEA.
  User: gcl
  Date: 2016/10/27
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>horizontalProjectList</title>
</head>
<body>
<h1>横向课题列表</h1>

<c:forEach items="${list}" var="item">
    <table width="100%">
        <tr>
            <td>横向课题基本信息</td>
        </tr>
        <tr>
            <td>${item.id}</td>
            <td>${item.projectName}</td>
            <td>${item.consignor}</td>
            <td>${item.outlay}</td>
            <td>${item.projectDirector}</td>
            <td>${item.directorUnit}</td>
            <td>${item.outlayIn}</td>
            <td>${item.signDate}</td>
            <td>${item.registTime}</td>
        </tr>
        <tr>
            <td>横向课题经费</td>
        </tr>
        <c:forEach items="${item.horizontalOutlays}" var="outlay">
            <tr>
                <td>${outlay.id}</td>
                <td>${outlay.peopleName}</td>
                <td>${outlay.studyMoney}</td>
                <td>${outlay.equipMoney}</td>
                <td>${outlay.totalMoney}</td>
            </tr>
        </c:forEach>

        <tr>
            <td>横向课题工作量分配</td>
        </tr>
        <c:forEach items="${item.horizontalWorks}" var="outlay">
            <tr>
                <td>${outlay.id}</td>
                <td>${outlay.peopleName}</td>
                <td>${outlay.studyWork}</td>
                <td>${outlay.equipWork}</td>
                <td>${outlay.totalWork}</td>
            </tr>
        </c:forEach>

    </table>
    <hr>
</c:forEach>
</body>
</html>
