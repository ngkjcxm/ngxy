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
        <title>论文成果信息统计</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8">
        <meta content="" name="description"/>
        <meta content="" name="author"/>
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet"
        type="text/css">
        <link href="../assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="../assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet"
        type="text/css">
        <link href="../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="../assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
        <link href="../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet"
        type="text/css"/>
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL STYLES -->
        <link rel="stylesheet" type="text/css"
        href="../assets/global/plugins/jstree/dist/themes/default/style.min.css"/>
        <link rel="stylesheet" type="text/css"
        href="../assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>
        <!-- END PAGE LEVEL STYLES -->
        <!--弹窗Css -->
        <link href="../assets/global/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" rel="stylesheet"
        type="text/css"/>
        <link href="../assets/global/plugins/bootstrap-modal/css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>
        <!--End弹窗Css -->
        <link rel="stylesheet" type="text/css"
        href="../assets/global/plugins/datatables/extensions/Scroller/css/dataTables.scroller.min.css"/>
        <link rel="stylesheet" type="text/css"
        href="../assets/global/plugins/datatables/extensions/ColReorder/css/dataTables.colReorder.min.css"/>
        <link rel="stylesheet" type="text/css"
        href="../assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
        <!-- BEGIN THEME STYLES -->
        <link href="../assets/global/css/components-rounded.css" id="style_components" rel="stylesheet"
        type="text/css"/>
        <link href="../assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
        <link href="../assets/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
        <link id="style_color" href="../assets/admin/layout4/css/themes/light.css" rel="stylesheet" type="text/css"/>
        <link href="../assets/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>
        <!-- END THEME STYLES -->
        <link rel="shortcut icon" href="favicon.ico"/>
        </head>
        <!-- END HEAD -->

        <body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
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
        <h1>论文成果信息统计</h1>
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
        <a style="text-decoration:none;">论文成果信息统计</a>
        </li>
        </ul>
        <!-- END PAGE BREADCRUMB -->
        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT Li-->
        <div class="row">
        <div class="col-md-4">
        <!-- BEGIN SAMPLE FORM PORTLET-->
        <div class="portlet light ">
        <div class="portlet-body form">
        <form role="form">
        <div class="form-body">
        <h3 class="form-section font-red-sunglo">信息统计查询</h3>
        <div class="row" >
        <div class="col-md-12">
        <table id="user" class="table table-bordered " style="text-align:center;" >
        <tbody>
        <tr>
        <td style="width:30%;font-size:15px;text-align:center;" >
        所在学校
        </td>
        <td style="width:70%">
        <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
        <option value="Category 1" checked>山东理工大学</option>
        </select>
        </td>
        </tr>
        <tr>
        <td style="width:30%;font-size:15px;text-align:center;" >
        所在单位
        </td>
        <td style="width:70%">
        <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
        <option value="Category 1" checked>农业工程与食品科学学院</option>
        </select>
        </td>
        </tr>
        <tr>
        <td style="width:30%;font-size:15px;text-align:center;">
        所在部门
        </td>
        <td style="width:15%">
        <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
        <option value="Category 1" checked>所有</option>
        <option value="Category 2">已通过</option>
        </select>
        </td>
        </tr>
        </tbody>
        </table>
        </div>
        </div>
        <div style="height:320px;">
        <div class="row" >
        <div class="col-md-12 col-sm-12">
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet-body">
        <table class="table table-striped table-bordered table-hover" id="sample_2" style="text-align:center;">
        <thead>
        <tr>
        <th style="text-align:center;">
        工号
        </th>
        <th style="text-align:center;">
        姓名
        </th>
        <th style="text-align:center;">
        所在学校
        </th>
        <th style="text-align:center;">
        所在单位
        </th>
        <th style="text-align:center;">
        所在部门
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
        <a href="#">
        111111 </a>
        </td>
        <td>
        <a href="#">
        111111 </a>
        </td>
        <td>
        <a href="#">
        111111 </a>
        </td>
        </tr>
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
        <!-- END SAMPLE FORM PORTLET-->
        </div>
        <div class="col-md-8">
        <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
        <div class="tab-content">
        <div class="tab-pane active" id="tab_2">
        <div class="portlet light ">
        <div class="portlet-body form">
        <!-- BEGIN FORM-->
        <form action="#" class="form-horizontal">
        <div class="form-body">
        <h3 class="form-section font-red-sunglo">论文成果信息统计</h3>

        <!--/row-->
        <div class="row">
        <div class="col-md-6">
        <div class="form-group">
        <label class="control-label col-md-6 ">论文名称</label>
        <div class="col-md-6">
        <input type="text" class="form-control" placeholder="">
        </div>
        </div>
        </div>
        <div class="col-md-4">
        <div class="form-group">
        <label class="control-label col-md-4 ">论文级别</label>
        <div class="col-md-8">
        <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
        <option value="Category 2"></option>
        <option value="Category 1">国际会议</option>
        <option value="Category 2">核心期刊</option>
        <option value="Category 1">外文期刊</option>
        <option value="Category 2">SCD源期刊</option>
        <option value="Category 1">一般刊物</option>
        <option value="Category 1">内部刊物</option>
        <option value="Category 2">增刊</option>
        </select>
        </div>
        </div>
        </div>
        </div>
        <!--/row-->
        <!--/row-->
        <div class="row">
        <div class="col-md-6">
        <div class="form-group">
        <label class="control-label col-md-6 ">职称</label>
        <div class="col-md-6">
        <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
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
        <label class="control-label col-md-4 ">学位</label>
        <div class="col-md-8">
        <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
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
        <!--/row-->
        <!--/row-->
        <div class="row">
        <div class="col-md-6">
        <div class="form-group">
        <label class="control-label col-md-6 ">收录检索</label>
        <div class="col-md-6">
        <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
        <option value="Category 1"></option>
        <option value="Category 2">EI</option>
        <option value="Category 3">SCI</option>
        <option value="Category 3">SCI-1区</option>
        <option value="Category 3">SCI-2区</option>
        <option value="Category 3">SCI-3区</option>
        <option value="Category 3">SCI-4区</option>
        <option value="Category 3">TSTP</option>
        <option value="Category 3">SSCI</option>
        <option value="Category 3">ISSHP</option>
        <option value="Category 3">Science</option>
        <option value="Category 3">Nature</option>
        <option value="Category 3">CSSCI</option>
        </select>
        </div>
        </div>
        </div>
        <div class="col-md-4">
        <div class="form-group">
        <label class="control-label col-md-4 ">完成单位</label>
        <div class="col-md-8">
        <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
        <option value="Category 1"></option>
        <option value="Category 2">第一完成单位</option>
        <option value="Category 2">第二完成单位</option>
        <option value="Category 2">第三完成单位</option>
        <option value="Category 2">第四完成单位</option>
        <option value="Category 2">第五完成单位</option>
        <option value="Category 2">第六完成单位</option>
        <option value="Category 2">外单位</option>
        </select>
        </div>
        </div>
        </div>
        </div>
        <!--/row-->
        <!--/row-->
        <div class="row">
        <div class="col-md-6">
        <div class="form-group">
        <label class="control-label col-md-6 ">首作者性别</label>
        <div class="col-md-6">
        <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
        <option value="Category 2"></option>
        <option value="Category 1">男</option>
        <option value="Category 2">女</option>
        </select>
        </div>
        </div>
        </div>
        </div>
        <!--/row-->
        <!--/row-->
        <div class="row">
        <div class="col-md-6">
        <div class="form-group">
        <label class="control-label col-md-6 ">发表年月</label>
        <div class="col-md-6">
        <input type="text" class="form-control" placeholder="">
        </div>
        </div>
        </div>
        <!--/span-->
        <div class="col-md-6">
        <div class="form-group">
        <label class="control-label col-md-1">至</label>
        <div class="col-md-6">
        <input type="text" class="form-control" placeholder="">
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
        <label class="control-label col-md-6 ">年龄段</label>
        <div class="col-md-6">
        <input type="text" class="form-control" placeholder="">
        </div>
        </div>
        </div>
        <!--/span-->
        <div class="col-md-6">
        <div class="form-group">
        <label class="control-label col-md-1">至</label>
        <div class="col-md-6">
        <input type="text" class="form-control" placeholder="">
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
        <label class="control-label col-md-6 ">检索年度</label>
        <div class="col-md-6">
        <input type="text" class="form-control" placeholder="">
        </div>
        </div>
        </div>
        <!--/span-->
        <div class="col-md-6">
        <div class="form-group">
        <label class="control-label col-md-1">至</label>
        <div class="col-md-6">
        <input type="text" class="form-control" placeholder="">
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
        <label class="control-label col-md-6 ">审核时间</label>
        <div class="col-md-6">
        <input type="text" class="form-control" placeholder="">
        </div>
        </div>
        </div>
        <!--/span-->
        <div class="col-md-6">
        <div class="form-group">
        <label class="control-label col-md-1">至</label>
        <div class="col-md-6">
        <input type="text" class="form-control" placeholder="">
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
        <label class="control-label col-md-6 ">津贴是否发放 </label>
        <div class="col-md-6">
        <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
        <option value="Category 1">已发</option>
        <option value="Category 2">未发</option>
        <option value="Category 2">需补发</option>
        <option value="Category 2">无津贴</option>
        </select>
        </div>
        </div>
        </div>
        </div>
        <!--/row-->
        <!--/row-->
        <div class="row">
        <div class="col-md-6">
        <div class="form-group">
        <label class="control-label col-md-6 ">审核情况 </label>
        <div class="col-md-6">
        <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
        <option value="Category 1">审核通过</option>
        <option value="Category 2">审核未通过</option>
        <option value="Category 2">未审核</option>
        <option value="Category 2">所有</option>
        </select>
        </div>
        </div>
        </div>
        </div>
        <!--/row-->
        <!--/row-->
        <div class="row">
        <div class="col-md-6">
        <div class="form-group">
        <label class="control-label col-md-6 ">是否学校认定通讯作者</label>
        <div class="col-md-6">
        <select class="select2_category form-control" data-placeholder="Choose a Category" tabindex="1">
        <option value="Category 1"></option>
        <option value="Category 2">是</option>
        <option value="Category 2">否</option>
        </select>
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
        <a data-target="#long3" data-toggle="modal">
        <button type="submit" class="btn green">执行查询</button>
        </a>
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
        </div><!-- END SAMPLE FORM PORTLET-->
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
        <div class="tab-pane active" id="tab_2">
        <div class="portlet light ">
        <div class="portlet-body form">
        <!-- BEGIN FORM-->
        <form action="#" class="form-horizontal">
        <div class="form-body" style="overflow-x:scroll;">
        <h3 class="form-section font-red-sunglo">论文成果信息统计</h3>
        <table class="table table-striped table-bordered table-hover" id="sample_2"
        style="text-align:center;width:2500px;">
        <thead>
        <tr>
        <th style="text-align:center;width:100px;">
        序号
        </th>
        <th style="text-align:center;width:100px;">
        发表年度
        </th>
        <th style="text-align:center;width:100px;">
        首位作者
        </th>
        <th style="text-align:center;width:100px;">
        所属单位
        </th>
        <th style="text-align:center;width:100px;">
        学术归属
        </th>
        <th style="text-align:center;width:100px;">
        论文题目
        </th>
        <th style="text-align:center;width:100px;">
        刊物名称
        </th>
        <th style="text-align:center;width:100px;">
        完成单位
        </th>
        <th style="text-align:center;width:100px;">
        ISSN
        </th>
        <th style="text-align:center;width:100px;">
        ISBN
        </th>
        <th style="text-align:center;width:100px;">
        卷期
        </th>
        <th style="text-align:center;width:100px;">
        论文级别
        </th>
        <th style="text-align:center;width:100px;">
        论文类型
        </th>
        <th style="text-align:center;width:100px;">
        发表时间
        </th>
        <th style="text-align:center;width:100px;">
        收录检索
        </th>
        <th style="text-align:center;width:100px;">
        检索号
        </th>
        <th style="text-align:center;width:100px;">
        检索时间
        </th>
        <th style="text-align:center;width:100px;">
        通讯作者
        </th>
        <th style="text-align:center;width:100px;">
        通讯作者部门
        </th>
        <th style="text-align:center;width:100px;">
        其他作者
        </th>
        <th style="text-align:center;width:100px;">
        所属学科
        </th>
        <th style="text-align:center;width:100px;">
        津贴发放情况
        </th>
        <th style="text-align:center;width:100px;">
        通讯作者是否认定
        </th>
        <th style="text-align:center;width:100px;">
        审核结论
        </th>
        <th style="text-align:center;width:100px;">
        审核时间
        </th>
        </tr>
        </thead>
        <tbody>

        <tr class="odd gradeX">
        <td >
        <a href="#">
        杜瑞成 </a>
        </td>
        <td>
        1
        </td>
        <td>
        1
        </td>
        <td>
        1
        </td>
        <td>
        1
        </td>

        <td>
        1
        </td>
        <td>
        1
        </td>
        <td>
        1
        </td>
        <td>
        1
        </td>
        <td>
        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
        </td>
        <td>
        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
        </td>
        <td>
        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
        </td>

        <td>
        1
        </td>
        <td>
        1
        </td>
        <td>
        1
        </td>
        <td>
        1
        </td>
        <td>
        1
        </td>
        <td>
        1
        </td>
        <td>
        1
        </td>
        <td>
        1
        </td>
        <td>
        1
        </td>

        <td>
        1
        </td>
        <td>
        1
        </td>
        <td>
        1
        </td>
        <td>
        1
        </td>
        </tr>
        <tr class="odd gradeX">
        <td>
        <a href="#">
        杜瑞成 </a>
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>

        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>

        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>

        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>
        <td>
        2
        </td>
        </tr>
        </tbody>
        </table>
        </div>
        <!-- 分页
        <div style="float:right;">
        <ul class="pagination">
        <li id="pre"><a>上一页</a></li>
        <li id="pre"><a>上一页</a></li>
        <li id="next"><a>下一页</a></li>
        </ul>
        </div>
        <!-- End分页-->
        <div class="form-actions right"style="border:0px solid #000;">
        <div class="row" style="border:0px solid red;">
        <div class="col-md-12 " style="border:0px solid green;">
        <div class="col-md-12 " style="border:0px solid green;">
        <div class="row">
        <div class="col-md-offset-3 col-md-9">
        <button type="submit" class="btn green">导出Excel</button>
        <button type="button" class="btn default">返回</button>
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
        <!-- BEGIN FOOTER -->
        <div class="page-footer navbar-fixed-bottom">
        <div class="page-footer-inner">
        2014 &copy; Metronic by keenthemes. <a
        href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"
        title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase Metronic!</a>
        </div>
        <div class="scroll-to-top">
        <i class="icon-arrow-up"></i>
        </div>
        </div>
        <!-- END FOOTER -->
        <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- BEGIN CORE PLUGINS -->
        <!--[if lt IE 9]>
        <script src="../assets/global/plugins/respond.min.js"></script>
        <script src="../assets/global/plugins/excanvas.min.js"></script>
        <![endif]-->
        <script src="../assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
        <!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui
        tooltip -->
        <script src="../assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
        type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
        type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
        type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->

        <script type="text/javascript"
        src="../assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript"
        src="../assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
        <script type="text/javascript"
        src="../assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>

        <script type="text/javascript"
        src="../assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript"
        src="../assets/global/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
        <script type="text/javascript"
        src="../assets/global/plugins/datatables/extensions/ColReorder/js/dataTables.colReorder.min.js"></script>
        <script type="text/javascript"
        src="../assets/global/plugins/datatables/extensions/Scroller/js/dataTables.scroller.min.js"></script>
        <script type="text/javascript"
        src="../assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
        <script type="text/javascript"
        src="../assets/global/plugins/datatables/plugins/bootstrap/bootstrap-table-zh-CN.js"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <script src="../assets/global/scripts/metronic.js" type="text/javascript"></script>
        <script src="../assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
        <script src="../assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
        <script src="../assets/admin/pages/scripts/table-managed.js"></script>
        <script src="../assets/admin/pages/scripts/components-pickers.js"></script>
        <script>
        jQuery(document).ready(function() {
        // initiate layout and plugins
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Demo.init(); // init demo features
        //TableManaged.init();

        ComponentsPickers.init();
        TableAdvanced.init();
        });

        </script>
        <!-- END JAVASCRIPTS -->
        </body>
        <!-- END BODY -->
        </html>