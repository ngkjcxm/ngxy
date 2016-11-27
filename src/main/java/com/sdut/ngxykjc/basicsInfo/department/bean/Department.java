package com.sdut.ngxykjc.basicsInfo.department.bean;

import javax.persistence.*;

/**
 * Created by 孙铭 on 2016/11/5.
 */
@Entity
@Table(name = "department")
public class Department {

    /**
     * id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

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
     * 行政级别
     */
    private String administrativeLevel;

    /**
     * 部门简称
     */
    private String departmentSimName;

    /**
     * 部门类型
     */
    private String departmentType;

    /**
     * 业务职责
     */
    private String departmentDuty;

    /**
     * 办公地点
     */
    private String departmentLocal;

    /**
     * 电话
     */
    private String phone;

    /**
     * 传真
     */
    private String fax;

    /**
     * 邮箱
     */
    private String mailFox;

    /**
     * 状态
     */
    private String status;

    /**
     * 备注
     */
    private String remark;


    /***************getter Or setter 方法*******************/

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public String getAdministrativeLevel() {
        return administrativeLevel;
    }

    public void setAdministrativeLevel(String administrativeLevel) {
        this.administrativeLevel = administrativeLevel;
    }

    public String getDepartmentSimName() {
        return departmentSimName;
    }

    public void setDepartmentSimName(String departmentSimName) {
        this.departmentSimName = departmentSimName;
    }

    public String getDepartmentType() {
        return departmentType;
    }

    public void setDepartmentType(String departmentType) {
        this.departmentType = departmentType;
    }

    public String getDepartmentDuty() {
        return departmentDuty;
    }

    public void setDepartmentDuty(String departmentDuty) {
        this.departmentDuty = departmentDuty;
    }

    public String getDepartmentLocal() {
        return departmentLocal;
    }

    public void setDepartmentLocal(String departmentLocal) {
        this.departmentLocal = departmentLocal;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getMailFox() {
        return mailFox;
    }

    public void setMailFox(String mailFox) {
        this.mailFox = mailFox;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "Department{" +
                "id=" + id +
                ", departmentId='" + departmentId + '\'' +
                ", departmentName='" + departmentName + '\'' +
                ", unitId='" + unitId + '\'' +
                ", unitName='" + unitName + '\'' +
                ", administrativeLevel='" + administrativeLevel + '\'' +
                ", departmentSimName='" + departmentSimName + '\'' +
                ", departmentType='" + departmentType + '\'' +
                ", departmentDuty='" + departmentDuty + '\'' +
                ", departmentLocal='" + departmentLocal + '\'' +
                ", phone='" + phone + '\'' +
                ", fax='" + fax + '\'' +
                ", mailFox='" + mailFox + '\'' +
                ", status='" + status + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
