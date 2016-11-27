package com.sdut.ngxykjc.work.patent.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by sunming on 2016/11/21.
 */
@Entity
@Table(name = "patent")
public class Patent {

    /**
     * Id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     *  专利编号
     */
    private String patentId;

    /**
     * 专利名称
     */
    private String patentName;

    /**
     * 年度
     */
    private String years;

    /**
     * 发明人或者设计人编号
     */
    private String patentCreaterId;

    /**
     * 发明人或者设计人姓名
     */
    private String patentCreaterName;

    /**
     * 发明人或者设计人单位部门编号
     */
    private String departmentId;

    /**
     * 发明人或者设计人单位部门名称
     */
    private String departmentName;

    /**
     * 发明人或者设计人单位编号
     */
    private String unitId;

    /**
     * 发明人或者设计人单位名称
     */
    private String unitName;

    /**
     * 发明人或设计人学术归属单位编号
     */
    private String acadimicUnitId;

    /**
     * 发明人或设计人学术归属单位名称
     */
    private String academicUnitName;

    /**
     *  其他发明人或设计人编号
     */
    private String otherPeoId;

    /**
     *  其他发明人或设计人
     */
    private String otherPeoName;

    /**
     * 专利号
     */
    private String patentNumber;

    /**
     * 法律状态
     */
    private String legalStatus;

    /**
     * 专利类型
     */
    private String patentType;

    /**
     * 专利申请日
     */
    @Temporal(TemporalType.DATE)
    private Date applyDate;

    /**
     * 专利权人
     */
    private String patentHolder;

    /**
     * 授权公告号
     */
    private String authorizedPublicNumber;

    /**
     * 授权公告日
     */
    @Temporal(TemporalType.DATE)
    private Date authorizedPublicDate;

    /**
     * 授权年度
     */
    private String authorizedYear;

    /**
     * 津贴发放年度
     */
    private String grantYear;

    /**
     * 专利证书附件
     */
    private String patentDiplomaEnclosure;

    /**
     * 专利证书名称
     */
    private String patentDiplomaName;

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
     * 通讯作者是否认定
     */
    private String isOKforAuthor;

    /**
     * 备注
     */
    private String remark;


    /*************** getter or setter ***************/

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPatentId() {
        return patentId;
    }

    public void setPatentId(String patentId) {
        this.patentId = patentId;
    }

    public String getPatentName() {
        return patentName;
    }

    public void setPatentName(String patentName) {
        this.patentName = patentName;
    }

    public String getYears() {
        return years;
    }

    public void setYears(String years) {
        this.years = years;
    }

    public String getPatentCreaterId() {
        return patentCreaterId;
    }

    public void setPatentCreaterId(String patentCreaterId) {
        this.patentCreaterId = patentCreaterId;
    }

    public String getPatentCreaterName() {
        return patentCreaterName;
    }

    public void setPatentCreaterName(String patentCreaterName) {
        this.patentCreaterName = patentCreaterName;
    }

    public String getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(String departmentId) {
        this.departmentId = departmentId;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
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

    public String getAcadimicUnitId() {
        return acadimicUnitId;
    }

    public void setAcadimicUnitId(String acadimicUnitId) {
        this.acadimicUnitId = acadimicUnitId;
    }

    public String getAcademicUnitName() {
        return academicUnitName;
    }

    public void setAcademicUnitName(String academicUnitName) {
        this.academicUnitName = academicUnitName;
    }

    public String getOtherPeoId() {
        return otherPeoId;
    }

    public void setOtherPeoId(String otherPeoId) {
        this.otherPeoId = otherPeoId;
    }

    public String getOtherPeoName() {
        return otherPeoName;
    }

    public void setOtherPeoName(String otherPeoName) {
        this.otherPeoName = otherPeoName;
    }

    public String getPatentNumber() {
        return patentNumber;
    }

    public void setPatentNumber(String patentNumber) {
        this.patentNumber = patentNumber;
    }

    public String getLegalStatus() {
        return legalStatus;
    }

    public void setLegalStatus(String legalStatus) {
        this.legalStatus = legalStatus;
    }

    public String getPatentType() {
        return patentType;
    }

    public void setPatentType(String patentType) {
        this.patentType = patentType;
    }

    public Date getApplyDate() {
        return applyDate;
    }

    public void setApplyDate(Date applyDate) {
        this.applyDate = applyDate;
    }

    public String getPatentHolder() {
        return patentHolder;
    }

    public void setPatentHolder(String patentHolder) {
        this.patentHolder = patentHolder;
    }

    public String getAuthorizedPublicNumber() {
        return authorizedPublicNumber;
    }

    public void setAuthorizedPublicNumber(String authorizedPublicNumber) {
        this.authorizedPublicNumber = authorizedPublicNumber;
    }

    public Date getAuthorizedPublicDate() {
        return authorizedPublicDate;
    }

    public void setAuthorizedPublicDate(Date authorizedPublicDate) {
        this.authorizedPublicDate = authorizedPublicDate;
    }

    public String getAuthorizedYear() {
        return authorizedYear;
    }

    public void setAuthorizedYear(String authorizedYear) {
        this.authorizedYear = authorizedYear;
    }

    public String getGrantYear() {
        return grantYear;
    }

    public void setGrantYear(String grantYear) {
        this.grantYear = grantYear;
    }

    public String getPatentDiplomaEnclosure() {
        return patentDiplomaEnclosure;
    }

    public void setPatentDiplomaEnclosure(String patentDiplomaEnclosure) {
        this.patentDiplomaEnclosure = patentDiplomaEnclosure;
    }

    public String getPatentDiplomaName() {
        return patentDiplomaName;
    }

    public void setPatentDiplomaName(String patentDiplomaName) {
        this.patentDiplomaName = patentDiplomaName;
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

    public String getIsOKforAuthor() {
        return isOKforAuthor;
    }

    public void setIsOKforAuthor(String isOKforAuthor) {
        this.isOKforAuthor = isOKforAuthor;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "patent{" +
                "id=" + id +
                ", patentId='" + patentId + '\'' +
                ", patentName='" + patentName + '\'' +
                ", years='" + years + '\'' +
                ", patentCreaterId='" + patentCreaterId + '\'' +
                ", patentCreaterName='" + patentCreaterName + '\'' +
                ", departmentId='" + departmentId + '\'' +
                ", departmentName='" + departmentName + '\'' +
                ", unitId='" + unitId + '\'' +
                ", unitName='" + unitName + '\'' +
                ", acadimicUnitId='" + acadimicUnitId + '\'' +
                ", academicUnitName='" + academicUnitName + '\'' +
                ", otherPeoId='" + otherPeoId + '\'' +
                ", otherPeoName='" + otherPeoName + '\'' +
                ", patentNumber='" + patentNumber + '\'' +
                ", legalStatus='" + legalStatus + '\'' +
                ", patentType='" + patentType + '\'' +
                ", applyDate=" + applyDate +
                ", patentHolder='" + patentHolder + '\'' +
                ", authorizedPublicNumber='" + authorizedPublicNumber + '\'' +
                ", authorizedPublicDate=" + authorizedPublicDate +
                ", authorizedYear='" + authorizedYear + '\'' +
                ", grantYear='" + grantYear + '\'' +
                ", patentDiplomaEnclosure='" + patentDiplomaEnclosure + '\'' +
                ", patentDiplomaName='" + patentDiplomaName + '\'' +
                ", registerDate=" + registerDate +
                ", registerPeoId='" + registerPeoId + '\'' +
                ", registerPeoName='" + registerPeoName + '\'' +
                ", submitStatus='" + submitStatus + '\'' +
                ", examineStatus='" + examineStatus + '\'' +
                ", examineResult='" + examineResult + '\'' +
                ", examineDate=" + examineDate +
                ", examinePeoId='" + examinePeoId + '\'' +
                ", examinePeoName='" + examinePeoName + '\'' +
                ", isOKforAuthor='" + isOKforAuthor + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
