<%--
  Created by IntelliJ IDEA.
  User: sunming
  Date: 2016/12/17
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>纵向课题核立</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
    <!--公共头部-->
    <%@ include file="../publicHead/listUI.jsp" %>
    <!--公共头部End-->
</div>
<!-- END HEADER -->
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
                <li class="start">
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
                <li class="active">
                    <a href="javascript:;">
                        <i class="icon-rocket"></i>
                        <span class="title">科研成果管理</span>
                        <span class="arrow open"></span>
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
                        <li class="active">
                            <a href="#">
                                <i class="icon-flag"></i>
                                <span class="title">纵向课题相关</span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="active">
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
                        a
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
                <div class="col-md-4" style="display:none;" id="select2">
                    <!-- BEGIN SAMPLE FORM PORTLET-->
                    <div class="portlet light ">
                        <div class="portlet-body form">
                            <div class="form-body">
                                <h3 class="form-section font-red-sunglo">已到位经费审核查找</h3>
                                <div class="row">
                                    <div class="col-md-12">
                                        <table id="user" class="table table-bordered  " style="text-align:center;">
                                            <tbody>
                                            <tr>
                                                <td style="width:30%;font-size:15px;text-align:center;">审核情况</td>
                                                <td style="width:70%">
                                                    <select id="fundsSelect"
                                                            class="select2_category form-control"
                                                            data-placeholder="Choose a Category" tabindex="1">
                                                        <option value="所有" checked>所有</option>
                                                        <option value="已通过">已通过</option>
                                                        <option value="待审核">待审核</option>
                                                        <option value="未通过">未通过</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <button id="fundsSearch" class="btn btn-primary btn-block">搜索
                                                    </button>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div style="height:320px;">
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12">
                                            <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                            <div class="portlet-body">
                                                <table class="table table-striped table-bordered table-hover"
                                                       id="sample_2" style="text-align:center;">
                                                    <thead>
                                                    <tr>
                                                        <th style="text-align:center;">序号</th>
                                                        <th style="text-align:center;">到款说明</th>
                                                        <th style="text-align:center;">完成</th>
                                                    </tr>
                                                    </thead>

                                                    <tbody id="fundsBody">
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END SAMPLE FORM PORTLET-->

                </div>
                <div class="col-md-4" style="display:none;" id="select3">
                    <!-- BEGIN SAMPLE FORM PORTLET-->
                    <div class="portlet light ">
                        <div class="portlet-body form">
                            <form role="form">
                                <div class="form-body">
                                    <h3 class="form-section font-red-sunglo">经费预算</h3>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <table id="user" class="table table-bordered " style="text-align:center;">
                                                <tbody>
                                                <tr>
                                                    <td style="width:30%;font-size:15px;text-align:center;">
                                                        年份
                                                    </td>
                                                    <td style="width:70%">
                                                        <input type="month" class="form-control">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width:30%;font-size:15px;text-align:center;">
                                                        预算情况
                                                    </td>
                                                    <td style="width:70%">
                                                        <select class="select2_category form-control"
                                                                data-placeholder="Choose a Category" tabindex="1">
                                                            <option value="Category 1" checked>所有</option>
                                                            <option value="Category 2">已预算</option>
                                                            <option value="Category 3">未预算</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width:30%;font-size:15px;text-align:center;">
                                                        项目名称
                                                    </td>
                                                    <td style="width:70%">
                                                        <input type="text" class="form-control" placeholder="项目名称">
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div style="height:320px;">
                                        <div class="row">
                                            <div class="col-md-12 col-sm-12">
                                                <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                                <div class="portlet-body">
                                                    <table class="table table-striped table-bordered table-hover"
                                                           id="sample_2" style="text-align:center;">
                                                        <thead>
                                                        <tr>
                                                            <th style="text-align:center;">
                                                                序号
                                                            </th>
                                                            <th style="text-align:center;">
                                                                项目名称
                                                            </th>
                                                            <th style="text-align:center;">
                                                                完成
                                                            </th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr class="odd gradeX">

                                                            <td>
                                                                1
                                                            </td>
                                                            <td>
                                                                <a href="#">
                                                                    111111 </a>
                                                            </td>
                                                            <td>
        <span class="label label-sm label-success">
        已预算 </span>
                                                            </td>
                                                        </tr>
                                                        <tr class="odd gradeX">

                                                            <td>
                                                                2
                                                            </td>
                                                            <td>
                                                                <a href="#">
                                                                    222222 </a>
                                                            </td>
                                                            <td>
        <span class="label label-sm label-danger">
        未预算 </span>
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <!-- END EXAMPLE TABLE PORTLET-->
                                                <div style="float:right;">
                                                    <ul class="pagination">
                                                        <li><a href="#">上一页</a></li>
                                                        <li><a href="#">下一页</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- END SAMPLE FORM PORTLET-->
                </div>
                <!-- view1 -->
                <div class="col-md-12" id="view1" style="display:block;">
                    <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_2">

                                <div class="portlet light ">

                                    <div class="portlet-body form">
                                        <!-- BEGIN FORM-->
                                        <form action="/vertical/vertical/save.html" method="post"
                                              class="form-horizontal">
                                            <s:hidden name="vertical.id"/>
                                            <div class="form-body">
                                                <h3 class="form-section font-red-sunglo">纵向课题录入</h3>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">项目名称</label>
                                                            <div class="col-md-5">
                                                                <s:textfield id="projectName" type="text"
                                                                             name="vertical.verticalName"
                                                                             class="form-control" placeholder="项目名称"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group ">
                                                            <label class="control-label col-md-3 font-red-sunglo">项目编号</label>
                                                            <div class="col-md-5">
                                                                <s:textfield type="text" name="vertical.projectId"
                                                                             class="form-control"
                                                                             placeholder="项目编号"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                </div>
                                                <!--/row-->
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">项目负责人单位</label>
                                                            <div class="col-md-5">
                                                                <s:textfield id="peopleUnit" type="text"
                                                                             name="vertical.unitName"
                                                                             class="form-control"
                                                                             placeholder="项目负责人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 font-red-sunglo">项目负责人</label>
                                                            <div class="col-md-5">
                                                                <a data-target="#long5" data-toggle="modal">
                                                                    <s:textfield id="treePeople" type="text"
                                                                                 name="vertical.verticalHeaderName"
                                                                                 class="form-control"
                                                                                 placeholder="项目负责人"/>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                </div>
                                                <!--/row-->
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">批准金额(万元)</label>
                                                            <div class="col-md-5">
                                                                <s:textfield id="funds" name="vertical.approvalFunds"
                                                                             type="text" class="form-control"
                                                                             placeholder="批准金额（万元）"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 font-red-sunglo">参与类型</label>
                                                            <div class="col-md-5">
                                                                <s:select list="#{'主持':'主持', '副主持':'副主持'}"
                                                                          name="vertical.projectType"
                                                                          class="select2_category form-control"
                                                                          tabindex="1">
                                                                </s:select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                </div>
                                                <!--/row-->
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">其他成员</label>
                                                            <div class="col-md-7">
                                                                <a data-target="#otherPeopleWindow" data-toggle="modal">
                                                                    <s:textfield id="otherPeopleInput"
                                                                                 name="vertical.otherPeople" type="text"
                                                                                 class="form-control"
                                                                                 placeholder="其他成员"/>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/row-->
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">开始时间</label>
                                                            <div class="col-md-5">
                                                                <input name="vertical.starDate" type="date"
                                                                       class="form-control"
                                                                       value="<s:date name="vertical.starDate" format="yyyy-MM-dd"/>"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">结束时间</label>
                                                            <div class="col-md-5">
                                                                <input name="vertical.endDate" type="date"
                                                                       class="form-control"
                                                                       value="<s:date name="vertical.endDate" format="yyyy-MM-dd"/>"/>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">学科分类</label>
                                                            <div class="col-md-5">
                                                                <s:select name='vertical.subjectType'
                                                                          class="select2_category form-control"
                                                                          list="#{'110数学':'110数学', '130力学', '130力学'}"
                                                                          tabindex="1">
                                                                </s:select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">活动类型</label>
                                                            <div class="col-md-5">
                                                                <select name="vertical.activityType"
                                                                        class="select2_category form-control"
                                                                        tabindex="1">
                                                                    <option value="Category 1" checked>实验发展</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">项目来源</label>
                                                            <div class="col-md-5">
                                                                <select name="vertical.projectSource"
                                                                        class="select2_category form-control"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
                                                                    <option value="Category 1" checked>省、市、自治区科技项目
                                                                    </option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">组织形式</label>
                                                            <div class="col-md-5">
                                                                <s:select name="vertical.organizationForm"
                                                                          class="select2_category form-control"
                                                                          list="#{'牵头单位':'牵头单位','合作单位':'合作单位'}"
                                                                          tabindex="1">
                                                                </s:select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">合作形式</label>
                                                            <div class="col-md-5">
                                                                <select name="vertical.collectiveForm"
                                                                        class="select2_category form-control"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
                                                                    <option value="Category 1" checked>与国内研究机构合作
                                                                    </option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">项目社会经济目标</label>
                                                            <div class="col-md-5">
                                                                <a data-target="#long" data-toggle="modal">
                                                                    <s:textfield name="vertical.socialTarget"
                                                                                 id="SocityEconomy"
                                                                                 type="text" data-target="#long"
                                                                                 class="form-control"
                                                                                 placeholder="项目社会经济目标"/>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">服务国民经济行业</label>
                                                            <div class="col-md-5">
                                                                <a data-target="#long2" data-toggle="modal">
                                                                    <s:textfield name="vertical.industry"
                                                                                 id="NationalEconomy"
                                                                                 type="text" data-target="#long2"
                                                                                 class="form-control"
                                                                                 placeholder="服务国民经济行业"/>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">课题基金号</label>
                                                            <div class="col-md-5">
                                                                <s:textfield name="vertical.fundAccount" type="text"
                                                                             class="form-control" placeholder="课题基金号"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <h3 class="form-section font-red-sunglo">审核信息</h3>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">审核时间</label>
                                                            <div class="col-md-5">
                                                                <input name="vertical.examineDate" type="date"
                                                                       value="<s:date name="vertical.examineDate" format="yyyy-MM-dd"/>"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">审核人</label>
                                                            <div class="col-md-5">
                                                                <s:textfield name="vertical.examinePeoName" type="text"
                                                                             class="form-control" placeholder="审核人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">立项时间</label>
                                                            <div class="col-md-5">
                                                                <input type="date" name="vertical.projectSetDate"
                                                                       value="<s:date name="vertical.projectSetDate" format="yyyy-MM-dd"/>"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">结题审核时间</label>
                                                            <div class="col-md-5">
                                                                <input name="vertical.endTopicExamineDate" type="date"
                                                                       value="<s:date name="vertical.endTopicExamineDate" format="yyyy-MM-dd"/>"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">登记人</label>
                                                            <div class="col-md-5">
                                                                <s:textfield type="text" class="form-control"
                                                                             name="vertical.registrationName"
                                                                             placeholder="登记人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">登记时间</label>
                                                            <div class="col-md-5">
                                                                <input type="date" name="vertical.registrationDate"
                                                                       value="<s:date name="vertical.registrationDate" format="yyyy-MM-dd"/>"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">审核结论</label>
                                                            <div class="col-md-5">
                                                                <s:select name="vertical.examineResult"
                                                                          class="select2_category form-control"
                                                                          list="#{'未通过':'未通过', '通过':'通过'}"
                                                                          tabindex="1">
                                                                </s:select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">立项结论</label>
                                                            <div class="col-md-5">
                                                                <s:select name="vertical.projectSetResult"
                                                                          class="select2_category form-control"
                                                                          list="#{'未通过':'未通过', '通过':'通过'}"
                                                                          tabindex="1">
                                                                </s:select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">申请结题</label>
                                                            <div class="col-md-5">
                                                                <s:select name="vertical.applicationEndTopic"
                                                                          class="select2_category form-control"
                                                                          list="#{'未通过':'未通过', '通过':'通过'}"
                                                                          tabindex="1">
                                                                </s:select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">结题审核</label>
                                                            <div class="col-md-5">
                                                                <s:select name="vertical.endTopicExamineResult"
                                                                          class="select2_category form-control"
                                                                          list="#{'未通过':'未通过', '通过':'通过'}"
                                                                          tabindex="1">
                                                                </s:select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-actions right" style="border:0px solid #000;">
                                                <div class="row">
                                                    <div class=" col-md-4">
                                                        <div class="form-group">
                                                            <a data-target="#long3" data-toggle="modal">
                                                                <button type="button" id="fundsBtn"
                                                                        class="btn blue "
                                                                        onclick="showHide3()">经费审核
                                                                </button>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-offset-0 col-md-6">
                                                        <button type="submit" class="btn green">提交</button>
                                                        <button type="submit" class="btn red">删除</button>
                                                        <button type="button" class="btn default">重置</button>
                                                    </div>
                                                </div>
                                            </div>

                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- view3 -->
                <div class="col-md-8" id="view3" style="display:none;">
                    <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_2">

                                <div class="portlet light ">
                                    <div class="portlet-body form">
                                        <!-- 已到位经费审核详情表单开始-->
                                        <form id="fundsForm" class="form-horizontal">
                                            <div class="form-body">
                                                <h3 class="form-section font-red-sunglo">已到位经费审核详情</h3>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-5 font-red-sunglo">课题名称</label>
                                                            <div class="col-md-7">
                                                                <input id="checkName" name="funds.verticalName"
                                                                       type="text" class="form-control"
                                                                       placeholder="课题名称"/>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-5 font-red-sunglo">批准金额(万元)</label>
                                                            <div class="col-md-7">
                                                                <input id="checkFunds" type="text"
                                                                       class="form-control"
                                                                       placeholder="累计到位经费（万元）">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-5">累计研发费（万元）</label>
                                                            <div class="col-md-7">
                                                                <input type="text" class="form-control"
                                                                       placeholder="累计研发费（万元）">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-5">累计设备费（万元）</label>
                                                            <div class="col-md-7">
                                                                <input type="text" class="form-control"
                                                                       placeholder="累计设备费（万元）">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-5">到位经费（万元）</label>
                                                            <div class="col-md-7">
                                                                <input id="intoFunds" name="funds.intoFunds" type="text"
                                                                       class="form-control" placeholder="项目负责人">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-5">其中研发费（万元）</label>
                                                            <div class="col-md-7">
                                                                <input id="rdExpenses" name="funds.rdExpenses"
                                                                       type="text"
                                                                       class="form-control" placeholder="项目负责人">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-5">其中设备费（万元）</label>
                                                            <div class="col-md-7">
                                                                <input id="equipmentExpenses"
                                                                       name="funds.equipmentExpenses"
                                                                       type="text" class="form-control"
                                                                       placeholder="项目负责人">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-5">到款时间</label>
                                                            <div class="col-md-7">
                                                                <input id="intoMoneyDate" name="funds.intoMoneyDate"
                                                                       type="date" class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-5">是否开具发票</label>
                                                            <div class="col-md-7">
                                                                <select id="isInvoice" name="funds.isInvoice"
                                                                        class="form-control">
                                                                    <option value="否">否</option>
                                                                    <option value="是">是</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <h3 class="form-section font-red-sunglo">已到位经费审核列表</h3>
                                                <table class="table table-striped table-bordered table-hover"
                                                       style="text-align:center;">
                                                    <thead>
                                                    <tr>
                                                        <th style="text-align:center;"> 序号</th>
                                                        <th style="text-align:center;"> 参与人</th>
                                                        <th style="text-align:center;">创建账号</th>
                                                        <th style="text-align:center;">研发费（万元）</th>
                                                        <th style="text-align:center;"> 设备费（万元）</th>
                                                        <th style="text-align:center;">研发账号</th>
                                                        <th style="text-align:center;">基金账号</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody id="detailBody">

                                                    </tbody>
                                                </table>
                                                <div class="form-actions right" style="border:0px solid #000;">
                                                    <div class="row" style="border:0px solid red;">
                                                        <div class="col-md-12 " style="border:0px solid green;">
                                                            <div class="col-md-12 " style="border:0px solid green;">
                                                                <div class="row">
                                                                    <div class="col-md-offset-3 col-md-9">
                                                                        <a class="btn green"
                                                                           onclick="showHide2()">纵向课题录入 </a>
                                                                        <a id="check" class="btn green">审核到位经费 </a>
                                                                        <button id="reset" type="reset"
                                                                                class="btn green">
                                                                            继续添加经费
                                                                        </button>
                                                                        <a id="save" class="btn green">保存</a>
                                                                        <a id="delete" class="btn red">删除经费</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <input type="hidden" id="id" name="funds.id"/>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- END SAMPLE FORM PORTLET-->
            </div>
        </div>
    </div>
    <!-- END PAGE CONTENT-->
    <!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- 弹出框 tree1 -->
<div class="portlet-body">
    <div id="long" class="modal fade modal-scroll" tabindex="-1" data-replace="true" style="height:375px;">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            <h4 class="modal-title">项目社会经济目标</h4>
        </div>
        <div class="modal-body">
            <div data-spy="scroll" data-target="#navbar-example2" data-offset="0" class="scrollspy-example">
                <div id="tree_1" class="tree-demo">
                    <ul>
                        <li data-jstree='{ "opened" : false }'>
                            项目社会经济目标
                            <ul>
                                <li data-jstree='{ "opened" : false }'>
                                    教授
                                    <ul>
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
                            <ul>
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
                            <ul>
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
            <button type="button" data-dismiss="modal" class="btn btn-success" id="buttonOk1">确定</button>
        </div>
    </div>
</div>
<!-- End弹出框 tree1 -->


<!-- 其他参与人弹窗 -->
<div id="otherPeopleWindow" class="modal fade" role="dialog" tabindex="-1" data-replace="true"
     style="width:750px;">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    </div>
    <div style="margin-left: 50px;">
        <div class="panel panel-primary select-all">
            <div class="panel-heading">
                <h2 class="panel-title">添加其他参与人</h2>
            </div>
            <div class="panel-body">
                <select class="form-control">
                    <option>1</option>
                    <option>1</option>
                    <option>1</option>
                    <option>1</option>
                    <option>1</option>
                </select>

                <div class="row select-pad">
                    <div class="select">
                        <ul id="select-list" class="list-group" style="overflow: auto;height: 100%;">
                        </ul>
                    </div>
                    <div class="menu">
                        <ul class="list-group text-center">
                            <a id="add" href="javascript:;" class="list-group-item" title="右移"><strong>＞＞</strong></a>
                            <a id="remove" href="javascript:;" class="list-group-item"
                               title="左移"><strong>＜＜</strong></a>
                        </ul>
                    </div>
                    <div id="selected" class="selected" style="overflow: auto;height: 100%;"></div>
                </div>

                <div class="row">
                    <div class="col-xs-offset-3 col-xs-6">
                        <input id="otherPeople" type="text" class="form-control col-xs-10" placeholder="添加成员姓名"/>
                    </div>
                    <button id="addOther" class="btn btn-danger">添加</button>
                </div>
            </div>
            <div class="panel-footer">
                <button id="success" class="btn btn-primary" style="margin-left:530px;">添加完成</button>
            </div>
        </div>
    </div>
</div>
<!-- 其他参与人弹窗/end -->

<%-- 选择负责人 --%>
<div class="portlet-body">
    <div id="long5" class="modal fade" tabindex="-1" data-replace="true"
         style="width:30%;height:60%;margin-top:-300px;">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="portlet light ">
                    <div id="treeDiv"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- BEGIN FOOTER -->
<div class="page-footer navbar-fixed-bottom">
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
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<script src="/lib/js/select.js"></script>
<script>
    function showHide() {
        var view1 = document.getElementById('view1');
        var view3 = document.getElementById('view3');
        var select1 = document.getElementById('select1');
        var select2 = document.getElementById('select2');
        var select3 = document.getElementById('select3');
        view1.style.display = "none";
        view3.style.display = "none";
        select1.style.display = "block";
        select2.style.display = "none";
        select3.style.display = "none";
    }
    function showHide2() {
        var view1 = document.getElementById('view1');
        var view3 = document.getElementById('view3');
        var select1 = document.getElementById('select1');
        var select2 = document.getElementById('select2');
        var select3 = document.getElementById('select3');
        view1.style.display = "block";
        view3.style.display = "none";
        select1.style.display = "block";
        select2.style.display = "none";
        select3.style.display = "none";
    }
    function showHide3() {
        var view1 = document.getElementById('view1');
        var view3 = document.getElementById('view3');
        var select1 = document.getElementById('select1');
        var select2 = document.getElementById('select2');
        var select3 = document.getElementById('select3');
        view1.style.display = "none";
        view3.style.display = "block";
        select1.style.display = "none";
        select2.style.display = "block";
        select3.style.display = "none";
    }
    function showHide4() {
        var view1 = document.getElementById('view1');
        var view3 = document.getElementById('view3');
        var select1 = document.getElementById('select1');
        var select2 = document.getElementById('select2');
        var select3 = document.getElementById('select3');
        view1.style.display = "none";
        view3.style.display = "none";
        select1.style.display = "none";
        select2.style.display = "none";
        select3.style.display = "block";
    }
    $(document).ready(function () {
        var value = "";
        var value2 = "";
        /*
         *tree_1 选中事件 由于存在png图片问题 所以提取字符串中文
         */
        $('#tree_1').on('changed.jstree', function (e, data) {
            //当前选中节点的id
            console.log(data.instance.get_node(data.selected[0]).id);
            var domId = data.instance.get_node(data.selected[0]).id;
            //当前选中节点的文本值
            console.log(data.instance.get_node(data.selected[0]).text);
            value = data.instance.get_node(data.selected[0]).text;

        });
        $("#buttonOk1").click(function () {
            //截取字符串中的中文部分
            var re = /[\u4e00-\u9fa5]/g
            var arr = value.match(re);
            var relValue = "";
            for (var i = 0; i < arr.length; i++) {
                relValue += arr[i];
            }
            $('#SocityEconomy').val(relValue);
        });
        /*
         *tree_2
         */
        $('#tree_2').on('changed.jstree', function (e, data) {
            //当前选中节点的id
            console.log(data.instance.get_node(data.selected[0]).id);
            var domId = data.instance.get_node(data.selected[0]).id;
            //当前选中节点的文本值
            console.log(data.instance.get_node(data.selected[0]).text);
            value2 = data.instance.get_node(data.selected[0]).text;

        });
        $("#buttonOk2").click(function () {
            //截取字符串中的中文部分
            var re = /[\u4e00-\u9fa5]/g
            var arr = value2.match(re);
            var relValue = "";
            for (var i = 0; i < arr.length; i++) {
                relValue += arr[i];
            }
            $('#NationalEconomy').val(relValue);
        });


        // 分页
        $('#pre').click(function () {
            $.get('/vertical/vertical_pre', function (data) {
                if (data == '-1') return;
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td><a href="/vertical/vertical/detail/' + o.id + '.html">' + o.VerticalName + '</a> </td>' +
                        '<td>' + o.VerticalHeaderName + '</td>' +
                        '<td><span class="label label-sm label-success">' + o.endTopicExamineResult + '</span></td>' +
                        '</tr>'
                }
                $('#tbody').html(content);
            });
        });

        $('#next').click(function () {
            $.get('/vertical/vertical_next', function (data) {
                if (data == '-1') return;
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td><a href="/vertical/vertical/detail/' + o.id + '.html">' + o.VerticalName + '</a> </td>' +
                        '<td>' + o.VerticalHeaderName + '</td>' +
                        '<td><span class="label label-sm label-success">' + o.endTopicExamineResult + '</span></td>' +
                        '</tr>'
                }
                $('#tbody').html(content);
            });
        });

        // 添加树
        $.get('/employee/employee/tree.html', function (data) {
            data = JSON.parse(data);
            window.d = new dTree('d');
            data.forEach(function (obj) {
                d.add(obj.id, obj.pid, obj.text, obj.url);
            });
            $('#treeDiv').html(d.toString());
        });

        // 到位经费信息注入并初始化列表信息
        $('#fundsBtn').click(function () {
            //课题名称：projectName
            //合同经费：funds
            //累计到位经费：fundsCount
            $('#checkName').val($('#projectName').val());
            $('#checkFunds').val($('#funds').val());

            fundsList();
        });

        //继续添加
        $('#reset').click(function () {
            // 重置表单后注入有用信息
            // 如果不设置演示操作，会导致不能注入值
            setTimeout(function () {
                $('#checkName').val($('#projectName').val());
                $('#checkFunds').val($('#funds').val());
                // 设置id
                $('#id').val('0');
            }, 10);
        });

        //提交经费表单
        $('#save').click(function () {
            $.ajax({
                type: "POST",
                contentType: "application/x-www-form-urlencoded;charset=UTF-8",
                url: '/vertical/vertical/saveF.html',
                data: $('#fundsForm').serialize(),
                success: function (data) {
                    // 重新获取funds list
                    fundsList();
                    if (data == 'ok') {
                        alert("操作成功");
                    } else {
                        alert("操作失败");
                    }
                },
                error: function (data) {
                    alert("error");
                }
            });
        });

        // 审核
        $('#check').click(function () {
            $.get('/vertical/vertical/checkFunds.html', function (data) {
                // 重新获取funds list
                fundsList();

                if (data == 'ok') {
                    alert("操作成功");
                } else {
                    alert("操作失败");
                }
            });
        });

        // 删除
        $('#delete').click(function () {
            $.get('/vertical/vertical/deleteFunds.html', function (data) {
                // 重新获取funds list
                fundsList();

                if (data == 'OK') {
                    alert("操作成功");
                } else {
                    alert("操作失败");
                }
            });
        });

        // 搜索
        $('#fundsSearch').click(function () {
            var fundsSelect = $('#fundsSelect').val();
            var search = {fundsSearch: fundsSelect};
            fundsList('/vertical/vertical_searchF', search);
        });
    });

    // 处理employee树
    function employeeTree(name) {
        $('#treePeople').val(name);
        $.post('/employee_unitName', {name: name}, function (data) {
            $('#peopleUnit').val(data);
        });
    }

    /**
     * 初始化funds列表并绑定事件
     */
    function fundsList(url, search) {
        url = url || '/vertical/vertical/fundsList.html';
        search = search || {};
        $.post(url, search, function (data) {
            data = JSON.parse(data);
            var str = '';
            var i = 1;
            data.forEach(function (item) {
                str += '<tr class="odd gradeX"><td>' + (i++) + '</td><td><a class="detail" href="#" data-id="' + item.id + '">' + item.explain + ' </a></td><td><span class="label label-sm label-success">' + item.state + ' </span></td></tr>'
            })
            $('#fundsBody').html(str);

            // 添加监听事件
            $('.detail').click(function () {
                var id = $(this).attr('data-id');
                $.get('/vertical/vertical_fundsDetail?fundsId=' + id, function (data) {
                    data = JSON.parse(data);
                    $('#intoFunds').val(data.intoFunds);
                    $('#rdExpenses').val(data.rdExpenses);
                    $('#equipmentExpenses').val(data.equipmentExpenses);
                    $('#intoMoneyDate').val(data.intoMoneyDate);
                    $('#isInvoice').val(data.isInvoice);
                    $('#id').val(data.id);
                    var str = '<tr class="odd gradeX"><td>1</td><td><a href="#">'
                        + data.registerPeoName + '</a></td>' +
                        '<td><span class="label label-sm label-danger">是</span></td><td>' + data.intoFunds + '</td><td>' + data.equipmentExpenses + '</td>' +
                        '<td>123456</td><td>9001-115148</td></tr>';
                    $('#detailBody').html(str);
                });
            });
        });
    }
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>