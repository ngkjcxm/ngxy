<%--
  Created by IntelliJ IDEA.
  User: sunmig
  Date: 2016/11/19
  Time: 14:22
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
    <title>软件成果审核</title>
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
                        <li class="active">
                            <a href="#">
                                <i class="icon-speech"></i>
                                <span class="title">软件著作权相关</span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="active">
                                    <a href="#">
                                        <i class="icon-rocket"></i>
                                        软件著作权导入
                                    </a>
                                </li>
                                <li >
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
            <!-- BEGIN 软件成果录入-->
            <div class="row">
                <div class="col-md-12">
                    <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_2">

                                <div class="portlet light ">

                                    <div class="portlet-body form">
                                        <!-- BEGIN FORM-->
                                        <form name="form" method="post" action="/software/software/check.html"
                                              class="form-horizontal" enctype="multipart/form-data">
                                            <s:hidden name="software.id"/>
                                            <div class="form-body">
                                                <h3 class="form-section font-red-sunglo">软件成果录入</h3>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 ">软件名称</label>
                                                            <div class="col-md-7">
                                                                <s:textfield name="software.softwareName" type="text"
                                                                             class="form-control" placeholder="软件名称"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">著作权人</label>
                                                            <div class="col-md-5">
                                                                <s:textfield name="software.copyrightName" type="text"
                                                                             class="form-control" placeholder="著作权人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">登记号</label>
                                                            <div class="col-md-5">
                                                                <s:textfield name="software.registerId" type="text"
                                                                             class="form-control" placeholder="登记号"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">首位完成人单位</label>
                                                            <div class="col-md-5">
                                                                <s:select name="software.academicUnit1Name"
                                                                          class="select2_category form-control"
                                                                          list="#{
                                                                    '农业工程与食品科学学院':'农业工程与食品科学学院'
                                                                    }"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 ">首位完成人</label>
                                                            <div class="col-md-5">
                                                                <s:textfield name="software.author1Name" type="text"
                                                                             class="form-control" placeholder="首位完成人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">开发完成日期</label>
                                                            <div class="col-md-5">
                                                                <input name="software.finishDate" type="date"
                                                                       class="form-control"
                                                                       value="<s:date name="software.finishDate"  format="yyyy-MM-dd"/>"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 ">首次发表日期</label>
                                                            <div class="col-md-5">
                                                                <input name="software.fistPublishDate" type="date"
                                                                       class="form-control"
                                                                       value="<s:date name="software.fistPublishDate"  format="yyyy-MM-dd"/>"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">证书号</label>
                                                            <div class="col-md-5">
                                                                <s:textfield name="software.deplomaId" type="text"
                                                                             class="form-control" placeholder="证书号"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">发证日期</label>
                                                            <div class="col-md-5">
                                                                <input name="software.issueDate" type="date"
                                                                       class="form-control"
                                                                       value="<s:date name="software.issueDate"  format="yyyy-MM-dd"/>"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">其他完成人</label>
                                                            <div class="col-md-5">
                                                                <s:textfield name="software.otherAutherName" type="text"
                                                                             class="form-control" placeholder="其他完成人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 ">津贴发放年度</label>
                                                            <div class="col-md-5">
                                                                <div class="input-group date form_year col-md-12"
                                                                     data-date="" data-date-format="yyyy">
                                                                    <s:textfield type="text"
                                                                                 name="software.allowanceYear"
                                                                                 class="form-control"/>
                                                                    <span class="input-group-btn">
																	<button class="btn default date-set"
                                                                            type="button"><i class="fa fa-calendar"></i></button>
																	</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">著作权证书附件</label>
                                                            <div class="col-md-5" style="border:0px solid #ee1100;">
                                                                <s:if test="%{software.headImg !=null && software.headImg !='' }">
                                                                    <img src="/upload/<s:property value='software.headImg'/>"
                                                                         width="250" height="250">
                                                                    <s:hidden name="software.headImg"/>
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
                                                                <s:textfield name="software.remark" type="text"
                                                                             class="form-control" placeholder="备注"/>
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
                                                                <s:textfield name="software.registerPeoName" type="text"
                                                                             class="form-control" placeholder="登记人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 ">登记时间</label>
                                                            <div class="col-md-5">
                                                                <input name="software.registerDate" type="date"
                                                                       class="form-control"
                                                                       value="<s:date name="software.registerDate"  format="yyyy-MM-dd"/>"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">审核人</label>
                                                            <div class="col-md-5">
                                                                <s:textfield name="software.examinePeoName" type="text"
                                                                             class="form-control" placeholder="审核人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3 ">审核时间</label>
                                                            <div class="col-md-5">
                                                                <input name="software.examineDate" type="date"
                                                                       class="form-control"
                                                                       value="<s:date name="software.examineDate"  format="yyyy-MM-dd"/>"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">审核结论</label>
                                                            <div class="col-md-5">
                                                                <s:select name="software.examineStatus"
                                                                          class="select2_category form-control"
                                                                          list="#{
                                                                    '通过':'通过',
                                                                    '未通过':'未通过',
                                                                    '待审核':'待审核'
                                                                    }"
                                                                />
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
                                                               onclick="javascript:return confirm('您确认要提交该软件成果吗？');"/>
                                                        <a id="deleteWork" class="btn red">删除</a>
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
            <!-- END SAMPLE FORM PORTLET-->
        </div>
    </div>
</div>
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
        $.get('/software/software/pre.html', function (data) {
            if (data == '-1') return;
            data = JSON.parse(data);
            var content = '';
            for (var i = 0; i < data.length; i++) {
                var o = data[i];
                content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td><a href="/software/software/detail/' + o.id + '.html">' + o.softwareName + '</a> </td>' +
                        '<td>' + o.examineStatus + '</td>' +
                        '</tr>'
            }
            $('#tbody').html(content);
        });
    });

    // 删除
    $('#deleteWork').click(function () {

        if (confirm("删除后将无法恢复，确认删除该课题！！")) {
            $.get('/software/software/delete.html', function (data) {
                if (data == 'yes') {
                    alert("操作成功");
                } else {
                    alert("操作失败");
                }
            });
        }

    });


    $('#next').click(function () {
        $.get('/software/software/next.html', function (data) {
            if (data == '-1') return;
            data = JSON.parse(data);
            var content = '';
            for (var i = 0; i < data.length; i++) {
                var o = data[i];
                content += '<tr class="odd gradeX">' +
                        '<td>' + o.id + '</td>' +
                        '<td><a href="/software/software/detail/' + o.id + '.html">' + o.softwareName + '</a> </td>' +
                        '<td>' + o.examineStatus + '</td>' +
                        '</tr>'
            }
            $('#tbody').html(content);
        });
    });
    })
    ;

</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>