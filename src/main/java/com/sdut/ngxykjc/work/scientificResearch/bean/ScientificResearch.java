package com.sdut.ngxykjc.work.scientificResearch.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by sunmig on 2016/11/17.
 */
@Entity
@Table(name = "scientificResearch")
public class ScientificResearch {

    /**
     * Id
     */
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
     * 首位作者编号
     */
    private String completePeoId;

    /**
     * 首位作者姓名
     */
    private String completePeoName;

    /**
     * 首位完成人单位编号
     */
    private String unitId;

    /**
     * 首位完成人单位名称
     */
    private String unitName;

    /**
     * 首位完成人学术归属单位比编号
     */
    private String academicUnitId;

    /**
     * 首位完成人学术归属单位名称
     */
    private String academicUnitName;

    /**
     * 授奖部门
     */
    private String awardDepartment;

    /**
     * 获奖类别
     */
    private String awardType;

    /**
     * 课题来源
     */
    private String subjectSource;

    /**
     * 单位排名
     */
    private String unitOrder;

    /**
     * 奖励等级
     */
    private String rewardGrade;

    /**
     * 其他成员姓名
     */
    private String otherMemberName;

    /**
     * 其他成员编号
     */
    private String otherMemberId;

    /**
     * 授奖日期
     */
    @Temporal(TemporalType.DATE)
    private Date awardDate;

    /**
     * 获奖年度
     */
    @Temporal(TemporalType.DATE)
    private Date awardYear;

    /**
     * 证书编号
     */
    private String diplomaId;

    /**
     * 津贴发放年度
     */
    @Temporal(TemporalType.DATE)
    private Date allowance;

    /**
     * 单位证书附件
     */
    private String unitDiplomaAnnexes;

    /**
     * 单位证书附件名称
     */
    private String unitDiplomaAnnexesName;

    /**
     * 个人证书
     */
    private String peoDiploma;

    /**
     * 个人证书附件名称
     */
    private String peoDiplomaAnnexes;

    /**
     * 登记年度
     */
    private String registerYear;

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

    public String getCompletePeoId() {
        return completePeoId;
    }

    public void setCompletePeoId(String completePeoId) {
        this.completePeoId = completePeoId;
    }

    public String getCompletePeoName() {
        return completePeoName;
    }

    public void setCompletePeoName(String completePeoName) {
        this.completePeoName = completePeoName;
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

    public String getAcademicUnitId() {
        return academicUnitId;
    }

    public void setAcademicUnitId(String academicUnitId) {
        this.academicUnitId = academicUnitId;
    }

    public String getAcademicUnitName() {
        return academicUnitName;
    }

    public void setAcademicUnitName(String academicUnitName) {
        this.academicUnitName = academicUnitName;
    }

    public String getAwardDepartment() {
        return awardDepartment;
    }

    public void setAwardDepartment(String awardDepartment) {
        this.awardDepartment = awardDepartment;
    }

    public String getAwardType() {
        return awardType;
    }

    public void setAwardType(String awardType) {
        this.awardType = awardType;
    }

    public String getSubjectSource() {
        return subjectSource;
    }

    public void setSubjectSource(String subjectSource) {
        this.subjectSource = subjectSource;
    }

    public String getUnitOrder() {
        return unitOrder;
    }

    public void setUnitOrder(String unitOrder) {
        this.unitOrder = unitOrder;
    }

    public String getRewardGrade() {
        return rewardGrade;
    }

    public void setRewardGrade(String rewardGrade) {
        this.rewardGrade = rewardGrade;
    }

    public String getOtherMemberName() {
        return otherMemberName;
    }

    public void setOtherMemberName(String otherMemberName) {
        this.otherMemberName = otherMemberName;
    }

    public String getOtherMemberId() {
        return otherMemberId;
    }

    public void setOtherMemberId(String otherMemberId) {
        this.otherMemberId = otherMemberId;
    }

    public Date getAwardDate() {
        return awardDate;
    }

    public void setAwardDate(Date awardDate) {
        this.awardDate = awardDate;
    }


    public String getUnitDiplomaAnnexes() {
        return unitDiplomaAnnexes;
    }

    public void setUnitDiplomaAnnexes(String unitDiplomaAnnexes) {
        this.unitDiplomaAnnexes = unitDiplomaAnnexes;
    }

    public String getUnitDiplomaAnnexesName() {
        return unitDiplomaAnnexesName;
    }

    public void setUnitDiplomaAnnexesName(String unitDiplomaAnnexesName) {
        this.unitDiplomaAnnexesName = unitDiplomaAnnexesName;
    }

    public Date getAwardYear() {
        return awardYear;
    }

    public void setAwardYear(Date awardYear) {
        this.awardYear = awardYear;
    }

    public String getDiplomaId() {
        return diplomaId;
    }

    public void setDiplomaId(String diplomaId) {
        this.diplomaId = diplomaId;
    }

    public Date getAllowance() {
        return allowance;
    }

    public void setAllowance(Date allowance) {
        this.allowance = allowance;
    }

    public String getPeoDiploma() {
        return peoDiploma;
    }

    public void setPeoDiploma(String peoDiploma) {
        this.peoDiploma = peoDiploma;
    }

    public String getPeoDiplomaAnnexes() {
        return peoDiplomaAnnexes;
    }

    public void setPeoDiplomaAnnexes(String peoDiplomaAnnexes) {
        this.peoDiplomaAnnexes = peoDiplomaAnnexes;
    }

    public String getRegisterYear() {
        return registerYear;
    }

    public void setRegisterYear(String registerYear) {
        this.registerYear = registerYear;
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
                ", completePeoId='" + completePeoId + '\'' +
                ", completePeoName='" + completePeoName + '\'' +
                ", unitId='" + unitId + '\'' +
                ", unitName='" + unitName + '\'' +
                ", academicUnitId='" + academicUnitId + '\'' +
                ", academicUnitName='" + academicUnitName + '\'' +
                ", awardDepartment='" + awardDepartment + '\'' +
                ", awardType='" + awardType + '\'' +
                ", subjectSource='" + subjectSource + '\'' +
                ", unitOrder='" + unitOrder + '\'' +
                ", rewardGrade='" + rewardGrade + '\'' +
                ", otherMemberName='" + otherMemberName + '\'' +
                ", otherMemberId='" + otherMemberId + '\'' +
                ", awardDate=" + awardDate +
                ", awardYear=" + awardYear +
                ", diplomaId='" + diplomaId + '\'' +
                ", allowance=" + allowance +
                ", unitDiplomaAnnexes='" + unitDiplomaAnnexes + '\'' +
                ", unitDiplomaAnnexesName='" + unitDiplomaAnnexesName + '\'' +
                ", peoDiploma='" + peoDiploma + '\'' +
                ", peoDiplomaAnnexes='" + peoDiplomaAnnexes + '\'' +
                ", registerYear='" + registerYear + '\'' +
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
