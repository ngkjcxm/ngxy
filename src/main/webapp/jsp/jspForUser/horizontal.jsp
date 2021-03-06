<%--
  Created by IntelliJ IDEA.
  User: sunming
  Date: 2016/12/5
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>横向课题相关</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css">
    <link href="../../assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css" href="../../assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css"/>
    <link rel="stylesheet" type="text/css" href="../../assets/global/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/global/plugins/bootstrap-summernote/summernote.css">
    <link rel="stylesheet" type="text/css" href="../../assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="../../assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css">
    <link href="../../assets/global/css/plugins.css" rel="stylesheet" type="text/css">
    <link href="../../assets/admin/layout3/css/layout.css" rel="stylesheet" type="text/css">
    <link href="../../assets/admin/layout3/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color">
    <link href="../../assets/admin/layout3/css/custom.css" rel="stylesheet" type="text/css">
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
                <a href="index.html"><img src="../../assets/admin/layout3/img/logo-default.png" alt="logo" class="logo-default"></a>
            </div>
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="menu-toggler"></a>
            <!-- END RESPONSIVE MENU TOGGLER -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <div class="top-menu">
                <ul class="nav navbar-nav pull-right">
                    <!-- BEGIN NOTIFICATION DROPDOWN -->
                    <li class="dropdown dropdown-extended dropdown-dark dropdown-notification" id="header_notification_bar">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <i class="icon-bell"></i>

                        </a>
                    </li>
                    <!-- END NOTIFICATION DROPDOWN -->
                    <!-- BEGIN TODO DROPDOWN -->
                    <li class="dropdown dropdown-extended dropdown-dark dropdown-tasks" id="header_task_bar">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
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
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <img alt="" class="img-circle" src="../../assets/admin/layout3/img/avatar9.jpg">
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
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown" href="javascript:;">
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
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown" href="javascript:;">
                            日常工作 <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-left">
                            <li class="active ">
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
                            <li class=" ">
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
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown" href="javascript:;">
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
                                <h3 class="form-section font-red-sunglo">横向课题信息查找</h3>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="table-toolbar">
                                <div class="row">
                                    <form role="form">
                                        <div class="form-body">
                                            <div class="row col-md-12" >
                                                <div class="col-md-12">
                                                    <table id="user" class="table table-bordered  " style="text-align:center;" >
                                                        <tbody>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;" >
                                                                到款时间
                                                            </td>
                                                            <td style="width:70%">
                                                                <div class="input-group date form_month col-md-13"  data-date="" data-date-format="yyyy/mm/dd">
                                                                    <input type="text" size="16" class="form-control">
                                                                    <span class="input-group-btn">
																		<button class="btn default date-set" type="button"><i class="fa fa-calendar"></i></button>
																		</span>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                签订时间
                                                            </td>
                                                            <td style="width:15%">
                                                                <div class="input-group date form_month col-md-13"  data-date="" data-date-format="yyyy/mm/dd">
                                                                    <input type="text" size="16" class="form-control">
                                                                    <span class="input-group-btn">
																		<button class="btn default date-set" type="button"><i class="fa fa-calendar"></i></button>
																		</span>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                审核情况
                                                            </td>
                                                            <td style="width:15%">
                                                                <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
                                                                    <option value="Category 1" checked>所有</option>
                                                                    <option value="Category 2">已结题</option>
                                                                    <option value="Category 3">待结题</option>
                                                                    <option value="Category 4">未通过</option>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                项目名称
                                                            </td>
                                                            <td style="width:15%">
                                                                <input type="text" class="form-control" placeholder="项目名称">
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            <div  style="height:320px;">
                                                <div class="row col-md-12" >
                                                    <div class="col-md-12 col-sm-12">
                                                        <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                                        <div class="portlet-body">
                                                            <table class="table table-striped table-bordered table-hover" id="sample_2" style="text-align:center;">
                                                                <thead>
                                                                <tr>
                                                                    <th style="text-align:center;">
                                                                        序号
                                                                    </th>
                                                                    <th style="text-align:center;">
                                                                        项目名称
                                                                    </th>
                                                                    <th style="text-align:center;">
                                                                        完成情况
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
																		已结题 </span>
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
																		待结题</span>
                                                                    </td>
                                                                </tr>
                                                                <tr class="odd gradeX">

                                                                    <td>
                                                                        3
                                                                    </td>
                                                                    <td>
                                                                        <a href="#">
                                                                            333333 </a>
                                                                    </td>
                                                                    <td>
																		<span class="label label-sm label-danger">
																		待结题 </span>
                                                                    </td>
                                                                </tr>
                                                                <tr class="odd gradeX">

                                                                    <td>
                                                                        4
                                                                    </td>
                                                                    <td>
                                                                        <a href="#">
                                                                            444444 </a>
                                                                    </td>
                                                                    <td>
																		<span class="label label-sm label-default">
																		未通过 </span>
                                                                    </td>
                                                                </tr>
                                                                <tr class="odd gradeX">

                                                                    <td>
                                                                        5
                                                                    </td>
                                                                    <td>
                                                                        <a href="#">
                                                                            555555 </a>
                                                                    </td>
                                                                    <td>
																		<span class="label label-sm label-success">
																		已结题 </span>
                                                                    </td>
                                                                </tr>
                                                                <tr class="odd gradeX">

                                                                    <td>
                                                                        6
                                                                    </td>
                                                                    <td>
                                                                        <a href="#">
                                                                            666666 </a>
                                                                    </td>
                                                                    <td>
																		<span class="label label-sm label-success">
																		已结题 </span>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>

                                                        </div>
                                                        <!-- END EXAMPLE TABLE PORTLET-->
                                                        <div style="float:right;">
                                                            <ul class="pagination">
                                                                <li><a href="#">&laquo;</a></li>
                                                                <li><a href="#">1</a></li>
                                                                <li><a href="#">2</a></li>
                                                                <li><a href="#">3</a></li>
                                                                <li><a href="#">4</a></li>
                                                                <li><a href="#">5</a></li>
                                                                <li><a href="#">&raquo;</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions right"style="border:0px solid #000;">
                                            <div class="row" style="border:0px solid red;">
                                                <div class="col-md-6 " style="border:0px solid green;">
                                                    <div class="row">
                                                        <div class="col-md-offset-11 col-md-4">
                                                            <button type="submit" class="btn green"> <a href="#5F" style="color:#ffffff;text-decoration: none;">进行查询</a></button>
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
                                    <form action="#" class="form-horizontal">
                                        <div class="form-body">
                                            <!--锚点链接 -->
                                            <a name="5F" style="color:#ffffff;text-decoration: none;"> </a>
                                            <h3 class="form-section font-red-sunglo">横向课题信息详情</h3>
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">项目名称</label>
                                                        <div class="col-md-6">
                                                            <input type="text" class="form-control" placeholder="项目名称">

                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group ">
                                                        <label class="control-label col-md-4 font-red-sunglo">委托方</label>
                                                        <div class="col-md-6">
                                                            <input type="text" class="form-control" placeholder="委托方">

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
                                                        <div class="col-md-6">
                                                            <input type="text" class="form-control" placeholder="项目负责人单位">
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">项目负责人</label>
                                                        <div class="col-md-6">
                                                            <input type="text" class="form-control" placeholder="项目负责人">
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
                                                        <label class="control-label col-md-6 font-red-sunglo">合同经费(万元)</label>
                                                        <div class="col-md-6">
                                                            <input type="text" class="form-control" placeholder="合同经费(万元)">
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">合同时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_month col-md-13"  data-date="" data-date-format="yyyy/mm">
                                                                <input type="text" size="16" class="form-control">
                                                                <span class="input-group-btn">
																<button class="btn default date-set" type="button"><i class="fa fa-calendar"></i></button>
																</span>
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
                                                        <label class="control-label col-md-6 ">累计到位经费（万元）</label>
                                                        <div class="col-md-6">
                                                            <input type="text" class="form-control" placeholder="累计到位经费（万元）">
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">累计工作量（万元）</label>
                                                        <div class="col-md-6">
                                                            <input type="text" class="form-control" placeholder="累计工作量（万元）">
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
                                                        <label class="control-label col-md-6 ">有效期限（开始）</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_month col-md-13"  data-date="" data-date-format="yyyy/mm">
                                                                <input type="text" size="16" class="form-control">
                                                                <span class="input-group-btn">
																<button class="btn default date-set" type="button"><i class="fa fa-calendar"></i></button>
																</span>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">有效期限（结束）</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_month col-md-13"  data-date="" data-date-format="yyyy/mm">
                                                                <input type="text" size="16" class="form-control">
                                                                <span class="input-group-btn">
																<button class="btn default date-set" type="button"><i class="fa fa-calendar"></i></button>
																</span>
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
                                                        <label class="control-label col-md-6 ">签约地点</label>
                                                        <div class="col-md-6">
                                                            <input type="text" class="form-control" placeholder="签约地点">
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">项目类型</label>
                                                        <div class="col-md-6">
                                                            <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
                                                                <option value="Category 1" checked>技术开发</option>
                                                                <option value="Category 2">技术咨询</option>
                                                                <option value="Category 3">技术转让</option>
                                                                <option value="Category 4">技术服务</option>
                                                            </select>
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
                                                        <label class="control-label col-md-6 ">合同编号</label>
                                                        <div class="col-md-6">
                                                            <input type="email" class="form-control" placeholder="合同编号">
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">合同份数</label>
                                                        <div class="col-md-6">
                                                            <input type="text" class="form-control" placeholder="合同份数">
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
                                                        <label class="control-label col-md-6 ">其他参与成员</label>
                                                        <div class="col-md-6">
                                                            <input type="text" class="form-control" placeholder="其他参与成员">
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->

                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 ">备注</label>
                                                        <div class="col-md-8">
                                                            <input type="text" class="form-control" placeholder="备注">

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">立项结论</label>
                                                        <div class="col-md-6">
                                                            <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
                                                                <option value="Category 1" checked>通过</option>
                                                                <option value="Category 2">未通过</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">是否结题</label>
                                                        <div class="col-md-6">
                                                            <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
                                                                <option value="Category 1" checked>已结题</option>
                                                                <option value="Category 2">未结题</option>
                                                            </select>
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
                                                        <label class="control-label col-md-6 ">结题时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_month2 col-md-13"  data-date="" data-date-format="yyyy/mm">
                                                                <input type="text" size="16" class="form-control">
                                                                <span class="input-group-btn">
																<button class="btn default date-set" type="button"><i class="fa fa-calendar"></i></button>
																</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                        </div>
                                        <div class="form-actions right"style="border:0px solid #000;">
                                            <div class="row" style="border:0px solid red;">
                                                <div class="col-md-12 " style="border:0px solid green;">
                                                    <div class="row">
                                                        <div class="col-md-offset-3 col-md-9">
                                                            <button type="submit" class="btn blue">录入到位经费</button>
                                                            <button type="submit" class="btn blue">录入到位工作量</button>
                                                            <button type="submit" class="btn yellow">附件上传</button>
                                                            <button type="submit" class="btn green">修改</button>
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
        2014 &copy; Metronic by keenthemes. <a href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes" title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase Metronic!</a>
    </div>
</div>
<div class="scroll-to-top">
    <i class="icon-arrow-up"></i>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="../../assets/global/plugins/respond.min.js"></script>
<script src="../../assets/global/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="../../assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="../../assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="../../assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="../../assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../../assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="../../assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="../../assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="../../assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="../../assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="../../assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
<script type="text/javascript" src="../../assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
<script src="../../assets/global/plugins/bootstrap-markdown/lib/markdown.js" type="text/javascript"></script>
<script src="../../assets/global/plugins/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
<script src="../../assets/global/plugins/bootstrap-summernote/summernote.min.js" type="text/javascript"></script>
<script type="text/javascript" src="../../assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="../../assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="../../assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="../../assets/admin/layout3/scripts/layout.js" type="text/javascript"></script>
<script src="../../assets/admin/layout3/scripts/demo.js" type="text/javascript"></script>
<script src="../../assets/admin/pages/scripts/components-editors.js"></script>
<script src="../../assets/admin/pages/scripts/components-pickers.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function() {
        // initiate layout and plugins
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Demo.init(); // init demo features
        ComponentsEditors.init();
        ComponentsPickers.init();

    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>