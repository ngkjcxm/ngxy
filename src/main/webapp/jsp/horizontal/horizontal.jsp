<%--
  Created by IntelliJ IDEA.
  User: sunming
  Date: 2016/12/5
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <title>横向课题相关</title>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
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
                                    <form role="form" id="searchForm">
                                        <div class="form-body">
                                            <div class="row col-md-12">
                                                <div class="col-md-12">
                                                    <table id="user" class="table table-bordered  "
                                                           style="text-align:center;">
                                                        <tbody>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                到款时间
                                                            </td>
                                                            <td style="width:70%">
                                                                <div class="input-group date form_month col-md-13"
                                                                     data-date="" data-date-format="yyyy-mm-dd">
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
                                                                签订时间
                                                            </td>
                                                            <td style="width:15%">
                                                                <div class="input-group date form_month col-md-13"
                                                                     data-date="" data-date-format="yyyy-mm-dd">
                                                                    <input name="search.signingDate" type="text"
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
                                                                审核情况
                                                            </td>
                                                            <td style="width:15%">
                                                                <select class="select2_category form-control"
                                                                        name="search.endProjectResult">
                                                                    <option value="所有" checked>所有</option>
                                                                    <option value="已结题">已结题</option>
                                                                    <option value="未结题">未结题</option>
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
                                                                       class="form-control"
                                                                       placeholder="项目名称">
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
                                                                <li id="pre"><a>上一页</a></li>
                                                                <li id="next"><a>下一页</a></li>
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
                </div>
            </div>
            <div class="col-md-13">
                <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_2">

                            <div class="portlet light ">

                                <div class="portlet-body form">
                                    <form action="/horizontal/horizontal/save.html" class="form-horizontal"
                                          method="post">
                                        <div class="form-body">
                                            <!--锚点链接 -->
                                            <a name="5F" style="color:#ffffff;text-decoration: none;"> </a>
                                            <h3 class="form-section font-red-sunglo">横向课题信息详情</h3>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">项目名称</label>
                                                        <div class="col-md-6">
                                                            <s:textfield id="projectName" type="text"
                                                                         name="horizontal.projectName"
                                                                         class="form-control"
                                                                         placeholder="项目名称"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group ">
                                                        <label class="control-label col-md-4 font-red-sunglo">委托方</label>
                                                        <div class="col-md-6">
                                                            <s:textfield type="text" name="horizontal.contractName"
                                                                         class="form-control"
                                                                         placeholder="委托方"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">项目负责人单位</label>
                                                        <div class="col-md-6">
                                                            <s:textfield id="peopleUnit" type="text"
                                                                         name="horizontal.unitName"
                                                                         class="form-control"
                                                                         placeholder="项目负责人单位"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">项目负责人</label>
                                                        <div class="col-md-6">
                                                            <a data-target="#long5" data-toggle="modal">
                                                                <s:textfield id="treePeople" type="text"
                                                                             name="horizontal.projectHeaderName"
                                                                             class="form-control"
                                                                             placeholder="项目负责人"/>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">合同经费(万元)</label>
                                                        <div class="col-md-6">
                                                            <s:textfield id="funds" type="text"
                                                                         name="horizontal.contactExpenditure"
                                                                         class="form-control"
                                                                         placeholder="合同经费（万元）"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">合同时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_month col-md-13"
                                                                 data-date="" data-date-format="yyyy-mm-dd">
                                                                <input name="horizontal.signingDate" type="text"
                                                                       size="16" class="form-control"/>
                                                                <span class="input-group-btn">
																<button class="btn default date-set" type="button"><i
                                                                        class="fa fa-calendar"></i></button>
																</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">累计到位经费（万元）</label>
                                                        <div class="col-md-6">
                                                            <s:textfield id="fundsCount" type="text"
                                                                         name="horizontal.putExpenditure"
                                                                         class="form-control"
                                                                         placeholder="累计到位经费（万元）"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">累计工作量（万元）</label>
                                                        <div class="col-md-6">
                                                            <s:textfield type="text" name="horizontal.putWorkNumber"
                                                                         class="form-control"
                                                                         placeholder="累计工作量（万元）"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">有效期限（开始）</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_month col-md-13"
                                                                 data-date="" data-date-format="yyyy-mm-dd">
                                                                <input type="text" size="16" class="form-control">
                                                                <span class="input-group-btn">
																<button class="btn default date-set" type="button"><i
                                                                        class="fa fa-calendar"></i></button>
																</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">有效期限（结束）</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_month col-md-13"
                                                                 data-date="" data-date-format="yyyy-mm-dd">
                                                                <input name="horizontal.effectiveMin" type="text"
                                                                       size="16" class="form-control">
                                                                <span class="input-group-btn">
																<button class="btn default date-set" type="button"><i
                                                                        class="fa fa-calendar"></i></button>
																</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">签约地点</label>
                                                        <div class="col-md-6">
                                                            <input name="horizontal.signingAddress" type="text"
                                                                   class="form-control" placeholder="签约地点">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">项目类型</label>
                                                        <div class="col-md-6">
                                                            <s:select
                                                                    list="#{'技术开发':'技术开发','技术咨询':'技术咨询', '技术转让':'技术转让', '技术服务':'技术服务'}"
                                                                    name="horizontal.projectType"
                                                                    class="form-control"></s:select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">合同编号</label>
                                                        <div class="col-md-6">
                                                            <s:textfield type="text" name="horizontal.contractId"
                                                                         class="form-control"
                                                                         placeholder="合同编号"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">合同份数</label>
                                                        <div class="col-md-6">
                                                            <s:textfield type="text" name="horizontal.contactNumber"
                                                                         class="form-control"
                                                                         placeholder="合同份数"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">其他参与成员</label>
                                                        <div class="col-md-6">
                                                            <a data-target="#otherPeopleWindow" data-toggle="modal">
                                                                <s:textfield id="otherPeopleInput" type="text"
                                                                             name="horizontal.memberName"
                                                                             class="form-control"
                                                                             placeholder="其他参与成员"/>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 ">备注</label>
                                                        <div class="col-md-8">
                                                            <s:textfield type="text" name="horizontal.remark"
                                                                         class="form-control"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">立项结论</label>
                                                        <div class="col-md-6">
                                                            <s:select list="#{'未通过':'未通过','通过':'通过'}"
                                                                      name="horizontal.projectSetStatus"
                                                                      class="form-control"></s:select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">是否结题</label>
                                                        <div class="col-md-6">
                                                            <s:select list="#{'未结题':'未结题','已结题':'已结题'}"
                                                                      name="horizontal.endProjectResult"
                                                                      class="form-control"></s:select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">结题时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_month2 col-md-13"
                                                                 data-date="" data-date-format="yyyy-mm-dd">
                                                                <input name="horizontal.endProjectDate" type="text"
                                                                       size="16" class="form-control">
                                                                <span class="input-group-btn">
																<button class="btn default date-set" type="button"><i
                                                                        class="fa fa-calendar"></i></button>
																</span>
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
                                                            <button type="submit" class="btn green">提交</button>
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
    <!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->

<%-- 项目负责人 --%>
<div class="portlet-body">
    <div id="long5" class="modal fade"
         style="width:30%;height:60%;margin-top:-300px;">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="portlet light ">
                    <div id="treeDiv"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<%-- 项目负责人 --%>
<!--公共尾部-->
<%@ include file="../PeopleFoot/listUI.jsp" %>
<!--公共尾部End-->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<script>
    jQuery(document).ready(function () {
        jQuery(document).ready(function() {
            $("#Label-03-01").addClass("active");
        });

        // 查找
        $('#search').click(function () {
            $.post('/horizontal/horizontal/usearch.html', $('#searchForm').serialize(), function (data) {
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td>' + o.projectName + '</td>' +
                        '<td><span class="label label-sm label-success">' + o.endProjectResult + '</span></td>' +
                        '</tr>'
                }
                $('#tbody').html(content);
            });
        });
        // 分页
        $('#pre').click(function () {
            $.get('/horizontal/horizontal_pre', function (data) {
                if (data == '-1') return;
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td>' + o.projectName + '</td>' +
                        '<td><span class="label label-sm label-success">' + o.endProjectResult + '</span></td>' +
                        '</tr>'
                }
                $('#tbody').html(content);
            });
        });

        $('#next').click(function () {
            $.get('/horizontal/horizontal_next', function (data) {
                if (data == '-1') return;
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td>' + o.projectName + '</td>' +
                        '<td><span class="label label-sm label-success">' + o.endProjectResult + '</span></td>' +
                        '</tr>'
                }
                $('#tbody').html(content);
            });
        });

        // 添加树
        $.get('/employee/employee/tree.html', function (data) {
            data = JSON.parse(data);
            window.d = new dTree('d');
            data.forEach(function (obj) {
                d.add(obj.id, obj.pid, obj.text, obj.url);
            });
            $('#treeDiv').html(d.toString());
        });
    });

    // 处理employee树
    function employeeTree(name) {
        $('#treePeople').val(name);
        $.post('/employee_unitName', {name: name}, function (data) {
            $('#peopleUnit').val(data);
        });
    }
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>