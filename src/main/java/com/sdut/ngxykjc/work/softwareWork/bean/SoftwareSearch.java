package com.sdut.ngxykjc.work.softwareWork.bean;

/**
 * Created by gcl on 2016/11/19.
 */
public class SoftwareSearch {
    /**
     * 时间
     */
    private String date;
    /**
     * 审核情况
     */
    private String state;
    /**
     * 著作权人
     */
    private String name;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBelong() {
        return belong;
    }

    public void setBelong(String belong) {
        this.belong = belong;
    }

    @Override
    public String toString() {
        return "SoftwareSearch{" +
                "date='" + date + '\'' +
                ", state='" + state + '\'' +
                ", name='" + name + '\'' +
                ", belong='" + belong + '\'' +
                '}';
    }
}
