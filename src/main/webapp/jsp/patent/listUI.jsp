<%--
  Created by IntelliJ IDEA.
  User: sunmig
  Date: 2016/11/27
  Time: 9:47
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
    <title>专利成果审核</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>

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
                <li class="active">
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
                        <li class="active">
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
                                <li class="active">
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

            <!-- BEGIN PAGE CONTENT Li-->
            <div class="row">
                <div class="col-md-4">
                    <!-- BEGIN 专利成果录入-->
                    <div class="portlet light ">
                        <div class="portlet-body form">
                            <form role="form" method="post" action="/patent/patent/search.html">
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
                                                            <div class="input-group  col-md-12">
                                                                <input name="search.years" type="text"
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
                                                        <select name="search.state" class="form-control">
                                                            <option value="所有" checked>所有</option>
                                                            <option value="已通过">已通过</option>
                                                            <option value="待审核">待审核</option>
                                                            <option value="未通过">未通过</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width:30%;font-size:15px;text-align:center;">
                                                        专利号
                                                    </td>
                                                    <td style="width:15%">
                                                        <input name="search.patentNumber" type="text"
                                                               class="form-control" placeholder="专利号"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width:30%;font-size:15px;text-align:center;">
                                                        专利名称
                                                    </td>
                                                    <td style="width:15%">
                                                        <input name="search.patentName" type="text"
                                                               class="form-control" placeholder="专利名称">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width:30%;font-size:15px;text-align:center;">
                                                        专利作者
                                                    </td>
                                                    <td style="width:15%">
                                                        <input name="search.patentHolder" type="text"
                                                               class="form-control" placeholder="专利作者">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width:30%;font-size:15px;text-align:center;">
                                                        归属单位
                                                    </td>
                                                    <td style="width:15%">
                                                        <select name="search.academicUnitName"
                                                                class="select2_category form-control"
                                                                data-placeholder="Choose a Category" tabindex="1">
                                                            <option value=""></option>
                                                            <option value="农业工程与食品科学学院" checked>农业工程与食品科学学院</option>
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
                                                                专利名称
                                                            </th>
                                                            <th style="text-align:center;">
                                                                专利作者
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
                                                                    <a href="/patent/patent/detail/${o.id}.html">
                                                                            ${o.patentName}</a>
                                                                </td>
                                                                <td>
                                                                    <a>${o.patentHolder}</a>
                                                                </td>
                                                                <td>
																<span class="label label-sm label-success">
                                                                        ${o.examineResult} </span>
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

                            <form id="patentForm" method="post" action="/patent/patent/save.html" class="form-horizontal" enctype="multipart/form-data">
                                <div class="tab-pane active">
                                    <div class="portlet light ">
                                        <div class="portlet-body form">
                                            <s:hidden name="patent.id"/>
                                            <div class="form-body">
                                                <h3 class="form-section font-red-sunglo">专利成果录入</h3>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 font-red-sunglo">专利名称</label>
                                                            <div class="col-md-8">
                                                                <s:textfield name="patent.patentName" type="text"
                                                                             class="form-control"
                                                                             placeholder="专利名称"/>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">专利类型</label>
                                                            <div class="col-md-6">
                                                                <s:select name="patent.patentType"
                                                                          class="form-control"
                                                                          list="#{'发明':'发明'}"
                                                                />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 font-red-sunglo">申请号（专利号）</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="patent.patentNumber" type="text"
                                                                             class="form-control"
                                                                             placeholder="申请号（专利号）"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">专利权人</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="patent.patentHolder" type="text"
                                                                             class="form-control"
                                                                             placeholder="专利权人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 font-red-sunglo">授权公告号</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="patent.authorizedPublicNumber"
                                                                             type="text" class="form-control"
                                                                             placeholder="授权公告号"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">首位完成人单位</label>
                                                            <div class="col-md-6">
                                                                <s:select name="patent.departmentName"
                                                                          class="select2_category form-control"
                                                                          list="#{'农业工程与食品科学学院':'农业工程与食品科学学院'}"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 font-red-sunglo">首位完成人</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="patent.patentCreaterName" type="text"
                                                                             class="form-control"
                                                                             placeholder="首位完成人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">专利申请日</label>
                                                            <div class="col-md-6">
                                                                <div class="input-group  col-md-12"
                                                                     data-date="" data-date-format="yyyy/mm/dd">
                                                                    <input name="patent.applyDate" type="date"
                                                                           value="<s:date name="patent.applyDate" format="yyyy-MM-dd"/>"
                                                                           class="form-control"/>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 font-red-sunglo">授权公告日</label>
                                                            <div class="col-md-6">
                                                                <input type="date"
                                                                       name="patent.authorizedPublicDate"
                                                                       value="<s:date name="patent.authorizedPublicDate" format="yyyy-MM-dd"/>"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">津贴发放年度</label>
                                                            <div class="col-md-6">
                                                                <div class="input-group date form_year col-md-13"  data-date="" data-date-format="yyyy">
                                                                    <s:textfield type="text" name="patent.grantYear" class="form-control"/>
                                                                    <span class="input-group-btn">
																	<button class="btn default date-set" type="button"><i class="fa fa-calendar"></i></button>
																	</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">法律状态</label>
                                                            <div class="col-md-6">
                                                                <s:select name="patent.legalStatus"
                                                                          class="select2_category form-control"
                                                                          list="#{'授权':'授权'}"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 ">其他发明人或设计人</label>
                                                        <div class="col-md-8">
                                                            <s:textfield name="patent.otherPeoName" type="text"
                                                                         class="form-control"
                                                                         placeholder="其他发明人或设计人"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 ">专利证书附件</label>
                                                        <div class="col-md-6" style="border:0px solid #ee1100;">
                                                            <s:if test="%{patent.headImg !=null && patent.headImg !='' }">
                                                                <img src="/upload/<s:property value='patent.headImg'/>"
                                                                     width="250" height="250">
                                                                <s:hidden name="patent.headImg"/>
                                                            </s:if>
                                                            <input type="file" name="headImg"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 ">备注</label>
                                                        <div class="col-md-8">
                                                            <s:textfield name="patent.remark" type="text"
                                                                         class="form-control"
                                                                         placeholder="备注"/>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <h3 class="form-section font-red-sunglo">审核信息</h3>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 ">登记人</label>
                                                        <div class="col-md-7">
                                                            <s:textfield name="patent.registerPeoName" type="text"
                                                                         class="form-control"
                                                                         placeholder="登记人"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 ">登记时间</label>
                                                        <div class="col-md-7">
                                                            <input type="date"
                                                                   name="patent.registerDate"
                                                                   value="<s:date name="patent.registerDate" format="yyyy-MM-dd"/>"
                                                                   class="form-control"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 ">审核人</label>
                                                        <div class="col-md-7">
                                                            <s:textfield name="patent.examinePeoName" type="text"
                                                                         class="form-control"
                                                                         placeholder="审核人"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 ">审核时间</label>
                                                        <div class="col-md-7">
                                                            <input type="date"
                                                                   name="patent.examineDate"
                                                                   value="<s:date name="patent.examineDate" format="yyyy-MM-dd"/>"
                                                                   class="form-control"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 ">审核结论</label>
                                                        <div class="col-md-7">
                                                            <s:select name="patent.examineResult"
                                                                      class="form-control"
                                                                      list="#{
                                                                            '待审核':'待审核',
                                                                            '已通过':'已通过',
                                                                            '未通过':'未通过'
                                                                        }"/>
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
                                                    <div class="col-md-offset-9 col-md-4">
                                                        <input class="btn green" type="submit"
                                                               onclick="javascript:return confirm('您确认要提交该专利成果吗？');"></input>
                                                        <a id="deletePatent" class="btn red">删除</a>
                                                        <button type="reset" class="btn default">重置</button>
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
<!-- END PAGE CONTENT-->

<!-- END CONTAINER -->
<!--公共尾部-->
<%@ include file="../publicFoot/listUI.jsp" %>
<!--公共尾部End-->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<script>
    jQuery(document).ready(function () {
    // 分页
    $('#pre').click(function () {
        $.get('/patent/patent/pre.html', function (data) {
            if (data == '-1') return;
            data = JSON.parse(data);
            var content = '';
            for (var i = 0; i < data.length; i++) {
                var o = data[i];
                content += '<tr class="odd gradeX">' +
                    '<td>' + o.id + '</td>' +
                    '<td><a href="/patent/patent/detail/' + o.id + '.html">' + o.patentName + '</a> </td>' +
                    '<td>' + o.patentHolder + '</td>' +
                    '<td><span class="label label-sm label-success">' + o.examineResult + '</span></td>' +
                    '</tr>'
            }
            $('#tbody').html(content);
        });
    });

    $('#next').click(function () {
        $.get('/patent/patent/next.html', function (data) {
            if (data == '-1') return;
            data = JSON.parse(data);
            var content = '';
            for (var i = 0; i < data.length; i++) {
                var o = data[i];
                content += '<tr class="odd gradeX">' +
                    '<td>' + o.id + '</td>' +
                    '<td><a href="/patent/patent/detail/' + o.id + '.html">' + o.patentName + '</a> </td>' +
                    '<td>' + o.patentHolder + '</td>' +
                    '<td><span class="label label-sm label-success">' + o.examineResult + '</span></td>' +
                    '</tr>'
            }
            $('#tbody').html(content);
        });
    });


    //删除
    $('#deletePatent').click(function () {

        if (confirm("删除后将无法恢复，确认删除该专利成果吗！！")) {
            $.get('/patent/patent/delete.html', function (data) {
                if (data == 'yes') {
                    alert("操作成功");
                    search();
                } else {
                    alert("操作失败");
                }
            });
        }
    });


    });

</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>