<%--
  Created by IntelliJ IDEA.
  User: sunming
  Date: 2016/12/5
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.4
Version: 3.2.0
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>科研成果相关</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet"
          type="text/css">
    <link href="/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
    <link href="/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css" href="/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css"/>
    <link rel="stylesheet" type="text/css"
          href="/assets/global/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" type="text/css" href="/assets/global/plugins/bootstrap-summernote/summernote.css">
    <link rel="stylesheet" type="text/css"
          href="/assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="/assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css">
    <link href="/assets/global/css/plugins.css" rel="stylesheet" type="text/css">
    <link href="/assets/admin/layout3/css/layout.css" rel="stylesheet" type="text/css">
    <link href="/assets/admin/layout3/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color">
    <link href="/assets/admin/layout3/css/custom.css" rel="stylesheet" type="text/css">
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->
<body>
<!-- BEGIN HEADER -->
<div class="page-header">
    <!-- BEGIN HEADER TOP -->
    <div class="page-header-top">
        <div class="container">
            <!-- BEGIN LOGO -->
            <div class="page-logo">
                <a href="index.html"><img src="/assets/admin/layout3/img/logo-default.png" alt="logo"
                                          class="logo-default"></a>
            </div>
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="menu-toggler"></a>
            <!-- END RESPONSIVE MENU TOGGLER -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <div class="top-menu">
                <ul class="nav navbar-nav pull-right">
                    <!-- BEGIN NOTIFICATION DROPDOWN -->
                    <li class="dropdown dropdown-extended dropdown-dark dropdown-notification"
                        id="header_notification_bar">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
                            <i class="icon-bell"></i>

                        </a>
                    </li>
                    <!-- END NOTIFICATION DROPDOWN -->
                    <!-- BEGIN TODO DROPDOWN -->
                    <li class="dropdown dropdown-extended dropdown-dark dropdown-tasks" id="header_task_bar">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
                            <i class="icon-calendar"></i>
                        </a>
                    </li>
                    <!-- END TODO DROPDOWN -->
                    <li class="droddown dropdown-separator">
                        <span class="separator"></span>
                    </li>
                    <!-- BEGIN INBOX DROPDOWN -->

                    <!-- END INBOX DROPDOWN -->
                    <!-- BEGIN USER LOGIN DROPDOWN -->
                    <li class="dropdown dropdown-user dropdown-dark">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
                            <img alt="" class="img-circle" src="/assets/admin/layout3/img/avatar9.jpg">
                            <span class="username username-hide-mobile">Nick</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-default">
                            <li>
                                <a href="extra_profile.html">
                                    <i class="icon-user"></i> My Profile </a>
                            </li>
                            <li>
                                <a href="page_calendar.html">
                                    <i class="icon-calendar"></i> My Calendar </a>
                            </li>
                            <li>
                                <a href="inbox.html">
                                    <i class="icon-envelope-open"></i> My Inbox <span class="badge badge-danger">
								3 </span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-rocket"></i> My Tasks <span class="badge badge-success">
								7 </span>
                                </a>
                            </li>
                            <li class="divider">
                            </li>
                            <li>
                                <a href="extra_lock.html">
                                    <i class="icon-lock"></i> Lock Screen </a>
                            </li>
                            <li>
                                <a href="login.html">
                                    <i class="icon-key"></i> Log Out </a>
                            </li>
                        </ul>
                    </li>
                    <!-- END USER LOGIN DROPDOWN -->
                </ul>
            </div>
            <!-- END TOP NAVIGATION MENU -->
        </div>
    </div>
    <!-- END HEADER TOP -->
    <!-- BEGIN HEADER MENU -->
    <div class="page-header-menu">
        <div class="container">
            <!-- BEGIN HEADER SEARCH BOX -->
            <form class="search-form" action="extra_search.html" method="GET">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search" name="query">
                    <span class="input-group-btn">
					<a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
					</span>
                </div>
            </form>
            <!-- END HEADER SEARCH BOX -->
            <!-- BEGIN MEGA MENU -->
            <!-- DOC: Apply "hor-menu-light" class after the "hor-menu" class below to have a horizontal menu with white background -->
            <!-- DOC: Remove data-hover="dropdown" and data-close-others="true" attributes below to disable the dropdown opening on mouse hover -->
            <div class="hor-menu ">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="index.html">主页</a>
                    </li>
                    <li class="menu-dropdown classic-menu-dropdown ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown"
                           href="javascript:;">
                            基础数据管理 <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-left">
                            <li class="">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    教工基本信息 </a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-dropdown classic-menu-dropdown ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown"
                           href="javascript:;">
                            日常工作 <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-left">
                            <li class=" ">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    横向课题相关 </a>
                            </li>
                            <li class=" ">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    纵向课题相关 </a>
                            </li>
                            <li class=" ">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    论文成果相关 </a>
                            </li>
                            <li class=" ">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    著作成果相关 </a>
                            </li>
                            <li class=" ">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    专利成果相关 </a>
                            </li>
                            <li class="active ">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    科研奖励相关 </a>
                            </li>
                            <li class=" ">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    软件著作权相关 </a>
                            </li>

                        </ul>
                    </li>
                    <li class="menu-dropdown classic-menu-dropdown ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown"
                           href="javascript:;">
                            个人查询统计 <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-left">
                            <li class=" ">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    横向经费 </a>
                            </li>
                            <li class=" ">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    横向工作量 </a>
                            </li>
                            <li class=" ">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    纵向课题 </a>
                            </li>
                            <li class=" ">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    论文成果 </a>
                            </li>
                            <li class=" ">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    著作成果 </a>
                            </li>
                            <li class=" ">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    专利成果 </a>
                            </li>
                            <li class=" ">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    科研奖励 </a>
                            </li>
                            <li class=" ">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    软件著作权 </a>
                            </li>

                        </ul>
                    </li>
                </ul>
            </div>
            <!-- END MEGA MENU -->
        </div>
    </div>
    <!-- END HEADER MENU -->
</div>
<!-- END HEADER -->
<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
    <!-- BEGIN PAGE HEAD -->

    <!-- END PAGE HEAD -->
    <!-- BEGIN PAGE CONTENT -->
    <div class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <h3 class="form-section font-red-sunglo">科研成果信息查找</h3>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="table-toolbar">
                                <div class="row">
                                    <form role="form" action="/research/research/usearch.html" method="post">
                                        <div class="form-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <table id="user" class="table table-bordered  "
                                                           style="text-align:center;">
                                                        <tbody>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                年度
                                                            </td>
                                                            <td style="width:70%">
                                                                <div>
                                                                    <div class="input-group date form_year col-md-12">
                                                                        <input name="search.date" type="month"
                                                                               class="form-control">
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                审核情况
                                                            </td>
                                                            <td style="width:15%">
                                                                <select name="search.state"
                                                                        class="select2_category form-control">
                                                                    <option value="所有" checked>所有</option>
                                                                    <option value="已通过">已通过</option>
                                                                    <option value="待审核">待审核</option>
                                                                    <option value="未通过">未通过</option>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                项目名称
                                                            </td>
                                                            <td style="width:15%">
                                                                <input name="search.projectName" type="text"
                                                                       class="form-control" placeholder="项目名称"/>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                归属单位
                                                            </td>
                                                            <td style="width:15%">
                                                                <select name="search.belong"
                                                                        class="select2_category form-control">
                                                                    <option value="" checked></option>
                                                                    <option value="农业工程与食品科学学院">农业工程与食品科学学院</option>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <button class="btn btn-block btn-primary">搜索</button>
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
                                                                        奖励成功名称
                                                                    </th>
                                                                    <th style="text-align:center;">
                                                                        完成情况
                                                                    </th>
                                                                </tr>
                                                                </thead>
                                                                <tbody id="tbody">
                                                                <c:forEach var="o" items="${pageList}">
                                                                    <tr class="odd gradeX">
                                                                        <td>
                                                                                ${o.id}
                                                                        </td>
                                                                        <td>
                                                                            <a href="/research/research/udetail/${o.id}.html">
                                                                                    ${o.researchName} </a>
                                                                        </td>
                                                                        <td>
                                                                                ${o.examineResult}
                                                                        </td>
                                                                    </tr>
                                                                </c:forEach>
                                                                </tbody>
                                                            </table>

                                                        </div>
                                                        <!-- END EXAMPLE TABLE PORTLET-->
                                                        <div style="float:right;">
                                                            <ul class="pagination">
                                                                <li id="pre"><a>上一页</a></li>
                                                                <li id="next"><a>下一页</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END EXAMPLE TABLE PORTLET-->
                </div>
            </div>

            <div class="col-md-13">
                <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_2">

                            <div class="portlet light ">

                                <div class="portlet-body form">
                                    <!-- BEGIN FORM-->
                                    <form name="form" class="form-horizontal" method="post">
                                        <s:hidden name="scientificResearchReward.id"/>
                                        <div class="form-body">
                                            <h3 class="form-section font-red-sunglo">科研成果信息录入</h3>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 font-red-sunglo">奖励名称</label>
                                                        <div class="col-md-8">
                                                            <s:textfield name="scientificResearchReward.researchName" type="text"
                                                                         class="form-control" placeholder="奖励名称"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">证书编号</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="scientificResearchReward.researchId" type="text"
                                                                         class="form-control" placeholder="证书编号"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">授奖部门</label>
                                                        <div class="col-md-6">
                                                            <s:select name="scientificResearchReward.awardDepartment"
                                                                      class="select2_category form-control"
                                                                      list="#{
                                                                    '国务院':'国务院',
                                                                    '教育部':'教育部',
                                                                    '山东省人民政府':'山东省人民政府',
                                                                    '山东省教育厅':'山东省教育厅',
                                                                    '淄博市人民政府':'淄博市人民政府',
                                                                    '山东理工大学':'山东理工大学',
                                                                    '其他':'其他'
                                                                    }"
                                                            />
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->

                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">首位完成人单位</label>
                                                        <div class="col-md-6">
                                                            <s:select name="scientificResearchReward.unitName"
                                                                      class="select2_category form-control"
                                                                      list="#{
                                                                    '农业工程与食品科学学院':'农业工程与食品科学学院'
                                                                    }"
                                                            />
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">首位完成人</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="scientificResearchReward.completePeoName" type="text"
                                                                         class="form-control" placeholder="首位完成人"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->

                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">获奖日期</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_year col-md-12">
                                                                <input name="scientificResearchReward.awardYear"
                                                                       value="<s:date name="scientificResearchReward.awardYear" format="yyyy-MM-dd" />"
                                                                       type="date" class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">获奖类别</label>
                                                        <div class="col-md-6">
                                                            <s:select name="scientificResearchReward.awardType"
                                                                      class="select2_category form-control"
                                                                      list="#{
                                                                    '国家最高科学技术奖':'国家最高科学技术奖',
                                                                    '国家自然科学奖':'国家自然科学奖',
                                                                    '国家技术发明奖':'国家技术发明奖',
                                                                    '国家科技进步奖':'国家科技进步奖',
                                                                    '山东省最高科学技术奖':'山东省最高科学技术奖',
                                                                    '山东省自然科学奖':'山东省自然科学奖',
                                                                    '山东省自然科学奖':'山东省自然科学奖',
                                                                    '山东省技术发明奖':'山东省技术发明奖',
                                                                    '山东省科技进步奖':'山东省科技进步奖',
                                                                    '高等学校科学研究优秀成果奖（科学技术）自然科学奖':'高等学校科学研究优秀成果奖（科学技术）自然科学奖',
                                                                    '高等学校科学研究优秀成果奖（科学技术）技术发明奖':'高等学校科学研究优秀成果奖（科学技术）技术发明奖',
                                                                    '高等学校科学研究优秀成果奖（科学技术）科技进步奖':'高等学校科学研究优秀成果奖（科学技术）科技进步奖',
                                                                    '高等学校科学研究优秀成果奖（科学技术）专利奖':'高等学校科学研究优秀成果奖（科学技术）专利奖',
                                                                    '高等学校科学研究优秀成果奖（自然科学类）':'高等学校科学研究优秀成果奖（自然科学类）',
                                                                    '校科技进步奖':'校科技进步奖',
                                                                    '淄博市技术发明奖':'淄博市技术发明奖',
                                                                    '淄博市科技进步奖':'淄博市科技进步奖',
                                                                    '校科技进步奖':'校科技进步奖',
                                                                    '国际合作奖':'国际合作奖',
                                                                    '其他':'其他'
                                                                    }"
                                                            />
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->

                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">奖励级别</label>
                                                        <div class="col-md-6">
                                                            <s:select name="scientificResearchReward.rewardGrade"
                                                                      class="select2_category form-control"
                                                                      list="#{
                                                                    '特等奖':'特等奖',
                                                                    '一等奖':'一等奖',
                                                                    '二等奖':'二等奖',
                                                                    '三等奖':'三等奖',
                                                                    '其他':'其他'
                                                                    }"
                                                            />
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">津贴发放年度</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_year2 col-md-13"
                                                                 data-date="" data-date-format="yyyy">
                                                                <input type="date" name="scientificResearchReward.allowance"
                                                                       value="<s:date name="scientificResearchReward.allowance" format="yyyy-MM-dd"/>"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->

                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">单位排名</label>
                                                        <div class="col-md-6">
                                                            <s:select name="scientificResearchReward.unitOrder"
                                                                      class="select2_category form-control"
                                                                      list="#{
                                                                          '第一单位':'第一单位',
                                                                          '第二单位':'第二单位',
                                                                          '第三单位':'第三单位',
                                                                          '第四单位':'第四单位',
                                                                          '第五单位':'第五单位',
                                                                          '第六单位':'第六单位',
                                                                          '第七单位':'第七单位',
                                                                          '第八单位':'第八单位',
                                                                          '第九单位':'第九单位',
                                                                          '第十单位':'第十单位'
                                                                          }"
                                                            />
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">备注</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="scientificResearchReward.remark" type="text"
                                                                         class="form-control" placeholder="备注"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->

                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">其他完成人</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="scientificResearchReward.otherMemberName" type="text"
                                                                         class="form-control" placeholder="其他完成人<"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">登记人</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="scientificResearchReward.registerPeoName" type="text"
                                                                         class="form-control" placeholder="登记人"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->

                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">登记时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_day2 col-md-13"
                                                                 data-date="" data-date-format="yyyy/mm/dd">
                                                                <input name="scientificResearchReward.registerDate"
                                                                       value="<s:date name="scientificResearchReward.registerDate"/>"
                                                                       type="date" size="16" class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">单位证书附件</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="scientificResearchReward.unitDiplomaAnnexesName"
                                                                         type="text" class="form-control"
                                                                         placeholder="单位证书附件"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->

                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">审核结论</label>
                                                        <div class="col-md-6">
                                                            <s:select name="scientificResearchReward.examineResult"
                                                                      class="select2_category form-control"
                                                                      data-placeholder="Choose a Category"
                                                                      list="#{
                                                                    '通过':'通过',
                                                                    '未通过':'未通过',
                                                                    '待审核':'待审核'
                                                                    }"
                                                            />
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">审核时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_day2 col-md-13"
                                                                 data-date="" data-date-format="yyyy/mm/dd">
                                                                <input name="scientificResearchReward.examineDate"
                                                                       value="<s:date name="scientificResearchReward.examineDate" format="yyyy-MM-dd"/>"
                                                                       type="date" size="16" class="form-control">
                                                            </div>
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
                                                            <a href="javascript:form.action='/research/research/save.html';form.submit()"
                                                               class="btn green">提交</a>
                                                            <a href="javascript:form.action='/research/research/delete.html';form.submit()"
                                                               class="btn red">删除</a>
                                                            <button type="reset" class="btn default">重置</button>
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
    <!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->
<!-- BEGIN PRE-FOOTER -->
<div class="page-prefooter">
    <div class="container">

        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                <h2>About</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam dolore.
                </p>
            </div>
            <div class="col-md-3 col-sm-6 col-xs12 footer-block">
                <h2>Subscribe Email</h2>
                <div class="subscribe-form">
                    <form action="javascript:;">
                        <div class="input-group">
                            <input type="text" placeholder="mail@email.com" class="form-control">
                            <span class="input-group-btn">
							<button class="btn" type="submit">Submit</button>
							</span>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                <h2>Follow Us On</h2>
                <ul class="social-icons">
                    <li>
                        <a href="javascript:;" data-original-title="rss" class="rss"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="facebook" class="facebook"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="twitter" class="twitter"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="googleplus" class="googleplus"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="linkedin" class="linkedin"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="youtube" class="youtube"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="vimeo" class="vimeo"></a>
                    </li>
                </ul>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                <h2>Contacts</h2>
                <address class="margin-bottom-40">
                    Phone: 800 123 3456<br>
                    Email: <a href="mailto:info@metronic.com">info@metronic.com</a>
                </address>
            </div>
        </div>
    </div>
</div>
<!-- END PRE-FOOTER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
    <div class="container">
        2014 &copy; Metronic by keenthemes. <a
            href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"
            title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase
        Metronic!</a>
    </div>
</div>
<div class="scroll-to-top">
    <i class="icon-arrow-up"></i>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="/assets/global/plugins/respond.min.js"></script>
<script src="/assets/global/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="/assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
        type="text/javascript"></script>
<script src="/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="/assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
<script type="text/javascript" src="/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
<script src="/assets/global/plugins/bootstrap-markdown/lib/markdown.js" type="text/javascript"></script>
<script src="/assets/global/plugins/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
<script src="/assets/global/plugins/bootstrap-summernote/summernote.min.js" type="text/javascript"></script>
<script type="text/javascript"
        src="/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<script type="text/javascript"
        src="/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="/assets/admin/layout3/scripts/layout.js" type="text/javascript"></script>
<script src="/assets/admin/layout3/scripts/demo.js" type="text/javascript"></script>
<script src="/assets/admin/pages/scripts/components-editors.js"></script>
<script src="/assets/admin/pages/scripts/components-pickers.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function () {
        // initiate layout and plugins
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Demo.init(); // init demo features
        ComponentsEditors.init();
        ComponentsPickers.init();

        // 分页
        $('#pre').click(function () {
            $.get('/research/research/pre.html', function (data) {
                console.log(data)
                if(data == '-1') return;
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td><a href="/research/research/udetail/' + o.id + '.html">' + o.researchName + '</a> </td>' +
                        '<td>' + o.examineResult + '</td>' +
                        '</tr>'
                }
                $('#tbody').html(content);
            });
        });

        $('#next').click(function () {
            $.get('/research/research/next.html', function (data) {
                console.log(data)
                if(data == '-1') return;
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td><a href="/research/research/udetail/' + o.id + '.html">' + o.researchName + '</a> </td>' +
                        '<td>' + o.examineResult + '</td>' +
                        '</tr>'
                }
                $('#tbody').html(content);
            });
        });
    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>