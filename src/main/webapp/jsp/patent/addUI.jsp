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
                        <li>
                            <a href="#">
                                <i class="icon-eye"></i>
                                <span class="title"> 横向课题相关</span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="active">
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
                                <li class="active">
                                    <a href="${basePath}patent_addUI.action">
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
                            <a href="javascript:;">
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

            </ul>
            <!-- END SIDEBAR MENU -->
        </div>
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT Gao-->
    <div class="page-content-wrapper">
        <div class="page-content">
            <!-- BEGIN PAGE CONTENT Li-->
            <div class="row">
                <div class="col-md-12">
                    <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                        <div class="tab-content">
                            <div class="tab-pane active">
                                <div class="portlet light ">
                                    <div class="portlet-body form">
                                        <form id="patentForm" method="post" action="/patent/patent/add.html"
                                              class="form-horizontal" enctype="multipart/form-data">
                                            <s:hidden name="patent.id"/>
                                            <div class="form-body">
                                                <h3 class="form-section font-red-sunglo">专利成果录入</h3>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 font-red-sunglo">专利名称</label>
                                                            <div class="col-md-7">
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
                                                            <div class="col-md-5">
                                                                <s:select name="patent.patentType"
                                                                          class="form-control"
                                                                          list="#{'发明':'发明'}"
                                                                />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 font-red-sunglo">申请号（专利号）</label>
                                                            <div class="col-md-5">
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
                                                            <div class="col-md-5">
                                                                <s:textfield name="patent.patentHolder" type="text"
                                                                             class="form-control"
                                                                             placeholder="专利权人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 font-red-sunglo">授权公告号</label>
                                                            <div class="col-md-5">
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
                                                            <div class="col-md-5">
                                                                <s:select name="patent.departmentName"
                                                                          class="select2_category form-control"
                                                                          list="#{'农业工程与食品科学学院':'农业工程与食品科学学院'}"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 font-red-sunglo">首位完成人</label>
                                                            <div class="col-md-5">
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
                                                            <div class="col-md-5">
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
                                                            <label class="control-label col-md-3 font-red-sunglo">授权公告日</label>
                                                            <div class="col-md-5">
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
                                                            <div class="col-md-5">
                                                                <div class="input-group date form_year col-md-13"
                                                                     data-date="" data-date-format="yyyy">
                                                                    <s:textfield type="text" name="patent.grantYear"
                                                                                 class="form-control"/>
                                                                    <span class="input-group-btn">
                                                                        <button class="btn default date-set"
                                                                                type="button"><i
                                                                                class="fa fa-calendar"></i></button>
                                                                        </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 ">法律状态</label>
                                                            <div class="col-md-5">
                                                                <s:select name="patent.legalStatus"
                                                                          class="select2_category form-control"
                                                                          list="#{'授权':'授权'}"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 ">其他发明人或设计人</label>
                                                            <div class="col-md-7">
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
                                                            <div class="col-md-7">
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
                                                            <label class="control-label col-md-6 ">登记人</label>
                                                            <div class="col-md-5">
                                                                <s:textfield name="patent.registerPeoName" type="text"
                                                                             class="form-control"
                                                                             placeholder="登记人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 ">登记时间</label>
                                                            <div class="col-md-5">
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
                                                            <label class="control-label col-md-6 ">审核人</label>
                                                            <div class="col-md-5">
                                                                <s:textfield name="patent.examinePeoName" type="text"
                                                                             class="form-control"
                                                                             placeholder="审核人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 ">审核时间</label>
                                                            <div class="col-md-5">
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
                                                            <label class="control-label col-md-6 ">审核结论</label>
                                                            <div class="col-md-5">
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
                                            <div class="form-actions right" style="border:0px solid #000;">
                                                <div class="row">
                                                    <div class=" col-md-4">
                                                        <!--此处为样式保留，不要删除！ -->
                                                    </div>
                                                    <div class="col-md-offset-0 col-md-6">
                                                        <input class="btn green" type="submit"
                                                               onclick="javascript:return confirm('您确认要提交该专利成果吗？');"></input>
                                                        <button type="reset" class="btn default">重置</button>
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
    <!-- END PAGE CONTENT-->

    <!-- END CONTAINER -->
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
    <script>
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


        })
        ;

    </script>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>