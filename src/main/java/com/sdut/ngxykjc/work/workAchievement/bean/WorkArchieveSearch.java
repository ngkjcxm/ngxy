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
     * 著作类别
     */
    private String workType;

    /**
     * 首位作者姓名
     */
    private String authorName;

    /**
     * 首位作者职称
     */
    private String authorTitle;

    /**
     * 首位作者学位
     */
    private String authorAcademicDreen;

    /**
     * 学院
     */
    private String unitName;


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

    public String getWorkType() {
        return workType;
    }

    public void setWorkType(String workType) {
        this.workType = workType;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public String getAuthorTitle() {
        return authorTitle;
    }

    public void setAuthorTitle(String authorTitle) {
        this.authorTitle = authorTitle;
    }

    public String getAuthorAcademicDreen() {
        return authorAcademicDreen;
    }

    public void setAuthorAcademicDreen(String authorAcademicDreen) {
        this.authorAcademicDreen = authorAcademicDreen;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public String getAcademicUnit1Name() {
        return academicUnit1Name;
    }

    public void setAcademicUnit1Name(String academicUnit1Name) {
        this.academicUnit1Name = academicUnit1Name;
    }

    @Override
    public String toString() {
        return "WorkArchieveSearch{" +
                "date=" + date +
                ", state='" + state + '\'' +
                ", workName='" + workName + '\'' +
                ", workType='" + workType + '\'' +
                ", authorName='" + authorName + '\'' +
                ", authorTitle='" + authorTitle + '\'' +
                ", authorAcademicDreen='" + authorAcademicDreen + '\'' +
                ", unitName='" + unitName + '\'' +
                ", academicUnit1Name='" + academicUnit1Name + '\'' +
                '}';
    }
}
