package com.sdut.ngxykjc.work.VerticalProject.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by sunmig on 2016/11/22.
 */
@Entity
@Table(name = "verticalFunds")
public class VerticalFunds {
    /**
     * Id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 课题编号
     */
    private long verticalId;

    /**
     * 项目名称
     */
    private String verticalName;

    /**
     * 项目类型
     */
    private String verticalType;

    /**
     * 经费序号
     */
    private String fundsOrder;

    /**
     * 经费名称
     */
    private String fundsName;

    /**
     * 到款年度
     */
    private String intoMoneyYear;

    /**
     * 月份
     */
    private String intoMoneyMonth;

    /**
     * 到位经费
     */
    private float intoFunds;

    /**
     * 研发费
     */
    private float rdExpenses;

    /**
     * 设备费
     */
    private float equipmentExpenses;

    /**
     * 签订日期
     */
    private Date signDate;

    /**
     * 到款时间
     */
    @Temporal(TemporalType.DATE)
    private Date intoMoneyDate;

    /**
     * 是否开具发票
     */
    private String isInvoice;

    /**
     * 负责人
     */
    private String employeeName;

    /**
     * 项目卡号
     */
    private String fundsAcount;

    /**
     * 负责人单位
     */
    private String unitName;

    /**
     * 委托方
     */
    private String client;


    /**
     * 合同编号
     */
    private String contractId;

    /**
     * 合同经费
     */
    private float contactExpenditure;

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

    /**
     * 年度
     */
    private String annual;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getVerticalId() {
        return verticalId;
    }

    public void setVerticalId(long verticalId) {
        this.verticalId = verticalId;
    }

    public String getVerticalName() {
        return verticalName;
    }

    public void setVerticalName(String verticalName) {
        this.verticalName = verticalName;
    }

    public String getVerticalType() {
        return verticalType;
    }

    public void setVerticalType(String verticalType) {
        this.verticalType = verticalType;
    }

    public String getFundsOrder() {
        return fundsOrder;
    }

    public void setFundsOrder(String fundsOrder) {
        this.fundsOrder = fundsOrder;
    }

    public String getFundsName() {
        return fundsName;
    }

    public void setFundsName(String fundsName) {
        this.fundsName = fundsName;
    }

    public String getIntoMoneyYear() {
        return intoMoneyYear;
    }

    public void setIntoMoneyYear(String intoMoneyYear) {
        this.intoMoneyYear = intoMoneyYear;
    }

    public String getIntoMoneyMonth() {
        return intoMoneyMonth;
    }

    public void setIntoMoneyMonth(String intoMoneyMonth) {
        this.intoMoneyMonth = intoMoneyMonth;
    }

    public float getIntoFunds() {
        return intoFunds;
    }

    public void setIntoFunds(float intoFunds) {
        this.intoFunds = intoFunds;
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

    public Date getSignDate() {
        return signDate;
    }

    public void setSignDate(Date signDate) {
        this.signDate = signDate;
    }

    public Date getIntoMoneyDate() {
        return intoMoneyDate;
    }

    public void setIntoMoneyDate(Date intoMoneyDate) {
        this.intoMoneyDate = intoMoneyDate;
    }

    public String getIsInvoice() {
        return isInvoice;
    }

    public void setIsInvoice(String isInvoice) {
        this.isInvoice = isInvoice;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getFundsAcount() {
        return fundsAcount;
    }

    public void setFundsAcount(String fundsAcount) {
        this.fundsAcount = fundsAcount;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public String getClient() {
        return client;
    }

    public void setClient(String client) {
        this.client = client;
    }

    public String getContractId() {
        return contractId;
    }

    public void setContractId(String contractId) {
        this.contractId = contractId;
    }

    public float getContactExpenditure() {
        return contactExpenditure;
    }

    public void setContactExpenditure(float contactExpenditure) {
        this.contactExpenditure = contactExpenditure;
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

    public String getAnnual() {
        return annual;
    }

    public void setAnnual(String annual) {
        this.annual = annual;
    }
}
