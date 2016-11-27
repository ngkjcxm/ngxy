package com.sdut.ngxykjc.work.paper.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by sunming on 2016/11/17.
 */
@Entity
@Table(name = "paper")
public class Paper {

    /**
     * Id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 论文编号
     */
    @Column(length = 100)
    private String paperId;

    /**
     * 论文题目
     */
    @Column(length = 100)
    private String paperName;

    /**
     * 刊物名称
     */
    @Column(length = 100)
    private String publishName;

    /**
     * 期卷
     */
    @Column(length = 100)
    private String paperRoll;

    /**
     * 刊号
     */
    @Column(length = 100)
    private String publicationsNumber;

    /**
     * ISSN
     */
    @Column(length = 100)
    private String issn;

    /**
     * ISBN
     */
    @Column(length = 100)
    private String isbn;

    /**
     * 论文级别
     */
    @Column(length = 100)
    private String paperLevel;

    /**
     * 论文类型
     */
    @Column(length = 100)
    private String paperType;

    /**
     * 发表时间
     */
    @Temporal(TemporalType.DATE)
    private Date publishDate;

    /**
     * 发表年度
     */
    @Column(length = 100)
    private String publishYear;

    /**
     * 月份
     */
    @Column(length = 100)
    private String publishMonth;

    /**
     * 首位作者编号
     */
    @Column(length = 100)
    private String author1Id;

    /**
     * 首位作者姓名
     */
    @Column(length = 100)
    private String author1Name;

    /**
     * 首位作者单位编号
     */
    @Column(length = 100)
    private String unit1Id;

    /**
     * 首位作者单位名称
     */
    @Column(length = 100)
    private String unit1Name;

    /**
     * 首位作者学术归属单位比编号
     */
    @Column(length = 100)
    private String academicUnit1Id;

    /**
     * 首位作者学术归属单位比名称
     */
    @Column(length = 100)
    private String academicUnit1Name;

    /**
     * 是否学生
     */
    @Column(length = 100)
    private String isStudent;

    /**
     * 通讯作者编号
     */
    @Column(length = 100)
    private String tAuthorId;

    /**
     * 通讯作者姓名
     */
    @Column(length = 100)
    private String tAuthorName;

    /**
     * 通讯作者单位编号
     */
    @Column(length = 100)
    private String tUnitId;

    /**
     * 通讯作者单位名称
     */
    @Column(length = 100)
    private String tUnitName;

    /**
     * 通讯作者学术归属单位比编号
     */
    @Column(length = 100)
    private String tAcademicUnitId;

    /**
     * 通讯作者学术归属单位比名称
     */
    @Column(length = 100)
    private String tAcademicUnitName;

    /**
     * 第二作者编号
     */
    @Column(length = 100)
    private String author2Id;

    /**
     * 第二作者姓名
     */
    @Column(length = 100)
    private String author2Name;

    /**
     * 第二作者单位编号
     */
    @Column(length = 100)
    private String unit2Id;

    /**
     * 第二作者单位名称
     */
    @Column(length = 100)
    private String unit2Name;

    /**
     * 第二作者学术归属单位编号
     */
    @Column(length = 100)
    private String academicUnit2Id;


    /**
     * 第二作者学术归属单位名称
     */
    @Column(length = 100)
    private String academicUnit2Name;


    /**
     * 第三作者编号
     */
    @Column(length = 100)
    private String author3Id;

    /**
     * 第三作者姓名
     */
    @Column(length = 100)
    private String author3Name;

    /**
     * 第三作者单位编号
     */
    @Column(length = 100)
    private String unit3Id;

    /**
     * 第三作者单位名称
     */
    @Column(length = 100)
    private String unit3Name;

    /**
     * 第三作者学术归属单位编号
     */
    @Column(length = 100)
    private String academicUnit3Id;

    /**
     * 第三作者学术归属单位名称
     */
    @Column(length = 100)
    private String academicUnit3Name;

    /**
     * 第四作者编号
     */
    @Column(length = 100)
    private String author4Id;

    /**
     * 第四作者姓名
     */
    @Column(length = 100)
    private String author4Name;

    /**
     * 第四作者单位编号
     */
    @Column(length = 100)
    private String unit4Id;

    /**
     * 第四作者单位名称
     */
    @Column(length = 100)
    private String unit4Name;

    /**
     * 第四作者学术归属单位编号
     */
    @Column(length = 100)
    private String academicUnit4Id;

    /**
     * 第四作者学术归属单位名称
     */
    @Column(length = 100)
    private String academicUnit4Name;

    /**
     * 第五作者编号
     */
    @Column(length = 100)
    private String author5Id;

    /**
     * 第五作者姓名
     */
    @Column(length = 100)
    private String author5Name;

    /**
     * 第五作者单位编号
     */
    @Column(length = 100)
    private String unit5Id;

    /**
     * 第五作者单位名称
     */
    @Column(length = 100)
    private String unit5Name;

    /**
     * 第五作者学术归属单位编号
     */
    @Column(length = 100)
    private String academicUnit5Id;

    /**
     * 第五作者学术归属单位名称
     */
    @Column(length = 100)
    private String academicUnit5Name;

    /**
     * 第六作者编号
     */
    @Column(length = 100)
    private String author6Id;

    /**
     * 第六作者姓名
     */
    @Column(length = 100)
    private String author6Name;

    /**
     * 第六作者单位编号
     */
    @Column(length = 100)
    private String unit6Id;

    /**
     * 第六作者单位名称
     */
    @Column(length = 100)
    private String unit6Name;

    /**
     * 第六作者学术归属单位编号
     */
    @Column(length = 100)
    private String academicUnit6Id;

    /**
     * 第六作者学术归属单位名称
     */
    @Column(length = 100)
    private String academicUnit6Name;

    /**
     * 第七作者编号
     */
    @Column(length = 100)
    private String author7Id;

    /**
     * 第七作者姓名
     */
    @Column(length = 100)
    private String author7Name;

    /**
     * 第七作者单位编号
     */
    @Column(length = 100)
    private String unit7Id;

    /**
     * 第七作者单位名称
     */
    @Column(length = 100)
    private String unit7Name;

    /**
     * 第七作者学术归属单位编号
     */
    @Column(length = 100)
    private String academicUnit7Id;

    /**
     * 第七作者学术归属单位名称
     */
    @Column(length = 100)
    private String academicUnit7Name;

    /**
     * 第八作者编号
     */
    @Column(length = 100)
    private String author8Id;

    /**
     * 第八作者姓名
     */
    @Column(length = 100)
    private String author8Name;

    /**
     * 第八作者单位编号
     */
    @Column(length = 100)
    private String unit8Id;

    /**
     * 第八作者单位名称
     */
    @Column(length = 100)
    private String unit8Name;

    /**
     * 第八作者学术归属单位编号
     */
    @Column(length = 100)
    private String academicUnit8Id;

    /**
     * 第八作者学术归属单位名称
     */
    @Column(length = 100)
    private String academicUnit8Name;

    /**
     * 其他作者
     */
    @Column(length = 100)
    private String otherAuthor;

    /**
     * 完成单位
     */
    @Column(length = 100)
    private String completeUnit;

    /**
     * 检索号
     */
    @Column(length = 100)
    private String searchId;

    /**
     * 收录检索
     */
    @Column(length = 100)
    private String indexedRetrieval;

    /**
     * 检索时间
     */
    @Temporal(TemporalType.DATE)
    private Date searchDate;

    /**
     * 所属学科代号
     */
    @Column(length = 100)
    private String subjectId;

    /**
     * 所属学科名称
     */
    @Column(length = 100)
    private String subjectName;

    /**
     * 津贴发放年度
     */
    @Temporal(TemporalType.DATE)
    private Date grantYear;

    /**
     * 津贴发放情况
     */
    @Column(length = 100)
    private String grantStatus;

    /**
     * 奖金
     */
    @Column(length = 100)
    private String bonus;

    /**
     * 论文集主编
     */
    @Column(length = 100)
    private String paperEidter;

    /**
     * 论文集出版社
     */
    @Column(length = 100)
    private String paprtPress;

    /**
     * 论文集出版地
     */
    @Column(length = 100)
    private String paperPlace;

    /**
     * 会议时间
     */
    @Temporal(TemporalType.DATE)
    private Date meetingDate;

    /**
     * 会议城市
     */
    @Column(length = 100)
    private String meetingCity;

    /**
     * 会议国家
     */
    @Column(length = 100)
    private String meetingCountry;

    /**
     * 登记时间
     */
    @Temporal(TemporalType.DATE)
    private Date registerDate;

    /**
     * 登记人编号
     */
    @Column(length = 100)
    private String registerPeoId;

    /**
     * 登记人姓名
     */
    @Column(length = 100)
    private String registerPeoName;

    /**
     * 提交状态
     */
    @Column(length = 100)
    private String submitStatus;

    /**
     * 审核状态
     */
    @Column(length = 100)
    private String examineStatus;

    /**
     * 审核结论
     */
    @Column(length = 100)
    private String examineResult;


    /**
     * 审核时间
     */
    @Temporal(TemporalType.DATE)
    private Date examineDate;

    /**
     * 审核人编号
     */
    @Column(length = 100)
    private String examinePeoId;

    /**
     * 审核人姓名
     */
    @Column(length = 100)
    private String examinePeoName;

    /**
     * 通讯作者是否认定
     */
    @Column(length = 100)
    private String isOKforAuthor;

    /**
     * 备注
     */
    @Column(length = 100)
    private String remark;


    /*************** getter or setter 方法 ***************/

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPaperId() {
        return paperId;
    }

    public void setPaperId(String paperId) {
        this.paperId = paperId;
    }

    public String getPaperName() {
        return paperName;
    }

    public void setPaperName(String paperName) {
        this.paperName = paperName;
    }

    public String getPublishName() {
        return publishName;
    }

    public void setPublishName(String publishName) {
        this.publishName = publishName;
    }

    public String getPaperRoll() {
        return paperRoll;
    }

    public void setPaperRoll(String paperRoll) {
        this.paperRoll = paperRoll;
    }

    public String getPublicationsNumber() {
        return publicationsNumber;
    }

    public void setPublicationsNumber(String publicationsNumber) {
        this.publicationsNumber = publicationsNumber;
    }

    public String getIssn() {
        return issn;
    }

    public void setIssn(String issn) {
        this.issn = issn;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getPaperLevel() {
        return paperLevel;
    }

    public void setPaperLevel(String paperLevel) {
        this.paperLevel = paperLevel;
    }

    public String getPaperType() {
        return paperType;
    }

    public void setPaperType(String paperType) {
        this.paperType = paperType;
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

    public String getIsStudent() {
        return isStudent;
    }

    public void setIsStudent(String isStudent) {
        this.isStudent = isStudent;
    }

    public String gettAuthorId() {
        return tAuthorId;
    }

    public void settAuthorId(String tAuthorId) {
        this.tAuthorId = tAuthorId;
    }

    public String gettAuthorName() {
        return tAuthorName;
    }

    public void settAuthorName(String tAuthorName) {
        this.tAuthorName = tAuthorName;
    }

    public String gettUnitId() {
        return tUnitId;
    }

    public void settUnitId(String tUnitId) {
        this.tUnitId = tUnitId;
    }

    public String gettUnitName() {
        return tUnitName;
    }

    public void settUnitName(String tUnitName) {
        this.tUnitName = tUnitName;
    }

    public String gettAcademicUnitId() {
        return tAcademicUnitId;
    }

    public void settAcademicUnitId(String tAcademicUnitId) {
        this.tAcademicUnitId = tAcademicUnitId;
    }

    public String gettAcademicUnitName() {
        return tAcademicUnitName;
    }

    public void settAcademicUnitName(String tAcademicUnitName) {
        this.tAcademicUnitName = tAcademicUnitName;
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

    public String getAcademicUnit2Id() {
        return academicUnit2Id;
    }

    public void setAcademicUnit2Id(String academicUnit2Id) {
        this.academicUnit2Id = academicUnit2Id;
    }

    public String getAcademicUnit2Name() {
        return academicUnit2Name;
    }

    public void setAcademicUnit2Name(String academicUnit2Name) {
        this.academicUnit2Name = academicUnit2Name;
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

    public String getAcademicUnit3Id() {
        return academicUnit3Id;
    }

    public void setAcademicUnit3Id(String academicUnit3Id) {
        this.academicUnit3Id = academicUnit3Id;
    }

    public String getAcademicUnit3Name() {
        return academicUnit3Name;
    }

    public void setAcademicUnit3Name(String academicUnit3Name) {
        this.academicUnit3Name = academicUnit3Name;
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

    public String getAcademicUnit4Id() {
        return academicUnit4Id;
    }

    public void setAcademicUnit4Id(String academicUnit4Id) {
        this.academicUnit4Id = academicUnit4Id;
    }

    public String getAcademicUnit4Name() {
        return academicUnit4Name;
    }

    public void setAcademicUnit4Name(String academicUnit4Name) {
        this.academicUnit4Name = academicUnit4Name;
    }

    public String getAuthor5Id() {
        return author5Id;
    }

    public void setAuthor5Id(String author5Id) {
        this.author5Id = author5Id;
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

    public String getAcademicUnit5Id() {
        return academicUnit5Id;
    }

    public void setAcademicUnit5Id(String academicUnit5Id) {
        this.academicUnit5Id = academicUnit5Id;
    }

    public String getAcademicUnit5Name() {
        return academicUnit5Name;
    }

    public void setAcademicUnit5Name(String academicUnit5Name) {
        this.academicUnit5Name = academicUnit5Name;
    }

    public String getAuthor6Id() {
        return author6Id;
    }

    public void setAuthor6Id(String author6Id) {
        this.author6Id = author6Id;
    }

    public String getAuthor6Name() {
        return author6Name;
    }

    public void setAuthor6Name(String author6Name) {
        this.author6Name = author6Name;
    }

    public String getUnit6Id() {
        return unit6Id;
    }

    public void setUnit6Id(String unit6Id) {
        this.unit6Id = unit6Id;
    }

    public String getUnit6Name() {
        return unit6Name;
    }

    public void setUnit6Name(String unit6Name) {
        this.unit6Name = unit6Name;
    }

    public String getAcademicUnit6Id() {
        return academicUnit6Id;
    }

    public void setAcademicUnit6Id(String academicUnit6Id) {
        this.academicUnit6Id = academicUnit6Id;
    }

    public String getAcademicUnit6Name() {
        return academicUnit6Name;
    }

    public void setAcademicUnit6Name(String academicUnit6Name) {
        this.academicUnit6Name = academicUnit6Name;
    }

    public String getAuthor7Id() {
        return author7Id;
    }

    public void setAuthor7Id(String author7Id) {
        this.author7Id = author7Id;
    }

    public String getAuthor7Name() {
        return author7Name;
    }

    public void setAuthor7Name(String author7Name) {
        this.author7Name = author7Name;
    }

    public String getUnit7Id() {
        return unit7Id;
    }

    public void setUnit7Id(String unit7Id) {
        this.unit7Id = unit7Id;
    }

    public String getUnit7Name() {
        return unit7Name;
    }

    public void setUnit7Name(String unit7Name) {
        this.unit7Name = unit7Name;
    }

    public String getAcademicUnit7Id() {
        return academicUnit7Id;
    }

    public void setAcademicUnit7Id(String academicUnit7Id) {
        this.academicUnit7Id = academicUnit7Id;
    }

    public String getAcademicUnit7Name() {
        return academicUnit7Name;
    }

    public void setAcademicUnit7Name(String academicUnit7Name) {
        this.academicUnit7Name = academicUnit7Name;
    }

    public String getAuthor8Id() {
        return author8Id;
    }

    public void setAuthor8Id(String author8Id) {
        this.author8Id = author8Id;
    }

    public String getAuthor8Name() {
        return author8Name;
    }

    public void setAuthor8Name(String author8Name) {
        this.author8Name = author8Name;
    }

    public String getUnit8Id() {
        return unit8Id;
    }

    public void setUnit8Id(String unit8Id) {
        this.unit8Id = unit8Id;
    }

    public String getUnit8Name() {
        return unit8Name;
    }

    public void setUnit8Name(String unit8Name) {
        this.unit8Name = unit8Name;
    }

    public String getAcademicUnit8Id() {
        return academicUnit8Id;
    }

    public void setAcademicUnit8Id(String academicUnit8Id) {
        this.academicUnit8Id = academicUnit8Id;
    }

    public String getAcademicUnit8Name() {
        return academicUnit8Name;
    }

    public void setAcademicUnit8Name(String academicUnit8Name) {
        this.academicUnit8Name = academicUnit8Name;
    }

    public String getOtherAuthor() {
        return otherAuthor;
    }

    public void setOtherAuthor(String otherAuthor) {
        this.otherAuthor = otherAuthor;
    }

    public String getCompleteUnit() {
        return completeUnit;
    }

    public void setCompleteUnit(String completeUnit) {
        this.completeUnit = completeUnit;
    }

    public String getSearchId() {
        return searchId;
    }

    public void setSearchId(String searchId) {
        this.searchId = searchId;
    }

    public String getIndexedRetrieval() {
        return indexedRetrieval;
    }

    public void setIndexedRetrieval(String indexedRetrieval) {
        this.indexedRetrieval = indexedRetrieval;
    }

    public Date getSearchDate() {
        return searchDate;
    }

    public void setSearchDate(Date searchDate) {
        this.searchDate = searchDate;
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

    public String getGrantStatus() {
        return grantStatus;
    }

    public Date getGrantYear() {
        return grantYear;
    }

    public void setGrantYear(Date grantYear) {
        this.grantYear = grantYear;
    }

    public void setGrantStatus(String grantStatus) {
        this.grantStatus = grantStatus;
    }

    public String getBonus() {
        return bonus;
    }

    public void setBonus(String bonus) {
        this.bonus = bonus;
    }

    public String getPaperEidter() {
        return paperEidter;
    }

    public void setPaperEidter(String paperEidter) {
        this.paperEidter = paperEidter;
    }

    public String getPaprtPress() {
        return paprtPress;
    }

    public void setPaprtPress(String paprtPress) {
        this.paprtPress = paprtPress;
    }

    public String getPaperPlace() {
        return paperPlace;
    }

    public void setPaperPlace(String paperPlace) {
        this.paperPlace = paperPlace;
    }

    public Date getMeetingDate() {
        return meetingDate;
    }

    public void setMeetingDate(Date meetingDate) {
        this.meetingDate = meetingDate;
    }

    public String getMeetingCity() {
        return meetingCity;
    }

    public void setMeetingCity(String meetingCity) {
        this.meetingCity = meetingCity;
    }

    public String getMeetingCountry() {
        return meetingCountry;
    }

    public void setMeetingCountry(String meetingCountry) {
        this.meetingCountry = meetingCountry;
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
        return "Paper{" +
                "id=" + id +
                ", paperId='" + paperId + '\'' +
                ", paperName='" + paperName + '\'' +
                ", publishName='" + publishName + '\'' +
                ", paperRoll='" + paperRoll + '\'' +
                ", publicationsNumber='" + publicationsNumber + '\'' +
                ", issn='" + issn + '\'' +
                ", isbn='" + isbn + '\'' +
                ", paperLevel='" + paperLevel + '\'' +
                ", paperType='" + paperType + '\'' +
                ", publishDate=" + publishDate +
                ", publishYear='" + publishYear + '\'' +
                ", publishMonth='" + publishMonth + '\'' +
                ", author1Id='" + author1Id + '\'' +
                ", author1Name='" + author1Name + '\'' +
                ", unit1Id='" + unit1Id + '\'' +
                ", unit1Name='" + unit1Name + '\'' +
                ", academicUnit1Id='" + academicUnit1Id + '\'' +
                ", academicUnit1Name='" + academicUnit1Name + '\'' +
                ", isStudent='" + isStudent + '\'' +
                ", tAuthorId='" + tAuthorId + '\'' +
                ", tAuthorName='" + tAuthorName + '\'' +
                ", tUnitId='" + tUnitId + '\'' +
                ", tUnitName='" + tUnitName + '\'' +
                ", tAcademicUnitId='" + tAcademicUnitId + '\'' +
                ", tAcademicUnitName='" + tAcademicUnitName + '\'' +
                ", author2Id='" + author2Id + '\'' +
                ", author2Name='" + author2Name + '\'' +
                ", unit2Id='" + unit2Id + '\'' +
                ", unit2Name='" + unit2Name + '\'' +
                ", academicUnit2Id='" + academicUnit2Id + '\'' +
                ", academicUnit2Name='" + academicUnit2Name + '\'' +
                ", author3Id='" + author3Id + '\'' +
                ", author3Name='" + author3Name + '\'' +
                ", unit3Id='" + unit3Id + '\'' +
                ", unit3Name='" + unit3Name + '\'' +
                ", academicUnit3Id='" + academicUnit3Id + '\'' +
                ", academicUnit3Name='" + academicUnit3Name + '\'' +
                ", author4Id='" + author4Id + '\'' +
                ", author4Name='" + author4Name + '\'' +
                ", unit4Id='" + unit4Id + '\'' +
                ", unit4Name='" + unit4Name + '\'' +
                ", academicUnit4Id='" + academicUnit4Id + '\'' +
                ", academicUnit4Name='" + academicUnit4Name + '\'' +
                ", author5Id='" + author5Id + '\'' +
                ", author5Name='" + author5Name + '\'' +
                ", unit5Id='" + unit5Id + '\'' +
                ", unit5Name='" + unit5Name + '\'' +
                ", academicUnit5Id='" + academicUnit5Id + '\'' +
                ", academicUnit5Name='" + academicUnit5Name + '\'' +
                ", author6Id='" + author6Id + '\'' +
                ", author6Name='" + author6Name + '\'' +
                ", unit6Id='" + unit6Id + '\'' +
                ", unit6Name='" + unit6Name + '\'' +
                ", academicUnit6Id='" + academicUnit6Id + '\'' +
                ", academicUnit6Name='" + academicUnit6Name + '\'' +
                ", author7Id='" + author7Id + '\'' +
                ", author7Name='" + author7Name + '\'' +
                ", unit7Id='" + unit7Id + '\'' +
                ", unit7Name='" + unit7Name + '\'' +
                ", academicUnit7Id='" + academicUnit7Id + '\'' +
                ", academicUnit7Name='" + academicUnit7Name + '\'' +
                ", author8Id='" + author8Id + '\'' +
                ", author8Name='" + author8Name + '\'' +
                ", unit8Id='" + unit8Id + '\'' +
                ", unit8Name='" + unit8Name + '\'' +
                ", academicUnit8Id='" + academicUnit8Id + '\'' +
                ", academicUnit8Name='" + academicUnit8Name + '\'' +
                ", otherAuthor='" + otherAuthor + '\'' +
                ", completeUnit='" + completeUnit + '\'' +
                ", searchId='" + searchId + '\'' +
                ", indexedRetrieval='" + indexedRetrieval + '\'' +
                ", searchDate=" + searchDate +
                ", subjectId='" + subjectId + '\'' +
                ", subjectName='" + subjectName + '\'' +
                ", grantYear='" + grantYear + '\'' +
                ", grantStatus='" + grantStatus + '\'' +
                ", bonus='" + bonus + '\'' +
                ", paperEidter='" + paperEidter + '\'' +
                ", paprtPress='" + paprtPress + '\'' +
                ", paperPlace='" + paperPlace + '\'' +
                ", meetingDate='" + meetingDate + '\'' +
                ", meetingCity='" + meetingCity + '\'' +
                ", meetingCountry='" + meetingCountry + '\'' +
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
