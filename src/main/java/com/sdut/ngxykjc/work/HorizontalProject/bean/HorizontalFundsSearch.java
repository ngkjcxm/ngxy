package com.sdut.ngxykjc.work.HorizontalProject.bean;

import java.util.Date;

/**
 * Created by sunming on 2016/12/3.
 */
public class HorizontalFundsSearch {

    private String unitName;
    private String horizontalName;
    private String horizontalType;
    private Date signStarDate;
    private Date signEndDate;
    private Date intoFundsStarDate;
    private Date intoFundsEndDate;
    private String fundsAccount;
    private float fundsMin;
    private float fundsMax;

    public String getUnitName() {
        return unitName;
    }


    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public String getHorizontalName() {
        return horizontalName;
    }

    public void setHorizontalName(String horizontalName) {
        this.horizontalName = horizontalName;
    }

    public String getHorizontalType() {
        return horizontalType;
    }

    public void setHorizontalType(String horizontalType) {
        this.horizontalType = horizontalType;
    }

    public Date getSignStarDate() {
        return signStarDate;
    }

    public void setSignStarDate(Date signStarDate) {
        this.signStarDate = signStarDate;
    }

    public Date getSignEndDate() {
        return signEndDate;
    }

    public void setSignEndDate(Date signEndDate) {
        this.signEndDate = signEndDate;
    }

    public Date getIntoFundsStarDate() {
        return intoFundsStarDate;
    }

    public void setIntoFundsStarDate(Date intoFundsStarDate) {
        this.intoFundsStarDate = intoFundsStarDate;
    }

    public Date getIntoFundsEndDate() {
        return intoFundsEndDate;
    }

    public void setIntoFundsEndDate(Date intoFundsEndDate) {
        this.intoFundsEndDate = intoFundsEndDate;
    }

    public String getFundsAccount() {
        return fundsAccount;
    }

    public void setFundsAccount(String fundsAccount) {
        this.fundsAccount = fundsAccount;
    }

    public float getFundsMin() {
        return fundsMin;
    }

    public void setFundsMin(float fundsMin) {
        this.fundsMin = fundsMin;
    }

    public float getFundsMax() {
        return fundsMax;
    }

    public void setFundsMax(float fundsMax) {
        this.fundsMax = fundsMax;
    }

    @Override
    public String toString() {
        return "HorizontalFundsSearch{" +
                "unitName='" + unitName + '\'' +
                ", horizontalName='" + horizontalName + '\'' +
                ", horizontalType='" + horizontalType + '\'' +
                ", signStarDate=" + signStarDate +
                ", signEndDate=" + signEndDate +
                ", intoFundsStarDate=" + intoFundsStarDate +
                ", intoFundsEndDate=" + intoFundsEndDate +
                ", fundsAccount='" + fundsAccount + '\'' +
                ", fundsMin=" + fundsMin +
                ", fundsMax=" + fundsMax +
                '}';
    }
}
