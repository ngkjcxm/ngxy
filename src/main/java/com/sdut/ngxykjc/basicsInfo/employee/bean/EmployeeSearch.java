package com.sdut.ngxykjc.basicsInfo.employee.bean;

import javax.persistence.*;
import java.util.List;

/**
 * Created by sunming on 2016/11/30.
 */
public class EmployeeSearch {

    private long id;

    private String employeeName;
    private String sex;
    private String unitName;
    private String academicDegree;
    private String title;
    private String politicalStatus;


    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public String getAcademicDegree() {
        return academicDegree;
    }

    public void setAcademicDegree(String academicDegree) {
        this.academicDegree = academicDegree;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPoliticalStatus() {
        return politicalStatus;
    }

    public void setPoliticalStatus(String politicalStatus) {
        this.politicalStatus = politicalStatus;
    }

    @Override
    public String toString() {
        return "EmployeeSearch{" +
                "id=" + id +
                ", employeeName='" + employeeName + '\'' +
                ", sex='" + sex + '\'' +
                ", unitName='" + unitName + '\'' +
                ", academicDegree='" + academicDegree + '\'' +
                ", title='" + title + '\'' +
                ", politicalStatus='" + politicalStatus + '\'' +
                '}';
    }
}
