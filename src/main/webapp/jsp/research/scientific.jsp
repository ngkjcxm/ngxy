<%--
  Created by IntelliJ IDEA.
  User: sunming
  Date: 2016/12/5
  Time: 19:51
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
    <title>科研成果相关</title>
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
                                <h3 class="form-section font-red-sunglo">科研成果信息查找</h3>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="table-toolbar">
                                <div class="row">
                                    <form role="form" action="/research/research/usearch.html" method="post">
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
                                                                    <div class="input-group date form_year col-md-12">
                                                                        <input name="search.date" type="month"
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
                                                                项目名称
                                                            </td>
                                                            <td style="width:15%">
                                                                <input name="search.projectName" type="text"
                                                                       class="form-control" placeholder="项目名称"/>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                归属单位
                                                            </td>
                                                            <td style="width:15%">
                                                                <select name="search.belong"
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
                                                                            <a href="/research/research/udetail/${o.id}.html">
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
                                    <form name="form" class="form-horizontal" method="post">
                                        <s:hidden name="scientificResearchReward.id"/>
                                        <div class="form-body">
                                            <h3 class="form-section font-red-sunglo">科研成果信息录入</h3>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 font-red-sunglo">奖励名称</label>
                                                        <div class="col-md-8">
                                                            <s:textfield name="scientificResearchReward.researchName" type="text"
                                                                         class="form-control" placeholder="奖励名称"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">证书编号</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="scientificResearchReward.researchId" type="text"
                                                                         class="form-control" placeholder="证书编号"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">授奖部门</label>
                                                        <div class="col-md-6">
                                                            <s:select name="scientificResearchReward.awardDepartment"
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
                                                <!--/span-->

                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">首位完成人单位</label>
                                                        <div class="col-md-6">
                                                            <s:select name="scientificResearchReward.unitName"
                                                                      class="select2_category form-control"
                                                                      list="#{
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
                                                            <s:textfield name="scientificResearchReward.completePeoName" type="text"
                                                                         class="form-control" placeholder="首位完成人"/>
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
                                                        <label class="control-label col-md-6 font-red-sunglo">获奖日期</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_year col-md-12">
                                                                <input name="scientificResearchReward.awardYear"
                                                                       value="<s:date name="scientificResearchReward.awardYear" format="yyyy-MM-dd" />"
                                                                       type="date" class="form-control"/>
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
                                                <!--/span-->

                                            </div>
                                            <!--/row-->
                                            <!--/row-->
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
                                                                <input type="date" name="scientificResearchReward.allowance"
                                                                       value="<s:date name="scientificResearchReward.allowance" format="yyyy-MM-dd"/>"
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
                                                            <s:textfield name="scientificResearchReward.remark" type="text"
                                                                         class="form-control" placeholder="备注"/>
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
                                                        <label class="control-label col-md-6 ">其他完成人</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="scientificResearchReward.otherMemberName" type="text"
                                                                         class="form-control" placeholder="其他完成人<"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">登记人</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="scientificResearchReward.registerPeoName" type="text"
                                                                         class="form-control" placeholder="登记人"/>
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
                                                        <label class="control-label col-md-6 ">登记时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_day2 col-md-13"
                                                                 data-date="" data-date-format="yyyy/mm/dd">
                                                                <input name="scientificResearchReward.registerDate"
                                                                       value="<s:date name="scientificResearchReward.registerDate"/>"
                                                                       type="date" size="16" class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">单位证书附件</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="scientificResearchReward.unitDiplomaAnnexesName"
                                                                         type="text" class="form-control"
                                                                         placeholder="单位证书附件"/>
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
                                                <!--/span-->
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
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                        </div>
                                        <div class="form-actions right" style="border:0px solid #000;">
                                            <div class="row" style="border:0px solid red;">
                                                <div class="col-md-12 " style="border:0px solid green;">
                                                    <div class="row">
                                                        <div class="col-md-offset-3 col-md-9">
                                                            <a href="javascript:form.action='/research/research/save.html';form.submit()"
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
            $("#Label-03-06").addClass("active");
        });

        // 分页
        $('#pre').click(function () {
            $.get('/research/research/pre.html', function (data) {
                console.log(data)
                if(data == '-1') return;
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td><a href="/research/research/udetail/' + o.id + '.html">' + o.researchName + '</a> </td>' +
                        '<td>' + o.examineResult + '</td>' +
                        '</tr>'
                }
                $('#tbody').html(content);
            });
        });

        $('#next').click(function () {
            $.get('/research/research/next.html', function (data) {
                console.log(data)
                if(data == '-1') return;
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td><a href="/research/research/udetail/' + o.id + '.html">' + o.researchName + '</a> </td>' +
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