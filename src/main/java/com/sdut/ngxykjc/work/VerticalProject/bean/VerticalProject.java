package com.sdut.ngxykjc.work.VerticalProject.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by sunming on 2016/11/13.
 */
@Entity
@Table(name = "vertial")
public class VerticalProject {

    /**
     * id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 课题编号
     */
    private String VerticalId;

    /**
     * 课题名称
     */
    private String VerticalName;

    /**
     * 课题负责人编号
     */
    private String VerticalHeaderId;

    /**
     * 课题负责人姓名
     */
    private String VerticalHeaderName;

    /**
     * 其他参与人员
     */
    private String otherPeople;

    /**
     * 职称
     */
    private String jopTileName;

    /**
     * 成员编号
     */
    private String memberId;

    /**
     * 成员姓名
     */
    private String memberName;

    /**
     * 当年参与人员
     */
    private String everParticipant;

    /**
     * 女性科技人员
     */
    private String womenParticipant;

    /**
     * 高级职称
     */
    private String seniorTitle;

    /**
     * 中级职称
     */
    private String midTitle;

    /**
     * 初级职称
     */
    private String primaryTitle;

    /**
     * 其他职称
     */
    private String otherTitle;

    /**
     * 参与研究生
     */
    private String postgraduate;

    /**
     * 博士生
     */
    private String doctor;

    /**
     * 硕士生
     */
    private String master;

    /**
     * 登记年度
     */
    private String year;

    /**
     * 项目来源代码
     */
    private String projectSourceCode;

    /**
     * 项目来源
     */
    private String projectSource;

    /**
     * 课题状态
     */
    private String status;

    /**
     * 项目编号
     */
    private String projectId;

    /**
     * 参与类型
     */
    private String projectType;

    /**
     * 课题负责人单位编号
     */
    private String unitId;

    /**
     * 课题负责人单位名称
     */
    private String unitName;

    /**
     * 课题负责人学科归属部门编号
     */
    private String acaUnitId;

    /**
     * 课题负责人学科归属部门名称
     */
    private String acaUnitName;

    /**
     * 学科分类代码
     */
    private String subjectCode;

    /**
     * 学科分类
     */
    private String subjectType;

    /**
     * 活动类型代码
     */
    private String activityTypeCode;

    /**
     * 活动类型
     */
    private String activityType;

    /**
     * 课题基金号
     */
    private String fundAccount;

    /**
     * 批准时间
     */
    @Temporal(TemporalType.DATE)
    private Date approvalDate;

    /**
     * 起始时间
     */
    @Temporal(TemporalType.DATE)
    private Date starDate;

    /**
     * 截止时间
     */
    @Temporal(TemporalType.DATE)
    private Date endDate;

    /**
     * 课题申请书
     */
    private String applicationBook;

    /**
     * 课题申请书名称
     */
    private String applicationBookName;

    /**
     * 课题批转文件
     */
    private String applicationBookFile;

    /**
     * 课题批准文件名称
     */
    private String applicationBookFileName;

    /**
     * 任务书
     */
    private String taskBook;

    /**
     * 任务书名称
     */
    private String taskBookName;

    /**
     * 组织形式
     */
    private String organizationForm;

    /**
     * 组织形式代码
     */
    private String organizationFormCode;

    /**
     * 合作形式
     */
    private String collectiveForm;

    /**
     * 合作形式代码
     */
    private String collectiveFormCode;

    /**
     * 服务的国民经济行业代码
     */
    private String industryCode;

    /**
     * 服务的国民经济行业
     */
    private String industry;

    /**
     * 项目的社会经济目标代码
     */
    private String socialCode;

    /**
     * 项目的社会经济目标
     */
    private String socialTarget;

    /**
     * 登记时间
     */
    @Temporal(TemporalType.DATE)
    private Date registrationDate;

    /**
     * 登记人编号
     */
    private String registrationPeoId;

    /**
     * 登记人姓名
     */
    private String registrationName;

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
     * 立项结论
     */
    private String projectSetResult;

    /**
     * 立项状态
     */
    private String projectSetStatus;

    /**
     * 立项人编号
     */
    private String projectSetPeoId;

    /**
     * 立项人姓名
     */
    private String projectSetPeoName;
    /**
     * 立项时间
     */
    @Temporal(TemporalType.DATE)
    private Date projectSetDate;

    /**
     * 到位经费
     */
    private float putExpenditure;

    /**
     * 批准经费
     */
    private float approvalFunds;
    /**
     * 到位研发费
     */
    private float putReserachExpenditure;

    /**
     * 到位设备费
     */
    private float putEquipmentExpenditure;

    /**
     * 已分配经费
     */
    private float hasAssignedExpenditrue;

    /**
     * 分配研发费
     */
    private float AssignedReserchExpenditrue;

    /**
     * 分配设备费
     */
    private float AssignedEquipmentExpenditrue;

    /**
     * 未分配经费
     */
    private float notAssignExpenditrue;

    /**
     * 未分配研发费
     */
    private float notAssignReservhExpenditrue;

    /**
     * 未分配设备费
     */
    private float notAssignEquipmentExpenditrue;

    /**
     * 经费单位
     */
    private String ExpenditrueUnit;

    /**
     * 经费基金账号
     */
    private String ExpenditrueFoundAccount;

    /**
     * 账号分配时间
     */
    @Temporal(TemporalType.DATE)
    private Date accountAssignDate;

    /**
     * 账号分配人编号
     */
    private String accountAssignPeoId;

    /**
     * 账号分配人姓名
     */
    private String accountAssignPeoName;

    /**
     * 验收报告附件
     */
    private String acceptanceReportEncliseure;

    /**
     * 验收报告名称
     */
    private String acceptanceReportName;

    /**
     * 申请结题
     */
    private String applicationEndTopic;

    /**
     * 申请结题时间
     */
    private Date applicationEndTopicDate;

    /**
     * 结题审核结论
     */
    private String endTopicExamineResult;

    /**
     * 结题审核时间
     */
    private Date endTopicExamineDate;

    /**
     * 结题审核人编号
     */
    private String applicationPeoId;

    /**
     * 结题审核人姓名
     */
    private String applicationPeoName;

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

    public String getVerticalId() {
        return VerticalId;
    }

    public void setVerticalId(String verticalId) {
        VerticalId = verticalId;
    }

    public String getVerticalName() {
        return VerticalName;
    }

    public void setVerticalName(String verticalName) {
        VerticalName = verticalName;
    }

    public String getVerticalHeaderId() {
        return VerticalHeaderId;
    }

    public void setVerticalHeaderId(String verticalHeaderId) {
        VerticalHeaderId = verticalHeaderId;
    }

    public String getVerticalHeaderName() {
        return VerticalHeaderName;
    }

    public void setVerticalHeaderName(String verticalHeaderName) {
        VerticalHeaderName = verticalHeaderName;
    }

    public String getJopTileName() {
        return jopTileName;
    }

    public void setJopTileName(String jopTileName) {
        this.jopTileName = jopTileName;
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getEverParticipant() {
        return everParticipant;
    }

    public void setEverParticipant(String everParticipant) {
        this.everParticipant = everParticipant;
    }

    public String getWomenParticipant() {
        return womenParticipant;
    }

    public void setWomenParticipant(String womenParticipant) {
        this.womenParticipant = womenParticipant;
    }

    public String getSeniorTitle() {
        return seniorTitle;
    }

    public void setSeniorTitle(String seniorTitle) {
        this.seniorTitle = seniorTitle;
    }

    public String getMidTitle() {
        return midTitle;
    }

    public void setMidTitle(String midTitle) {
        this.midTitle = midTitle;
    }

    public String getPrimaryTitle() {
        return primaryTitle;
    }

    public void setPrimaryTitle(String primaryTitle) {
        this.primaryTitle = primaryTitle;
    }

    public String getOtherTitle() {
        return otherTitle;
    }

    public void setOtherTitle(String otherTitle) {
        this.otherTitle = otherTitle;
    }

    public String getPostgraduate() {
        return postgraduate;
    }

    public void setPostgraduate(String postgraduate) {
        this.postgraduate = postgraduate;
    }

    public String getDoctor() {
        return doctor;
    }

    public void setDoctor(String doctor) {
        this.doctor = doctor;
    }

    public String getMaster() {
        return master;
    }

    public void setMaster(String master) {
        this.master = master;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getProjectSourceCode() {
        return projectSourceCode;
    }

    public void setProjectSourceCode(String projectSourceCode) {
        this.projectSourceCode = projectSourceCode;
    }

    public String getProjectSource() {
        return projectSource;
    }

    public void setProjectSource(String projectSource) {
        this.projectSource = projectSource;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getProjectId() {
        return projectId;
    }

    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }

    public String getProjectType() {
        return projectType;
    }

    public void setProjectType(String projectType) {
        this.projectType = projectType;
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

    public String getAcaUnitId() {
        return acaUnitId;
    }

    public void setAcaUnitId(String acaUnitId) {
        this.acaUnitId = acaUnitId;
    }

    public String getAcaUnitName() {
        return acaUnitName;
    }

    public void setAcaUnitName(String acaUnitName) {
        this.acaUnitName = acaUnitName;
    }

    public String getSubjectCode() {
        return subjectCode;
    }

    public void setSubjectCode(String subjectCode) {
        this.subjectCode = subjectCode;
    }

    public String getSubjectType() {
        return subjectType;
    }

    public void setSubjectType(String subjectType) {
        this.subjectType = subjectType;
    }

    public String getActivityTypeCode() {
        return activityTypeCode;
    }

    public void setActivityTypeCode(String activityTypeCode) {
        this.activityTypeCode = activityTypeCode;
    }

    public String getActivityType() {
        return activityType;
    }

    public void setActivityType(String activityType) {
        this.activityType = activityType;
    }

    public String getFundAccount() {
        return fundAccount;
    }

    public void setFundAccount(String fundAccount) {
        this.fundAccount = fundAccount;
    }

    public Date getApprovalDate() {
        return approvalDate;
    }

    public void setApprovalDate(Date approvalDate) {
        this.approvalDate = approvalDate;
    }

    public Date getStarDate() {
        return starDate;
    }

    public void setStarDate(Date starDate) {
        this.starDate = starDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getApplicationBook() {
        return applicationBook;
    }

    public void setApplicationBook(String applicationBook) {
        this.applicationBook = applicationBook;
    }

    public String getApplicationBookName() {
        return applicationBookName;
    }

    public void setApplicationBookName(String applicationBookName) {
        this.applicationBookName = applicationBookName;
    }

    public String getApplicationBookFile() {
        return applicationBookFile;
    }

    public void setApplicationBookFile(String applicationBookFile) {
        this.applicationBookFile = applicationBookFile;
    }

    public String getApplicationBookFileName() {
        return applicationBookFileName;
    }

    public void setApplicationBookFileName(String applicationBookFileName) {
        this.applicationBookFileName = applicationBookFileName;
    }

    public String getTaskBook() {
        return taskBook;
    }

    public void setTaskBook(String taskBook) {
        this.taskBook = taskBook;
    }

    public String getTaskBookName() {
        return taskBookName;
    }

    public void setTaskBookName(String taskBookName) {
        this.taskBookName = taskBookName;
    }

    public String getOrganizationForm() {
        return organizationForm;
    }

    public void setOrganizationForm(String organizationForm) {
        this.organizationForm = organizationForm;
    }

    public String getOrganizationFormCode() {
        return organizationFormCode;
    }

    public void setOrganizationFormCode(String organizationFormCode) {
        this.organizationFormCode = organizationFormCode;
    }

    public String getCollectiveForm() {
        return collectiveForm;
    }

    public void setCollectiveForm(String collectiveForm) {
        this.collectiveForm = collectiveForm;
    }

    public String getCollectiveFormCode() {
        return collectiveFormCode;
    }

    public void setCollectiveFormCode(String collectiveFormCode) {
        this.collectiveFormCode = collectiveFormCode;
    }

    public String getIndustryCode() {
        return industryCode;
    }

    public void setIndustryCode(String industryCode) {
        this.industryCode = industryCode;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getSocialCode() {
        return socialCode;
    }

    public void setSocialCode(String socialCode) {
        this.socialCode = socialCode;
    }

    public String getSocialTarget() {
        return socialTarget;
    }

    public void setSocialTarget(String socialTarget) {
        this.socialTarget = socialTarget;
    }

    public Date getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Date registrationDate) {
        this.registrationDate = registrationDate;
    }

    public String getRegistrationPeoId() {
        return registrationPeoId;
    }

    public void setRegistrationPeoId(String registrationPeoId) {
        this.registrationPeoId = registrationPeoId;
    }

    public String getRegistrationName() {
        return registrationName;
    }

    public void setRegistrationName(String registrationName) {
        this.registrationName = registrationName;
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

    public String getProjectSetResult() {
        return projectSetResult;
    }

    public void setProjectSetResult(String projectSetResult) {
        this.projectSetResult = projectSetResult;
    }

    public String getProjectSetStatus() {
        return projectSetStatus;
    }

    public void setProjectSetStatus(String projectSetStatus) {
        this.projectSetStatus = projectSetStatus;
    }

    public String getProjectSetPeoId() {
        return projectSetPeoId;
    }

    public void setProjectSetPeoId(String projectSetPeoId) {
        this.projectSetPeoId = projectSetPeoId;
    }

    public String getProjectSetPeoName() {
        return projectSetPeoName;
    }

    public void setProjectSetPeoName(String projectSetPeoName) {
        this.projectSetPeoName = projectSetPeoName;
    }

    public Date getProjectSetDate() {
        return projectSetDate;
    }

    public void setProjectSetDate(Date projectSetDate) {
        this.projectSetDate = projectSetDate;
    }

    public float getPutExpenditure() {
        return putExpenditure;
    }

    public void setPutExpenditure(float putExpenditure) {
        this.putExpenditure = putExpenditure;
    }

    public float getPutReserachExpenditure() {
        return putReserachExpenditure;
    }

    public void setPutReserachExpenditure(float putReserachExpenditure) {
        this.putReserachExpenditure = putReserachExpenditure;
    }

    public float getPutEquipmentExpenditure() {
        return putEquipmentExpenditure;
    }

    public void setPutEquipmentExpenditure(float putEquipmentExpenditure) {
        this.putEquipmentExpenditure = putEquipmentExpenditure;
    }

    public float getHasAssignedExpenditrue() {
        return hasAssignedExpenditrue;
    }

    public void setHasAssignedExpenditrue(float hasAssignedExpenditrue) {
        this.hasAssignedExpenditrue = hasAssignedExpenditrue;
    }

    public float getAssignedReserchExpenditrue() {
        return AssignedReserchExpenditrue;
    }

    public void setAssignedReserchExpenditrue(float assignedReserchExpenditrue) {
        AssignedReserchExpenditrue = assignedReserchExpenditrue;
    }

    public float getAssignedEquipmentExpenditrue() {
        return AssignedEquipmentExpenditrue;
    }

    public void setAssignedEquipmentExpenditrue(float assignedEquipmentExpenditrue) {
        AssignedEquipmentExpenditrue = assignedEquipmentExpenditrue;
    }

    public float getNotAssignExpenditrue() {
        return notAssignExpenditrue;
    }

    public void setNotAssignExpenditrue(float notAssignExpenditrue) {
        this.notAssignExpenditrue = notAssignExpenditrue;
    }

    public float getNotAssignReservhExpenditrue() {
        return notAssignReservhExpenditrue;
    }

    public void setNotAssignReservhExpenditrue(float notAssignReservhExpenditrue) {
        this.notAssignReservhExpenditrue = notAssignReservhExpenditrue;
    }

    public float getNotAssignEquipmentExpenditrue() {
        return notAssignEquipmentExpenditrue;
    }

    public void setNotAssignEquipmentExpenditrue(float notAssignEquipmentExpenditrue) {
        this.notAssignEquipmentExpenditrue = notAssignEquipmentExpenditrue;
    }

    public String getExpenditrueUnit() {
        return ExpenditrueUnit;
    }

    public void setExpenditrueUnit(String expenditrueUnit) {
        ExpenditrueUnit = expenditrueUnit;
    }

    public String getExpenditrueFoundAccount() {
        return ExpenditrueFoundAccount;
    }

    public void setExpenditrueFoundAccount(String expenditrueFoundAccount) {
        ExpenditrueFoundAccount = expenditrueFoundAccount;
    }

    public Date getAccountAssignDate() {
        return accountAssignDate;
    }

    public void setAccountAssignDate(Date accountAssignDate) {
        this.accountAssignDate = accountAssignDate;
    }

    public String getAccountAssignPeoId() {
        return accountAssignPeoId;
    }

    public void setAccountAssignPeoId(String accountAssignPeoId) {
        this.accountAssignPeoId = accountAssignPeoId;
    }

    public String getAccountAssignPeoName() {
        return accountAssignPeoName;
    }

    public void setAccountAssignPeoName(String accountAssignPeoName) {
        this.accountAssignPeoName = accountAssignPeoName;
    }

    public String getAcceptanceReportEncliseure() {
        return acceptanceReportEncliseure;
    }

    public void setAcceptanceReportEncliseure(String acceptanceReportEncliseure) {
        this.acceptanceReportEncliseure = acceptanceReportEncliseure;
    }

    public String getAcceptanceReportName() {
        return acceptanceReportName;
    }

    public void setAcceptanceReportName(String acceptanceReportName) {
        this.acceptanceReportName = acceptanceReportName;
    }

    public String getApplicationEndTopic() {
        return applicationEndTopic;
    }

    public void setApplicationEndTopic(String applicationEndTopic) {
        this.applicationEndTopic = applicationEndTopic;
    }

    public Date getApplicationEndTopicDate() {
        return applicationEndTopicDate;
    }

    public void setApplicationEndTopicDate(Date applicationEndTopicDate) {
        this.applicationEndTopicDate = applicationEndTopicDate;
    }

    public String getEndTopicExamineResult() {
        return endTopicExamineResult;
    }

    public void setEndTopicExamineResult(String endTopicExamineResult) {
        this.endTopicExamineResult = endTopicExamineResult;
    }

    public Date getEndTopicExamineDate() {
        return endTopicExamineDate;
    }

    public void setEndTopicExamineDate(Date endTopicExamineDate) {
        this.endTopicExamineDate = endTopicExamineDate;
    }

    public String getApplicationPeoId() {
        return applicationPeoId;
    }

    public void setApplicationPeoId(String applicationPeoId) {
        this.applicationPeoId = applicationPeoId;
    }

    public String getApplicationPeoName() {
        return applicationPeoName;
    }

    public void setApplicationPeoName(String applicationPeoName) {
        this.applicationPeoName = applicationPeoName;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getOtherPeople() {
        return otherPeople;
    }

    public void setOtherPeople(String otherPeople) {
        this.otherPeople = otherPeople;
    }

    public float getApprovalFunds() {
        return approvalFunds;
    }

    public void setApprovalFunds(float approvalFunds) {
        this.approvalFunds = approvalFunds;
    }

    @Override
    public String toString() {
        return "VerticalProject{" +
                "id=" + id +
                ", VerticalId='" + VerticalId + '\'' +
                ", VerticalName='" + VerticalName + '\'' +
                ", VerticalHeaderId='" + VerticalHeaderId + '\'' +
                ", VerticalHeaderName='" + VerticalHeaderName + '\'' +
                ", jopTileName='" + jopTileName + '\'' +
                ", memberId='" + memberId + '\'' +
                ", memberName='" + memberName + '\'' +
                ", everParticipant='" + everParticipant + '\'' +
                ", womenParticipant='" + womenParticipant + '\'' +
                ", seniorTitle='" + seniorTitle + '\'' +
                ", midTitle='" + midTitle + '\'' +
                ", primaryTitle='" + primaryTitle + '\'' +
                ", otherTitle='" + otherTitle + '\'' +
                ", postgraduate='" + postgraduate + '\'' +
                ", doctor='" + doctor + '\'' +
                ", master='" + master + '\'' +
                ", year='" + year + '\'' +
                ", projectSourceCode='" + projectSourceCode + '\'' +
                ", projectSource='" + projectSource + '\'' +
                ", status='" + status + '\'' +
                ", projectId='" + projectId + '\'' +
                ", projectType='" + projectType + '\'' +
                ", unitId='" + unitId + '\'' +
                ", unitName='" + unitName + '\'' +
                ", acaUnitId='" + acaUnitId + '\'' +
                ", acaUnitName='" + acaUnitName + '\'' +
                ", subjectCode='" + subjectCode + '\'' +
                ", subjectType='" + subjectType + '\'' +
                ", activityTypeCode='" + activityTypeCode + '\'' +
                ", activityType='" + activityType + '\'' +
                ", fundAccount='" + fundAccount + '\'' +
                ", approvalDate=" + approvalDate +
                ", starDate=" + starDate +
                ", endDate=" + endDate +
                ", applicationBook='" + applicationBook + '\'' +
                ", applicationBookName='" + applicationBookName + '\'' +
                ", applicationBookFile='" + applicationBookFile + '\'' +
                ", applicationBookFileName='" + applicationBookFileName + '\'' +
                ", taskBook='" + taskBook + '\'' +
                ", taskBookName='" + taskBookName + '\'' +
                ", organizationForm='" + organizationForm + '\'' +
                ", organizationFormCode='" + organizationFormCode + '\'' +
                ", collectiveForm='" + collectiveForm + '\'' +
                ", collectiveFormCode='" + collectiveFormCode + '\'' +
                ", industryCode='" + industryCode + '\'' +
                ", industry='" + industry + '\'' +
                ", socialCode='" + socialCode + '\'' +
                ", socialTarget='" + socialTarget + '\'' +
                ", registrationDate=" + registrationDate +
                ", registrationPeoId='" + registrationPeoId + '\'' +
                ", registrationName='" + registrationName + '\'' +
                ", submitStatus='" + submitStatus + '\'' +
                ", examineStatus='" + examineStatus + '\'' +
                ", examineResult='" + examineResult + '\'' +
                ", examineDate=" + examineDate +
                ", examinePeoId='" + examinePeoId + '\'' +
                ", examinePeoName='" + examinePeoName + '\'' +
                ", projectSetResult='" + projectSetResult + '\'' +
                ", projectSetStatus='" + projectSetStatus + '\'' +
                ", projectSetPeoId='" + projectSetPeoId + '\'' +
                ", projectSetPeoName='" + projectSetPeoName + '\'' +
                ", projectSetDate=" + projectSetDate +
                ", putExpenditure=" + putExpenditure +
                ", putReserachExpenditure=" + putReserachExpenditure +
                ", putEquipmentExpenditure=" + putEquipmentExpenditure +
                ", hasAssignedExpenditrue=" + hasAssignedExpenditrue +
                ", AssignedReserchExpenditrue=" + AssignedReserchExpenditrue +
                ", AssignedEquipmentExpenditrue=" + AssignedEquipmentExpenditrue +
                ", notAssignExpenditrue=" + notAssignExpenditrue +
                ", notAssignReservhExpenditrue=" + notAssignReservhExpenditrue +
                ", notAssignEquipmentExpenditrue=" + notAssignEquipmentExpenditrue +
                ", ExpenditrueUnit='" + ExpenditrueUnit + '\'' +
                ", ExpenditrueFoundAccount='" + ExpenditrueFoundAccount + '\'' +
                ", accountAssignDate=" + accountAssignDate +
                ", accountAssignPeoId='" + accountAssignPeoId + '\'' +
                ", accountAssignPeoName='" + accountAssignPeoName + '\'' +
                ", acceptanceReportEncliseure='" + acceptanceReportEncliseure + '\'' +
                ", acceptanceReportName='" + acceptanceReportName + '\'' +
                ", applicationEndTopic='" + applicationEndTopic + '\'' +
                ", applicationEndTopicDate=" + applicationEndTopicDate +
                ", endTopicExamineResult='" + endTopicExamineResult + '\'' +
                ", endTopicExamineDate=" + endTopicExamineDate +
                ", applicationPeoId='" + applicationPeoId + '\'' +
                ", applicationPeoName='" + applicationPeoName + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
