package com.sdut.ngxykjc.basicsInfo.employee.bean;

import java.util.List;

/**
 * Created by gcl on 2016/11/13.
 * <p>
 * EmployeeTree
 */
public class EmployeeTree {
    // 直接返回html

    String header = "<ul>山东理工大学";
    String footer = "</ul>";
    String template =
            "<ul>" +
                "<li>领导层" +
                    "<ul><li>校领导" +
                        "<ul>" +
                            "<li><a href='#'>老王<a></li>"+
                        "</ul>"+
                    "</li></ul>"+
                "</li>"+
            "</ul>";
}
