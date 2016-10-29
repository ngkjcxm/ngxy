package com.sdut.ngxykjc.bean;

import org.hibernate.annotations.*;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.*;

/**
 * Created by 郭昌仑 on 2016/10/18.
 * <p>
 * 横向课题
 */
@Entity
@Table
public class HorizontalProject {

    /**
     * id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 项目名称
     */
    private String projectName;

    /**
     * 委托方
     */
    private String consignor;

    /**
     * 经费
     */
    private long outlay;

    /**
     * 项目负责人
     */
    private String projectDirector;

    /**
     * 项目负责人单位
     */
    private String directorUnit;

    /**
     * 累计到位经费
     */
    private long outlayIn;

    /**
     * 签订日期
     */
    @Temporal(TemporalType.DATE)
    private Date signDate;

    /**
     * 累计工作量
     */
    private long worked;

    /**
     * 有效期开始时间
     */
    @Temporal(TemporalType.DATE)
    private Date indateFrom;

    /**
     * 有效期结束时间
     */
    @Temporal(TemporalType.DATE)
    private Date indateTo;

    /**
     * 签订地点
     */
    private String signPlace;

    /**
     * 项目类型
     */
    private String projectType;

    /**
     * 合同编号
     */
    private String projectNumber;

    /**
     * 合同份数
     */
    private int projectCount;

    /**
     * 参与成员
     */
    private String members;

    /**
     * 备注
     */
    private String note;

    /**
     * 是否通过
     * 0：未通过
     * 1：通过
     * 默认为0，表示未通过
     */
    private int isPass = 0;

    /**
     * 是否结题
     * 0：未结题
     * 1：结题
     * 默认为0，表示未结题
     */
    private int isEnd = 0;

    /**
     * 登记人
     */
    private String register;

    /**
     * 登记时间
     */
    @Temporal(TemporalType.DATE)
    private Date registTime;

    /**
     * 审核人
     */
    private String auditor;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getConsignor() {
        return consignor;
    }

    public void setConsignor(String consignor) {
        this.consignor = consignor;
    }

    public long getOutlay() {
        return outlay;
    }

    public void setOutlay(long outlay) {
        this.outlay = outlay;
    }

    public String getProjectDirector() {
        return projectDirector;
    }

    public void setProjectDirector(String projectDirector) {
        this.projectDirector = projectDirector;
    }

    public String getDirectorUnit() {
        return directorUnit;
    }

    public void setDirectorUnit(String directorUnit) {
        this.directorUnit = directorUnit;
    }

    public long getOutlayIn() {
        return outlayIn;
    }

    public void setOutlayIn(long outlayIn) {
        this.outlayIn = outlayIn;
    }

    public Date getSignDate() {
        return signDate;
    }

    public void setSignDate(Date signDate) {
        this.signDate = signDate;
    }

    public long getWorked() {
        return worked;
    }

    public void setWorked(long worked) {
        this.worked = worked;
    }

    public Date getIndateFrom() {
        return indateFrom;
    }

    public void setIndateFrom(Date indateFrom) {
        this.indateFrom = indateFrom;
    }

    public Date getIndateTo() {
        return indateTo;
    }

    public void setIndateTo(Date indateTo) {
        this.indateTo = indateTo;
    }

    public String getSignPlace() {
        return signPlace;
    }

    public void setSignPlace(String signPlace) {
        this.signPlace = signPlace;
    }

    public String getProjectType() {
        return projectType;
    }

    public void setProjectType(String projectType) {
        this.projectType = projectType;
    }

    public String getProjectNumber() {
        return projectNumber;
    }

    public void setProjectNumber(String projectNumber) {
        this.projectNumber = projectNumber;
    }

    public int getProjectCount() {
        return projectCount;
    }

    public void setProjectCount(int projectCount) {
        this.projectCount = projectCount;
    }

    public String getMembers() {
        return members;
    }

    public void setMembers(String members) {
        this.members = members;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getIsPass() {
        return isPass;
    }

    public void setIsPass(int isPass) {
        this.isPass = isPass;
    }

    public int getIsEnd() {
        return isEnd;
    }

    public void setIsEnd(int isEnd) {
        this.isEnd = isEnd;
    }

    public String getRegister() {
        return register;
    }

    public void setRegister(String register) {
        this.register = register;
    }

    public Date getRegistTime() {
        return registTime;
    }

    public void setRegistTime(Date registTime) {
        this.registTime = registTime;
    }

    public String getAuditor() {
        return auditor;
    }

    public void setAuditor(String auditor) {
        this.auditor = auditor;
    }

    @Override
    public String toString() {
        return "HorizontalProject{" +
                "id=" + id +
                ", projectName='" + projectName + '\'' +
                ", consignor='" + consignor + '\'' +
                ", outlay=" + outlay +
                ", projectDirector='" + projectDirector + '\'' +
                ", directorUnit='" + directorUnit + '\'' +
                ", outlayIn=" + outlayIn +
                ", signDate=" + signDate +
                ", worked=" + worked +
                ", indateFrom=" + indateFrom +
                ", indateTo=" + indateTo +
                ", signPlace='" + signPlace + '\'' +
                ", projectType='" + projectType + '\'' +
                ", projectNumber='" + projectNumber + '\'' +
                ", projectCount=" + projectCount +
                ", members='" + members + '\'' +
                ", note='" + note + '\'' +
                ", isPass=" + isPass +
                ", isEnd=" + isEnd +
                ", register='" + register + '\'' +
                ", registTime=" + registTime +
                ", auditor='" + auditor + '\'' +
                '}';
    }
}
