package com.sdut.ngxykjc.work.workAchievement.bean;

import javax.persistence.*;
import java.io.PrintWriter;
import java.util.Date;

/**
 * Created by sunming on 2016/11/15.
 */
@Entity
@Table(name = "workachieve")
public class WorkAchieve {

    /**
     * id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 著作编号
     */
    private String workId;

    /**
     * 著作名称
     */
    private String workName;

    /**
     * ISBN
     */
    private String ISBN;

    /**
     * 所属学科代号
     */
    private String subjectId;

    /**
     * 所属学科名称
     */
    private String subjectName;

    /**
     * 著作总字数
     */
    private String workWordAll;

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
     * 第一作者学术归属部门名称
     */
    private String academicUnit1Name;

    /**
     * 第一作者撰写字数
     */
    private String author1wordsNumber;

    /**
     * 第二作者编号
     */
    private String author2Id;

    /**
     * 第二作者姓名
     */
    private String author2Name;

    /**
     * 第二作者部门编号
     */
    private String unit2Id;

    /**
     * 第二作者部门名称
     */
    private String unit2Name;

    /**
     * 第二作者撰写字数
     */
    private String author2wordsNumber;

    /**
     * 第三作者编号
     */
    private String author3Id;

    /**
     * 第三作者姓名
     */
    private String author3Name;

    /**
     * 第三作者部门编号
     */
    private String unit3Id;

    /**
     * 第三作者部门名称
     */
    private String unit3Name;

    /**
     * 第三作者撰写字数
     */
    private String author3wordsNumber;

    /**
     * 第四作者编号
     */
    private String author4Id;

    /**
     * 第四作者姓名
     */
    private String author4Name;

    /**
     * 第四作者部门编号
     */
    private String unit4Id;

    /**
     * 第四作者部门名称
     */
    private String unit4Name;

    /**
     * 第四作者撰写字数
     */
    private String author4wordsNumber;

    /**
     * 第五作者姓名
     */
    private String author5Name;

    /**
     * 第五作者部门编号
     */
    private String unit5Id;

    /**
     * 第五作者部门名称
     */
    private String unit5Name;

    /**
     * 第五作者撰写字数
     */
    private String author5wordsNumber;

    /**
     * 津贴发放年度
     */
    private String moneyIntoYear;

    /**
     * 著作类别
     */
    private String worksType;

    /**
     * 出版日期
     */
    @Temporal(TemporalType.DATE)
    private Date publishDate;

    /**
     * 出版年度
     */
    private String publishYear;

    /**
     * 月份
     */
    private String publishMonth;

    /**
     * 刊号
     */
    private String publicationsNumber;

    /**
     * 出版地
     */
    private String publishAddress;

    /**
     * 出版单位
     */
    private String publishUnit;

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

    /*************** getter Or setter 方法 ***************/

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getWorkId() {
        return workId;
    }

    public void setWorkId(String workId) {
        this.workId = workId;
    }

    public String getWorkName() {
        return workName;
    }

    public void setWorkName(String workName) {
        this.workName = workName;
    }

    public String getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(String subjectId) {
        this.subjectId = subjectId;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public String getWorkWordAll() {
        return workWordAll;
    }

    public void setWorkWordAll(String workWordAll) {
        this.workWordAll = workWordAll;
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

    public String getAuthor1wordsNumber() {
        return author1wordsNumber;
    }

    public void setAuthor1wordsNumber(String author1wordsNumber) {
        this.author1wordsNumber = author1wordsNumber;
    }

    public String getAuthor2Id() {
        return author2Id;
    }

    public void setAuthor2Id(String author2Id) {
        this.author2Id = author2Id;
    }

    public String getAuthor2Name() {
        return author2Name;
    }

    public void setAuthor2Name(String author2Name) {
        this.author2Name = author2Name;
    }

    public String getUnit2Id() {
        return unit2Id;
    }

    public void setUnit2Id(String unit2Id) {
        this.unit2Id = unit2Id;
    }

    public String getUnit2Name() {
        return unit2Name;
    }

    public void setUnit2Name(String unit2Name) {
        this.unit2Name = unit2Name;
    }

    public String getAuthor2wordsNumber() {
        return author2wordsNumber;
    }

    public void setAuthor2wordsNumber(String author2wordsNumber) {
        this.author2wordsNumber = author2wordsNumber;
    }

    public String getAuthor3Id() {
        return author3Id;
    }

    public void setAuthor3Id(String author3Id) {
        this.author3Id = author3Id;
    }

    public String getAuthor3Name() {
        return author3Name;
    }

    public void setAuthor3Name(String author3Name) {
        this.author3Name = author3Name;
    }

    public String getUnit3Id() {
        return unit3Id;
    }

    public void setUnit3Id(String unit3Id) {
        this.unit3Id = unit3Id;
    }

    public String getUnit3Name() {
        return unit3Name;
    }

    public void setUnit3Name(String unit3Name) {
        this.unit3Name = unit3Name;
    }

    public String getAuthor3wordsNumber() {
        return author3wordsNumber;
    }

    public void setAuthor3wordsNumber(String author3wordsNumber) {
        this.author3wordsNumber = author3wordsNumber;
    }

    public String getAuthor4Id() {
        return author4Id;
    }

    public void setAuthor4Id(String author4Id) {
        this.author4Id = author4Id;
    }

    public String getAuthor4Name() {
        return author4Name;
    }

    public void setAuthor4Name(String author4Name) {
        this.author4Name = author4Name;
    }

    public String getUnit4Id() {
        return unit4Id;
    }

    public void setUnit4Id(String unit4Id) {
        this.unit4Id = unit4Id;
    }

    public String getUnit4Name() {
        return unit4Name;
    }

    public void setUnit4Name(String unit4Name) {
        this.unit4Name = unit4Name;
    }

    public String getAuthor4wordsNumber() {
        return author4wordsNumber;
    }

    public void setAuthor4wordsNumber(String author4wordsNumber) {
        this.author4wordsNumber = author4wordsNumber;
    }

    public String getAuthor5Name() {
        return author5Name;
    }

    public void setAuthor5Name(String author5Name) {
        this.author5Name = author5Name;
    }

    public String getUnit5Id() {
        return unit5Id;
    }

    public void setUnit5Id(String unit5Id) {
        this.unit5Id = unit5Id;
    }

    public String getUnit5Name() {
        return unit5Name;
    }

    public void setUnit5Name(String unit5Name) {
        this.unit5Name = unit5Name;
    }

    public String getAuthor5wordsNumber() {
        return author5wordsNumber;
    }

    public void setAuthor5wordsNumber(String author5wordsNumber) {
        this.author5wordsNumber = author5wordsNumber;
    }

    public String getWorksType() {
        return worksType;
    }

    public void setWorksType(String worksType) {
        this.worksType = worksType;
    }

    public Date getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public String getPublishYear() {
        return publishYear;
    }

    public void setPublishYear(String publishYear) {
        this.publishYear = publishYear;
    }

    public String getPublishMonth() {
        return publishMonth;
    }

    public void setPublishMonth(String publishMonth) {
        this.publishMonth = publishMonth;
    }

    public String getPublicationsNumber() {
        return publicationsNumber;
    }

    public void setPublicationsNumber(String publicationsNumber) {
        this.publicationsNumber = publicationsNumber;
    }

    public String getPublishAddress() {
        return publishAddress;
    }

    public void setPublishAddress(String publishAddress) {
        this.publishAddress = publishAddress;
    }

    public String getPublishUnit() {
        return publishUnit;
    }

    public void setPublishUnit(String publishUnit) {
        this.publishUnit = publishUnit;
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

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public String getMoneyIntoYear() {
        return moneyIntoYear;
    }

    public void setMoneyIntoYear(String moneyIntoYear) {
        this.moneyIntoYear = moneyIntoYear;
    }

    @Override
    public String toString() {
        return "WorkAchieve{" +
                "id=" + id +
                ", workId='" + workId + '\'' +
                ", workName='" + workName + '\'' +
                ", subjectId='" + subjectId + '\'' +
                ", subjectName='" + subjectName + '\'' +
                ", workWordAll='" + workWordAll + '\'' +
                ", author1Id='" + author1Id + '\'' +
                ", author1Name='" + author1Name + '\'' +
                ", unit1Id='" + unit1Id + '\'' +
                ", unit1Name='" + unit1Name + '\'' +
                ", academicUnit1Id='" + academicUnit1Id + '\'' +
                ", academicUnit1Name='" + academicUnit1Name + '\'' +
                ", author1wordsNumber='" + author1wordsNumber + '\'' +
                ", author2Id='" + author2Id + '\'' +
                ", author2Name='" + author2Name + '\'' +
                ", unit2Id='" + unit2Id + '\'' +
                ", unit2Name='" + unit2Name + '\'' +
                ", author2wordsNumber='" + author2wordsNumber + '\'' +
                ", author3Id='" + author3Id + '\'' +
                ", author3Name='" + author3Name + '\'' +
                ", unit3Id='" + unit3Id + '\'' +
                ", unit3Name='" + unit3Name + '\'' +
                ", author3wordsNumber='" + author3wordsNumber + '\'' +
                ", author4Id='" + author4Id + '\'' +
                ", author4Name='" + author4Name + '\'' +
                ", unit4Id='" + unit4Id + '\'' +
                ", unit4Name='" + unit4Name + '\'' +
                ", author4wordsNumber='" + author4wordsNumber + '\'' +
                ", author5Name='" + author5Name + '\'' +
                ", unit5Id='" + unit5Id + '\'' +
                ", unit5Name='" + unit5Name + '\'' +
                ", author5wordsNumber='" + author5wordsNumber + '\'' +
                ", worksType='" + worksType + '\'' +
                ", publishDate=" + publishDate +
                ", publishYear='" + publishYear + '\'' +
                ", publishMonth='" + publishMonth + '\'' +
                ", publicationsNumber='" + publicationsNumber + '\'' +
                ", publishAddress='" + publishAddress + '\'' +
                ", publishUnit='" + publishUnit + '\'' +
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
