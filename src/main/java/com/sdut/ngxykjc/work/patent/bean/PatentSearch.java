package com.sdut.ngxykjc.work.patent.bean;

/**
 * Created by gcl on 2016/11/27.
 */
public class PatentSearch {

    private String year;
    private String state;
    private String patentNumber;
    private String patentName;
    private String patentHolder;
    private String academicUnitName;

    private String patentId;
    private String patentType;
    private String academicDreen;
    private String title;


    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPatentNumber() {
        return patentNumber;
    }

    public void setPatentNumber(String patentNumber) {
        this.patentNumber = patentNumber;
    }

    public String getPatentName() {
        return patentName;
    }

    public void setPatentName(String patentName) {
        this.patentName = patentName;
    }

    public String getPatentHolder() {
        return patentHolder;
    }

    public void setPatentHolder(String patentHolder) {
        this.patentHolder = patentHolder;
    }

    public String getAcademicUnitName() {
        return academicUnitName;
    }

    public void setAcademicUnitName(String academicUnitName) {
        this.academicUnitName = academicUnitName;
    }

    public String getPatentId() {
        return patentId;
    }

    public void setPatentId(String patentId) {
        this.patentId = patentId;
    }

    public String getPatentType() {
        return patentType;
    }

    public void setPatentType(String patentType) {
        this.patentType = patentType;
    }

    public String getAcademicDreen() {
        return academicDreen;
    }

    public void setAcademicDreen(String academicDreen) {
        this.academicDreen = academicDreen;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "PatentSearch{" +
                "year='" + year + '\'' +
                ", state='" + state + '\'' +
                ", patentNumber='" + patentNumber + '\'' +
                ", patentName='" + patentName + '\'' +
                ", patentHolder='" + patentHolder + '\'' +
                ", academicUnitName='" + academicUnitName + '\'' +
                ", patentId='" + patentId + '\'' +
                ", patentType='" + patentType + '\'' +
                ", academicDreen='" + academicDreen + '\'' +
                ", title='" + title + '\'' +
                '}';
    }
}
