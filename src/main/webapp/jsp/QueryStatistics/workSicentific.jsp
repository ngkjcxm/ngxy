<%--
  Created by IntelliJ IDEA.
  User: sunmig
  Date: 2016/11/27
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>著作成果信息统计</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <style>
        @media only screen and (max-width: 1500px) {
            #long3{width:90%;height:80%;margin-top:-10%;margin-left:-45%;}
        }
        @media only screen and (min-width: 1900px) {
            #long3{width:90%;height:80%;margin-top:-400px;margin-left:-45%;}
        }
    </style>
</head>
<!-- END HEAD -->

<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
<!--公共头部-->
<%@ include file="../publicHead/listUI.jsp"%>
<!--公共头部End-->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar-wrapper">
        <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
        <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
        <div class="page-sidebar navbar-collapse collapse">
            <!-- BEGIN SIDEBAR MENU -->
            <ul class="page-sidebar-menu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                <li class="start active ">
                    <a href="${basePath}user_homeUI.action">
                        <i class="icon-home"></i>
                        <span class="title">首页</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="icon-puzzle"></i>
                        <span class="title">基础信息管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${basePath}employee_listUI.action">
                                <i class="icon-home"></i>
                                教工信息管理</a>
                        </li>
                        <li>
                            <a href="${basePath}school_listUI.action">
                                <i class="icon-home"></i>
                                学校基本信息管理</a>
                        </li>
                        <li>
                            <a href="${basePath}unit_listUI.action">
                                <i class="icon-home"></i>
                                单位基本信息管理</a>
                        </li>
                        <li>
                            <a href="${basePath}department_listUI.action">
                                <i class="icon-home"></i>
                                部门基本信息管理</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="icon-rocket"></i>
                        <span class="title">科研成果管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="#">
                                <i class="icon-eye"></i>
                                <span class="title"> 横向课题相关</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="${basePath}horizontal_addUI.action">
                                        <i class="icon-rocket"></i>
                                        横向课题录入
                                    </a>
                                </li>
                                <li>
                                    <a href="${basePath}horizontal_listUI.action">
                                        <i class="icon-rocket"></i>
                                        横向课题核立
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="icon-rocket"></i>
                                        横向课题到款预算
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="icon-flag"></i>
                                <span class="title">纵向课题相关</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="${basePath}vertical_addUI.action">
                                        <i class="icon-rocket"></i>
                                        纵向课题录入
                                    </a>
                                </li>
                                <li>
                                    <a href="${basePath}vertical_listUI.action">
                                        <i class="icon-rocket"></i>
                                        纵向课题核立
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="icon-rocket"></i>
                                        纵向课题到款预算
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="icon-speech"></i>
                                <span class="title">论文成果相关</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="${basePath}paper_addUI.action">
                                        <i class="icon-rocket"></i>
                                        论文成果导入
                                    </a>
                                </li>
                                <li>
                                    <a href="${basePath}paper_listUI.action">
                                        <i class="icon-rocket"></i>
                                        论文成果审核
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="icon-speech"></i>
                                <span class="title">著作成果相关</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="${basePath}workAchieve_addUI.action">
                                        <i class="icon-rocket"></i>
                                        著作成果导入
                                    </a>
                                </li>
                                <li>
                                    <a href="${basePath}workAchieve_listUI.action">
                                        <i class="icon-rocket"></i>
                                        著作成果审核
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="icon-speech"></i>
                                <span class="title">专利成果相关</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="${basePath}patent_addUI.action">
                                        <i class="icon-rocket"></i>
                                        专利成果导入
                                    </a>
                                </li>
                                <li>
                                    <a href="${basePath}patent_listUI.action">
                                        <i class="icon-rocket"></i>
                                        专利成果审核
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="icon-speech"></i>
                                <span class="title">科研奖励相关</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="${basePath}research_addUI.action">
                                        <i class="icon-rocket"></i>
                                        科研奖励导入
                                    </a>
                                </li>
                                <li>
                                    <a href="${basePath}research_listUI.action">
                                        <i class="icon-rocket"></i>
                                        科研奖励审核
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="icon-speech"></i>
                                <span class="title">软件著作权相关</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="${basePath}software_addUI.action">
                                        <i class="icon-rocket"></i>
                                        软件著作权导入
                                    </a>
                                </li>
                                <li>
                                    <a href="${basePath}software_listUI.action">
                                        <i class="icon-rocket"></i>
                                        软件著作权审核
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="active">
                    <a href="javascript:;">
                        <i class="icon-bar-chart"></i>
                        <span class="title">查询统计信息</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${basePath}employee_listQueryUI.action">
                                <i class="icon-user"></i>
                                人员基础信息统计
                            </a>
                        </li>
                        <li>
                            <a href="${basePath}horizontal_listQueryUI.action">
                                <i class="icon-bar-chart"></i>
                                横向课题经费统计
                            </a>
                        </li>
                        <!--<li>
                            <a href="#">
                                <i class="icon-paper-plane"></i>
                                横向课题工作量统计
                            </a>
                        </li> -->
                        <li>
                            <a href="${basePath}vertical_listQueryUI.action">
                                <i class="icon-user"></i>
                                纵向课题信息统计
                            </a>
                        </li>
                        <li>
                            <a href="${basePath}paper_listQueryUI.action">
                                <i class="icon-user"></i>
                                论文成果信息统计
                            </a>
                        </li>
                        <li class="active">
                            <a href="${basePath}workAchieve_listQueryUI.action">
                                <i class="icon-user"></i>
                                著作成果信息统计
                            </a>
                        </li>
                        <li>
                            <a href="${basePath}patent_listQueryUI.action">
                                <i class="icon-user"></i>
                                专利成果信息统计
                            </a>
                        </li>
                        <li>
                            <a href="${basePath}research_listQueryUI.action">
                                <i class="icon-user"></i>
                                科研奖励信息统计
                            </a>
                        </li>
                        <li>
                            <a href="${basePath}software_listQueryUI.action">
                                <i class="icon-user"></i>
                                软件著作权信息统计
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="icon-wallet"></i>
                        <span class="title">个人查询统计</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="#">
                                <i class="icon-user"></i>
                                横向经费
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="icon-user"></i>
                                横向工作量
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="icon-user"></i>
                                纵向课题
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="icon-user"></i>
                                论文成果
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="icon-user"></i>
                                著作成果
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="icon-user"></i>
                                专利成果
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="icon-user"></i>
                                科研奖励
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="icon-user"></i>
                                软件著作权
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- END SIDEBAR MENU -->
        </div>
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT Gao-->
    <div class="page-content-wrapper">
        <div class="page-content">


            <!-- BEGIN PAGE CONTENT Li-->
            <div class="row">
                <div class="col-md-12">
                    <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                        <div class="tab-content">
                            <form id="workSearch" name="workSearch" class="form-horizontal">
                                <div class="tab-pane active" >
                                    <div class="portlet light ">
                                        <div class="portlet-body form">
                                            <div class="form-body">
                                                <h3 class="form-section font-red-sunglo">著作成果信息统计</h3>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">著作名称</label>
                                                            <div class="col-md-6">
                                                                <input type="text" name="search.workName"
                                                                       class="form-control" placeholder="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">著作类别</label>
                                                            <div class="col-md-8">
                                                                <select class="select2_category form-control"
                                                                        name="search.workType"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
                                                                    <option value="Category 2"></option>
                                                                    <option value="Category 1">专著</option>
                                                                    <option value="Category 2">教科书</option>
                                                                    <option value="Category 1">编著</option>
                                                                    <option value="Category 2">电子出版物</option>
                                                                    <option value="Category 1">译著</option>
                                                                    <option value="Category 2">其他</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">首位作者</label>
                                                            <div class="col-md-6">
                                                                <input type="text" name="search.authorName"
                                                                       class="form-control" placeholder="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">学院</label>
                                                            <div class="col-md-8">
                                                                <input type="text" name="search.unitName"
                                                                       class="form-control" placeholder="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">首作者职称</label>
                                                            <div class="col-md-6">
                                                                <select class="select2_category form-control"
                                                                        name="search.authorName"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
                                                                    <option value="Category 1"></option>
                                                                    <option value="Category 2">教授</option>
                                                                    <option value="Category 2">副教授</option>
                                                                    <option value="Category 2">讲师</option>
                                                                    <option value="Category 2">助教</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">首作者学位</label>
                                                            <div class="col-md-8">
                                                                <select class="select2_category form-control"
                                                                        name="search.authorAcademicDreen"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
                                                                    <option value="Category 1"></option>
                                                                    <option value="Category 2">本科</option>
                                                                    <option value="Category 2">硕士</option>
                                                                    <option value="Category 2">博士</option>
                                                                    <option value="Category 2">助教</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">首作者性别</label>
                                                            <div class="col-md-6">
                                                                <select class="select2_category form-control"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
                                                                    <option value="Category 2"></option>
                                                                    <option value="Category 1">男</option>
                                                                    <option value="Category 2">女</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">出版年月</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" placeholder="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-1">至</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" placeholder="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">年龄段</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" placeholder="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-1">至</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" placeholder="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">审核情况 </label>
                                                            <div class="col-md-6">
                                                                <select class="select2_category form-control"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
                                                                    <option value="Category 1">审核通过</option>
                                                                    <option value="Category 2">审核未通过</option>
                                                                    <option value="Category 2">未审核</option>
                                                                    <option value="Category 2">所有</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">作者外单位</label>
                                                            <div class="col-md-6">
                                                                <select class="select2_category form-control"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
                                                                    <option value="Category 1"></option>
                                                                    <option value="Category 2">是</option>
                                                                    <option value="Category 2">否</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-actions right" style="border:0px solid #000;">
                                                <div class="row" style="border:0px solid red;">
                                                    <div class="col-md-12 " style="border:0px solid green;">
                                                        <div class="row">
                                                            <div class="col-md-offset-3 col-md-9">
                                                                <a data-target="#long3" data-toggle="modal">
                                                                    <button type="submit" class="btn green"
                                                                            onclick="showclick()">执行查询
                                                                    </button>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div><!-- END SAMPLE FORM PORTLET-->
        </div>
    </div>
</div>
<!-- 弹出框 执行查询 -->
<div class="portlet-body">
    <div id="long3" class="modal fade modal-scroll" tabindex="-1" data-replace="true">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_2">
                            <div class="portlet light ">
                                <div class="portlet-body form">
                                    <!-- BEGIN FORM-->
                                    <form action="#" class="form-horizontal">
                                        <div class="form-body">
                                            <h3 class="form-section font-red-sunglo">著作成果信息统计</h3>
                                            <table class="table table-striped table-bordered table-hover" id="sample_2"
                                                   style="text-align:center;">
                                                <thead>
                                                <tr>
                                                    <th style="text-align:center;">
                                                        序号
                                                    </th>
                                                    <th style="text-align:center;">
                                                        首位作者
                                                    </th>
                                                    <th style="text-align:center;">
                                                        首位作者学院
                                                    </th>
                                                    <th style="text-align:center;">
                                                        首位作者撰写字数
                                                    </th>
                                                    <th style="text-align:center;">
                                                        著作名称
                                                    </th>
                                                    <th style="text-align:center;">
                                                        著作类别
                                                    </th>
                                                    <th style="text-align:center;">
                                                        全书字数
                                                    </th>
                                                    <th style="text-align:center;">
                                                        出版社
                                                    </th>
                                                    <th style="text-align:center;">
                                                        所属学科
                                                    </th>
                                                    <th style="text-align:center;">
                                                        ISBN
                                                    </th>
                                                    <th style="text-align:center;">
                                                        津贴发放年度
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody id="workBody">

                                                </tbody>
                                            </table>
                                            <!-- 分页-->

                                            <div class="form-actions right" style="border:0px solid #000;">
                                                <div class="row" style="border:0px solid red;">
                                                    <div class="col-md-12 " style="border:0px solid green;">
                                                        <div class="col-md-12 " style="border:0px solid green;">
                                                            <div class="row">
                                                                <div class="col-md-offset-3 col-md-9">
                                                                    <button type="submit" class="btn green">导出Excel
                                                                    </button>
                                                                    <button type="button" class="btn default">返回
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <!-- END FORM-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End弹出框 执行查询 -->
<!--公共尾部-->
<%@ include file="../publicFoot/listUI.jsp" %>
<!--公共尾部End-->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<script>



    function showclick() {

        var frm = $("#workSearch");
        $.ajax({
            type: "post",
            url: "/workAchieve/workAchieve_searchWork",
            data: frm.serialize(),
        });
        employeeList();
    }


    function employeeList(url, search) {
        url = url || 'workAchieve/workAchieve_searchWork';
        search = search || {};

        $.post(url, search, function (data) {
            data = JSON.parse(data);
            var str = '';
            var i = 1;
            data.forEach(function (item) {
                str += '<tr class="odd gradeX"><td>' + i++ + '</td><td>'
                    + item.author1Name + '</td><td>' + item.unit1Name + '</td><td>'
                    + item.author1wordsNumber + '</td><td>' + item.workName + '</td><td>'
                    + item.worksType + '</td><td>' + item.workWordAll + '</td><td>'
                    + item.publishUnit + '</td><td>' + item.publishAddress + '</td><td>'
                    + item.ISBN + '</td><td>' + item.moneyIntoYear + '</td></tr>';
            });
            $('#workBody').html(str);
        });

    }


</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>