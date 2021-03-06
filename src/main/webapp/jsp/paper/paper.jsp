<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <title>论文课题相关</title>
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
                                <h3 class="form-section font-red-sunglo">论文课题信息查找</h3>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="table-toolbar">
                                <div class="row">
                                    <form role="form" action="/paper/paper/usearch.html" method="post">
                                        <div class="form-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <table id="user" class="table table-bordered  "
                                                           style="text-align:center;">
                                                        <tbody>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                发表年度
                                                            </td>
                                                            <td style="width:100%">
                                                                <div>
                                                                    <div class="input-group">
                                                                        <input name="search.date" type="month"
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
                                                                <select name="search.state" class="form-control">
                                                                    <option value="所有" checked>所有</option>
                                                                    <option value="通过">已通过</option>
                                                                    <option value="待审核">待审核</option>
                                                                    <option value="未通过">未通过</option>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                论文名称
                                                            </td>
                                                            <td style="width:15%">
                                                                <input name="search.name" type="text"
                                                                       class="form-control"
                                                                       placeholder="论文名称">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                论文作者
                                                            </td>
                                                            <td style="width:15%">
                                                                <input name="search.author" type="text"
                                                                       class="form-control"
                                                                       placeholder="论文作者">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:30%;font-size:15px;text-align:center;">
                                                                归属单位
                                                            </td>
                                                            <td style="width:15%">
                                                                <select name="search.unit"
                                                                        class="select2_category form-control"
                                                                        data-placeholder="Choose a Category"
                                                                        tabindex="1">
                                                                    <option value="" checked></option>
                                                                    <option value="农业工程与食品科学学院">农业工程与食品科学学院</option>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <button class="btn-primary btn">搜索</button>
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
                                                                        论文名称
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
                                                                            <a href="/paper/paper/udetail/${o.id}.html">
                                                                                    ${o.paperName} </a>
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
                                        <div class="form-body">
                                            <h3 class="form-section font-red-sunglo">论文成果录入</h3>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-2 font-red-sunglo">论文题目</label>
                                                        <div class="col-md-10">
                                                            <s:textfield name="paper.paperName" type="text"
                                                                         class="form-control" placeholder="论文题目"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-2 font-red-sunglo">刊物名称</label>
                                                        <div class="col-md-10">
                                                            <s:textfield name="paper.publishName" type="text"
                                                                         class="form-control" placeholder="刊物名称"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">首作者单位</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.unit1Name" type="text"
                                                                         class="form-control" placeholder="首作者单位"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">首作者姓名</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.author1Name" type="text"
                                                                         class="form-control" placeholder="首作者姓名"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 ">是否学生</label>
                                                        <div class="col-md-6">
                                                            <s:select name="paper.isStudent"
                                                                      class="select2_category form-control"
                                                                      list="#{'否':'否','是':'是'}"
                                                            />
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">卷期</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.paperRoll" type="text"
                                                                         class="form-control" placeholder="卷期"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">发表时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_day2 col-md-13"
                                                                 data-date="" data-date-format="yyyy/mm/dd">
                                                                <input name="paper.publishDate" type="date"
                                                                       value="<s:date name="paper.publishDate" format="yyyy-MM-dd"/>"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 font-red-sunglo">论文级别</label>
                                                        <div class="col-md-6">
                                                            <s:select name="paper.paperLevel"
                                                                      class="select2_category form-control"
                                                                      list="#{
                                                                        '国际会议':'国际会议',
                                                                        '核心期刊':'核心期刊',
                                                                        '外文期刊':'外文期刊',
                                                                        'SCD源期刊':'SCD源期刊',
                                                                        '一般期刊':'一般期刊',
                                                                        '内部期刊':'内部期刊',
                                                                        '增刊':'增刊'
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
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">ISSN</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.ISSN" type="text"
                                                                         class="form-control" placeholder="ISSN"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">通讯作者</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.tAuthorName" type="text"
                                                                         class="form-control" placeholder="通讯作者"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 ">论文类型</label>
                                                        <div class="col-md-6">
                                                            <s:select name="paper.paperType"
                                                                      class="select2_category form-control"
                                                                      list="#{
                                                                          'article':'article',
                                                                          'review':'review',
                                                                          'letter':'letter',
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
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">ISBN</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.ISBN" type="text"
                                                                         class="form-control" placeholder="ISBN"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">检索时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_day2 col-md-13"
                                                                 data-date="" data-date-format="yyyy/mm/dd">
                                                                <input name="paper.searchDate" type="date"
                                                                       value="<s:date name="paper.searchDate" format="yyyy-MM-dd"/>"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5">检索类型</label>
                                                        <div class="col-md-6">
                                                            <s:select name="paper.indexedRetrieval"
                                                                      class="select2_category form-control"
                                                                      list="#{
                                                                    'EI':'EI',
                                                                    'SCI':'SCI',
                                                                    'SCI-1区':'SCI-1区',
                                                                    'SCI-2区':'SCI-2区',
                                                                    'SCI-3区':'SCI-3区',
                                                                    'SCI-4区':'SCI-4区',
                                                                    'TSTP':'TSTP',
                                                                    'SSCI':'SSCI',
                                                                    'ISSHP':'ISSHP',
                                                                    'Science':'Science',
                                                                    'Nature':'Nature',
                                                                    'CSSCI':'CSSCI'
                                                                }"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">完成单位</label>
                                                        <div class="col-md-6">
                                                            <s:select name="paper.completeUnit"
                                                                      class="select2_category form-control"
                                                                      list="#{
                                                                          '第一作者单位':'第一作者单位',
                                                                          '第二作者单位':'第二作者单位',
                                                                          '第三作者单位':'第三作者单位',
                                                                          '第四作者单位':'第四作者单位',
                                                                          '第五作者单位':'第五作者单位',
                                                                          '第六作者单位':'第六作者单位',
                                                                          '外单位':'外单位'
                                                                          }"
                                                            />
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">出版地</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.paperPlace" type="text"
                                                                         class="form-control" placeholder="出版地"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 font-red-sunglo">所属学科</label>
                                                        <div class="col-md-6">
                                                            <s:select name="paper.subjectName"
                                                                      class="select2_category form-control"
                                                                      list="#{
                                                                          '农业工程':'农业工程',
                                                                          '食品科学工程':'食品科学工程'
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
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6">第二作者</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.author2Name" type="text"
                                                                         class="form-control" placeholder="第二作者"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">第三作者</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.unit2Name" type="text"
                                                                         class="form-control" placeholder="第三作者"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 ">第四作者</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.author4Name" type="text"
                                                                         class="form-control" placeholder="第四作者"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6">第五作者</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.author5Name" type="text"
                                                                         class="form-control" placeholder="第五作者"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">第六作者</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.author6Name" type="text"
                                                                         class="form-control" placeholder="第六作者"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 ">第七作者</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.author7Name" type="text"
                                                                         class="form-control" placeholder="第七作者"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">第八作者</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.author8Name" type="text"
                                                                         class="form-control" placeholder="第八作者"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">出版社</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.paprtPress" type="text"
                                                                         class="form-control" placeholder="出版社"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 ">检索号</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.searchId" type="text"
                                                                         class="form-control" placeholder="检索号"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">论文集主编</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.paperEidter" type="text"
                                                                         class="form-control" placeholder="论文集主编"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">会议时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_day2 col-md-13">
                                                                <input name="paper.meetingDate" type="date"
                                                                       value="<s:date name="paper.meetingDate" format="yyyy-MM-dd"/>"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 ">会议国家</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.meetingCountry" type="text"
                                                                         class="form-control" placeholder="会议国家"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">津贴发放年度</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_year2 col-md-13"
                                                                 data-date="" data-date-format="yyyy">
                                                                <input name="paper.grantYear" type="date"
                                                                       value="<s:date name="paper.grantYear" format="yyyy-MM-dd"/>"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">会议城市</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.meetingCity" type="text"
                                                                         class="form-control" placeholder="会议城市"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 ">奖金(元)</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.bonus" type="text"
                                                                         class="form-control" placeholder="奖金(元)"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 font-red-sunglo">津贴发放情况</label>
                                                        <div class="col-md-6">
                                                            <s:select name="paper.grantStatus"
                                                                      class="select2_category form-control"
                                                                      list="#{
                                                                          '已发':'已发',
                                                                          '未发':'未发',
                                                                          '需补发':'需补发',
                                                                          '无津贴':'无津贴'
                                                                          }"
                                                            />
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 =-">登记人</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.registerPeoName" type="text"
                                                                         class="form-control" placeholder="登记人"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 =">审核结论</label>
                                                        <div class="col-md-6">
                                                            <s:select name="paper.examineResult"
                                                                      class="select2_category form-control"
                                                                      list="#{
                                                                          '未通过':'未通过',
                                                                          '通过':'通过',
                                                                          '待审核':'待审核'
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
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">审核时间</label>
                                                        <div class="col-md-6">
                                                            <div class="input-group date form_day2 col-md-13"
                                                                 data-date="" data-date-format="yyyy/mm/dd">
                                                                <input name="paper.examineDate" type="date"
                                                                       value="<s:date name="paper.examineDate" format="yyyy-MM-dd"/>"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--/span-->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 font-red-sunglo">学校通讯作者</label>
                                                        <div class="col-md-6">
                                                            <s:select name="paper.isOKforAuthor"
                                                                      class="select2_category form-control"
                                                                      list="#{
                                                                          '是':'是',
                                                                          '否':'否'
                                                                          }"
                                                            />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">备注</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="paper.remark" type="text"
                                                                         class="form-control" placeholder="备注"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--/row-->
                                            <!--/row-->
                                        </div>
                                        <div class="form-actions right" style="border:0px solid #000;">
                                            <div class="row" style="border:0px solid red;">
                                                <div class="col-md-12 " style="border:0px solid green;">
                                                    <div class="row">
                                                        <div class="col-md-offset-3 col-md-9">
                                                            <a href="javascript:form.action='/paper/paper/save.html';form.submit()"
                                                               class="btn green">提交</a>
                                                            <a href="javascript:form.action='/paper/paper/udelete.html';form.submit()"
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
            $("#Label-03-03").addClass("active");
        });

        // 分页
        $('#pre').click(function () {
            $.get('/paper/paper/pre.html', function (data) {
                console.log(data)
                if (data == '-1') return;
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td><a href="/paper/paper/udetail/' + o.id + '.html">' + o.paperName + '</a> </td>' +
                        '<td>' + o.author1Name + '</td>' +
                        '<td><span class="label label-sm label-success">' + o.examineResult + '</span></td>' +
                        '</tr>'
                }
                $('#tbody').html(content);
            });
        });

        $('#next').click(function () {
            $.get('/paper/paper/next.html', function (data) {
                console.log(data)
                if (data == '-1') return;
                data = JSON.parse(data);
                var content = '';
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td><a href="/paper/paper/udetail/' + o.id + '.html">' + o.paperName + '</a> </td>' +
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