package com.sdut.ngxykjc.work.HorizontalProject.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by sunming on 2016/11/22.
 */
@Entity
@Table(name = "horizontalFundsAssignDetail")
public class HorizontalFundsAssignDetail {

    /**
     * Id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 课题编号
     */
    private String horizontalId;

    /**
     * 项目名称
     */
    private String horizontalName;

    /**
     * 经费序号
     */
    private String fundsOrder;

    /**
     * 成员序号
     */
    private String memberOrder;

    /**
     * 分配年度
     */
    private String assignYear;

    /**
     * 月份
     */
    private String assignMonth;

    /**
     * 是否建账号
     */
    private String isHasAccount;


    /**
     * 经费研发账号
     */
    private String rdExpensesAccount;

    /**
     * 经费基金账号
     */
    private String expensesFundAccount;

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
     * 分配时间
     */
    @Temporal(TemporalType.DATE)
    private Date assignDate;

    /**
     * 分配人编号
     */
    private String assignPeoId;

    /**
     * 分配人姓名
     */
    private String assignPeoName;

    /**
     * 分配数额
     */
    private float money;

    /**
     * 审核状态
     */
    private String examineStatus;

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

    /**
     * 年度
     */
    private String annual;

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

    public String getFundsOrder() {
        return fundsOrder;
    }

    public void setFundsOrder(String fundsOrder) {
        this.fundsOrder = fundsOrder;
    }

    public String getMemberOrder() {
        return memberOrder;
    }

    public void setMemberOrder(String memberOrder) {
        this.memberOrder = memberOrder;
    }

    public String getAssignYear() {
        return assignYear;
    }

    public void setAssignYear(String assignYear) {
        this.assignYear = assignYear;
    }

    public String getAssignMonth() {
        return assignMonth;
    }

    public void setAssignMonth(String assignMonth) {
        this.assignMonth = assignMonth;
    }

    public String getIsHasAccount() {
        return isHasAccount;
    }

    public void setIsHasAccount(String isHasAccount) {
        this.isHasAccount = isHasAccount;
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

    public Date getAssignDate() {
        return assignDate;
    }

    public void setAssignDate(Date assignDate) {
        this.assignDate = assignDate;
    }

    public String getAssignPeoId() {
        return assignPeoId;
    }

    public void setAssignPeoId(String assignPeoId) {
        this.assignPeoId = assignPeoId;
    }

    public String getAssignPeoName() {
        return assignPeoName;
    }

    public void setAssignPeoName(String assignPeoName) {
        this.assignPeoName = assignPeoName;
    }

    public float getMoney() {
        return money;
    }

    public void setMoney(float money) {
        this.money = money;
    }

    public String getExamineStatus() {
        return examineStatus;
    }

    public void setExamineStatus(String examineStatus) {
        this.examineStatus = examineStatus;
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

    public String getAnnual() {
        return annual;
    }

    public void setAnnual(String annual) {
        this.annual = annual;
    }

    @Override
    public String toString() {
        return "HorizontalFundsAssignDetail{" +
                "id=" + id +
                ", horizontalId='" + horizontalId + '\'' +
                ", horizontalName='" + horizontalName + '\'' +
                ", fundsOrder='" + fundsOrder + '\'' +
                ", memberOrder='" + memberOrder + '\'' +
                ", assignYear='" + assignYear + '\'' +
                ", assignMonth='" + assignMonth + '\'' +
                ", isHasAccount='" + isHasAccount + '\'' +
                ", rdExpensesAccount='" + rdExpensesAccount + '\'' +
                ", expensesFundAccount='" + expensesFundAccount + '\'' +
                ", allocatFund=" + allocatFund +
                ", rdExpenses=" + rdExpenses +
                ", equipmentExpenses=" + equipmentExpenses +
                ", assignDate=" + assignDate +
                ", assignPeoId='" + assignPeoId + '\'' +
                ", assignPeoName='" + assignPeoName + '\'' +
                ", money=" + money +
                ", examineStatus='" + examineStatus + '\'' +
                ", examineDate=" + examineDate +
                ", examinePeoId='" + examinePeoId + '\'' +
                ", examinePeoName='" + examinePeoName + '\'' +
                ", remark='" + remark + '\'' +
                ", annual='" + annual + '\'' +
                '}';
    }
}
