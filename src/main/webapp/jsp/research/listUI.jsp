<%--
  Created by IntelliJ IDEA.
  User: sunmig
  Date: 2016/11/19
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>科研成果审核</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
</head>
<!-- END HEAD -->

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
            <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Modal title</h4>
                        </div>
                        <div class="modal-body">
                            Widget settings form goes here
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn blue">Save changes</button>
                            <button type="button" class="btn default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <!-- BEGIN PAGE HEADER-->
            <!-- BEGIN PAGE HEAD -->
            <div class="page-head">
                <!-- BEGIN PAGE TITLE -->
                <div class="page-title">
                    <h1>科研奖励审核</h1>
                </div>
                <!-- END PAGE TITLE -->

            </div>
            <!-- END PAGE HEAD -->
            <!-- BEGIN PAGE BREADCRUMB -->
            <ul class="page-breadcrumb breadcrumb">
                <li>
                    <i class="fa fa-circle"></i>
                    <a style="text-decoration:none;">科研成果管理</a>
                </li>
                <li>
                    <i class="fa fa-circle"></i>
                    <a style="text-decoration:none;">科研奖励相关</a>
                </li>
                <li>
                    <i class="fa fa-circle"></i>
                    <a style="text-decoration:none;">科研奖励审核</a>
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
                            <form role="form" action="/research/research/search.html" method="post">
                                <div class="form-body">
                                    <h3 class="form-section font-red-sunglo">审核信息查找</h3>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <table id="user" class="table table-bordered  " style="text-align:center;">
                                                <tbody>
                                                <tr>
                                                    <td style="width:30%;font-size:15px;text-align:center;">
                                                        年度
                                                    </td>
                                                    <td style="width:70%">
                                                        <div>
                                                            <div class="input-group date form_year col-md-12">
                                                                <input name="search.awardYear" type="text"
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
                                                        <select name="search.examineStatus"
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
                                                        成果名称
                                                    </td>
                                                    <td style="width:15%">
                                                        <input name="search.researchName" type="text"
                                                               class="form-control" placeholder="成果名称"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width:30%;font-size:15px;text-align:center;">
                                                        归属单位
                                                    </td>
                                                    <td style="width:15%">
                                                        <select name="search.unitName"
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
                                                                    <a href="/research/research/detail/${o.id}.html">
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
                    <!-- END SAMPLE FORM PORTLET-->

                </div>
                <div class="col-md-8">
                    <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_2">
                                <div class="portlet light ">
                                    <div class="portlet-body form">
                                        <form name="form" class="form-horizontal" method="post">
                                            <s:hidden name="scientificResearchReward.id"/>
                                            <div class="form-body">
                                                <h3 class="form-section font-red-sunglo">科研成果录入</h3>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 font-red-sunglo">奖励名称</label>
                                                            <div class="col-md-8">
                                                                <s:textfield
                                                                        name="scientificResearchReward.researchName"
                                                                        type="text"
                                                                        class="form-control" placeholder="奖励名称"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">证书编号</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="scientificResearchReward.diplomaId"
                                                                             type="text"
                                                                             class="form-control" placeholder="证书编号"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 font-red-sunglo">授奖部门</label>
                                                            <div class="col-md-6">
                                                                <s:select
                                                                        name="scientificResearchReward.awardDepartment"
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
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">首位完成人单位</label>
                                                            <div class="col-md-6">
                                                                <s:select name="scientificResearchReward.unitName"
                                                                          class="select2_category form-control"
                                                                          list="#{'':'',
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
                                                                <s:textfield
                                                                        name="scientificResearchReward.completePeoName"
                                                                        type="text"
                                                                        class="form-control" placeholder="首位完成人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/row-->
                                                <!--/row-->
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">获奖日期</label>
                                                            <div class="col-md-6">
                                                                <div class="input-group date form_year col-md-12">
                                                                    <s:textfield
                                                                            name="scientificResearchReward.awardYear"
                                                                            type="text"
                                                                            class="form-control"
                                                                            placeholder="获奖年度"/>
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
                                                </div>
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
                                                                    <s:textfield
                                                                            name="scientificResearchReward.allowance"
                                                                            type="text"
                                                                            class="form-control"
                                                                            placeholder="津贴发放年度"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
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
                                                                <s:textfield name="scientificResearchReward.remark"
                                                                             type="text"
                                                                             class="form-control" placeholder="备注"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">其他完成人</label>
                                                            <div class="col-md-6">
                                                                <s:textfield
                                                                        name="scientificResearchReward.otherMemberName"
                                                                        type="text"
                                                                        class="form-control" placeholder="其他完成人<"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">登记人</label>
                                                            <div class="col-md-6">
                                                                <s:textfield
                                                                        name="scientificResearchReward.registerPeoName"
                                                                        type="text"
                                                                        class="form-control" placeholder="登记人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">登记时间</label>
                                                            <div class="col-md-6">
                                                                <div class="input-group date form_day2 col-md-13"
                                                                     data-date="" data-date-format="yyyy/mm/dd">
                                                                    <input name="research.registerDate"
                                                                           value="<s:date name="scientificResearchReward.registerDate"/>"
                                                                           type="date" size="16" class="form-control"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">单位证书附件</label>
                                                            <div class="col-md-6">
                                                                <s:textfield
                                                                        name="scientificResearchReward.unitDiplomaAnnexesName"
                                                                        type="text" class="form-control"
                                                                        placeholder="单位证书附件"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
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
                                                </div>
                                            </div>
                                            <div class="form-actions right" style="border:0px solid #000;">
                                                <div class="row" style="border:0px solid red;">
                                                    <div class="col-md-12 " style="border:0px solid green;">
                                                        <div class="row">
                                                            <div class="col-md-offset-3 col-md-9">
                                                                <a href="javascript:form.action='/research/research/check.html';form.submit()"
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
<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer navbar-fixed-bottom">
    <div class="page-footer-inner">
        2014 &copy; Metronic by keenthemes. <a
            href="#"
            title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase
        Metronic!</a>
    </div>
    <div class="scroll-to-top">
        <i class="icon-arrow-up"></i>
    </div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<script>
    jQuery(document).ready(function () {


        // 分页
        $('#pre').click(function () {
            $.get('/research/research/pre.html', function (data) {
                console.log(data)
                if (data == '-1') return;
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td><a href="/research/research/detail/' + o.id + '.html">' + o.researchName + '</a> </td>' +
                        '<td>' + o.examineResult + '</td>' +
                        '</tr>'
                }
                $('#tbody').html(content);
            });
        });

        $('#next').click(function () {
            $.get('/research/research/next.html', function (data) {
                console.log(data)
                if (data == '-1') return;
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td><a href="/research/research/detail/' + o.id + '.html">' + o.researchName + '</a> </td>' +
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