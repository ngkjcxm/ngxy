<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: sunmig
  Date: 2016/11/25
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用JSON插件</title>
    <script src="jquery-1.4.4.min.js" type="text/javascript"></script>
</head>
<body>
<s:form id="loginForm">
    <s:textfield name="user1" label="用户名"/>
    <s:textfield name="pass1" label="密码"/>
    <tr>
        <td colspan="2">
            <input id="loginBn" type="button" value="提交"/>
        </td>
    </tr>
</s:form>
<div id="show" style="display:none;"></div>
<script type="text/javascript">
    $("#loginBn").onclick(function () {
        $("#show").hide();
        $.get("login", $("#loginForm").serializeArray(),
                function (data, statusText)
                {
                    $("#show").height(80)
                            .width(240)
                            .css("border", "1px solid black")
                            .css("border-radius", "15px")
                            .css("background-color", "#efef99")
                            .css("color", "#ff0000")
                            .css("padding", "20px")
                            .empty();
                    $("#show").append("登陆结果："+ data + "<br />");
                    $("#show").show(600);
                },

        "html");
    })
</script>

</body>
</html>
