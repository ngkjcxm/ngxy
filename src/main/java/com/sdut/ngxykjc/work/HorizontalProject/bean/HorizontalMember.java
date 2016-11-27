package com.sdut.ngxykjc.work.HorizontalProject.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by sunming on 2016/11/22.
 * 横向课题成员信息
 */
@Entity
@Table(name = "horizontalmember")
public class HorizontalMember {

    /**
     * Id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private long id;

    /**
     * 课题编号
     */
    private String  horizontalId;

    /**
     * 项目名称
     */
    private String horizontalName;

    /**
     * 参与人编号
     */
    private String participantId;

    /**
     * 参与人姓名
     */
    private String participantName;

    /**
     * 人员类型
     */
    private String peoType;

    /**
     * 排序
     */
    private String peoOrder;

    /**
     * 部门编号
     */
    private String departmentId;

    /**
     * 部门名称
     */
    private String departmentName;

    /**
     * 单位编号
     */
    private String unitId;

    /**
     * 单位名称
     */
    private String unitName;

    /**
     * 学术归属单位编号
     */
    private String academicUnitId;

    /**
     * 学术归属单位名称
     */
    private String academicName;

    /**
     * 职称
     */
    private String peoTitle;

    /**
     * 学历
     */
    private String degree;

    /**
     * 职责
     */
    private String duty;

    /**
     * 分配经费
     */
    private float allocatFund;

    /**
     * 研发费
     */
    private float rdExpenses;

    /**
     * 设备费
     */
    private float equipmentExpenses;

    /**
     * 经费单位
     */
    private String expensesUnit;

    /**
     * 经费研发账号
     */
    private String rdExpensesAccount;

    /**
     * 经费基金账号
     */
    private String expensesFundAccount;

    /**
     * 账号分配时间
     */
    @Temporal(TemporalType.DATE)
    private Date assignAccounDate;

    /**
     * 账号分配人编号
     */
    private String assignAccountPeoId;

    /**
     * 账号分配人姓名
     */
    private String assignAccountPeoName;

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

    public String getHorizontalId() {
        return horizontalId;
    }

    public void setHorizontalId(String horizontalId) {
        this.horizontalId = horizontalId;
    }

    public String getHorizontalName() {
        return horizontalName;
    }

    public void setHorizontalName(String horizontalName) {
        this.horizontalName = horizontalName;
    }

    public String getParticipantId() {
        return participantId;
    }

    public void setParticipantId(String participantId) {
        this.participantId = participantId;
    }

    public String getParticipantName() {
        return participantName;
    }

    public void setParticipantName(String participantName) {
        this.participantName = participantName;
    }

    public String getPeoType() {
        return peoType;
    }

    public void setPeoType(String peoType) {
        this.peoType = peoType;
    }

    public String getPeoOrder() {
        return peoOrder;
    }

    public void setPeoOrder(String peoOrder) {
        this.peoOrder = peoOrder;
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

    public String getAcademicUnitId() {
        return academicUnitId;
    }

    public void setAcademicUnitId(String academicUnitId) {
        this.academicUnitId = academicUnitId;
    }

    public String getAcademicName() {
        return academicName;
    }

    public void setAcademicName(String academicName) {
        this.academicName = academicName;
    }

    public String getPeoTitle() {
        return peoTitle;
    }

    public void setPeoTitle(String peoTitle) {
        this.peoTitle = peoTitle;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public float getAllocatFund() {
        return allocatFund;
    }

    public void setAllocatFund(float allocatFund) {
        this.allocatFund = allocatFund;
    }

    public float getRdExpenses() {
        return rdExpenses;
    }

    public void setRdExpenses(float rdExpenses) {
        this.rdExpenses = rdExpenses;
    }

    public float getEquipmentExpenses() {
        return equipmentExpenses;
    }

    public void setEquipmentExpenses(float equipmentExpenses) {
        this.equipmentExpenses = equipmentExpenses;
    }

    public String getExpensesUnit() {
        return expensesUnit;
    }

    public void setExpensesUnit(String expensesUnit) {
        this.expensesUnit = expensesUnit;
    }

    public String getRdExpensesAccount() {
        return rdExpensesAccount;
    }

    public void setRdExpensesAccount(String rdExpensesAccount) {
        this.rdExpensesAccount = rdExpensesAccount;
    }

    public String getExpensesFundAccount() {
        return expensesFundAccount;
    }

    public void setExpensesFundAccount(String expensesFundAccount) {
        this.expensesFundAccount = expensesFundAccount;
    }

    public Date getAssignAccounDate() {
        return assignAccounDate;
    }

    public void setAssignAccounDate(Date assignAccounDate) {
        this.assignAccounDate = assignAccounDate;
    }

    public String getAssignAccountPeoId() {
        return assignAccountPeoId;
    }

    public void setAssignAccountPeoId(String assignAccountPeoId) {
        this.assignAccountPeoId = assignAccountPeoId;
    }

    public String getAssignAccountPeoName() {
        return assignAccountPeoName;
    }

    public void setAssignAccountPeoName(String assignAccountPeoName) {
        this.assignAccountPeoName = assignAccountPeoName;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "HorizontalMember{" +
                "id=" + id +
                ", horizontalId='" + horizontalId + '\'' +
                ", horizontalName='" + horizontalName + '\'' +
                ", participantId='" + participantId + '\'' +
                ", participantName='" + participantName + '\'' +
                ", peoType='" + peoType + '\'' +
                ", peoOrder='" + peoOrder + '\'' +
                ", departmentId='" + departmentId + '\'' +
                ", departmentName='" + departmentName + '\'' +
                ", unitId='" + unitId + '\'' +
                ", unitName='" + unitName + '\'' +
                ", academicUnitId='" + academicUnitId + '\'' +
                ", academicName='" + academicName + '\'' +
                ", peoTitle='" + peoTitle + '\'' +
                ", degree='" + degree + '\'' +
                ", duty='" + duty + '\'' +
                ", allocatFund=" + allocatFund +
                ", rdExpenses=" + rdExpenses +
                ", equipmentExpenses=" + equipmentExpenses +
                ", expensesUnit='" + expensesUnit + '\'' +
                ", rdExpensesAccount='" + rdExpensesAccount + '\'' +
                ", expensesFundAccount='" + expensesFundAccount + '\'' +
                ", assignAccounDate=" + assignAccounDate +
                ", assignAccountPeoId='" + assignAccountPeoId + '\'' +
                ", assignAccountPeoName='" + assignAccountPeoName + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
