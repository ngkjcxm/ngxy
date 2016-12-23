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
                        <li class="active">
                            <a href="#">
                                <i class="icon-speech"></i>
                                <span class="title">著作成果相关</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="active">
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
                        <li>
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
                <li><a href="javascript:;"> <i class="icon-bar-chart"></i> <span class="title">查询统计信息</span> <span
                        class="arrow "></span> </a>
                    <ul class="sub-menu">
                        <li><a href="${basePath}employee_listQueryUI.action"> <i class="icon-user"></i> 人员基础信息统计 </a>
                        </li>
                        <li><a href="${basePath}horizontal_listQueryUI.action"> <i class="icon-bar-chart"></i> 横向课题经费统计
                        </a></li>
                        <!--<li>
                        <a href="#">
                        <i class="icon-paper-plane"></i>
                        横向课题工作量统计
                        </a>
                        </li> -->
                        <li><a href="${basePath}vertical_listQueryUI.action"> <i class="icon-user"></i> 纵向课题信息统计 </a>
                        </li>
                        <li><a href="${basePath}paper_listQueryUI.action"> <i class="icon-user"></i> 论文成果信息统计 </a></li>
                        <li><a href="${basePath}workAchieve_listQueryUI.action"> <i class="icon-user"></i> 著作成果信息统计 </a>
                        </li>
                        <li><a href="${basePath}patent_listQueryUI.action"> <i class="icon-user"></i> 专利成果信息统计 </a></li>
                        <li><a href="${basePath}research_listQueryUI.action"> <i class="icon-user"></i> 科研奖励信息统计 </a>
                        </li>
                        <li><a href="${basePath}software_listQueryUI.action"> <i class="icon-user"></i> 软件著作权信息统计 </a>
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
                            <div class="tab-pane active" id="tab_2">
                                <div class="portlet light ">
                                    <div class="portlet-body form">
                                        <form name="form" method="post" action="/workAchieve/workAchieve/add.html"
                                              class="form-horizontal">
                                            <s:hidden name="workAchieve.id"/>
                                            <div class="form-body">
                                                <h3 class="form-section font-red-sunglo">著作成果录入</h3>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-2 font-red-sunglo">著作名称</label>
                                                            <div class="col-md-9">
                                                                <s:textfield name="workAchieve.workName" type="text"
                                                                             class="form-control"
                                                                             placeholder="著作名称"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">出版日期</label>
                                                            <div class="col-md-6">
                                                                <input name="workAchieve.publishDate" type="date"
                                                                       class="form-control"
                                                                       value="<s:date name="workAchieve.publishDate"  format="yyyy-MM-dd"/>"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
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
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 font-red-sunglo">总字数(千字)</label>
                                                            <div class="col-md-8">
                                                                <s:textfield name="workAchieve.workWordAll" type="text"
                                                                             class="form-control"
                                                                             placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">ISBN</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="workAchieve.publicationsNumber"
                                                                             type="text" class="form-control"
                                                                             placeholder="ISBN"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
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
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 font-red-sunglo">出版单位</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="workAchieve.publishUnit" type="text"
                                                                             class="form-control"
                                                                             placeholder="出版单位"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 font-red-sunglo">学科分类</label>
                                                            <div class="col-md-6">
                                                                <s:select class="select2_category form-control"
                                                                          name="workAchieve.subjectName"
                                                                          list="#{
                                                                          ' ':' ',
                                                                    '械设计与制造理论':'械设计与制造理论',
                                                                    '物理化学':'物理化学',
                                                                    '机械制造及其自动化':'机械制造及其自动化',
                                                                    '机械设计及理论':'机械设计及理论',
                                                                    '汉语国际教育':'汉语国际教育',
                                                                    '动力机械及工程':'动力机械及工程',
                                                                    '车辆工程':'车辆工程',
                                                                    '机械电子工程':'机械电子工程',
                                                                    '农产品加工及贮藏工程':'农产品加工及贮藏工程',
                                                                    '食品科学':'食品科学',
                                                                    '化工过程机械':'化工过程机械',
                                                                    '电力系统及其自动化':'电力系统及其自动化',
                                                                    '思想政治教育':'思想政治教育',
                                                                    '控制工程':'控制工程',
                                                                    '模式识别与智能系统':'模式识别与智能系统',
                                                                    '计算机（情报理工）':'计算机（情报理工）',
                                                                    '学科教学（英语）':'学科教学（英语）',
                                                                    '信号与信息处理':'信号与信息处理',
                                                                    '通信与信息系统':'通信与信息系统',
                                                                    '有机化学':'有机化学',
                                                                    '化学（理论与计算化学）':'化学（理论与计算化学）',
                                                                    '材料学':'材料学',
                                                                    '地图学与地理信息系统':'地图学与地理信息系统',
                                                                    '环境科学':'环境科学',
                                                                    '中国近现代史':'中国近现代史',
                                                                    '大地测量学与测量工程':'大地测量学与测量工程',
                                                                    '力学工程':'力学工程',
                                                                    '结构工程':'结构工程',
                                                                    '道路材料科学与工程':'道路材料科学与工程',
                                                                    '构造地质学':'构造地质学',
                                                                    '材料加工工程':'材料加工工程',
                                                                    '行为遗传学':'行为遗传学',
                                                                    '微生物学':'微生物学',
                                                                    '表面科学':'表面科学',
                                                                    '物理与化学物理':'物理与化学物理',
                                                                    '凝聚态物理':'凝聚态物理',
                                                                    '海洋信息探测与处理':'海洋信息探测与处理',
                                                                    '统计学':'统计学',
                                                                    '企业管理':'企业管理',
                                                                    '古典文学':'古典文学',
                                                                    '外国语言学及应用语言学':'外国语言学及应用语言学',
                                                                    '人类学':'人类学',
                                                                    '金融学':'金融学',
                                                                    '产业经济学':'产业经济学',
                                                                    '英语口译':'英语口译',
                                                                    '美术学':'美术学',
                                                                    '城市设计':'城市设计',
                                                                    '中国古代文学':'中国古代文学',
                                                                    '音乐学':'音乐学',
                                                                    '舞蹈学':'舞蹈学',
                                                                    '体育教育训练学':'体育教育训练学',
                                                                    '纺织工程':'纺织工程',
                                                                    '科学技术哲学':'科学技术哲学',
                                                                    '中共党史':'中共党史',
                                                                    '分析化学':'分析化学',
                                                                    '中国古代史':'中国古代史',
                                                                    '情报学':'情报学',
                                                                    '哲学':'哲学',
                                                                    '理论经济学':'理论经济学',
                                                                    '应用经济学':'应用经济学',
                                                                    '法学':'法学',
                                                                    '政治学':'政治学',
                                                                    '社会学':'社会学',
                                                                    '民族学':'民族学',
                                                                    '马克思主义理论':'马克思主义理论',
                                                                    '教育学':'教育学',
                                                                    '心理学':'心理学',
                                                                    '体育学':'体育学',
                                                                    '中国语言文学':'中国语言文学',
                                                                    '外国语言文学':'外国语言文学',
                                                                    '新闻传播学':'新闻传播学',
                                                                    '艺术学':'艺术学',
                                                                    '历史学':'历史学',
                                                                    '数学':'数学',
                                                                    '物理学':'物理学',
                                                                    '化学':'化学',
                                                                    '天文学':'天文学',
                                                                    '地理学':'地理学',
                                                                    '大气科学':'大气科学',
                                                                    '海洋科学':'海洋科学',
                                                                    '地球物理学':'地球物理学',
                                                                    '地质学':'地质学',
                                                                    '生物学':'生物学',
                                                                    '系统科学':'系统科学',
                                                                    '力学':'力学',
                                                                    '机械工程':'机械工程',
                                                                    '光学工程':'光学工程',
                                                                    '仪器科学与技术':'仪器科学与技术',
                                                                    '材料科学与工程':'材料科学与工程',
                                                                    '冶金工程':'冶金工程',
                                                                    '动力工程及工程热物理':'动力工程及工程热物理',
                                                                    '电气工程':'电气工程',
                                                                    '电子科学与技术':'电子科学与技术',
                                                                    '信息与通信工程':'信息与通信工程',
                                                                    '控制科学与工程':'控制科学与工程',
                                                                    '计算机科学与技术':'计算机科学与技术',
                                                                    '建筑学':'建筑学',
                                                                    '土木工程':'土木工程',
                                                                    '水利工程':'水利工程',
                                                                    '测绘科学与技术':'测绘科学与技术',
                                                                    '化学工程与技术':'化学工程与技术',
                                                                    '地质资源与地质工程':'地质资源与地质工程',
                                                                    '矿业工程':'矿业工程',
                                                                    '石油与天然气工程':'石油与天然气工程',
                                                                    '纺织科学与工程':'纺织科学与工程',
                                                                    '轻工技术与工程':'轻工技术与工程',
                                                                    '交通运输工程':'交通运输工程',
                                                                    '船舶与海洋工程':'船舶与海洋工程',
                                                                    '航空宇航科学与技术':'航空宇航科学与技术',
                                                                    '兵器科学与技术':'兵器科学与技术',
                                                                    '核科学与技术':'核科学与技术',
                                                                    '农业工程':'农业工程',
                                                                    '林业工程':'林业工程',
                                                                    '环境科学与工程':'环境科学与工程',
                                                                    '生物医学工程':'生物医学工程',
                                                                    '食品科学与工程':'食品科学与工程',
                                                                    '作物学':'作物学',
                                                                    '园艺学':'园艺学',
                                                                    '农业资源利用':'农业资源利用',
                                                                    '植物保护':'植物保护',
                                                                    '畜牧学':'畜牧学',
                                                                    '兽医学':'兽医学',
                                                                    '林学':'林学',
                                                                    '水产':'水产',
                                                                    '基础医学':'基础医学',
                                                                    '临床医学':'临床医学',
                                                                    '口腔医学':'口腔医学',
                                                                    '公共卫生与预防医学':'公共卫生与预防医学',
                                                                    '中医学':'中医学',
                                                                    '中西医结合':'中西医结合',
                                                                    '药学':'药学',
                                                                    '中药学':'中药学',
                                                                    '军事思想及军事历史':'军事思想及军事历史',
                                                                    '战略学':'战略学',
                                                                    '战役学':'战役学',
                                                                    '战术学':'战术学',
                                                                    '军队指挥学':'军队指挥学',
                                                                    '军制学':'军制学',
                                                                    '军队政治工作学':'军队政治工作学',
                                                                    '军事后勤学与军事装备学':'军事后勤学与军事装备学',
                                                                    '工商管理':'工商管理',
                                                                    '农林经济管理':'农林经济管理',
                                                                    '公共管理':'公共管理',
                                                                    '图书馆、情报与档案管理':'图书馆、情报与档案管理'
                                                                    }"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 font-red-sunglo">津贴发放年度</label>
                                                            <div class="col-md-8">
                                                                <div class="input-group date form_year2 col-md-13"
                                                                     data-date-format="yyyy">
                                                                    <input type="text" size="16" class="form-control">
                                                                    <span class="input-group-btn">
                                                                        <button class="btn default date-set"
                                                                                type="button">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </button>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6 ">第一作者单位</label>
                                                            <div class="col-md-6">
                                                                <s:select class="select2_category form-control"
                                                                          name="workAchieve.academicUnit1Name"
                                                                          type="text" placeholder="第一作者单位"
                                                                          list="#{
                                                                           '':'',
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
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 font-red-sunglo">姓名</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="workAchieve.author1Name" type="text"
                                                                             class="form-control"
                                                                             placeholder="姓名"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">撰写字数(千字)</label>
                                                            <div class="col-md-8">
                                                                <s:textfield name="workAchieve.author1wordsNumber"
                                                                             type="text" class="form-control"
                                                                             placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">第二作者单位</label>
                                                            <div class="col-md-6">
                                                                <s:select class="select2_category form-control"
                                                                          name="workAchieve.unit2Name" type="text"
                                                                          placeholder="第二作者单位"
                                                                          list="#{
                                                                          '':'',
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
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">姓名</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="workAchieve.author2Name" type="text"
                                                                             class="form-control"
                                                                             placeholder="姓名"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">撰写字数(千字)</label>
                                                            <div class="col-md-8">
                                                                <s:textfield name="workAchieve.author2wordsNumber"
                                                                             type="text" class="form-control"
                                                                             placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">第三作者单位</label>
                                                            <div class="col-md-6">
                                                                <s:select class="select2_category form-control"
                                                                          name="workAchieve.unit3Name" type="text"
                                                                          placeholder="第三作者单位"
                                                                          list="#{
                                                                          '':'',
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
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">姓名</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="workAchieve.author3Name" type="text"
                                                                             class="form-control"
                                                                             placeholder="姓名"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">撰写字数(千字)</label>
                                                            <div class="col-md-8">
                                                                <s:textfield name="workAchieve.author3wordsNumber"
                                                                             type="text" class="form-control"
                                                                             placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">第四作者单位</label>
                                                            <div class="col-md-6">
                                                                <s:select class="select2_category form-control"
                                                                          name="workAchieve.unit4Name" type="text"
                                                                          placeholder="第四作者单位"
                                                                          list="#{
                                                                          '':'',
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
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">姓名</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="workAchieve.author4Name" type="text"
                                                                             class="form-control"
                                                                             placeholder="姓名"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">撰写字数(千字)</label>
                                                            <div class="col-md-8">
                                                                <s:textfield name="workAchieve.author4wordsNumber"
                                                                             type="text" class="form-control"
                                                                             placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">第五作者单位</label>
                                                            <div class="col-md-6">
                                                                <s:select class="select2_category form-control"
                                                                          name="workAchieve.unit5Name" type="text"
                                                                          placeholder="第五作者单位"
                                                                          list="#{
                                                                          '':'',
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
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">姓名</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="workAchieve.author5Name" type="text"
                                                                             class="form-control"
                                                                             placeholder="姓名"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">撰写字数(千字)</label>
                                                            <div class="col-md-8">
                                                                <s:textfield name="workAchieve.author5wordsNumber"
                                                                             type="text" class="form-control"
                                                                             placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">第六作者单位</label>
                                                            <div class="col-md-6">
                                                                <s:select class="select2_category form-control"
                                                                          name="workAchieve.unit6Name" type="text"
                                                                          placeholder="第六作者单位"
                                                                          list="#{
                                                                    '':'',
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
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">姓名</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="workAchieve.author6Name" type="text"
                                                                             class="form-control"
                                                                             placeholder="姓名"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">撰写字数(千字)</label>
                                                            <div class="col-md-8">
                                                                <s:textfield name="workAchieve.author6wordsNumber"
                                                                             type="text" class="form-control"
                                                                             placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">第七作者单位</label>
                                                            <div class="col-md-6">
                                                                <s:select class="select2_category form-control"
                                                                          name="workAchieve.unit7Name" type="text"
                                                                          placeholder="第七作者单位"
                                                                          list="#{
                                                                          '':'',
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
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">姓名</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="workAchieve.author7Name" type="text"
                                                                             class="form-control"
                                                                             placeholder="姓名"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">撰写字数(千字)</label>
                                                            <div class="col-md-8">
                                                                <s:textfield name="workAchieve.author7wordsNumber"
                                                                             type="text" class="form-control"
                                                                             placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-6">第八作者单位</label>
                                                            <div class="col-md-6">
                                                                <s:select class="select2_category form-control"
                                                                          name="workAchieve.unit8Name" type="text"
                                                                          placeholder="第八作者单位"
                                                                          list="#{
                                                                          '':'',
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
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">姓名</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="workAchieve.author8Name" type="text"
                                                                             class="form-control"
                                                                             placeholder="姓名"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4">撰写字数(千字)</label>
                                                            <div class="col-md-8">
                                                                <s:textfield name="workAchieve.author8wordsNumber"
                                                                             type="text" class="form-control"
                                                                             placeholder=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-2">备注</label>
                                                            <div class="col-md-9">
                                                                <s:textfield name="workAchieve.remark" type="text"
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
                                                            <label class="control-label col-md-4">登记人</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="workAchieve.registerPeoName"
                                                                             type="text" class="form-control"
                                                                             placeholder="登记人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">登记时间</label>
                                                            <div class="col-md-6">
                                                                <input name="workAchieve.registerDate" type="date"
                                                                       class="form-control"
                                                                       value="<s:date name="workAchieve.registerDate"  format="yyyy-MM-dd"/>"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">审核人</label>
                                                            <div class="col-md-6">
                                                                <s:textfield name="workAchieve.examinePeoName"
                                                                             type="text" class="form-control"
                                                                             placeholder="审核人"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">审核时间</label>
                                                            <div class="col-md-6">
                                                                <input name="workAchieve.examineDate" type="date"
                                                                       class="form-control"
                                                                       value="<s:date name="workAchieve.examineDate"  format="yyyy-MM-dd"/>"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-4 ">审核结论</label>
                                                            <div class="col-md-6">
                                                                <s:select name="workAchieve.examineResult"
                                                                          class="select2_category form-control"
                                                                          list="#{
                                                                            '待审核':'待审核',
                                                                            '通过':'通过',
                                                                            '未通过':'未通过'
                                                                    }"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-actions right" style="border:0px solid #000;">
                                                <div class="row" style="border:0px solid red;">
                                                    <div class="col-md-12 " style="border:0px solid green;">
                                                        <div class="row">
                                                            <div class="col-md-offset-2 col-md-1">
                                                                <!--此处为样式保留，不要删除！ -->
                                                            </div>
                                                            <div class="col-md-offset-2 col-md-6">
                                                                <input class="btn green" type="submit"
                                                                       onclick="javascript:return confirm('您确认要提交该著作成果吗？');"></input>
                                                                <button class="red btn" type="reset">取消</button>
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
    </div>
</div>


<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer navbar-fixed-bottom">
    <div class="page-footer-inner"> 2014 &copy; Metronic by keenthemes. <a
            href="#" title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase
        Metronic!</a></div>
    <div class="scroll-to-top"><i class="icon-arrow-up"></i></div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

<script>


    jQuery(document).ready(function () {
        // 分页
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
                        '<td><a href="/workAchieve/wokArchieve/detail/' + o.id + '.html">' + o.workName + '</a> </td>' +
                        '<td>' + o.author1Name + '</td>' +
                        '<td><span class="label label-sm label-success">' + o.examineResult + '</span></td>' +
                        '</tr>'
                }
                $('#tbody').html(content);
            });
        });


        // 删除
        $('#deleteWork').click(function () {

            if (confirm("确认删除该课题？")) {
                $.get('/workAchieve/workAchieve/delete.html', function (data) {
                    if (data == 'yes') {
                        alert("操作成功");
                    } else {
                        alert("操作失败");
                    }
                });
            }

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
                        '<td><a href="/workAchieve/workAchieve/detail/' + o.id + '.html">' + o.workName + '</a> </td>' +
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