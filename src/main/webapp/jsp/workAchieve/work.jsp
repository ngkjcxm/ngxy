<%--
  Created by IntelliJ IDEA.
  User: sunming
  Date: 2016/12/5
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
    <title>著作课题相关</title>
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
                                <h3 class="form-section font-red-sunglo">著作成果信息查找</h3>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="table-toolbar">
                                <div class="row">
                                    <form role="form" action="/workAchieve/workAchieve/usearch.html" method="post">
                                        <div class="form-body">
                                            <h3 class="form-section font-red-sunglo">审核信息查找</h3>
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
                                                                    <div class="input-group date form_year col-md-13">
                                                                        <input name="search.date" type="date"
                                                                               class="form-control"/>
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
                                                                著作名称
                                                            </td>
                                                            <td style="width:15%">
                                                                <input name="search.workName" type="text"
                                                                       class="form-control" placeholder="著作名称">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                归属单位
                                                            </td>
                                                            <td style="width:15%">
                                                                <select name="search.academicUnit1Name"
                                                                        class="select2_category form-control">
                                                                    <option value="" checked>请选择学院</option>
                                                                    <option value="农业工程与食品科学学院" checked>农业工程与食品科学学院
                                                                    </option>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <button class="btn btn-primary btn-block">搜索</button>
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
                                                                        著作名称
                                                                    </th>
                                                                    <th style="text-align:center;">
                                                                        首作者
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
                                                                            <a href="/workAchieve/workAchieve/udetail/${o.id}.html">
                                                                                    ${o.workName} </a>
                                                                        </td>
                                                                        <td>
                                                                                ${o.author1Name}
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
                                    <form name="form" method="post" class="form-horizontal">
                                        <s:hidden name="workAchieve.id"/>
                                        <div class="form-body">
                                            <h3 class="form-section font-red-sunglo">著作成果录入</h3>
                                            <!--著作名称-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 font-red-sunglo">著作名称</label>
                                                        <div class="col-md-7">
                                                            <s:textfield name="workAchieve.workName" type="text"
                                                                         class="form-control"
                                                                         placeholder="著作名称"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--出版日期-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 font-red-sunglo">出版日期</label>
                                                        <div class="col-md-7">
                                                            <div class="input-group date form_month col-md-13">
                                                                <input name="workAchieve.publishDate" type="date"
                                                                       value="<s:date name="workAchieve.publishDate" format="yyyy-MM-dd"/>"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">著作类别</label>
                                                        <div class="col-md-6">
                                                            <s:select class="select2_category form-control"
                                                                      name="workAchieve.worksType"
                                                                      list="#{
                                                                       '专著':'专著',
                                                                       '编著':'编著',
                                                                       '教科书':'教科书',
                                                                       '电子出版物':'电子出版物',
                                                                       '译著':'译著',
                                                                       '其他':'其他'
                                                                    }"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">总字数(千字)</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.workWordAll" type="text"
                                                                         class="form-control"
                                                                         placeholder=""/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--ISBN-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 font-red-sunglo">ISBN</label>
                                                        <div class="col-md-7">
                                                            <s:textfield name="workAchieve.publicationsNumber"
                                                                         type="text" class="form-control"
                                                                         placeholder="ISBN"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">出版地</label>
                                                        <div class="col-md-6">
                                                            <s:select class="select2_category form-control"
                                                                      name="workAchieve.publishAddress"
                                                                      list="#{
                                                                        '国内':'国内',
                                                                        '国外':'国外'
                                                                    }"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--出版单位-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 font-red-sunglo">出版单位</label>
                                                        <div class="col-md-7">
                                                            <s:textfield name="workAchieve.publishUnit" type="text"
                                                                         class="form-control"
                                                                         placeholder="出版单位"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">学科分类</label>
                                                        <div class="col-md-6">
                                                            <s:select class="select2_category form-control"
                                                                      name="workAchieve.subjectName"
                                                                      list="#{
                                                                    '教育学':'教育学'
                                                                    }"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">津贴发放年度</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_year2 col-md-13"
                                                                 data-date="" data-date-format="yyyy">
                                                                <input type="text" size="16" class="form-control">
                                                                <span class="input-group-btn">
																	<button class="btn default date-set"
                                                                            type="button"><i class="fa fa-calendar"></i></button>
																	</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--第一作者单位-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 ">第一作者单位</label>
                                                        <div class="col-md-7">
                                                            <s:select class="select2_category form-control"
                                                                      name="workAchieve.academicUnit1Name" type="text"
                                                                      placeholder="第一作者单位"
                                                                      list="#{
                                                                    '农业工程与食品科学学院':'农业工程与食品科学学院',
                                                                    '机械工程学院':'机械工程学院',
                                                                    '交通与车辆工程学院': '交通与车辆工程学院',
                                                                    '电气与电子工程学院': '电气与电子工程学院',
                                                                    '计算机科学与技术学院':'计算机科学与技术学院',
                                                                    '化学工程学院':'化学工程学院',
                                                                    '建筑工程学院':'建筑工程学院',
                                                                    '资源与环境工程学院':'资源与环境工程学院',
                                                                    '材料科学与工程学院':'材料科学与工程学院',
                                                                    '生命科学学院':'生命科学学院',
                                                                    '理学院':'理学院',
                                                                    '商学院':'商学院',
                                                                    '文学与新闻传播学院':'文学与新闻传播学院',
                                                                    '外国语学院':'外国语学院',
                                                                    '法学院':'法学院',
                                                                    '马克思主义学院':'马克思主义学院',
                                                                    '美术学院':'美术学院',
                                                                    '音乐学院':'音乐学院',
                                                                    '体育学院':'体育学院',
                                                                    '国防教育学院':'国防教育学院',
                                                                    '鲁泰纺织服装学院':'鲁泰纺织服装学院',
                                                                    '创新创业学院':'创新创业学院'
                                                                    }"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">姓名</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author1Name" type="text"
                                                                         class="form-control"
                                                                         placeholder="姓名"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">撰写字数(千字)</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author1wordsNumber"
                                                                         type="text" class="form-control"
                                                                         placeholder=""/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--/row-->
                                            <!--第二作者单位-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5">第二作者单位</label>
                                                        <div class="col-md-7">
                                                            <s:select class="select2_category form-control"
                                                                      name="workAchieve.unit2Name" type="text"
                                                                      placeholder="第二作者单位"
                                                                      list="#{
                                                                    '农业工程与食品科学学院':'农业工程与食品科学学院',
                                                                    '机械工程学院':'机械工程学院',
                                                                    '交通与车辆工程学院': '交通与车辆工程学院',
                                                                    '电气与电子工程学院': '电气与电子工程学院',
                                                                    '计算机科学与技术学院':'计算机科学与技术学院',
                                                                    '化学工程学院':'化学工程学院',
                                                                    '建筑工程学院':'建筑工程学院',
                                                                    '资源与环境工程学院':'资源与环境工程学院',
                                                                    '材料科学与工程学院':'材料科学与工程学院',
                                                                    '生命科学学院':'生命科学学院',
                                                                    '理学院':'理学院',
                                                                    '商学院':'商学院',
                                                                    '文学与新闻传播学院':'文学与新闻传播学院',
                                                                    '外国语学院':'外国语学院',
                                                                    '法学院':'法学院',
                                                                    '马克思主义学院':'马克思主义学院',
                                                                    '美术学院':'美术学院',
                                                                    '音乐学院':'音乐学院',
                                                                    '体育学院':'体育学院',
                                                                    '国防教育学院':'国防教育学院',
                                                                    '鲁泰纺织服装学院':'鲁泰纺织服装学院',
                                                                    '创新创业学院':'创新创业学院'
                                                                    }"/>

                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">姓名</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author2Name" type="text"
                                                                         class="form-control"
                                                                         placeholder="姓名"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">撰写字数(千字)</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author2wordsNumber"
                                                                         type="text" class="form-control"
                                                                         placeholder=""/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--第三作者单位-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5">第三作者单位</label>
                                                        <div class="col-md-7">
                                                            <s:select class="select2_category form-control"
                                                                      name="workAchieve.unit3Name" type="text"
                                                                      placeholder="第三作者单位"
                                                                      list="#{
                                                                    '农业工程与食品科学学院':'农业工程与食品科学学院',
                                                                    '机械工程学院':'机械工程学院',
                                                                    '交通与车辆工程学院': '交通与车辆工程学院',
                                                                    '电气与电子工程学院': '电气与电子工程学院',
                                                                    '计算机科学与技术学院':'计算机科学与技术学院',
                                                                    '化学工程学院':'化学工程学院',
                                                                    '建筑工程学院':'建筑工程学院',
                                                                    '资源与环境工程学院':'资源与环境工程学院',
                                                                    '材料科学与工程学院':'材料科学与工程学院',
                                                                    '生命科学学院':'生命科学学院',
                                                                    '理学院':'理学院',
                                                                    '商学院':'商学院',
                                                                    '文学与新闻传播学院':'文学与新闻传播学院',
                                                                    '外国语学院':'外国语学院',
                                                                    '法学院':'法学院',
                                                                    '马克思主义学院':'马克思主义学院',
                                                                    '美术学院':'美术学院',
                                                                    '音乐学院':'音乐学院',
                                                                    '体育学院':'体育学院',
                                                                    '国防教育学院':'国防教育学院',
                                                                    '鲁泰纺织服装学院':'鲁泰纺织服装学院',
                                                                    '创新创业学院':'创新创业学院'
                                                                    }"/>

                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">姓名</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author3Name" type="text"
                                                                         class="form-control"
                                                                         placeholder="姓名"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">撰写字数(千字)</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author3wordsNumber"
                                                                         type="text" class="form-control"
                                                                         placeholder=""/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--第四作者单位-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5">第四作者单位</label>
                                                        <div class="col-md-7">
                                                            <s:select class="select2_category form-control"
                                                                      name="workAchieve.unit4Name" type="text"
                                                                      placeholder="第四作者单位"
                                                                      list="#{
                                                                '农业工程与食品科学学院':'农业工程与食品科学学院',
                                                                '机械工程学院':'机械工程学院',
                                                                '交通与车辆工程学院': '交通与车辆工程学院',
                                                                '电气与电子工程学院': '电气与电子工程学院',
                                                                '计算机科学与技术学院':'计算机科学与技术学院',
                                                                '化学工程学院':'化学工程学院',
                                                                '建筑工程学院':'建筑工程学院',
                                                                '资源与环境工程学院':'资源与环境工程学院',
                                                                '材料科学与工程学院':'材料科学与工程学院',
                                                                '生命科学学院':'生命科学学院',
                                                                '理学院':'理学院',
                                                                '商学院':'商学院',
                                                                '文学与新闻传播学院':'文学与新闻传播学院',
                                                                '外国语学院':'外国语学院',
                                                                '法学院':'法学院',
                                                                '马克思主义学院':'马克思主义学院',
                                                                '美术学院':'美术学院',
                                                                '音乐学院':'音乐学院',
                                                                '体育学院':'体育学院',
                                                                '国防教育学院':'国防教育学院',
                                                                '鲁泰纺织服装学院':'鲁泰纺织服装学院',
                                                                '创新创业学院':'创新创业学院'
                                                                }"/>

                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">姓名</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author4Name" type="text"
                                                                         class="form-control"
                                                                         placeholder="姓名"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">撰写字数(千字)</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author4wordsNumber"
                                                                         type="text" class="form-control"
                                                                         placeholder=""/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--第五作者单位-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5">第五作者单位</label>
                                                        <div class="col-md-7">
                                                            <s:select class="select2_category form-control"
                                                                      name="workAchieve.unit5Name" type="text"
                                                                      placeholder="第五作者单位"
                                                                      list="#{
                                                                    '农业工程与食品科学学院':'农业工程与食品科学学院',
                                                                    '机械工程学院':'机械工程学院',
                                                                    '交通与车辆工程学院': '交通与车辆工程学院',
                                                                    '电气与电子工程学院': '电气与电子工程学院',
                                                                    '计算机科学与技术学院':'计算机科学与技术学院',
                                                                    '化学工程学院':'化学工程学院',
                                                                    '建筑工程学院':'建筑工程学院',
                                                                    '资源与环境工程学院':'资源与环境工程学院',
                                                                    '材料科学与工程学院':'材料科学与工程学院',
                                                                    '生命科学学院':'生命科学学院',
                                                                    '理学院':'理学院',
                                                                    '商学院':'商学院',
                                                                    '文学与新闻传播学院':'文学与新闻传播学院',
                                                                    '外国语学院':'外国语学院',
                                                                    '法学院':'法学院',
                                                                    '马克思主义学院':'马克思主义学院',
                                                                    '美术学院':'美术学院',
                                                                    '音乐学院':'音乐学院',
                                                                    '体育学院':'体育学院',
                                                                    '国防教育学院':'国防教育学院',
                                                                    '鲁泰纺织服装学院':'鲁泰纺织服装学院',
                                                                    '创新创业学院':'创新创业学院'
                                                                    }"/>

                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">姓名</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author5Name" type="text"
                                                                         class="form-control"
                                                                         placeholder="姓名"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">撰写字数(千字)</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author5wordsNumber"
                                                                         type="text" class="form-control"
                                                                         placeholder=""/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--第六作者单位-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5">第六作者单位</label>
                                                        <div class="col-md-7">
                                                            <s:select class="select2_category form-control"
                                                                      name="workAchieve.unit6Name" type="text"
                                                                      placeholder="第六作者单位"
                                                                      list="#{
                                                                    '农业工程与食品科学学院':'农业工程与食品科学学院',
                                                                    '机械工程学院':'机械工程学院',
                                                                    '交通与车辆工程学院': '交通与车辆工程学院',
                                                                    '电气与电子工程学院': '电气与电子工程学院',
                                                                    '计算机科学与技术学院':'计算机科学与技术学院',
                                                                    '化学工程学院':'化学工程学院',
                                                                    '建筑工程学院':'建筑工程学院',
                                                                    '资源与环境工程学院':'资源与环境工程学院',
                                                                    '材料科学与工程学院':'材料科学与工程学院',
                                                                    '生命科学学院':'生命科学学院',
                                                                    '理学院':'理学院',
                                                                    '商学院':'商学院',
                                                                    '文学与新闻传播学院':'文学与新闻传播学院',
                                                                    '外国语学院':'外国语学院',
                                                                    '法学院':'法学院',
                                                                    '马克思主义学院':'马克思主义学院',
                                                                    '美术学院':'美术学院',
                                                                    '音乐学院':'音乐学院',
                                                                    '体育学院':'体育学院',
                                                                    '国防教育学院':'国防教育学院',
                                                                    '鲁泰纺织服装学院':'鲁泰纺织服装学院',
                                                                    '创新创业学院':'创新创业学院'
                                                                    }"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">姓名</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author6Name" type="text"
                                                                         class="form-control"
                                                                         placeholder="姓名"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">撰写字数(千字)</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author6wordsNumber"
                                                                         type="text" class="form-control"
                                                                         placeholder=""/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--第七作者单位-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5">第七作者单位</label>
                                                        <div class="col-md-7">
                                                            <s:select class="select2_category form-control"
                                                                      name="workAchieve.unit7Name" type="text"
                                                                      placeholder="第七作者单位"
                                                                      list="#{
                                                                    '农业工程与食品科学学院':'农业工程与食品科学学院',
                                                                    '机械工程学院':'机械工程学院',
                                                                    '交通与车辆工程学院': '交通与车辆工程学院',
                                                                    '电气与电子工程学院': '电气与电子工程学院',
                                                                    '计算机科学与技术学院':'计算机科学与技术学院',
                                                                    '化学工程学院':'化学工程学院',
                                                                    '建筑工程学院':'建筑工程学院',
                                                                    '资源与环境工程学院':'资源与环境工程学院',
                                                                    '材料科学与工程学院':'材料科学与工程学院',
                                                                    '生命科学学院':'生命科学学院',
                                                                    '理学院':'理学院',
                                                                    '商学院':'商学院',
                                                                    '文学与新闻传播学院':'文学与新闻传播学院',
                                                                    '外国语学院':'外国语学院',
                                                                    '法学院':'法学院',
                                                                    '马克思主义学院':'马克思主义学院',
                                                                    '美术学院':'美术学院',
                                                                    '音乐学院':'音乐学院',
                                                                    '体育学院':'体育学院',
                                                                    '国防教育学院':'国防教育学院',
                                                                    '鲁泰纺织服装学院':'鲁泰纺织服装学院',
                                                                    '创新创业学院':'创新创业学院'
                                                                    }"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">姓名</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author7Name" type="text"
                                                                         class="form-control"
                                                                         placeholder="姓名"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">撰写字数(千字)</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author7wordsNumber"
                                                                         type="text" class="form-control"
                                                                         placeholder=""/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--第八作者单位-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5">第八作者单位</label>
                                                        <div class="col-md-7">
                                                            <s:select class="select2_category form-control"
                                                                      name="workAchieve.unit8Name" type="text"
                                                                      placeholder="第八作者单位"
                                                                      list="#{
                                                                    '农业工程与食品科学学院':'农业工程与食品科学学院',
                                                                    '机械工程学院':'机械工程学院',
                                                                    '交通与车辆工程学院': '交通与车辆工程学院',
                                                                    '电气与电子工程学院': '电气与电子工程学院',
                                                                    '计算机科学与技术学院':'计算机科学与技术学院',
                                                                    '化学工程学院':'化学工程学院',
                                                                    '建筑工程学院':'建筑工程学院',
                                                                    '资源与环境工程学院':'资源与环境工程学院',
                                                                    '材料科学与工程学院':'材料科学与工程学院',
                                                                    '生命科学学院':'生命科学学院',
                                                                    '理学院':'理学院',
                                                                    '商学院':'商学院',
                                                                    '文学与新闻传播学院':'文学与新闻传播学院',
                                                                    '外国语学院':'外国语学院',
                                                                    '法学院':'法学院',
                                                                    '马克思主义学院':'马克思主义学院',
                                                                    '美术学院':'美术学院',
                                                                    '音乐学院':'音乐学院',
                                                                    '体育学院':'体育学院',
                                                                    '国防教育学院':'国防教育学院',
                                                                    '鲁泰纺织服装学院':'鲁泰纺织服装学院',
                                                                    '创新创业学院':'创新创业学院'
                                                                    }"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">姓名</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author8Name" type="text"
                                                                         class="form-control"
                                                                         placeholder="姓名"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">撰写字数(千字)</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="workAchieve.author8wordsNumber"
                                                                         type="text" class="form-control"
                                                                         placeholder=""/>
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
                                                        <label class="control-label col-md-2 ">备注</label>
                                                        <div class="col-md-10">
                                                            <s:textfield name="workAchieve.remark" type="text"
                                                                         class="form-control"
                                                                         placeholder="备注"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 ">审核时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_day2 col-md-13">
                                                                <input disabled name="workAchieve.examineDate"
                                                                       value="<s:date name="workAchieve.examineDate" />"
                                                                       type="date" class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">审核人</label>
                                                        <div class="col-md-6">
                                                            <s:textfield disabled="true"
                                                                         name="workAchieve.examinePeoName" type="text"
                                                                         class="form-control"
                                                                         placeholder="审核人"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 ">审核结论</label>
                                                        <div class="col-md-6">
                                                            <s:select disabled="true" name="workAchieve.examineResult"
                                                                      class="select2_category form-control"
                                                                      list="#{
                                                                            '待审核':'待审核',
                                                                            '通过':'通过',
                                                                            '未通过':'未通过'
                                                                    }"/>
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
                                                            <a href="javascript:form.action='/workAchieve/workAchieve/save.html';form.submit()"
                                                               class="btn green">提交</a>
                                                            <a href="javascript:form.action='/workAchieve/workAchieve/delete.html';form.submit()"
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
<!--公共尾部-->
<%@ include file="../PeopleFoot/listUI.jsp" %>
<!--公共尾部End-->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<script>
    jQuery(document).ready(function () {
        jQuery(document).ready(function() {
            $("#Label-03-04").addClass("active");
        });
        $('#pre').click(function () {
            $.get('/workAchieve/workAchieve_pre', function (data) {
                console.log(data)
                if (data == '-1') return;
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td><a href="/workAchieve/wokArchieve/udetail/' + o.id + '.html">' + o.workName + '</a> </td>' +
                        '<td>' + o.author1Name + '</td>' +
                        '<td><span class="label label-sm label-success">' + o.examineResult + '</span></td>' +
                        '</tr>'
                }
                $('#tbody').html(content);
            });
        });

        $('#next').click(function () {
            $.get('/workAchieve/workAchieve/next.html', function (data) {
                console.log(data)
                if (data == '-1') return;
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td><a href="/workAchieve/workAchieve/udetail/' + o.id + '.html">' + o.workName + '</a> </td>' +
                        '<td>' + o.author1Name + '</td>' +
                        '<td><span class="label label-sm label-success">' + o.examineResult + '</span></td>' +
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