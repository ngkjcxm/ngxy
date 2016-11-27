package com.sdut.ngxykjc.work.workAchievement.bean;

import java.util.Date;

/**
 * Created by gcl on 2016/11/17.
 * <p>
 * WorkArchieveSearch
 */
public class WorkArchieveSearch {

    /**
     * 时间
     */
    private Date date;

    /**
     * 相关审核状态
     */
    private String state;

    /**
     * 著作名称
     */
    private String workName;

    /**
     * 第一作者学术归属部门名称
     */
    private String academicUnit1Name;

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getWorkName() {
        return workName;
    }

    public void setWorkName(String workName) {
        this.workName = workName;
    }

    public String getAcademicUnit1Name() {
        return academicUnit1Name;
    }

    public void setAcademicUnit1Name(String academicUnit1Name) {
        this.academicUnit1Name = academicUnit1Name;
    }
}
