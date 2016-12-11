package com.sdut.ngxykjc.work.softwareWork.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by sunming on 2016/11/19.
 */
@Entity
@Table(name = "softwarework")
public class SoftwareWork {

    /**
     * Id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 著作权编号
     */
    private String copyrightId;

    /**
     * 登记号
     */
    private String registerId;


    /**
     * 软件名称
     */
    private String softwareName;

    /**
     * 第一作者编号
     */
    private String author1Id;

    /**
     * 第一作者姓名
     */
    private String author1Name;

    /**
     * 第一作者单位编号
     */
    private String unit1Id;

    /**
     * 第一作者部门名称
     */
    private String unit1Name;

    /**
     * 第一作者学术归属单位编号
     */
    private String academicUnit1Id;

    /**
     * 第一作者学术归属单位名称
     */
    private String academicUnit1Name;

    /**
     * 其他作者编号
     */
    private String otherAutherId;

    /**
     * 其他作者
     */
    private String otherAutherName;

    /**
     * 开发完成日期
     */
    @Temporal(TemporalType.DATE)
    private Date finishDate;

    /**
     * 首次发表日期
     */
    @Temporal(TemporalType.DATE)
    private Date fistPublishDate;

    /**
     * 证书号
     */
    private String deplomaId;

    /**
     * 发证日期
     */
    @Temporal(TemporalType.DATE)
    private Date issueDate;

    /**
     * 著作权证书附件
     */
    private String copyrightDepplomaEnclosuer;

    /**
     * 著作权证书名称
     */
    private String copyrightDepplomaName;

    /**
     * 津贴发放年度
     */
    private String allowanceYear;

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


    /************** getter or setter ***************/

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCopyrightId() {
        return copyrightId;
    }

    public void setCopyrightId(String copyrightId) {
        this.copyrightId = copyrightId;
    }

    public String getRegisterId() {
        return registerId;
    }

    public void setRegisterId(String registerId) {
        this.registerId = registerId;
    }

    public String getSoftwareName() {
        return softwareName;
    }

    public void setSoftwareName(String softwareName) {
        this.softwareName = softwareName;
    }

    public String getAuthor1Id() {
        return author1Id;
    }

    public void setAuthor1Id(String author1Id) {
        this.author1Id = author1Id;
    }

    public String getAuthor1Name() {
        return author1Name;
    }

    public void setAuthor1Name(String author1Name) {
        this.author1Name = author1Name;
    }

    public String getUnit1Id() {
        return unit1Id;
    }

    public void setUnit1Id(String unit1Id) {
        this.unit1Id = unit1Id;
    }

    public String getUnit1Name() {
        return unit1Name;
    }

    public void setUnit1Name(String unit1Name) {
        this.unit1Name = unit1Name;
    }

    public String getAcademicUnit1Id() {
        return academicUnit1Id;
    }

    public void setAcademicUnit1Id(String academicUnit1Id) {
        this.academicUnit1Id = academicUnit1Id;
    }

    public String getAcademicUnit1Name() {
        return academicUnit1Name;
    }

    public void setAcademicUnit1Name(String academicUnit1Name) {
        this.academicUnit1Name = academicUnit1Name;
    }

    public String getOtherAutherId() {
        return otherAutherId;
    }

    public void setOtherAutherId(String otherAutherId) {
        this.otherAutherId = otherAutherId;
    }

    public String getOtherAutherName() {
        return otherAutherName;
    }

    public void setOtherAutherName(String otherAutherName) {
        this.otherAutherName = otherAutherName;
    }

    public Date getFinishDate() {
        return finishDate;
    }

    public void setFinishDate(Date finishDate) {
        this.finishDate = finishDate;
    }

    public Date getFistPublishDate() {
        return fistPublishDate;
    }

    public void setFistPublishDate(Date fistPublishDate) {
        this.fistPublishDate = fistPublishDate;
    }

    public String getDeplomaId() {
        return deplomaId;
    }

    public void setDeplomaId(String deplomaId) {
        this.deplomaId = deplomaId;
    }

    public Date getIssueDate() {
        return issueDate;
    }

    public void setIssueDate(Date issueDate) {
        this.issueDate = issueDate;
    }

    public String getCopyrightDepplomaEnclosuer() {
        return copyrightDepplomaEnclosuer;
    }

    public void setCopyrightDepplomaEnclosuer(String copyrightDepplomaEnclosuer) {
        this.copyrightDepplomaEnclosuer = copyrightDepplomaEnclosuer;
    }

    public String getCopyrightDepplomaName() {
        return copyrightDepplomaName;
    }

    public void setCopyrightDepplomaName(String copyrightDepplomaName) {
        this.copyrightDepplomaName = copyrightDepplomaName;
    }

    public String getAllowanceYear() {
        return allowanceYear;
    }

    public void setAllowanceYear(String allowanceYear) {
        this.allowanceYear = allowanceYear;
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
        return "SoftwareWork{" +
                "id=" + id +
                ", copyrightId='" + copyrightId + '\'' +
                ", registerId='" + registerId + '\'' +
                ", softwareName='" + softwareName + '\'' +
                ", author1Id='" + author1Id + '\'' +
                ", author1Name='" + author1Name + '\'' +
                ", unit1Id='" + unit1Id + '\'' +
                ", unit1Name='" + unit1Name + '\'' +
                ", academicUnit1Id='" + academicUnit1Id + '\'' +
                ", academicUnit1Name='" + academicUnit1Name + '\'' +
                ", otherAutherId='" + otherAutherId + '\'' +
                ", otherAutherName='" + otherAutherName + '\'' +
                ", finishDate=" + finishDate +
                ", fistPublishDate=" + fistPublishDate +
                ", deplomaId='" + deplomaId + '\'' +
                ", issueDate=" + issueDate +
                ", copyrightDepplomaEnclosuer='" + copyrightDepplomaEnclosuer + '\'' +
                ", copyrightDepplomaName='" + copyrightDepplomaName + '\'' +
                ", allowanceYear='" + allowanceYear + '\'' +
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
