package com.sdut.ngxykjc.work.scientificResearch.bean;

/**
 * Created by gcl on 2016/11/19.
 * <p>
 * ResearchSearch
 */
public class ResearchSearch {

    /**
     * 时间
     */
    private String date;
    /**
     * 审核情况
     */
    private String state;
    /**
     * 名称
     */
    private String researchName;
    /**
     * 项目归属
     */
    private String belong;

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

    @Override
    public String toString() {
        return "ResearchSearch{" +
                "date='" + date + '\'' +
                ", state='" + state + '\'' +
                ", researchName='" + researchName + '\'' +
                ", belong='" + belong + '\'' +
                '}';
    }
}
