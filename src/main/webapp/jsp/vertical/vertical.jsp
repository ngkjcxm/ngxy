<%--
  Created by IntelliJ IDEA.
  User: sunming
  Date: 2016/12/5
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <title>纵向课题相关</title>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->
<body>
<!--公共头部-->
<%@ include file="../PeopleHead/listUI.jsp" %>
<!--公共头部End-->
<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
    <!-- BEGIN PAGE CONTENT -->
    <div class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <h3 class="form-section font-red-sunglo">纵向课题信息查找</h3>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="table-toolbar">
                                <div class="row">
                                    <form role="form" id="searchForm">
                                        <div class="form-body">
                                            <div class="row col-md-12">
                                                <div class="col-md-12">
                                                    <table id="user" class="table table-bordered  "
                                                           style="text-align:center;">
                                                        <tbody>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                登记年度
                                                            </td>
                                                            <td style="width:70%">
                                                                <div class="input-group date form_year col-md-13"
                                                                     data-date="" data-date-format="yyyy-mm-dd">
                                                                    <input name="search.registrationDate" type="text"
                                                                           size="16" class="form-control">
                                                                    <span class="input-group-btn">
																		<button class="btn default date-set"
                                                                                type="button"><i
                                                                                class="fa fa-calendar"></i></button>
																		</span>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                到款年度
                                                            </td>
                                                            <td style="width:15%">
                                                                <div class="input-group date form_year col-md-13"
                                                                     data-date="" data-date-format="yyyy">
                                                                    <input type="text" size="16" class="form-control">
                                                                    <span class="input-group-btn">
																		<button class="btn default date-set"
                                                                                type="button"><i
                                                                                class="fa fa-calendar"></i></button>
																		</span>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                审核情况
                                                            </td>
                                                            <td style="width:15%">
                                                                <select class="form-control" name="search.state">
                                                                    <option value="所有" checked>所有</option>
                                                                    <option value="已审核">已审核</option>
                                                                    <option value="未审请审核">未审请审核</option>
                                                                    <option value="等待结题审核">等待结题审核</option>
                                                                    <option value="已结题">已结题</option>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                项目名称
                                                            </td>
                                                            <td style="width:15%">
                                                                <input type="text" name="search.VerticalName"
                                                                       class="form-control" placeholder="项目名称">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                项目负责人
                                                            </td>
                                                            <td style="width:15%">
                                                                <input name="search.VerticalHeaderName" type="text"
                                                                       class="form-control" placeholder="项目负责人">
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            <div style="height:320px;">
                                                <div class="row col-md-12">
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
                                                                        完成情况
                                                                    </th>
                                                                </tr>
                                                                </thead>
                                                                <tbody id="tbody">

                                                                </tbody>
                                                            </table>

                                                        </div>
                                                        <!-- END EXAMPLE TABLE PORTLET-->
                                                        <div style="float:right;">
                                                            <ul class="pagination">
                                                                <ul class="pagination">
                                                                    <li id="pre"><a>上一页</a></li>
                                                                    <li id="next"><a>下一页</a></li>
                                                                </ul>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="form-actions right" style="border:0px solid #000;">
                                        <div class="row" style="border:0px solid red;">
                                            <div class="col-md-6 " style="border:0px solid green;">
                                                <div class="row">
                                                    <div class="col-md-offset-11 col-md-4">
                                                        <button id="search" class="btn green">进行查询</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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
                                    <form action="/vertical/vertical/save.html" class="form-horizontal" method="post">
                                        <div class="form-body">
                                            <!--锚点链接 -->
                                            <a name="5F" style="color:#ffffff;text-decoration: none;"> </a>
                                            <h3 class="form-section font-red-sunglo">纵向课题信息详情</h3>
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">项目名称</label>
                                                        <div class="col-md-6">
                                                            <input type="text" name="vertical.verticalName"
                                                                   class="form-control" placeholder="项目名称">

                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group ">
                                                        <label class="control-label col-md-4 font-red-sunglo">项目编号</label>
                                                        <div class="col-md-6">
                                                            <input type="text" name="vertical.projectId"
                                                                   class="form-control" placeholder="项目编号">

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
                                                        <label class="control-label col-md-4 font-red-sunglo">项目负责人</label>
                                                        <div class="col-md-6">
                                                            <input name="vertical.verticalHeaderName" type="text"
                                                                   class="form-control" placeholder="项目负责人">
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
                                                        <label class="control-label col-md-6 font-red-sunglo">批准金额(万元)</label>
                                                        <div class="col-md-6">
                                                            <input name="vertical.approvalFunds" type="text"
                                                                   class="form-control"
                                                                   placeholder="批准金额(万元)">
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">参与类型</label>
                                                        <div class="col-md-6">
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

                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">开始时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_month col-md-13"
                                                                 data-date="" data-date-format="yyyy-mm-dd">
                                                                <input name="vertical.starDate" type="text" size="16"
                                                                       class="form-control">
                                                                <span class="input-group-btn">
																<button class="btn default date-set" type="button"><i
                                                                        class="fa fa-calendar"></i></button>
																</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">结束时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_month col-md-13"
                                                                 data-date="" data-date-format="yyyy-mm-dd">
                                                                <input name="vertical.endDate" type="text" size="16"
                                                                       class="form-control">
                                                                <span class="input-group-btn">
																<button class="btn default date-set" type="button"><i
                                                                        class="fa fa-calendar"></i></button>
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
                                                        <label class="control-label col-md-6 ">学科分类</label>
                                                        <div class="col-md-6">
                                                            <s:select name='vertical.subjectType'
                                                                      class="select2_category form-control"
                                                                      list="#{'110数学':'110数学', '130力学', '130力学'}"
                                                                      tabindex="1">
                                                            </s:select>
                                                        </div>

                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">活动类型</label>
                                                        <div class="col-md-6">
                                                            <select name="vertical.activityType"
                                                                    class="select2_category form-control"
                                                                    tabindex="1">
                                                                <option value="Category 1" checked>实验发展</option>
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
                                                        <label class="control-label col-md-6 ">项目来源</label>
                                                        <div class="col-md-6">
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
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">组织形式</label>
                                                        <div class="col-md-6">
                                                            <s:select name="vertical.organizationForm"
                                                                      class="select2_category form-control"
                                                                      list="#{'牵头单位':'牵头单位','合作单位':'合作单位'}"
                                                                      tabindex="1">
                                                            </s:select>
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
                                                        <label class="control-label col-md-6 ">合作形式</label>
                                                        <div class="col-md-6">
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
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">项目社会经济目标</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="vertical.socialTarget"
                                                                         id="SocityEconomy"
                                                                         type="text" data-target="#long"
                                                                         class="form-control"
                                                                         placeholder="项目社会经济目标"/>
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
                                                        <label class="control-label col-md-6 ">服务国民经济目标</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="vertical.industry"
                                                                         id="NationalEconomy"
                                                                         type="text" data-target="#long2"
                                                                         class="form-control"
                                                                         placeholder="服务国民经济行业"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">课题基金号</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="vertical.fundAccount" type="text"
                                                                         class="form-control" placeholder="课题基金号"/>
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
                                                            <div class="input-group date form_month col-md-13"
                                                                 data-date="" data-date-format="yyyy-mm-dd">
                                                                <input name="vertical.examineDate" type="text" size="16"
                                                                       class="form-control">
                                                                <span class="input-group-btn">
																<button class="btn default date-set" type="button"><i
                                                                        class="fa fa-calendar"></i></button>
																</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">审核人</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="vertical.examinePeoName" type="text"
                                                                         class="form-control" placeholder="审核人"/>
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
                                                        <label class="control-label col-md-6 ">立项时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_month col-md-13"
                                                                 data-date="" data-date-format="yyyy-mm-dd">
                                                                <input name="vertical.projectSetDate" type="text"
                                                                       size="16" class="form-control">
                                                                <span class="input-group-btn">
																<button class="btn default date-set" type="button"><i
                                                                        class="fa fa-calendar"></i></button>
																</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">结题审核时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_month col-md-13"
                                                                 data-date="" data-date-format="yyyy-mm-dd">
                                                                <input name="vertical.endTopicExamineDate" type="text"
                                                                       size="16" class="form-control">
                                                                <span class="input-group-btn">
																<button class="btn default date-set" type="button"><i
                                                                        class="fa fa-calendar"></i></button>
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
                                                        <label class="control-label col-md-6 ">审核结论</label>
                                                        <div class="col-md-6">
                                                            <s:select name="vertical.examineResult"
                                                                      class="select2_category form-control"
                                                                      list="#{'未通过':'未通过', '通过':'通过'}"
                                                                      tabindex="1">
                                                            </s:select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">立项结论</label>
                                                        <div class="col-md-6">
                                                            <s:select name="vertical.projectSetResult"
                                                                      class="select2_category form-control"
                                                                      list="#{'未通过':'未通过', '通过':'通过'}"
                                                                      tabindex="1">
                                                            </s:select>
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
                                                        <label class="control-label col-md-6 ">申请结题</label>
                                                        <div class="col-md-6">
                                                            <s:select name="vertical.applicationEndTopic"
                                                                      class="select2_category form-control"
                                                                      list="#{'未通过':'未通过', '通过':'通过'}"
                                                                      tabindex="1">
                                                            </s:select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">结题审核</label>
                                                        <div class="col-md-6">
                                                            <s:select name="vertical.endTopicExamineResult"
                                                                      class="select2_category form-control"
                                                                      list="#{'未通过':'未通过', '通过':'通过'}"
                                                                      tabindex="1">
                                                            </s:select>
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
<!--公共尾部-->
<%@ include file="../PeopleFoot/listUI.jsp" %>
<!--公共尾部End-->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<script>
    jQuery(document).ready(function () {
        jQuery(document).ready(function() {
            $("#Label-03-02").addClass("active");
        });

        // 查找
        $('#search').click(function () {
            $.post('/vertical/vertical/usearch.html', $('#searchForm').serialize(), function (data) {
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td>' + o.VerticalName + '</td>' +
                        '<td><span class="label label-sm label-success">' + o.endTopicExamineResult + '</span></td>' +
                        '</tr>'
                }
                $('#tbody').html(content);
            });
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
                        '<td>' + o.VerticalName + '</td>' +
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
                        '<td>' + o.VerticalName + '</td>' +
                        '<td><span class="label label-sm label-success">' + o.endTopicExamineResult + '</span></td>' +
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