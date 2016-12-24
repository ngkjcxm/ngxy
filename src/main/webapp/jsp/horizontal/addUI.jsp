<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sunmig
  Date: 2016/11/10
  Time: 20:49
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
    <title>横向课题录入</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>

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
                <li class="start">
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
                <li class="active">
                    <a href="javascript:;">
                        <i class="icon-rocket"></i>
                        <span class="title">科研成果管理</span>
                        <span class="arrow open"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="active">
                            <a href="#">
                                <i class="icon-eye"></i>
                                <span class="title"> 横向课题相关</span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="active">
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

            </ul>
            <!-- END SIDEBAR MENU -->
        </div>
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT Gao-->
    <div class="page-content-wrapper">
        <div class="page-content">
            <div class="row">

                <div class="col-md-12">
                    <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_2">
                                <div class="portlet light ">
                                    <div class="portlet-body form">
                                        <!-- BEGIN FORM-->
                                        <form id="horizontalForm" method="post"
                                              class="form-horizontal">
                                            <s:hidden name="horizontal.id"/>
                                            <div class="form-body">
                                                <h3 class="form-section font-red-sunglo">横向课题信息详情</h3>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">项目名称</label>
                                                            <div class="col-md-5">
                                                                <s:textfield id="projectName" type="text"
                                                                             name="horizontal.projectName"
                                                                             class="form-control"
                                                                             placeholder="项目名称"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group ">
                                                            <label class="control-label col-md-3 font-red-sunglo">委托方</label>
                                                            <div class="col-md-5">
                                                                <s:textfield type="text" name="horizontal.contractName"
                                                                             class="form-control"
                                                                             placeholder="委托方"/>
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
                                                            <div class="col-md-5">
                                                                <s:textfield id="peopleUnit" type="text"
                                                                             name="horizontal.unitName"
                                                                             class="form-control"
                                                                             placeholder="项目负责人单位"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 font-red-sunglo">项目负责人</label>
                                                            <div class="col-md-5">
                                                                <a data-target="#long5" data-toggle="modal">
                                                                    <s:textfield id="treePeople" type="text"
                                                                                 name="horizontal.projectHeaderName"
                                                                                 class="form-control"
                                                                                 placeholder="项目负责人"/>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                </div>
                                                <!--/row-->
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">合同经费(万元)</label>
                                                            <div class="col-md-5">
                                                                <s:textfield id="funds" type="text"
                                                                             name="horizontal.contactExpenditure"
                                                                             class="form-control"
                                                                             placeholder="合同经费（万元）"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 font-red-sunglo">合同时间</label>
                                                            <div class="col-md-5">
                                                                <input type="date" name="horizontal.signingDate"
                                                                       value="<s:date name="horizontal.signingDate" format="yyyy-MM-dd" />"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                </div>
                                                <!--/row-->
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">累计到位经费（万元）</label>
                                                            <div class="col-md-5">
                                                                <s:textfield id="fundsCount" type="text"
                                                                             name="horizontal.putExpenditure"
                                                                             class="form-control"
                                                                             placeholder="累计到位经费（万元）"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">累计工作量（万元）</label>
                                                            <div class="col-md-5">
                                                                <s:textfield type="text" name="horizontal.putWorkNumber"
                                                                             class="form-control"
                                                                             placeholder="累计工作量（万元）"/>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">有效期限</label>
                                                            <div class="col-md-5">
                                                                <s:textfield type="text" name="horizontal.effectiveMin"
                                                                             class="form-control"
                                                                             placeholder="办公电话"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">签约地点</label>
                                                            <div class="col-md-5">
                                                                <s:textfield type="text"
                                                                             name="horizontal.signingAddress"
                                                                             class="form-control"
                                                                             placeholder="签约地点"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">项目类型</label>
                                                            <div class="col-md-5">
                                                                <s:select
                                                                        list="#{'技术开发':'技术开发','技术咨询':'技术咨询', '技术转让':'技术转让', '技术服务':'技术服务'}"
                                                                        name="horizontal.projectType"
                                                                        class="form-control"></s:select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">合同编号</label>
                                                            <div class="col-md-5">
                                                                <s:textfield type="text" name="horizontal.contractId"
                                                                             class="form-control"
                                                                             placeholder="合同编号"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">合同份数</label>
                                                            <div class="col-md-5">
                                                                <s:textfield type="text" name="horizontal.contactNumber"
                                                                             class="form-control"
                                                                             placeholder="合同份数"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">其他参与成员</label>
                                                            <div class="col-md-5">
                                                                <a data-target="#otherPeopleWindow" data-toggle="modal" >
                                                                    <s:textfield id="otherPeopleInput" type="text"
                                                                                 name="horizontal.memberName"
                                                                                 class="form-control"
                                                                                 placeholder="其他参与成员"/>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">备注</label>
                                                            <div class="col-md-7">
                                                                <s:textfield type="text" name="horizontal.remark"
                                                                             class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <h3 class="form-section font-red-sunglo">审核信息</h3>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">立项结论</label>
                                                            <div class="col-md-5">
                                                                <s:select list="#{'未通过':'未通过','通过':'通过'}"
                                                                          name="horizontal.projectSetStatus"
                                                                          class="form-control"></s:select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 font-red-sunglo">是否结题</label>
                                                            <div class="col-md-5">
                                                                <s:select list="#{'未结题':'未结题','已结题':'已结题'}"
                                                                          name="horizontal.endProjectResult"
                                                                          class="form-control"></s:select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">结题时间</label>
                                                            <div class="col-md-5">
                                                                <input type="date" name="horizontal.endProjectDate"
                                                                       value="<s:date name="horizontal.endProjectDate" format="yyyy-MM-dd" />"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 font-red-sunglo">登记人</label>
                                                            <div class="col-md-5">
                                                                <s:textfield type="text"
                                                                             name="horizontal.registrationPeoName"
                                                                             class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">登记时间</label>
                                                            <div class="col-md-5">
                                                                <input type="date" name="horizontal.registrationDate"
                                                                       value="<s:date name="horizontal.registrationDate" format="yyyy-MM-dd" />"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 font-red-sunglo">审核人</label>
                                                            <div class="col-md-5">
                                                                <s:textfield type="text"
                                                                             name="horizontal.examinePeoName"
                                                                             class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">审核时间</label>
                                                            <div class="col-md-5">
                                                                <input type="date" name="horizontal.examineDate"
                                                                       value="<s:date name="horizontal.examineDate" format="yyyy-MM-dd" />"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">附件上传</label>
                                                            <div class="col-md-5">
                                                                <%--<input type="file"/>--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-actions right" style="border:0px solid #000;">
                                                <div class="row">
                                                    <div class=" col-md-4">
                                                        <div class="form-group">
                                                            <a data-target="#long3" data-toggle="modal">
                                                                <button id="fundsBtn" type="button"
                                                                        class="btn blue">
                                                                    已到位经费审核
                                                                </button>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-offset-0 col-md-6">
                                                        <a class="btn green" data-toggle="modal" href="#draggable">提交</a>
                                                        <a href="javascript:doDelete()" class="btn red">删除</a>
                                                        <button type="button" class="btn default">取消</button>
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
            <!-- END SAMPLE FORM PORTLET-->
        </div>
    </div>
</div>
<!-- END PAGE CONTENT-->
<!-- 弹出框 已到位经费审核 -->
<div class="portlet-body">
    <div id="long3" class="modal fade modal-scroll" tabindex="-1" data-replace="true"
         style="width:90%;height:80%;margin-top:-250px;margin-left:-45%;">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
        </div>
        <div class="row">
            <!-- 查找列表开始-->
            <div class="col-md-5">
                <!-- BEGIN SAMPLE FORM PORTLET-->
                <div class="portlet light ">
                    <div class="portlet-body form">
                        <div class="form-body">
                            <h3 class="form-section font-red-sunglo">已到位经费审核查找</h3>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-bordered  " style="text-align:center;">
                                        <tbody>
                                        <tr>
                                            <td style="width:30%;font-size:15px;text-align:center;">审核情况</td>
                                            <td style="width:70%">
                                                <select id="fundsSelect"
                                                        class="select2_category form-control"
                                                        data-placeholder="Choose a Category" tabindex="1">
                                                    <option value="所有" checked>所有</option>
                                                    <option value="已通过">已通过</option>
                                                    <option value="待审核">待审核</option>
                                                    <option value="未通过">未通过</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <button id="fundsSearch" class="btn btn-primary btn-block">搜索</button>
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
                                                    <th style="text-align:center;">序号</th>
                                                    <th style="text-align:center;">到款说明</th>
                                                    <th style="text-align:center;">完成</th>
                                                </tr>
                                                </thead>

                                                <tbody id="fundsBody">

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 查找列表结束-->
            <!-- 详细信息开始-->
            <div class="col-md-7">
                <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_2">
                            <div class="portlet light ">
                                <div class="portlet-body form">
                                    <!-- 已到位经费审核详情表单开始-->
                                    <form id="fundsForm" class="form-horizontal">
                                        <div class="form-body">
                                            <h3 class="form-section font-red-sunglo">已到位经费审核详情</h3>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 font-red-sunglo">课题名称</label>
                                                        <div class="col-md-7">
                                                            <input id="checkName" name="funds.horizontalName"
                                                                   type="text" class="form-control" placeholder="课题名称"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 font-red-sunglo">合同经费（万元）</label>
                                                        <div class="col-md-7">
                                                            <input id="checkFunds" type="text" class="form-control"
                                                                   placeholder="合同经费（万元）"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5 font-red-sunglo">累计到位经费（万元）</label>
                                                        <div class="col-md-7">
                                                            <input id="checkFundsGo" type="text" class="form-control"
                                                                   placeholder="累计到位经费（万元）"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5">累计研发费（万元）</label>
                                                        <div class="col-md-7">
                                                            <input type="text" class="form-control"
                                                                   placeholder="累计研发费（万元）"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5">累计设备费（万元）</label>
                                                        <div class="col-md-7">
                                                            <input type="text" class="form-control"
                                                                   placeholder="累计设备费（万元）"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5">到位经费（万元）</label>
                                                        <div class="col-md-7">
                                                            <input  name="funds.intoFunds" type="text"
                                                                    class="form-control" placeholder="项目负责人"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5">其中研发费（万元）</label>
                                                        <div class="col-md-7">
                                                            <input  name="funds.rdExpenses" type="text"
                                                                    class="form-control" placeholder="项目负责人"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5">其中设备费（万元）</label>
                                                        <div class="col-md-7">
                                                            <input id="equipmentExpenses" name="funds.equipmentExpenses"
                                                                   type="text" class="form-control" placeholder="项目负责人"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5">到款时间</label>
                                                        <div class="col-md-7">
                                                            <input id="intoMoneyDate" name="funds.intoMoneyDate"
                                                                   type="date" class="form-control"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-5">是否开具发票</label>
                                                        <div class="col-md-7">
                                                            <select id="isInvoice" name="funds.isInvoice"
                                                                    class="form-control">
                                                                <option value="否">否</option>
                                                                <option value="是">是</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <h3 class="form-section font-red-sunglo">已到位经费审核列表</h3>
                                            <table class="table table-striped table-bordered table-hover" style="text-align:center;">
                                                <thead>
                                                <tr>
                                                    <th style="text-align:center;"> 序号</th>
                                                    <th style="text-align:center;"> 参与人</th>
                                                    <th style="text-align:center;">创建账号</th>
                                                    <th style="text-align:center;">研发费（万元）</th>
                                                    <th style="text-align:center;"> 设备费（万元）</th>
                                                    <th style="text-align:center;">研发账号</th>
                                                    <th style="text-align:center;">基金账号</th>
                                                </tr>
                                                </thead>
                                                <tbody id="detailBody">

                                                </tbody>
                                            </table>
                                            <div class="form-actions right" style="border:0px solid #000;">
                                                <div class="row" style="border:0px solid red;">
                                                    <div class="col-md-12 " style="border:0px solid green;">
                                                        <div class="col-md-12 " style="border:0px solid green;">
                                                            <div class="row">
                                                                <div class="col-md-offset-3 col-md-9">
                                                                    <a id="check" class="btn green">审核到位经费 </a>
                                                                    <button id="reset" type="reset" class="btn green">
                                                                        继续添加经费
                                                                    </button>
                                                                    <a id="save" class="btn green">保存</a>
                                                                    <a id="delete" class="btn red">删除经费</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <input type="hidden"  name="funds.id"/>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 详细信息结束-->
        </div>
    </div>
</div>
<!-- End弹出框 已到位经费审核 -->
<div class="portlet-body">
    <div id="long5" class="modal fade modal-scroll" tabindex="-1" data-replace="true"
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
<div class="modal fade draggable-modal" id="draggable" tabindex="-1" role="basic" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">是否保存用户信息</h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn default" data-dismiss="modal">Close</button>
                <button type="button" id="saveHorizontal" class="btn blue">Save changes</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- 其他参与人弹窗 -->
<div id="otherPeopleWindow" class="modal fade" role="dialog" tabindex="-1" data-replace="true"
     style="width:750px;">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    </div>
    <div style="margin-left: 50px;">
        <div class="panel panel-primary select-all">
            <div class="panel-heading">
                <h2 class="panel-title">添加其他参与人</h2>
            </div>
            <div class="panel-body">
                <select class="form-control" id="selectedDepartment">
                    <option>党政办公室</option>
                    <option>农业工程系</option>
                    <option>食品科学与工程系</option>
                    <option>工业设计系</option>
                    <option>可再生能源工程系</option>
                    <option>制图教学部</option>
                </select>

                <div class="row select-pad">
                    <div class="select">
                        <ul id="select-list" class="list-group" style="overflow: auto;height: 100%;">
                        </ul>
                    </div>
                    <div class="menu">
                        <ul class="list-group text-center">
                            <a id="add" href="javascript:;" class="list-group-item" title="右移"><strong>＞＞</strong></a>
                            <a id="remove" href="javascript:;" class="list-group-item"
                               title="左移"><strong>＜＜</strong></a>
                        </ul>
                    </div>
                    <div id="selected" class="selected" style="overflow: auto;height: 100%;"></div>
                </div>

                <div class="row">
                    <div class="col-xs-offset-3 col-xs-6">
                        <input id="otherPeople" type="text" class="form-control col-xs-10" placeholder="添加成员姓名"/>
                    </div>
                    <button id="addOther" class="btn btn-danger">添加</button>
                </div>
            </div>
            <div class="panel-footer">
                <button id="success" class="btn btn-primary" style="margin-left:530px;">添加完成</button>
            </div>
        </div>
    </div>
</div>
<!-- 其他参与人弹窗/end -->

<!-- BEGIN FOOTER -->
<div class="page-footer navbar-fixed-bottom">
    <div class="page-footer-inner">
        2014 &copy; Metronic by keenthemes. <a
            href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"
            title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase
        Metronic!</a>
    </div>
    <div class="scroll-to-top">
        <i class="icon-arrow-up"></i>
    </div>
</div>



<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<script src="/lib/js/select.js"></script>
<script>

    $('#saveHorizontal').click(function () {
        var formDeletetask = document.getElementById("horizontalForm");
        formDeletetask.action = "${basePath}horizontal_check.action";
        formDeletetask.submit();
    });

    jQuery(document).ready(function () {
        function doDelete() {
            alert("是否删除");
            document.forms[0].action = "/horizontal/horizontal/delete.html"
            document.forms[0].submit();
        }

        // 添加树
        $.get('/employee/employee/tree.html', function (data) {
            data = JSON.parse(data);
            window.d = new dTree('d');
            data.forEach(function (obj) {
                d.add(obj.id, obj.pid, obj.text, obj.url);
            });
            $('#treeDiv').html(d.toString());
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
                        '<td><a href="/horizontal/horizontal/detail/' + o.id + '.html">' + o.projectName + '</a> </td>' +
                        '<td>' + o.projectHeaderName + '</td>' +
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
                        '<td><a href="/horizontal/horizontal_detail?id=' + o.id + '">' + o.projectName + '</a> </td>' +
                        '<td>' + o.projectHeaderName + '</td>' +
                        '<td><span class="label label-sm label-success">' + o.endProjectResult + '</span></td>' +
                        '</tr>'
                }
                $('#tbody').html(content);
            });
        });

        // 到位经费信息注入并初始化列表信息
        $('#fundsBtn').click(function () {
            //课题名称：projectName
            //合同经费：funds
            //累计到位经费：fundsCount
            $('#checkName').val($('#projectName').val());
            $('#checkFunds').val($('#funds').val());
            $('#checkFundsGo').val($('#fundsCount').val());

            fundsList();
        });

        //继续添加
        $('#reset').click(function () {
            // 重置表单后注入有用信息
            // 如果不设置演示操作，会导致不能注入值
            setTimeout(function () {
                $('#checkName').val($('#projectName').val());
                $('#checkFunds').val($('#funds').val());
                $('#checkFundsGo').val($('#fundsCount').val());
                // 设置id
                $('#id').val('0');
            }, 10);
        });

        //提交经费表单
        $('#save').click(function () {
            console.log($('#fundsForm').serialize());
            $.ajax({
                type: "POST",
                contentType: "application/x-www-form-urlencoded;charset=UTF-8",
                url: '/horizontal/horizontal/saveF.html',
                data: $('#fundsForm').serialize(),
                success: function (data) {
                    // 重新获取funds list
                    fundsList();
                    if (data == 'ok') {
                        alert("操作成功");
                    } else {
                        alert("操作失败");
                    }
                },
                error: function (data) {
                    alert("error");
                }
            });
        });

        // 审核
        $('#check').click(function () {
            $.get('/horizontal/horizontal/checkFunds.html', function (data) {
                // 重新获取funds list
                fundsList();

                if (data == 'ok') {
                    alert("操作成功");
                } else {
                    alert("操作失败");
                }
            });
        });

        // 删除
        $('#delete').click(function () {
            $.get('/horizontal/horizontal/deleteFunds.html', function (data) {
                // 重新获取funds list
                fundsList();

                if (data == 'OK') {
                    alert("操作成功");
                } else {
                    alert("操作失败");
                }
            });
        });

        // 搜索
        $('#fundsSearch').click(function () {
            var fundsSelect = $('#fundsSelect').val();
            var search = {fundsSearch: fundsSelect};
            fundsList('/horizontal/horizontal_searchF', search);
        });
    });

    /**
     * 初始化funds列表并绑定事件
     */
    function fundsList(url, search) {
        url = url || '/horizontal/horizontal/fundsList.html';
        search = search || {};
        $.post(url, search, function (data) {
            data = JSON.parse(data);
            var str = '';
            var i = 1;
            data.forEach(function (item) {
                str += '<tr class="odd gradeX"><td>' + (i++) + '</td><td><a class="detail" href="#" data-id="' + item.id + '">' + item.explain + ' </a></td><td><span class="label label-sm label-success">' + item.state + ' </span></td></tr>'
            });
            $('#fundsBody').html(str);


            // 添加监听事件
            $('.detail').click(function () {
                var id = $(this).attr('data-id');
                $.get('/horizontal/horizontal_fundsDetail?fundsId=' + id, function (data) {
                    data = JSON.parse(data);
                    $('#intoFunds').val(data.intoFunds);
                    $('#rdExpenses').val(data.rdExpenses);
                    $('#equipmentExpenses').val(data.equipmentExpenses);
                    $('#intoMoneyDate').val(data.intoMoneyDate);
                    $('#isInvoice').val(data.isInvoice);
                    $('#id').val(data.id);
                    var str = '<tr class="odd gradeX"><td>1</td><td><a href="#">'
                        + data.registerPeoName + '</a></td>' +
                        '<td><span class="label label-sm label-danger">是</span></td><td>' + data.intoFunds + '</td><td>' + data.equipmentExpenses + '</td>' +
                        '<td>123456</td><td>9001-115148</td></tr>';
                    $('#detailBody').html(str);
                });
            });



        });
    }


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