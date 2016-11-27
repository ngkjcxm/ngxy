package com.sdut.ngxykjc.work.HorizontalProject.bean;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.util.Date;

/**
 * Created by gcl on 2016/11/12.
 * <p>
 * 搜索条件
 */
public class HorizontalSearch {

    /**
     * 签订时间
     */
    @Temporal(TemporalType.DATE)
    private Date signingDate;

    /**
     * 审核状态
     */
    private String endProjectResult;

    /**
     * 项目名称
     */
    private String projectName;

    /**
     * 归属单位
     */
    private String unitName;

    /**
     * 结题时间
     */
    private Date endProjectDate;

    public Date getSigningDate() {
        return signingDate;
    }

    public void setSigningDate(Date signingDate) {
        this.signingDate = signingDate;
    }

    public String getEndProjectResult() {
        return endProjectResult;
    }

    public void setEndProjectResult(String endProjectResult) {
        this.endProjectResult = endProjectResult;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public Date getEndProjectDate() {
        return endProjectDate;
    }

    public void setEndProjectDate(Date endProjectDate) {
        this.endProjectDate = endProjectDate;
    }

    @Override
    public String toString() {
        return "HorizontalSearch{" +
                "signingDate=" + signingDate +
                ", endProjectResult='" + endProjectResult + '\'' +
                ", projectName='" + projectName + '\'' +
                ", unitName='" + unitName + '\'' +
                ", endProjectDate=" + endProjectDate +
                '}';
    }
}
