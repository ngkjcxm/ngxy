package com.sdut.ngxykjc.basicsInfo.unit.bean;

import javax.persistence.*;

/**
 * Created by sunming on 2016/11/5.
 */
@Entity
@Table(name = "unit")
public class Unit {

    /**
     * id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 单位编号
     */
    private String unitId;

    /**
     * 单位名称
     */
    private String unitName;

    /**
     * 学校编号
     */
    private String schoolId;

    /**
     * 学校名称
     */
    private String schoolName;

    /**
     * 单位类型
     */
    private String unitType;

    /**
     * 单位简称
     */
    private String unitSimName;

    /**
     * 单位排序
     */
    private String unitOrder;

    /**
     * 行政级别
     */
    private String administrativeLevel;

    /**
     * 办公地点
     */
    private String officeLocal;

    /**
     * 电话
     */
    private String phone;

    /**
     * 传真
     */
    private String fox;

    /**
     * 邮箱
     */
    private String eMail;

    /**
     * 网址
     */
    private String webSite;

    /**
     * 状态
     */
    private String status;

    /**
     * 备注
     */
    private String remark;



    /****************getter or setter方法***************/

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public String getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(String schoolId) {
        this.schoolId = schoolId;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getUnitType() {
        return unitType;
    }

    public void setUnitType(String unitType) {
        this.unitType = unitType;
    }

    public String getUnitSimName() {
        return unitSimName;
    }

    public void setUnitSimName(String unitSimName) {
        this.unitSimName = unitSimName;
    }

    public String getUnitOrder() {
        return unitOrder;
    }

    public void setUnitOrder(String unitOrder) {
        this.unitOrder = unitOrder;
    }

    public String getAdministrativeLevel() {
        return administrativeLevel;
    }

    public void setAdministrativeLevel(String administrativeLevel) {
        this.administrativeLevel = administrativeLevel;
    }

    public String getOfficeLocal() {
        return officeLocal;
    }

    public void setOfficeLocal(String officeLocal) {
        this.officeLocal = officeLocal;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFox() {
        return fox;
    }

    public void setFox(String fox) {
        this.fox = fox;
    }

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    public String getWebSite() {
        return webSite;
    }

    public void setWebSite(String webSite) {
        this.webSite = webSite;
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
        return "Unit{" +
                "id=" + id +
                ", unitId='" + unitId + '\'' +
                ", unitName='" + unitName + '\'' +
                ", schoolId='" + schoolId + '\'' +
                ", schoolName='" + schoolName + '\'' +
                ", unitType='" + unitType + '\'' +
                ", unitSimName='" + unitSimName + '\'' +
                ", unitOrder='" + unitOrder + '\'' +
                ", administrativeLevel='" + administrativeLevel + '\'' +
                ", officeLocal='" + officeLocal + '\'' +
                ", phone='" + phone + '\'' +
                ", fox='" + fox + '\'' +
                ", eMail='" + eMail + '\'' +
                ", webSite='" + webSite + '\'' +
                ", status='" + status + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
