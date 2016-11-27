package com.sdut.ngxykjc.work.VerticalProject.bean;

import java.util.Date;

/**
 * Created by gcl on 2016/11/13.
 * <p>
 * VerticalProject搜索条件
 */
public class VerticalSearch {

    /**
     * 登记时间
     */
    private Date registrationDate;

    /**
     * 审核情况
     */
    private String state;

    /**
     * 课题名称
     */
    private String VerticalName;

    /**
     * 课题负责人姓名
     */
    private String VerticalHeaderName;

    /**
     * 课题负责人学科归属部门名称
     */
    private String unitName;

    public Date getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Date registrationDate) {
        this.registrationDate = registrationDate;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getVerticalName() {
        return VerticalName;
    }

    public void setVerticalName(String verticalName) {
        VerticalName = verticalName;
    }

    public String getVerticalHeaderName() {
        return VerticalHeaderName;
    }

    public void setVerticalHeaderName(String verticalHeaderName) {
        VerticalHeaderName = verticalHeaderName;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }
}
