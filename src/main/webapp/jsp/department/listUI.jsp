<%--
  Created by IntelliJ IDEA.
  User: sunmig
  Date: 2016/11/5
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <title>部门基本信息</title>
<!-- END HEAD -->
<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
    <!--公共头部-->
    <%@ include file="../publicHead/listUI.jsp"%>
    <!--公共头部End-->
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
                <li class="active">
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
                        <li class="active">
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
    <!-- BEGIN CONTENT Gao-->
    <div class="page-content-wrapper">
        <div class="page-content">

            <!-- BEGIN PAGE HEADER-->
            <!-- BEGIN PAGE HEAD -->
            <div class="page-head">
                <!-- BEGIN PAGE TITLE -->
                <div class="page-title">
                    <h1>部门基本信息</h1>
                </div>
                <!-- END PAGE TITLE -->

            </div>
            <!-- END PAGE HEAD -->
            <!-- BEGIN PAGE BREADCRUMB -->
            <ul class="page-breadcrumb breadcrumb">
                <li>
                    <a style="text-decoration:none;">基础信息管理</a>
                    <i class="fa fa-circle"></i>
                </li>
                <li>
                    <a style="text-decoration:none;">部门信息管理</a>
                    <i class="fa fa-circle"></i>
                </li>
                <li>
                    <a style="text-decoration:none;">部门基本信息</a>
                </li>
            </ul>
            <!-- END PAGE BREADCRUMB -->
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT Li-->
            <div class="row">
                <div class="col-md-3">
                    <div class="portlet red box">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-search"></i>查找
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div id="tree_1" class="tree-demo">
                                <ul>
                                    <li data-jstree='{ "opened" : false }'>
                                        所有学校
                                        <ul>
                                            <li data-jstree='{ "opened" : false }'>
                                                山东理工大学
                                                <ul>
                                                    <li data-jstree='{ "opened" : false }'>
                                                        计算机科学与技术学院
                                                        <ul>
                                                            <li data-jstree='{ "type" : "file" }'>
                                                                <a href="/department/department_detail?id=1">财务部</a>
                                                            </li>
                                                            <li data-jstree='{ "type" : "file" }'>
                                                                教学科
                                                            </li>
                                                        </ul>
                                                    </li>

                                                    <li data-jstree='{ "type" : "file" }'>
                                                        理学院
                                                    </li>
                                                </ul>
                                            </li>

                                        </ul>
                                        <ul>
                                            <li data-jstree='{ "type" : "file" }'>
                                                山东科技大学
                                            </li>
                                        </ul>
                                        <ul>
                                            <li data-jstree='{ "type" : "file" }'>
                                                山东建筑大学
                                            </li>
                                        </ul>
                                        <ul>
                                            <li data-jstree='{ "type" : "file" }'>
                                                山东农业大学
                                            </li>
                                        </ul>

                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                        <!-- BEGIN SAMPLE FORM PORTLET-->
                        <div class="portlet box red">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="fa fa-graduation-cap"></i> 部门基本信息
                                </div>
                                <div class="tools">
                                    <a href="" class="collapse">
                                    </a>
                                </div>
                            </div>
                            <div class="portlet-body form">
                                <form name="form" method="post" class="form-horizontal">
                                    <s:hidden name="department.id"/>
                                    <div class="form-body">
                                        <div class="form-group">
                                            <label class="control-label col-md-2" for="inputWarning">部门编号</label>
                                            <div class="col-md-4">
                                                <s:textfield name="department.departmentId" class="form-control"/>
                                            </div>
                                            <label class="control-label col-md-2" for="inputError">部门名称</label>
                                            <div class="col-md-4">
                                                <s:textfield name="department.departmentName" class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2" for="inputWarning">单位编号</label>
                                            <div class="col-md-4">
                                                <s:textfield name="department.unitId" class="form-control"/>
                                            </div>
                                            <label class="control-label col-md-2" for="inputError">单位名称</label>
                                            <div class="col-md-4">
                                                <s:textfield name="department.unitName" class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2" for="inputWarning">行政级别</label>
                                            <div class="col-md-4">
                                                <s:textfield name="department.administrativeLevel" class="form-control"/>
                                            </div>
                                            <label class="control-label col-md-2" for="inputError">部门简称</label>
                                            <div class="col-md-4">
                                                <s:textfield name="department.departmentSimName" class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2" for="inputWarning">部门类型</label>
                                            <div class="col-md-4">
                                                <s:textfield type="text" name="department.departmentType"
                                                             class="form-control"/>
                                            </div>
                                            <label class="control-label col-md-2" for="inputError">业务职责</label>
                                            <div class="col-md-4">
                                                <s:textfield type="text" name="department.departmentDuty"
                                                             class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2" for="inputWarning">办公地点</label>
                                            <div class="col-md-4">
                                                <s:textfield type="text" name="department.departmentLocal"
                                                             class="form-control"/>
                                            </div>
                                            <label class="control-label col-md-2" for="inputError">业务邮箱</label>
                                            <div class="col-md-4">
                                                <s:textfield type="text" name="department.mailFox" class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                        <label class="control-label col-md-2" for="inputWarning">电话</label>
                                        <div class="col-md-4">
                                            <s:textfield type="text" name="department.phone" class="form-control"/>
                                        </div>
                                        <label class="control-label col-md-2" for="inputError">传真</label>
                                        <div class="col-md-4">
                                            <s:textfield type="text" name="department.fax" class="form-control"/>
                                        </div>
                                    </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2" for="inputWarning">备注</label>
                                            <div class="col-md-4">
                                                <s:textfield type="text" name="department.remark" class="form-control"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-actions right">
                                        <!-- blue-hoki-->
                                        <a href="javascript:form.action='department_save';form.submit()" class="btn red">追加 <i class="fa fa-plus"></i></a>
                                        <a href="javascript:form.action='department_save';form.submit()" class="btn red">修改 <i class="fa fa-edit"></i></a>
                                        <a href="javascript:form.action='department_delete';form.submit()" class="btn red">删除 <i class="fa fa-times"></i></a>
                                        <a href="javascript:form.reset()" class="btn blue-hoki">重置 <i class="fa fa-file-o"></i></a>
                                    </div>
                                </form>
                            </div>
                    </div>
            </div>
            <!-- END SAMPLE FORM PORTLET-->
        </div>
    </div>
</div>
<!-- END PAGE CONTENT-->
<!-- END CONTAINER -->
<!--公共尾部-->
<%@ include file="../publicFoot/listUI.jsp" %>
<!--公共尾部End-->
</body>
<!-- END BODY -->
</html>
