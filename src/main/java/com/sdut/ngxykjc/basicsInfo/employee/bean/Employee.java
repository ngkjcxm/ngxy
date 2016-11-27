package com.sdut.ngxykjc.basicsInfo.employee.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by sunming on 2016/11/5.
 */
@Entity
@Table(name = "employee")
public class Employee {

    /**
     * Id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 工号
     */
    private String employeeId;

    /**
     * 姓名
     */
    private String employeeName;

    /**
     * 姓名简拼
     */
    private String employeeSimName;

    /**
     * 编制单位编号
     */
    private String unitId;

    /**
     * 编制单位名称
     */
    private String unitName;

    /**
     * 单位排序
     */
    private int unitOrder;

    /**
     * 单位简称
     */
    private String unitSimName;

    /**
     * 学术归属单位编号
     */
    private String academiaUnitId;

    /**
     * 学术归属单位名称
     */
    private String academiaUnitName;

    /**
     * 性别
     */
    private String sex;

    /**
     * 民族
     */
    private String nation;

    /**
     * 籍贯
     */
    private String nativePlace;

    /**
     * 生日
     */
    @Temporal(TemporalType.DATE)
    private Date birthday;

    /**
     * 政治面貌
     */
    private String PoliticalLandscape;

    private String departmentId;

    private String departmentName;

    /**
     * 入党时间
     */
    @Temporal(TemporalType.DATE)
    private Date joinPartyDate;


    /**
     * 编制类型
     */
    private String staffingType;

    /**
     * 现任职务
     */
    private String nowPost;

    /**
     * 职务级别
     */
    private String postLeavel;

    /**
     * 参加工作时间
     */
    @Temporal(TemporalType.DATE)
    private Date workStartDate;

    /**
     * 调入编制时间
     */
    @Temporal(TemporalType.DATE)
    private Date intoStaffDate;

    /**
     * 职称名称
     */
    private String jopTileName;

    /**
     * 职称类型
     */
    private String jopTitleType;

    /**
     * 职称级别
     */
    private String jopTitleLeavel;

    /**
     * 职称评定时间
     */
    @Temporal(TemporalType.DATE)
    private Date jopJudgeDate;

    /**
     * 研究领域
     */
    private String researchField;

    /**
     * 导师类型
     */
    private String tutorType;

    /**
     * 人才类型
     */
    private String talenType;

    /**
     * 特殊待遇类型
     */
    private String specialTreatmentType;

    /**
     * 全日制学历
     */
    private String fulltimeEducation;

    /**
     * 全日制学位
     */
    private String fulltimeDegree;

    /**
     * 全日制专业
     */
    private String fulltimeProfessional;

    /**
     * 全日制毕业院校
     */
    private String fulltimeGraduateSchool;

    /**
     * 全日制毕业时间
     */
    private String fulltimeGraduateDate;

    /**
     * 专业技术职务
     */
    private String technicalPosition;

    /**
     * 专业技术职务所属系列
     */
    private String technicalPositionSeries;

    /**
     * 家庭住址
     */
    private String homeAddress;

    /**
     * 通讯地址
     */
    private String postalAddress;

    /**
     * 邮编
     */
    private String postCode;

    /**
     * 住宅电话
     */
    private String homePhone;

    /**
     * 办公电话
     */
    private String officePhone;

    /**
     * 手机
     */
    private String phone;

    /**
     * 电子邮箱
     */
    private String eMail;

    /**
     * 照片路径
     */
    private String picturePath;

    /**
     * 身份证号
     */
    private String idCard;

    /**
     * 状态
     */
    private String status;

    /**
     * 离退岗时间
     */
    @Temporal(TemporalType.DATE)
    private Date leaveDate;

    /**
     * 登记时间
     */
    @Temporal(TemporalType.DATE)
    private Date inputDate;

    /**
     * 登记人编号
     */
    private String intoPersonId;

    /**
     * 登记人姓名
     */
    private String intoPersonName;

    /**
     * 审查状态
     */
    private String censorStatus;

    /**
     * 审查结论
     */
    private String censorConclusion;

    /**
     * 审查意见
     */
    private String censorOpinion;

    /**
     * 审查时间
     */
    @Temporal(TemporalType.DATE)
    private Date censorDate;

    /**
     * 审查人编号
     */
    private String censorPersonId;

    /**
     * 审查人姓名
     */
    private String censorPersonName;

    /**
     * 备注
     */
    private String remark;


    /**********************getter or setter **************************/

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getEmployeeSimName() {
        return employeeSimName;
    }

    public void setEmployeeSimName(String employeeSimName) {
        this.employeeSimName = employeeSimName;
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

    public int getUnitOrder() {
        return unitOrder;
    }

    public void setUnitOrder(int unitOrder) {
        this.unitOrder = unitOrder;
    }

    public String getUnitSimName() {
        return unitSimName;
    }

    public void setUnitSimName(String unitSimName) {
        this.unitSimName = unitSimName;
    }

    public String getAcademiaUnitId() {
        return academiaUnitId;
    }

    public void setAcademiaUnitId(String academiaUnitId) {
        this.academiaUnitId = academiaUnitId;
    }

    public String getAcademiaUnitName() {
        return academiaUnitName;
    }

    public void setAcademiaUnitName(String academiaUnitName) {
        this.academiaUnitName = academiaUnitName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getNativePlace() {
        return nativePlace;
    }

    public void setNativePlace(String nativePlace) {
        this.nativePlace = nativePlace;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getPoliticalLandscape() {
        return PoliticalLandscape;
    }

    public void setPoliticalLandscape(String politicalLandscape) {
        PoliticalLandscape = politicalLandscape;
    }

    public Date getJoinPartyDate() {
        return joinPartyDate;
    }

    public void setJoinPartyDate(Date joinPartyDate) {
        this.joinPartyDate = joinPartyDate;
    }

    public String getStaffingType() {
        return staffingType;
    }

    public void setStaffingType(String staffingType) {
        this.staffingType = staffingType;
    }

    public String getNowPost() {
        return nowPost;
    }

    public void setNowPost(String nowPost) {
        this.nowPost = nowPost;
    }

    public String getPostLeavel() {
        return postLeavel;
    }

    public void setPostLeavel(String postLeavel) {
        this.postLeavel = postLeavel;
    }

    public Date getWorkStartDate() {
        return workStartDate;
    }

    public void setWorkStartDate(Date workStartDate) {
        this.workStartDate = workStartDate;
    }

    public Date getIntoStaffDate() {
        return intoStaffDate;
    }

    public void setIntoStaffDate(Date intoStaffDate) {
        this.intoStaffDate = intoStaffDate;
    }

    public String getJopTileName() {
        return jopTileName;
    }

    public void setJopTileName(String jopTileName) {
        this.jopTileName = jopTileName;
    }

    public String getJopTitleType() {
        return jopTitleType;
    }

    public void setJopTitleType(String jopTitleType) {
        this.jopTitleType = jopTitleType;
    }

    public String getJopTitleLeavel() {
        return jopTitleLeavel;
    }

    public void setJopTitleLeavel(String jopTitleLeavel) {
        this.jopTitleLeavel = jopTitleLeavel;
    }

    public Date getJopJudgeDate() {
        return jopJudgeDate;
    }

    public void setJopJudgeDate(Date jopJudgeDate) {
        this.jopJudgeDate = jopJudgeDate;
    }

    public String getResearchField() {
        return researchField;
    }

    public void setResearchField(String researchField) {
        this.researchField = researchField;
    }

    public String getTutorType() {
        return tutorType;
    }

    public void setTutorType(String tutorType) {
        this.tutorType = tutorType;
    }

    public String getTalenType() {
        return talenType;
    }

    public void setTalenType(String talenType) {
        this.talenType = talenType;
    }

    public String getSpecialTreatmentType() {
        return specialTreatmentType;
    }

    public void setSpecialTreatmentType(String specialTreatmentType) {
        this.specialTreatmentType = specialTreatmentType;
    }

    public String getFulltimeEducation() {
        return fulltimeEducation;
    }

    public void setFulltimeEducation(String fulltimeEducation) {
        this.fulltimeEducation = fulltimeEducation;
    }

    public String getFulltimeDegree() {
        return fulltimeDegree;
    }

    public void setFulltimeDegree(String fulltimeDegree) {
        this.fulltimeDegree = fulltimeDegree;
    }

    public String getFulltimeProfessional() {
        return fulltimeProfessional;
    }

    public void setFulltimeProfessional(String fulltimeProfessional) {
        this.fulltimeProfessional = fulltimeProfessional;
    }

    public String getFulltimeGraduateSchool() {
        return fulltimeGraduateSchool;
    }

    public void setFulltimeGraduateSchool(String fulltimeGraduateSchool) {
        this.fulltimeGraduateSchool = fulltimeGraduateSchool;
    }

    public String getFulltimeGraduateDate() {
        return fulltimeGraduateDate;
    }

    public void setFulltimeGraduateDate(String fulltimeGraduateDate) {
        this.fulltimeGraduateDate = fulltimeGraduateDate;
    }

    public String getTechnicalPosition() {
        return technicalPosition;
    }

    public void setTechnicalPosition(String technicalPosition) {
        this.technicalPosition = technicalPosition;
    }

    public String getTechnicalPositionSeries() {
        return technicalPositionSeries;
    }

    public void setTechnicalPositionSeries(String technicalPositionSeries) {
        this.technicalPositionSeries = technicalPositionSeries;
    }

    public String getHomeAddress() {
        return homeAddress;
    }

    public void setHomeAddress(String homeAddress) {
        this.homeAddress = homeAddress;
    }

    public String getPostalAddress() {
        return postalAddress;
    }

    public void setPostalAddress(String postalAddress) {
        this.postalAddress = postalAddress;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public String getHomePhone() {
        return homePhone;
    }

    public void setHomePhone(String homePhone) {
        this.homePhone = homePhone;
    }

    public String getOfficePhone() {
        return officePhone;
    }

    public void setOfficePhone(String officePhone) {
        this.officePhone = officePhone;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    public String getPicturePath() {
        return picturePath;
    }

    public void setPicturePath(String picturePath) {
        this.picturePath = picturePath;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getLeaveDate() {
        return leaveDate;
    }

    public void setLeaveDate(Date leaveDate) {
        this.leaveDate = leaveDate;
    }

    public Date getInputDate() {
        return inputDate;
    }

    public void setInputDate(Date inputDate) {
        this.inputDate = inputDate;
    }

    public String getIntoPersonId() {
        return intoPersonId;
    }

    public void setIntoPersonId(String intoPersonId) {
        this.intoPersonId = intoPersonId;
    }

    public String getIntoPersonName() {
        return intoPersonName;
    }

    public void setIntoPersonName(String intoPersonName) {
        this.intoPersonName = intoPersonName;
    }

    public String getCensorStatus() {
        return censorStatus;
    }

    public void setCensorStatus(String censorStatus) {
        this.censorStatus = censorStatus;
    }

    public String getCensorConclusion() {
        return censorConclusion;
    }

    public void setCensorConclusion(String censorConclusion) {
        this.censorConclusion = censorConclusion;
    }

    public String getCensorOpinion() {
        return censorOpinion;
    }

    public void setCensorOpinion(String censorOpinion) {
        this.censorOpinion = censorOpinion;
    }

    public Date getCensorDate() {
        return censorDate;
    }

    public void setCensorDate(Date censorDate) {
        this.censorDate = censorDate;
    }

    public String getCensorPersonId() {
        return censorPersonId;
    }

    public void setCensorPersonId(String censorPersonId) {
        this.censorPersonId = censorPersonId;
    }

    public String getCensorPersonName() {
        return censorPersonName;
    }

    public void setCensorPersonName(String censorPersonName) {
        this.censorPersonName = censorPersonName;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
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

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", employeeId='" + employeeId + '\'' +
                ", employeeName='" + employeeName + '\'' +
                ", employeeSimName='" + employeeSimName + '\'' +
                ", unitId='" + unitId + '\'' +
                ", unitName='" + unitName + '\'' +
                ", unitOrder=" + unitOrder +
                ", unitSimName='" + unitSimName + '\'' +
                ", academiaUnitId='" + academiaUnitId + '\'' +
                ", academiaUnitName='" + academiaUnitName + '\'' +
                ", sex='" + sex + '\'' +
                ", nation='" + nation + '\'' +
                ", nativePlace='" + nativePlace + '\'' +
                ", birthday=" + birthday +
                ", PoliticalLandscape='" + PoliticalLandscape + '\'' +
                ", departmentId='" + departmentId + '\'' +
                ", departmentName='" + departmentName + '\'' +
                ", joinPartyDate=" + joinPartyDate +
                ", staffingType='" + staffingType + '\'' +
                ", nowPost='" + nowPost + '\'' +
                ", postLeavel='" + postLeavel + '\'' +
                ", workStartDate=" + workStartDate +
                ", intoStaffDate=" + intoStaffDate +
                ", jopTileName='" + jopTileName + '\'' +
                ", jopTitleType='" + jopTitleType + '\'' +
                ", jopTitleLeavel='" + jopTitleLeavel + '\'' +
                ", jopJudgeDate=" + jopJudgeDate +
                ", researchField='" + researchField + '\'' +
                ", tutorType='" + tutorType + '\'' +
                ", talenType='" + talenType + '\'' +
                ", specialTreatmentType='" + specialTreatmentType + '\'' +
                ", fulltimeEducation='" + fulltimeEducation + '\'' +
                ", fulltimeDegree='" + fulltimeDegree + '\'' +
                ", fulltimeProfessional='" + fulltimeProfessional + '\'' +
                ", fulltimeGraduateSchool='" + fulltimeGraduateSchool + '\'' +
                ", fulltimeGraduateDate='" + fulltimeGraduateDate + '\'' +
                ", technicalPosition='" + technicalPosition + '\'' +
                ", technicalPositionSeries='" + technicalPositionSeries + '\'' +
                ", homeAddress='" + homeAddress + '\'' +
                ", postalAddress='" + postalAddress + '\'' +
                ", postCode='" + postCode + '\'' +
                ", homePhone='" + homePhone + '\'' +
                ", officePhone='" + officePhone + '\'' +
                ", phone='" + phone + '\'' +
                ", eMail='" + eMail + '\'' +
                ", picturePath='" + picturePath + '\'' +
                ", idCard='" + idCard + '\'' +
                ", status='" + status + '\'' +
                ", leaveDate=" + leaveDate +
                ", inputDate=" + inputDate +
                ", intoPersonId='" + intoPersonId + '\'' +
                ", intoPersonName='" + intoPersonName + '\'' +
                ", censorStatus='" + censorStatus + '\'' +
                ", censorConclusion='" + censorConclusion + '\'' +
                ", censorOpinion='" + censorOpinion + '\'' +
                ", censorDate=" + censorDate +
                ", censorPersonId='" + censorPersonId + '\'' +
                ", censorPersonName='" + censorPersonName + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
