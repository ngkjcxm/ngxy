<%--
  Created by IntelliJ IDEA.
  User: sunmig
  Date: 2016/11/27
  Time: 14:42
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
    <title>横向课题经费统计</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet"
          type="text/css">
    <link href="../../assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet"
          type="text/css">
    <link href="../../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
    <link href="../../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet"
          type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css" href="../../assets/global/plugins/jstree/dist/themes/default/style.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="../../assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>
    <!-- END PAGE LEVEL STYLES -->
    <!--弹窗Css -->
    <link href="../../assets/global/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" rel="stylesheet"
          type="text/css"/>
    <link href="../../assets/global/plugins/bootstrap-modal/css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>
    <!--End弹窗Css -->
    <!-- BEGIN THEME STYLES -->
    <link href="../../assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css"/>
    <link href="../../assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
    <link id="style_color" href="../../assets/admin/layout4/css/themes/light.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->

<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
<%@ include file="../publicHead/listUI.jsp" %>
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
    <!-- BEGIN HEADER INNER -->
    <!-- END HEADER INNER -->
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
    <!-- BEGIN CONTENT Gao-->
    <div class="page-content-wrapper">
        <div class="page-content">

            <!-- BEGIN PAGE HEADER-->
            <!-- BEGIN PAGE HEAD -->
            <div class="page-head">
                <!-- BEGIN PAGE TITLE -->
                <div class="page-title">
                    <h1>横向课题经费统计</h1>
                </div>
                <!-- END PAGE TITLE -->
            </div>
            <!-- END PAGE HEAD -->
            <!-- BEGIN PAGE BREADCRUMB -->
            <ul class="page-breadcrumb breadcrumb">
                <li>
                    <i class="fa fa-circle"></i>
                    <a style="text-decoration:none;">查询统计信息</a>
                </li>
                <li>
                    <i class="fa fa-circle"></i>
                    <a style="text-decoration:none;">横向课题经费统计</a>
                </li>
            </ul>
            <!-- END PAGE BREADCRUMB -->
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT Li-->
            <div class="row">
                <div class="col-md-8">
                    <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                        <div class="tab-content">

                            <form id="horizontalFunds" name="horizontalFunds">
                                <div class="tab-pane active" id="tab_2">
                                    <div class="portlet light ">
                                        <div class="portlet-body form">
                                            <!-- BEGIN FORM-->
                                            <div class="form-body">
                                                <h3 class="form-section font-red-sunglo">横向课题经费统计</h3>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">项目承接学院</label>
                                                            <div class="col-md-6">
                                                                <input type="text" name="horizontalFundsSearch.unitName"
                                                                       id="unitName"
                                                                       class="form-control" placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">项目名称</label>
                                                            <div class="col-md-6">
                                                                <input type="text"
                                                                       name="horizontalFundsSearch.horizontalName"
                                                                       id="horizontalName"
                                                                       class="form-control" placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">项目类型</label>
                                                            <div class="col-md-6">
                                                                <select class="select2_category form-control"
                                                                        name="horizontalFundsSearch.horizontalType"
                                                                        id="horizontalType"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
                                                                    <option value="Category 2"></option>
                                                                    <option value="技术开发">技术开发</option>
                                                                    <option value="技术咨询">技术咨询</option>
                                                                    <option value="技术转让">技术转让</option>
                                                                    <option value="技术服务">技术服务</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">签订时间</label>
                                                            <div class="col-md-6">
                                                                <input type="date"
                                                                       name="horizontalFundsSearch.signStarDate"
                                                                       id="signStarDate"
                                                                       class="form-control" placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-1">至</label>
                                                            <div class="col-md-6">
                                                                <input type="date"
                                                                       name="horizontalFundsSearch.signEndDate"
                                                                       id="signEndDate"
                                                                       class="form-control" placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">到款年月</label>
                                                            <div class="col-md-6">
                                                                <input type="date"
                                                                       name="horizontalFundsSearch.intoFundsStarDate"
                                                                       id="intoFundsStarDate"
                                                                       class="form-control" placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-1">至</label>
                                                            <div class="col-md-6">
                                                                <input type="date"
                                                                       name="horizontalFundsSearch.intoFundsEndDate"
                                                                       id="intoFundsEndDate"
                                                                       class="form-control" placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">经费卡号</label>
                                                            <div class="col-md-6">
                                                                <input type="text"
                                                                       name="horizontalFundsSearch.fundsAccount"
                                                                       class="form-control" placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">项目到位经费(万元)</label>
                                                            <div class="col-md-6">
                                                                <input type="text" name="horizontalFundsSearch.fundsMin"
                                                                       class="form-control" placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-1">至</label>
                                                            <div class="col-md-6">
                                                                <input type="text" name="horizontalFundsSearch.fundsMax"
                                                                       class="form-control" placeholder=""/>
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
                                                                    <button type="button" class="btn green"
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
            </div>
        </div>
    </div>
</div>
<!-- 弹出框 执行查询 -->
<div class="portlet-body">
    <div id="long3" class="modal fade modal-scroll" tabindex="-1" data-replace="true"
         style="width:90%;height:80%;margin-top:-400px;margin-left:-45%;">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                    <div class="tab-content">
                        <div class="tab-pane active" >
                            <div class="portlet light ">
                                <div class="portlet-body form">
                                    <div class="form-body">
                                        <h3 class="form-section font-red-sunglo">横向课题经费统计</h3>
                                        <table class="table table-striped table-bordered table-hover" id="sample_2"
                                               style="text-align:center;">
                                            <thead>
                                            <tr>
                                                <th style="text-align:center;">
                                                    序号
                                                </th>
                                                <th style="text-align:center;">
                                                    到款年度
                                                </th>
                                                <th style="text-align:center;">
                                                    项目卡号
                                                </th>
                                                <th style="text-align:center;">
                                                    项目负责人
                                                </th>
                                                <th style="text-align:center;">
                                                    负责人单位
                                                </th>
                                                <th style="text-align:center;">
                                                    项目名称
                                                </th>
                                                <th style="text-align:center;">
                                                    项目到位经费
                                                </th>
                                                <th style="text-align:center;">
                                                    项目设备费
                                                </th>
                                                <th style="text-align:center;">
                                                    合同经费
                                                </th>
                                                <th style="text-align:center;">
                                                    项目类型
                                                </th>
                                                <th style="text-align:center;">
                                                    合同编号
                                                </th>
                                                <th style="text-align:center;">
                                                    委托方
                                                </th>
                                            </tr>
                                            </thead>
                                            <tbody id="horizontalFundsBody">

                                            </tbody>
                                        </table>

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
<script src="../../assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
        type="text/javascript"></script>
<script src="../../assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="../../assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="../../assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="../../assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="../../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script type="text/javascript" src="../../assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
        src="../../assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<script type="text/javascript"
        src="../../assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script src="../../assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="../../assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="../../assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script src="../../assets/admin/pages/scripts/table-managed.js"></script>
<script src="../../assets/admin/pages/scripts/components-pickers.js"></script>
<script>
    jQuery(document).ready(function () {
        // initiate layout and plugins
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Demo.init(); // init demo features
        //TableManaged.init();
        //TableAdvanced.init();
        ComponentsPickers.init();
    });


    function showclick() {

        var frm = $("#horizontalFunds");
        $.ajax({
            type: "post",
            url: "/horizontal/horizontal_searchFundsSearch",
            data: frm.serialize(),
            success: function (data) {
                horizontalFundsList();
            }
        });
    }


    function horizontalFundsList(url, search) {
        url = url || '/horizontal/horizontal_searchFundsSearch';
        search = search || {};

        $.post(url, search, function (data) {
            data = JSON.parse(data);
            var str = '';
            var i = 0;
            data.forEach(function (item) {
                str += '<tr class="odd gradeX"><td>' + i++ + '</td><td>'
                    + item.intoMoneyYear + '</td><td>' + item.fundsAcount + '</td><td>'
                    + item.employeeName + '</td><td>' + item.unitName + '</td><td>'
                    + item.horizontalName + '</td><td>' + item.intoFunds + '</td></td>'
                    + item.equipmentExpenses + '</td><td>' + item.signDate + '</td><td>'
                    + item.contactExpenditure + '</td><td>' + item.horizontalType + '</td><td>'
                    + item.contractId + '</td><td>' + item.client + '</td></tr>';
            })
            $('#horizontalFundsBody').html(str);
        });

    }

</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>