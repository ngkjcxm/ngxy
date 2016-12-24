<%--
  Created by IntelliJ IDEA.
  User: sunming
  Date: 2016/12/5
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <title>用户首页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
</head>
<body>
<!--公共头部-->
<%@ include file="PeopleHead/listUI.jsp" %>
<!--公共头部End-->

<div class="page-container">
    <div class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    欢迎你，<s:property value="#session.SYS_USER.username"/>同志
                </div>
            </div>
        </div>
    </div>
</div>
<!--公共尾部-->
<%@ include file="PeopleFoot/listUI.jsp" %>
<!--公共尾部End-->


<script>
    jQuery(document).ready(function() {
        $("#Label-01").addClass("active");
    });
</script>


</body>
</html>