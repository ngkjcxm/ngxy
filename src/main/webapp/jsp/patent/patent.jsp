<%--
  Created by IntelliJ IDEA.
  User: sunming
  Date: 2016/12/5
  Time: 19:49
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
    <title>专利成果相关</title>
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
                                <h3 class="form-section font-red-sunglo">专利成果信息查找</h3>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="table-toolbar">
                                <div class="row">
                                    <form role="form" method="post" action="/patent/patent/usearch.html">
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
                                                                    <div class="input-group date form_year col-md-13">
                                                                        <input name="search.year" type="text"
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
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
                                                                    <option value=""></option>
                                                                    <option value="农业工程与食品科学学院" checked>农业工程与食品科学学院
                                                                    </option>
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
                                                                            <a href="/patent/patent/udetail/${o.id}.html">
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
                                    <form name="form" method="post" class="form-horizontal"
                                          enctype="multipart/form-data">
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
                                            <!--/row-->
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
                                                <!--/span-->
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
                                                <!--/span-->

                                            </div>
                                            <!--/row-->
                                            <!--/row-->
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
                                                <!--/span-->
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
                                                <!--/span-->

                                            </div>
                                            <!--/row-->

                                            <!--/row-->
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
                                                <!--/span-->

                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">专利申请日</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group">
                                                                <input type="date" name="patent.applyDate"
                                                                       value="<s:date name="patent.applyDate" format="yyyy-MM-dd"/>"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">授权公告日</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group">
                                                                <input type="date"
                                                                       name="patent.authorizedPublicDate"
                                                                       value="<s:date name="patent.authorizedPublicDate" format="yyyy-MM-dd"/>"
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
                                                        <label class="control-label col-md-6 ">津贴发放年度</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group">
                                                                <s:textfield type="text" name="patent.grantYear"
                                                                             class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
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
                                                <!--/span-->

                                            </div>
                                            <!--/row-->
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
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">登记人</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="patent.registerPeoName" type="text"
                                                                         class="form-control"
                                                                         placeholder="登记人"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">登记时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group">
                                                                <input type="date"
                                                                       name="patent.registerDate"
                                                                       value="<s:date name="patent.registerDate" format="yyyy-MM-dd"/>"
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
                                                        <label class="control-label col-md-6 ">专利证书附件</label>
                                                        <div class="col-md-6">
                                                            <s:file type="file" class="form-control"
                                                                    name="patent.patentDiploma"
                                                                    placeholder="专利证书附件"/>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">已上传附件</label>
                                                        <div class="col-md-6">
                                                            <s:textfield disabled="true" type="text" class="form-control"
                                                                    name="patent.patentDiplomaFileName"
                                                                    placeholder="已上传文件"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--/row-->

                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">审核结论</label>
                                                        <div class="col-md-6">
                                                            <s:select disabled="true" name="patent.examineResult"
                                                                      class="form-control"
                                                                      list="#{
                                                                            '待审核':'待审核',
                                                                            '已通过':'已通过',
                                                                            '未通过':'未通过'
                                                                        }"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">审核时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group">
                                                                <input type="date"
                                                                       name="patent.examineDate"
                                                                       value="<s:date name="patent.examineDate" format="yyyy-MM-dd"/>"
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
                                                        <label class="control-label col-md-6 ">审核人</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="patent.examinePeoName" type="text"
                                                                         class="form-control"
                                                                         placeholder="审核人"/>
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
                                                            <s:textfield name="patent.remark" type="text"
                                                                         class="form-control"
                                                                         placeholder="备注"/>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--/row-->
                                        </div>
                                        <div class="form-actions right" style="border:0px solid #000;">
                                            <div class="row" style="border:0px solid red;">
                                                <div class="col-md-12 " style="border:0px solid green;">
                                                    <div class="row">
                                                        <div class="col-md-offset-3 col-md-9">
                                                            <a href="javascript:form.action='/patent/patent/save.html';form.submit()"
                                                               class="btn green">提交</a>
                                                            <a href="javascript:form.action='/patent/patent/delete.html';form.submit()"
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
            $("#Label-03-05").addClass("active");
        });
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
                        '<td><a href="/patent/patent/udetail/' + o.id + '.html">' + o.patentName + '</a> </td>' +
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
                        '<td><a href="/patent/patent/udetail/' + o.id + '.html">' + o.patentName + '</a> </td>' +
                        '<td>' + o.patentHolder + '</td>' +
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