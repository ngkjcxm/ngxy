package com.sdut.ngxykjc.work.scientificResearch.bean;

/**
 * Created by gcl on 2016/11/19.
 * <p>
 * ResearchSearch
 */
public class ResearchSearch {

    private String diplomaId;
    private String title;
    private String academicDreen;
    private String rewardGrade;
    private String awardType;


    /**
     * 时间
     */
    private String date;
    /**
     * 审核情况
     */
    private String state;

    /**
     * 所属学院
     */
    private String unitName;

    /**
     * 名称
     */
    private String researchName;
    /**
     * 项目归属
     */
    private String belong;

    /**
     * 年度
     */
    private String awardYear;

    /**
     * 审核状态
     */
    private String examineStatus;


    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public String getResearchName() {
        return researchName;
    }

    public void setResearchName(String researchName) {
        this.researchName = researchName;
    }

    public String getBelong() {
        return belong;
    }

    public void setBelong(String belong) {
        this.belong = belong;
    }

    public String getAwardYear() {
        return awardYear;
    }

    public void setAwardYear(String awardYear) {
        this.awardYear = awardYear;
    }

    public String getExamineStatus() {
        return examineStatus;
    }

    public void setExamineStatus(String examineStatus) {
        this.examineStatus = examineStatus;
    }

    public String getDiplomaId() {
        return diplomaId;
    }

    public void setDiplomaId(String diplomaId) {
        this.diplomaId = diplomaId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAcademicDreen() {
        return academicDreen;
    }

    public void setAcademicDreen(String academicDreen) {
        this.academicDreen = academicDreen;
    }

    public String getRewardGrade() {
        return rewardGrade;
    }

    public void setRewardGrade(String rewardGrade) {
        this.rewardGrade = rewardGrade;
    }

    public String getAwardType() {
        return awardType;
    }

    public void setAwardType(String awardType) {
        this.awardType = awardType;
    }

    @Override
    public String toString() {
        return "ResearchSearch{" +
                "date='" + date + '\'' +
                ", state='" + state + '\'' +
                ", unitName='" + unitName + '\'' +
                ", researchName='" + researchName + '\'' +
                ", belong='" + belong + '\'' +
                ", awardYear='" + awardYear + '\'' +
                ", examineStatus='" + examineStatus + '\'' +
                '}';
    }
}
