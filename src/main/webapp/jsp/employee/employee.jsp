<%--
  Created by IntelliJ IDEA.
  User: sunming
  Date: 2016/12/5
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <title>教工基本信息</title>
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
            <!-- BEGIN PAGE CONTENT INNER -->
            <div class="col-md-13" name="ok">
                <div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
                    <div class="tab-content">
                        <form id="employeeForm"  class="form-horizontal" action="${basePath}employee_saveUser.action" method="post" enctype="multipart/form-data">
                            <div class="tab-pane active" id="tab_2">
                                <div class="portlet light ">
                                    <div class="portlet-body form">
                                        <div class="form-body">
                                            <h3 class="form-section font-red-sunglo">教工基本信息</h3>
                                            <div class="row">
                                                <s:hidden name="employee.id"/>
                                                <div class="col-md-6"
                                                     style="border:0px solid #ee1100;padding-left:300px;">
                                                    <s:if test="%{employee.headImg !=null && employee.headImg !='' }">
                                                        <img src="/upload/<s:property value='employee.headImg'/>"
                                                             width="250" height="250">
                                                        <s:hidden name="employee.headImg"/>
                                                    </s:if>
                                                    <s:else>
                                                        <img src="/assets/global/img/systemImg/000.jpg"
                                                    </s:else>
                                                    <input type="file" name="headImg"/>
                                                </div>
                                                <div class="col-md-4 col-md-offset-1" style="border:0px solid #ee1100;">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3"></label>
                                                        <div class="col-md-9">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 ">工号</label>
                                                        <div class="col-md-9">
                                                            <s:textfield type="text" name="employee.employeeId"
                                                                         class="form-control" placeholder="工号"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 ">姓名</label>
                                                        <div class="col-md-9">
                                                            <s:textfield type="text" name="employee.employeeName"
                                                                         class="form-control" placeholder="姓名"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 ">性别</label>
                                                        <div class="col-md-9">
                                                            <s:select list="#{'男':'男','女':'女'}" name="employee.sex"
                                                                      class="form-control"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 ">出生年月</label>
                                                        <div class="col-md-9">
                                                            <input type="date" name="employee.birthday"
                                                                   class="form-control"
                                                                   value="<s:date name="employee.birthday" format="yyyy-MM-dd" />"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 "></label>
                                                        <div class="col-md-6">
                                                            <!-- 为样式保留，不要删除！ -->
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 "></label>
                                                        <div class="col-md-6">
                                                            <!-- 为样式保留，不要删除！ -->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6">管理归属</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="employee.unitName" type="text"
                                                                         class="form-control" placeholder="管理归属"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">学术归属</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="employee.academiaUnitName" type="text"
                                                                         class="form-control" placeholder="学术归属"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">民族</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="employee.nation" type="text"
                                                                         class="form-control" placeholder="民族"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">职称</label>
                                                        <div class="col-md-6">
                                                            <s:textfield id="jopTileNameText"
                                                                         name="employee.jopTileName" type="text"
                                                                         data-target="#long" class="form-control"
                                                                         placeholder="职称"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6">职称评定时间</label>
                                                        <div class="col-md-6">
                                                            <input type="date" name="employee.jopJudgeDate"
                                                                   class="form-control"
                                                                   value="<s:date name="employee.jopJudgeDate" format="yyyy-MM-dd" />"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">现任职务</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="employee.nowPost" type="text"
                                                                         class="form-control" placeholder="现任职务"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">职务级别</label>
                                                        <div class="col-md-6">
                                                            <s:select name="employee.jopTitleLeavel"
                                                                      list="#{'':'','副科级':'副科级',
                                                                      '正科级':'正科级',
                                                                      '副处级':'副处级',
                                                                      '正处级':'正处级',
                                                                      '副厅级':'副厅级',
                                                                      '正厅级':'正厅级',
                                                                      '副省部级':'副省部级',
                                                                      '正省部级':'正省部级',
                                                                      '副国家级':'副国家级',
                                                                      '正国家级':'正国家级'}"
                                                                      class="form-control">
                                                            </s:select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">全日制学位</label>
                                                        <div class="col-md-6">
                                                            <s:select name="employee.fulltimeDegree"
                                                                      list="#{'':'','博士':'博士', '硕士':'硕士','本科':'本科'}"
                                                                      class="form-control"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">手机</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="employee.phone" type="text"
                                                                         class="form-control" placeholder="手机"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">联系电话</label>
                                                        <div class="col-md-6">
                                                            <s:textfield type="text" class="form-control"
                                                                         placeholder="联系电话"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-6 ">通讯地址</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="employee.postalAddress" type="text"
                                                                         class="form-control" placeholder="通讯地址"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4 ">电子信箱</label>
                                                        <div class="col-md-6">
                                                            <s:textfield name="employee.eMail" type="email"
                                                                         class="form-control" placeholder="电子邮箱"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-3 ">备注</label>
                                                        <div class="col-md-8">
                                                            <s:textfield name="employee.remark" type="text"
                                                                         class="form-control" placeholder="备注"/>
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
                                                            <a class="btn green" data-toggle="modal" href="#draggable">提交</a>
                                                        </div>
                                                    </div>
                                                </div>
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
<!-- END PAGE CONTAINER -->
<!--公共尾部-->
<%@ include file="../PeopleFoot/listUI.jsp" %>
<!--公共尾部End-->
<!-- /.modal -->
<div class="modal fade draggable-modal" id="draggable" tabindex="-1" role="basic" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">是否保存用户信息</h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn default" data-dismiss="modal">Close</button>
                <button type="button" id="save" class="btn blue">Save changes</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>


<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<script>
    jQuery(document).ready(function () {
        $("#Label-02-01").addClass("active");

        $('#save').click(function () {
            var formDeletetask = document.getElementById("employeeForm");
            formDeletetask.action = "${basePath}employee_saveUser.action";
            formDeletetask.submit();
        });

    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>