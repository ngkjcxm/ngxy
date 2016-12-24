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
    <style>
        @media only screen and (max-width: 1500px) {
            #long3 {
                width: 90%;
                height: 80%;
                margin-top: 9%;
                margin-left: -45%;
            }
        }

        @media only screen and (min-width: 1900px) {
            #long3 {
                width: 90%;
                height: 80%;
                margin-top: -400px;
                margin-left: -45%;
            }
        }
    </style>
</head>
<!-- END HEAD -->

<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
<!--公共头部-->
<%@ include file="../publicHead/listUI.jsp" %>
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
                        <li class="active">
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


            <!-- BEGIN  论文成果信息统计-->
            <div class="row">
                <div class="col-md-12">
                    <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                        <div class="tab-content">

                            <form id="paperSearch" name="paperSearch" class="form-horizontal">
                                <div class="tab-pane active" id="tab_2">
                                    <div class="portlet light ">
                                        <div class="portlet-body form">
                                            <!-- BEGIN FORM-->
                                            <div class="form-body">
                                                <h3 class="form-section font-red-sunglo">论文成果信息统计</h3>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">第一作者</label>
                                                            <div class="col-md-6">
                                                                <input type="text" name="search.author"
                                                                       class="form-control" placeholder="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">学院</label>
                                                            <div class="col-md-8">
                                                                <select class="select2_category form-control"
                                                                        name="search.unit"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
                                                                    <option value=""></option>
                                                                    <option value="计算机科学与技术学院">计算机科学与技术学院</option>
                                                                    <option value="农业工程与食品科学学院">农业工程与食品科学学院</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">论文名称</label>
                                                            <div class="col-md-6">
                                                                <input type="text" name="search.paperName"
                                                                       class="form-control" placeholder="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">论文级别</label>
                                                            <div class="col-md-8">
                                                                <select class="select2_category form-control"
                                                                        name="search.paperLeavel"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
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
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">职称</label>
                                                            <div class="col-md-6">
                                                                <select class="select2_category form-control"
                                                                        name="search.authorTitle"
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
                                                            <label class="control-label col-md-4 ">学位</label>
                                                            <div class="col-md-8">
                                                                <select class="select2_category form-control"
                                                                        name="search.academicDegree"
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
                                                            <label class="control-label col-md-6 ">收录检索</label>
                                                            <div class="col-md-6">
                                                                <select class="select2_category form-control"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
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
                                                                <select class="select2_category form-control"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
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
                                                            <label class="control-label col-md-6 ">发表年月</label>
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
                                                            <label class="control-label col-md-6 ">检索年度</label>
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
                                                            <label class="control-label col-md-6 ">审核时间</label>
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
                                                            <label class="control-label col-md-6 ">津贴是否发放 </label>
                                                            <div class="col-md-6">
                                                                <select class="select2_category form-control"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
                                                                    <option value="已发">已发</option>
                                                                    <option value="未发">未发</option>
                                                                    <option value="需补发">需补发</option>
                                                                    <option value="无津贴">无津贴</option>
                                                                </select>
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
                                                                    <option value="审核通过">审核通过</option>
                                                                    <option value="审核未通过">审核未通过</option>
                                                                    <option value="未审核">未审核</option>
                                                                    <option value="所有">所有</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">是否学校认定通讯作者</label>
                                                            <div class="col-md-6">
                                                                <select class="select2_category form-control"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
                                                                    <option value=""></option>
                                                                    <option value="是">是</option>
                                                                    <option value="否">否</option>
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
            </div><!-- END SAMPLE FORM PORTLET-->
        </div>
    </div>
</div>
<!-- 弹出框 执行查询 -->
<div class="portlet-body">
    <div id="long3" class=" modal fade modal-scroll nongye-window" tabindex="-1" data-replace="true">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                    <div class="tab-content">
                        <div class="tab-pane active">
                            <div class="portlet light ">
                                <div class="portlet-body form">
                                    <div class="form-body" style="overflow-x:scroll;">
                                        <h3 class="form-section font-red-sunglo">论文成果信息统计</h3>
                                        <table class="table table-striped table-bordered table-hover " class=""
                                               id="sample_2"
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
                                                    是否是学生
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
                                                    通讯作者
                                                </th>
                                                <th style="text-align:center;width:100px;">
                                                    通讯作者部门
                                                </th>

                                                <th style="text-align:center;width:100px;">
                                                    审核结论
                                                </th>
                                                <th style="text-align:center;width:100px;">
                                                    审核时间
                                                </th>
                                            </tr>
                                            </thead>
                                            <tbody id="paperBody">

                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="form-actions right" style="border:0px solid #000;">
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

        var frm = $("#paperSearch");
        $.ajax({
            type: "post",
            url: "/paper/paper_searchPaper",
            data: frm.serialize(),
            success: function (data) {
                paperFundsList();
            }
        });
    }


    function paperFundsList(url, search) {
        url = url || '/paper/paper_searchPaper';
        search = search || {};

        $.post(url, search, function (data) {
            data = JSON.parse(data);
            var str = '';
            var i = 0;
            data.forEach(function (item) {
                str += '<tr class="odd gradeX"><td>' + i++ + '</td><td>'
                    + item.publishYear + '</td><td>' + item.author1Name + '</td><td>'
                    + item.isStudent + '</td><td>' + item.unit1Name + '</td><td>'
                    + item.academicUnit1Name + '</td><td>' + item.paperName + '</td></td>'
                    + item.publishName + '</td><td>' + item.completeUnit + '</td><td>'
                    + item.issn + '</td><td>' + item.isbn + '</td><td>'
                    + item.paperLevel + '</td><td>' + item.paperType + '</td><td>' + item.publishDate + '</td><td>'
                    + item.indexedRetrieval + '</td><td>' + item.searchId + '</td><td>'
                    + item.tAuthorName + '</td><td>' + item.tUnitName + '</td><td>'
                    + item.examineResult + '</td><td>' + item.examineDate + '</td></tr>';
            })
            $('#paperBody').html(str);
        });

    }


</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>