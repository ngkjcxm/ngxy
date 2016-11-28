<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>教工信息管理</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>

</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page-header-fixed page-sidebar-closed-hide-logo ">
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
    <!--公共头部-->
    <%@ include file="../publicHead/listUI.jsp" %>
    <!--公共头部End-->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- 弹出框 -->
<div class="portlet-body">
    <div id="long" class="modal fade modal-scroll" tabindex="-1" data-replace="true">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            <h4 class="modal-title">职称</h4>
        </div>
        <div class="modal-body">
            <div data-spy="scroll" data-target="#navbar-example2" data-offset="0" class="scrollspy-example"
                 style="height:260px;">
                <div id="tree_2" class="tree-demo">
                    <ul>
                        <li data-jstree='{ "opened" : false }'>
                            全部职称
                            <ul>
                                <li data-jstree='{ "opened" : false }'>
                                    教授
                                    <ul class="option">
                                        <li data-jstree='{ "type" : "file" }'>
                                            一级教授
                                        </li>
                                        <li data-jstree='{ "type" : "file" }'>
                                            二级教授
                                        </li>
                                        <li data-jstree='{ "type" : "file" }'>
                                            三级教授
                                        </li>
                                    </ul>
                                </li>

                            </ul>
                            <ul class="option">
                                <li data-jstree='{ "opened" : false }'>
                                    副教授
                                    <ul>
                                        <li data-jstree='{ "type" : "file" }'>
                                            一级副教授
                                        </li>
                                        <li data-jstree='{ "type" : "file" }'>
                                            二级副教授
                                        </li>
                                        <li data-jstree='{ "type" : "file" }'>
                                            三级副教授
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="option">
                                <li data-jstree='{ "opened" : false }'>
                                    普通讲师
                                </li>
                            </ul>


                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" data-dismiss="modal" class="btn btn-default">关闭</button>
        </div>
    </div>
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
                    <a href="${basePath}user_home.action">
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
                                    <a href="horizontalAction_addUI.action">
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
                                    <a href="#">
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
                                    <a href="#">
                                        <i class="icon-rocket"></i>
                                        论文成果导入
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
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
                                    <a href="#">
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
                                    <a href="#">
                                        <i class="icon-rocket"></i>
                                        专利成果导入
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
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
                                    <a href="#">
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
                                    <a href="#">
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
                <li>
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
                        <li>
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
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <div class="page-content">

            <!-- BEGIN PAGE HEADER-->
            <!-- BEGIN PAGE HEAD -->
            <div class="page-head">
                <!-- BEGIN PAGE TITLE -->
                <div class="page-title">
                    <h1>教职工信息管理</h1>
                </div>
                <!-- END PAGE TITLE -->

            </div>
            <!-- END PAGE HEAD -->
            <!-- BEGIN PAGE BREADCRUMB -->
            <ul class="page-breadcrumb breadcrumb">
                <li>
                    <i class="fa fa-circle"></i>
                    <a href="index.html">基础信息管理</a>

                </li>
                <li>
                    <i class="fa fa-circle"></i>
                    <a href="#">教工信息管理</a>

                </li>
            </ul>
            <!-- END PAGE BREADCRUMB -->
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row">
                <div class="col-md-3">
                    <div class="portlet red box">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-search"></i>查找
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse"></a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-11">
                                        <div class="input-group">
                                            <input type="text" class="form-control ">
                                            <span class="input-group-btn">
												<button class="btn red" type="button"><a style="color:#fff;"><i
                                                        class="fa fa-search"></i></a>模糊查询</button>
											</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div data-spy="scroll" data-target="#navbar-example2" data-offset="0"
                                 class="scrollspy-example" style="height:375px;">

                                <!-- BEGIN SAMPLE FORM PORTLET-->

                                    <div class="row">
                                        <div class="col-md-12">
                                            <!-- BEGIN SAMPLE FORM PORTLET-->
                                            <div class="portlet light ">
                                                <div id="treeDiv"></div>
                                            </div>
                                            <!-- END SAMPLE FORM PORTLET-->
                                        </div>
                                    </div>
                                <!-- END SAMPLE FORM PORTLET-->
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-md-9">
                    <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a href="#tab_2" data-toggle="tab">
                                    教职工信息 </a>
                            </li>
                            <li>
                                <a href="#tab_1" data-toggle="tab">
                                    2 Cols </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_2">

                                <div class="portlet light bordered">

                                    <div class="portlet-body form">
                                        <!-- BEGIN FORM-->
                                        <form action="/employee/employee_save" class="form-horizontal" method="post">
                                            <s:hidden name="employee.id"/>
                                            <div class="form-body">
                                                <h3 class="form-section">基础信息</h3>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">姓名</label>
                                                            <div class="col-md-9">
                                                                <s:textfield name="employee.employeeName" type="text"
                                                                             class="form-control" placeholder="姓名"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group has-error">
                                                            <label class="control-label col-md-3">工号</label>
                                                            <div class="col-md-9">
                                                                <s:textfield name="employee.employeeId" type="text"
                                                                             class="form-control" placeholder="工号"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                </div>
                                                <!--/row-->
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">性别</label>
                                                            <div class="col-md-9">
                                                                <s:select list="#{'男':'男','女':'女'}" name="employee.sex"
                                                                          class="form-control"></s:select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">出生日期</label>
                                                            <div class="col-md-9">
                                                                <input type="date" name="employee.birthday"
                                                                       class="form-control"
                                                                       value="<s:date name="employee.birthday" format="yyyy-MM-dd" />"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                </div>
                                                <!--/row-->
                                                <h3 class="form-section">联系方式</h3>
                                                <!--/row-->
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">通讯地址</label>
                                                            <div class="col-md-9">
                                                                <s:textfield name="employee.postalAddress" type="text"
                                                                             class="form-control" placeholder="通讯地址"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">手机</label>
                                                            <div class="col-md-9">
                                                                <s:textfield name="employee.phone" type="text"
                                                                             class="form-control" placeholder="手机"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">办公电话</label>
                                                            <div class="col-md-9">
                                                                <s:textfield name="employee.officePhone" type="text"
                                                                             class="form-control" placeholder="办公电话"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">电子邮箱</label>
                                                            <div class="col-md-9">
                                                                <s:textfield name="employee.eMail" type="email"
                                                                             class="form-control" placeholder="电子邮箱"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <h3 class="form-section">工作信息</h3>
                                                <!--/row-->
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">现任职务</label>
                                                            <div class="col-md-9">
                                                                <s:textfield name="employee.nowPost" type="text"
                                                                             class="form-control" placeholder="现任职务"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">职称</label>
                                                            <div class="col-md-9">
                                                                <a id="jopTileName">
                                                                    <s:textfield id="jopTileNameText"
                                                                                 name="employee.jopTileName" type="text"
                                                                                 data-target="#long"
                                                                                 class="form-control" placeholder="职称"/>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">管理归属</label>
                                                            <div class="col-md-9">
                                                                <s:textfield name="employee.academiaUnitId" type="text"
                                                                             class="form-control" placeholder="管理归属"/>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">学术归属</label>
                                                            <div class="col-md-9">
                                                                <s:textfield name="employee.academiaUnitName"
                                                                             type="text" class="form-control"
                                                                             placeholder="学术归属"/>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">民族</label>
                                                            <div class="col-md-9">
                                                                <s:textfield name="employee.nation" type="text"
                                                                             class="form-control" placeholder="民族"/>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">状态</label>
                                                            <div class="col-md-9">
                                                                <s:select name="employee.status"
                                                                          list="#{'可用':'可用', '禁用':'禁用'}"
                                                                          class="form-control"></s:select>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">评职称时间</label>
                                                            <div class="col-md-9">
                                                                <input type="date" name="employee.jopJudgeDate"
                                                                       class="form-control"
                                                                       value="<s:date name="employee.jopJudgeDate" format="yyyy-MM-dd" />"/>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">全日制学位</label>
                                                            <div class="col-md-9">
                                                                <s:select name="employee.fulltimeDegree"
                                                                          list="#{'博士':'博士', '硕士':'硕士'}"
                                                                          class="form-control"></s:select>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">职称级别</label>
                                                            <div class="col-md-9">
                                                                <s:select name="employee.jopTitleLeavel"
                                                                          list="#{'副科级':'副科级', '正科级':'正科级'}"
                                                                          class="form-control"></s:select>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">备注</label>
                                                            <div class="col-md-9">
                                                                <s:textfield name="employee.remark" type="text"
                                                                             class="form-control" placeholder="备注"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                </div>
                                                <!--/row-->

                                            </div>
                                            <div class="form-actions right" style="border:0px solid #000;">
                                                <div class="row" style="border:0px solid red;">
                                                    <div class="col-md-12 " style="border:0px solid green;">
                                                        <div class="row">
                                                            <div class="col-md-offset-3 col-md-9">
                                                                <button type="submit" class="btn green">提交</button>
                                                                <button type="button" class="btn default">取消</button>
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
            <!-- END PAGE CONTENT-->
        </div>
    </div>

    <!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
    <div class="page-footer-inner">
        2014 &copy; Metronic by keenthemes. <a
            href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"
            title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase
        Metronic!</a>
    </div>
    <div class="scroll-to-top">
        <i class="icon-arrow-up"></i>
    </div>
</div>
<!-- END FOOTER -->

<script>
    jQuery(document).ready(function () {
        // 添加树
        $.get('/employee/employee/tree.html', function (data) {
            data = JSON.parse(data);
            window.d = new dTree('d');
            data.forEach(function (obj) {
                d.add(obj.id, obj.pid, obj.text, obj.url);
            });
            $('#treeDiv').html(d.toString());
        })
    });

    // 处理employee树
    function employeeTree(name) {
        $('#treePeople').val(name);
    }
</script>

</body>
<!-- END BODY -->
</html>