package com.sdut.ngxykjc.work.scientificResearch.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by sunmig on 2016/11/17.
 * 科研成果信息
 */
@Entity
@Table(name = "scientificResearch")
public class ScientificResearch {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 成果编号
     */
    private String researchId;

    /**
     * 成果名称
     */
    private String researchName;

    /**
     * 年度
     */
    private String annual;

    /**
     * 参与成员
     */
    private String oparticipateMember;

    /**
     * 刊物名称
     */
    private String publicationName;

    /**
     * 档次
     */
    private String grade;

    /**
     * 检索收录
     */
    private String searchInclude;

    /**
     * 位次
     */
    private String place;

    /**
     * 工作量
     */
    private String workLoad;

    /**
     * 日期
     */
    @Temporal(TemporalType.DATE)
    private Date researchDate;

    /**
     * 单位编号
     */
    private String unitId;

    /**
     * 编制单位名称
     */
    private String unitName;

    /**
     * 登记时间
     */
    @Temporal(TemporalType.DATE)
    private Date registerDate;

    /**
     * 登记人编号
     */
    private String registerPeoId;

    /**
     * 登记人姓名
     */
    private String registerPeoName;

    /**
     * 提交状态
     */
    private String submitStatus;

    /**
     * 审核状态
     */
    private String examineStatus;

    /**
     * 审核结论
     */
    private String examineResult;

    /**
     * 审核时间
     */
    @Temporal(TemporalType.DATE)
    private Date examineDate;

    /**
     * 审核人编号
     */
    private String examinePeoId;

    /**
     * 审核人姓名
     */
    private String examinePeoName;

    /**
     * 备注
     */
    private String remark;

    /*************** getter or setter 方法 ***************/

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getResearchId() {
        return researchId;
    }

    public void setResearchId(String researchId) {
        this.researchId = researchId;
    }

    public String getResearchName() {
        return researchName;
    }

    public void setResearchName(String researchName) {
        this.researchName = researchName;
    }

    public String getAnnual() {
        return annual;
    }

    public void setAnnual(String annual) {
        this.annual = annual;
    }

    public String getOparticipateMember() {
        return oparticipateMember;
    }

    public void setOparticipateMember(String oparticipateMember) {
        this.oparticipateMember = oparticipateMember;
    }

    public String getPublicationName() {
        return publicationName;
    }

    public void setPublicationName(String publicationName) {
        this.publicationName = publicationName;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getSearchInclude() {
        return searchInclude;
    }

    public void setSearchInclude(String searchInclude) {
        this.searchInclude = searchInclude;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getWorkLoad() {
        return workLoad;
    }

    public void setWorkLoad(String workLoad) {
        this.workLoad = workLoad;
    }

    public Date getResearchDate() {
        return researchDate;
    }

    public void setResearchDate(Date researchDate) {
        this.researchDate = researchDate;
    }

    public String getUnitId() {
        return unitId;
    }

    public void setUnitId(String unitId) {
        this.unitId = unitId;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public Date getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    public String getRegisterPeoId() {
        return registerPeoId;
    }

    public void setRegisterPeoId(String registerPeoId) {
        this.registerPeoId = registerPeoId;
    }

    public String getRegisterPeoName() {
        return registerPeoName;
    }

    public void setRegisterPeoName(String registerPeoName) {
        this.registerPeoName = registerPeoName;
    }

    public String getSubmitStatus() {
        return submitStatus;
    }

    public void setSubmitStatus(String submitStatus) {
        this.submitStatus = submitStatus;
    }

    public String getExamineStatus() {
        return examineStatus;
    }

    public void setExamineStatus(String examineStatus) {
        this.examineStatus = examineStatus;
    }

    public String getExamineResult() {
        return examineResult;
    }

    public void setExamineResult(String examineResult) {
        this.examineResult = examineResult;
    }

    public Date getExamineDate() {
        return examineDate;
    }

    public void setExamineDate(Date examineDate) {
        this.examineDate = examineDate;
    }

    public String getExaminePeoId() {
        return examinePeoId;
    }

    public void setExaminePeoId(String examinePeoId) {
        this.examinePeoId = examinePeoId;
    }

    public String getExaminePeoName() {
        return examinePeoName;
    }

    public void setExaminePeoName(String examinePeoName) {
        this.examinePeoName = examinePeoName;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "ScientificResearch{" +
                "id=" + id +
                ", researchId='" + researchId + '\'' +
                ", researchName='" + researchName + '\'' +
                ", annual='" + annual + '\'' +
                ", oparticipateMember='" + oparticipateMember + '\'' +
                ", publicationName='" + publicationName + '\'' +
                ", grade='" + grade + '\'' +
                ", searchInclude='" + searchInclude + '\'' +
                ", place='" + place + '\'' +
                ", workLoad='" + workLoad + '\'' +
                ", researchDate=" + researchDate +
                ", unitId='" + unitId + '\'' +
                ", unitName='" + unitName + '\'' +
                ", registerDate=" + registerDate +
                ", registerPeoId='" + registerPeoId + '\'' +
                ", registerPeoName='" + registerPeoName + '\'' +
                ", submitStatus='" + submitStatus + '\'' +
                ", examineStatus='" + examineStatus + '\'' +
                ", examineResult='" + examineResult + '\'' +
                ", examineDate=" + examineDate +
                ", examinePeoId='" + examinePeoId + '\'' +
                ", examinePeoName='" + examinePeoName + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
