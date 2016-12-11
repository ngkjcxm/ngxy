package com.sdut.ngxykjc.work.HorizontalProject.bean;

import org.springframework.dao.DataRetrievalFailureException;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by sunming on 2016/11/8.
 */
@Entity
@Table(name = "horizontal")
public class Horizontal {

    /**
     * id
     */@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 课题编号
     */
    private String horizontalId;

    /**
     * 项目名称
     */
    private String projectName;

    /**
     * 项目负责人编号
     */
    private String projectHeaderId;

    /**
     * 项目负责人姓名
     */
    private String projectHeaderName;

    /**
     * 归属单位编号
     */
    private String unitId;

    /**
     * 归属单位名称
     */
    private String unitName;

    /**
     * 学术归属单位编号
     */
    private String academicUnitId;

    /**
     * 学术归属单位名称
     */
    private String academicUnitName;

    /**
     * 成员编号
     */
    private String memberId;

    /**
     * 成员姓名
     */
    private String memberName;

    /**
     * 项目类型
     */
    private String projectType;

    /**
     * 年度
     */
    private String annual;

    /**
     * 课题状态
     */
    private String projectStatus;

    /**
     * 合同编号
     */
    private String contractId;

    /**
     * 委托方
     */
    private String contractName;

    /**
     * 签订日期
     */
    @Temporal(TemporalType.DATE)
    private Date signingDate;

    /**
     * 签订地点
     */
    private String signingAddress;

    /**
     * 有效期限
     */
    private String effectiveMin;


    /**
     * 合同份数
     */
    private String contactNumber;

    /**
     * 合同附件
     */
    private String contactEnclosure;

    /**
     * 源文件名
     */
    private String sourceFileName;

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
    private String registrationPeoName;

    /**
     * 提交状态
     */
    private String submitType;

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
     * 法律咨询
     */
    private String legalAdvice;

    /**
     * 咨询人编号
     */
    private String legalAdvicePeoId;

    /**
     * 咨询人姓名
     */
    private String legalAdvicePeoName;

    /**
     * 咨询时间
     */
    @Temporal(TemporalType.DATE)
    private Date adviceDate;

    /**
     * 咨询意见
     */
    private String adviceOpinion;

    /**
     * 咨询结论
     */
    private String adviceResult;

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
     * 合同经费
     */
    private float contactExpenditure;

    /**
     * 到位经费
     */
    private float putExpenditure;

    /**
     * 到位工作量
     */
    private float putWorkNumber;

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
     * 经费研发账号
     */
    private String ExpenditrueAccount;

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
     * 结题审核人编号
     */
    private String endProjectPeoId;

    /**
     * 结题审核人姓名
     */
    private String endProjectPeoName;

    /**
     * 结题结论
     */
    private String endProjectResult;

    /**
     * 结题时间
     */
    @Temporal(TemporalType.DATE)
    private Date endProjectDate;

    /**
     * 备注
     */
    private String remark;

    /**
     * 研发账号
     */
    private String researchAccount;

    /**
     * 基金账号
     */
    private String expenditrueFindAccount;

    /*************** getter Or setter ***************/

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getHorizontalId() {
        return horizontalId;
    }

    public void setHorizontalId(String horizontalId) {
        this.horizontalId = horizontalId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getProjectHeaderId() {
        return projectHeaderId;
    }

    public void setProjectHeaderId(String projectHeaderId) {
        this.projectHeaderId = projectHeaderId;
    }

    public String getProjectHeaderName() {
        return projectHeaderName;
    }

    public void setProjectHeaderName(String projectHeaderName) {
        this.projectHeaderName = projectHeaderName;
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

    public String getProjectType() {
        return projectType;
    }

    public void setProjectType(String projectType) {
        this.projectType = projectType;
    }

    public String getAnnual() {
        return annual;
    }

    public void setAnnual(String annual) {
        this.annual = annual;
    }

    public String getProjectStatus() {
        return projectStatus;
    }

    public void setProjectStatus(String projectStatus) {
        this.projectStatus = projectStatus;
    }

    public String getContractId() {
        return contractId;
    }

    public void setContractId(String contractId) {
        this.contractId = contractId;
    }

    public String getContractName() {
        return contractName;
    }

    public void setContractName(String contractName) {
        this.contractName = contractName;
    }

    public Date getSigningDate() {
        return signingDate;
    }

    public void setSigningDate(Date signingDate) {
        this.signingDate = signingDate;
    }

    public String getSigningAddress() {
        return signingAddress;
    }

    public void setSigningAddress(String signingAddress) {
        this.signingAddress = signingAddress;
    }

    public String getEffectiveMin() {
        return effectiveMin;
    }

    public void setEffectiveMin(String effectiveMin) {
        this.effectiveMin = effectiveMin;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getContactEnclosure() {
        return contactEnclosure;
    }

    public void setContactEnclosure(String contactEnclosure) {
        this.contactEnclosure = contactEnclosure;
    }

    public String getSourceFileName() {
        return sourceFileName;
    }

    public void setSourceFileName(String sourceFileName) {
        this.sourceFileName = sourceFileName;
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

    public String getRegistrationPeoName() {
        return registrationPeoName;
    }

    public void setRegistrationPeoName(String registrationPeoName) {
        this.registrationPeoName = registrationPeoName;
    }

    public String getSubmitType() {
        return submitType;
    }

    public void setSubmitType(String submitType) {
        this.submitType = submitType;
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

    public String getLegalAdvice() {
        return legalAdvice;
    }

    public void setLegalAdvice(String legalAdvice) {
        this.legalAdvice = legalAdvice;
    }

    public String getLegalAdvicePeoId() {
        return legalAdvicePeoId;
    }

    public void setLegalAdvicePeoId(String legalAdvicePeoId) {
        this.legalAdvicePeoId = legalAdvicePeoId;
    }

    public String getLegalAdvicePeoName() {
        return legalAdvicePeoName;
    }

    public void setLegalAdvicePeoName(String legalAdvicePeoName) {
        this.legalAdvicePeoName = legalAdvicePeoName;
    }

    public Date getAdviceDate() {
        return adviceDate;
    }

    public void setAdviceDate(Date adviceDate) {
        this.adviceDate = adviceDate;
    }

    public String getAdviceOpinion() {
        return adviceOpinion;
    }

    public void setAdviceOpinion(String adviceOpinion) {
        this.adviceOpinion = adviceOpinion;
    }

    public String getAdviceResult() {
        return adviceResult;
    }

    public void setAdviceResult(String adviceResult) {
        this.adviceResult = adviceResult;
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

    public float getContactExpenditure() {
        return contactExpenditure;
    }

    public void setContactExpenditure(float contactExpenditure) {
        this.contactExpenditure = contactExpenditure;
    }

    public float getPutExpenditure() {
        return putExpenditure;
    }

    public void setPutExpenditure(float putExpenditure) {
        this.putExpenditure = putExpenditure;
    }

    public float getPutWorkNumber() {
        return putWorkNumber;
    }

    public void setPutWorkNumber(float putWorkNumber) {
        this.putWorkNumber = putWorkNumber;
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

    public String getExpenditrueAccount() {
        return ExpenditrueAccount;
    }

    public void setExpenditrueAccount(String expenditrueAccount) {
        ExpenditrueAccount = expenditrueAccount;
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

    public String getEndProjectPeoId() {
        return endProjectPeoId;
    }

    public void setEndProjectPeoId(String endProjectPeoId) {
        this.endProjectPeoId = endProjectPeoId;
    }

    public String getEndProjectPeoName() {
        return endProjectPeoName;
    }

    public void setEndProjectPeoName(String endProjectPeoName) {
        this.endProjectPeoName = endProjectPeoName;
    }

    public String getEndProjectResult() {
        return endProjectResult;
    }

    public void setEndProjectResult(String endProjectResult) {
        this.endProjectResult = endProjectResult;
    }

    public Date getEndProjectDate() {
        return endProjectDate;
    }

    public void setEndProjectDate(Date endProjectDate) {
        this.endProjectDate = endProjectDate;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getResearchAccount() {
        return researchAccount;
    }

    public void setResearchAccount(String researchAccount) {
        this.researchAccount = researchAccount;
    }

    public String getExpenditrueFindAccount() {
        return expenditrueFindAccount;
    }

    public void setExpenditrueFindAccount(String expenditrueFindAccount) {
        this.expenditrueFindAccount = expenditrueFindAccount;
    }

    @Override
    public String toString() {
        return "Horizontal{" +
                "id=" + id +
                ", horizontalId='" + horizontalId + '\'' +
                ", projectName='" + projectName + '\'' +
                ", projectHeaderId='" + projectHeaderId + '\'' +
                ", projectHeaderName='" + projectHeaderName + '\'' +
                ", unitId='" + unitId + '\'' +
                ", unitName='" + unitName + '\'' +
                ", academicUnitId='" + academicUnitId + '\'' +
                ", academicUnitName='" + academicUnitName + '\'' +
                ", memberId='" + memberId + '\'' +
                ", memberName='" + memberName + '\'' +
                ", projectType='" + projectType + '\'' +
                ", annual='" + annual + '\'' +
                ", projectStatus='" + projectStatus + '\'' +
                ", contractId='" + contractId + '\'' +
                ", contractName='" + contractName + '\'' +
                ", signingDate=" + signingDate +
                ", signingAddress='" + signingAddress + '\'' +
                ", effectiveMin='" + effectiveMin + '\'' +
                ", contactNumber='" + contactNumber + '\'' +
                ", contactEnclosure='" + contactEnclosure + '\'' +
                ", sourceFileName='" + sourceFileName + '\'' +
                ", registrationDate=" + registrationDate +
                ", registrationPeoId='" + registrationPeoId + '\'' +
                ", registrationPeoName='" + registrationPeoName + '\'' +
                ", submitType='" + submitType + '\'' +
                ", examineStatus='" + examineStatus + '\'' +
                ", examineResult='" + examineResult + '\'' +
                ", examineDate=" + examineDate +
                ", examinePeoId='" + examinePeoId + '\'' +
                ", examinePeoName='" + examinePeoName + '\'' +
                ", legalAdvice='" + legalAdvice + '\'' +
                ", legalAdvicePeoId='" + legalAdvicePeoId + '\'' +
                ", legalAdvicePeoName='" + legalAdvicePeoName + '\'' +
                ", adviceDate=" + adviceDate +
                ", adviceOpinion='" + adviceOpinion + '\'' +
                ", adviceResult='" + adviceResult + '\'' +
                ", projectSetStatus='" + projectSetStatus + '\'' +
                ", projectSetPeoId='" + projectSetPeoId + '\'' +
                ", projectSetPeoName='" + projectSetPeoName + '\'' +
                ", contactExpenditure=" + contactExpenditure +
                ", putExpenditure=" + putExpenditure +
                ", putWorkNumber=" + putWorkNumber +
                ", putReserachExpenditure=" + putReserachExpenditure +
                ", putEquipmentExpenditure=" + putEquipmentExpenditure +
                ", hasAssignedExpenditrue=" + hasAssignedExpenditrue +
                ", AssignedReserchExpenditrue=" + AssignedReserchExpenditrue +
                ", AssignedEquipmentExpenditrue=" + AssignedEquipmentExpenditrue +
                ", notAssignExpenditrue=" + notAssignExpenditrue +
                ", notAssignReservhExpenditrue=" + notAssignReservhExpenditrue +
                ", notAssignEquipmentExpenditrue=" + notAssignEquipmentExpenditrue +
                ", ExpenditrueUnit='" + ExpenditrueUnit + '\'' +
                ", ExpenditrueAccount='" + ExpenditrueAccount + '\'' +
                ", ExpenditrueFoundAccount='" + ExpenditrueFoundAccount + '\'' +
                ", accountAssignDate=" + accountAssignDate +
                ", accountAssignPeoId='" + accountAssignPeoId + '\'' +
                ", accountAssignPeoName='" + accountAssignPeoName + '\'' +
                ", acceptanceReportEncliseure='" + acceptanceReportEncliseure + '\'' +
                ", acceptanceReportName='" + acceptanceReportName + '\'' +
                ", endProjectPeoId='" + endProjectPeoId + '\'' +
                ", endProjectPeoName='" + endProjectPeoName + '\'' +
                ", endProjectResult='" + endProjectResult + '\'' +
                ", endProjectDate=" + endProjectDate +
                ", remark='" + remark + '\'' +
                ", researchAccount='" + researchAccount + '\'' +
                ", expenditrueFindAccount='" + expenditrueFindAccount + '\'' +
                '}';
    }
}
