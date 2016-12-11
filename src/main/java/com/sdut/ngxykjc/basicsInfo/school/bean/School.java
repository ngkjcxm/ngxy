package com.sdut.ngxykjc.basicsInfo.school.bean;

import javax.persistence.*;

/**
 * Created by 孙铭 on 2016/11/3.
 * 学校基本信息
 */
@Entity
@Table(name = "school")
public class School {

    /**
     * id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 学校编号
     */
    private String schoolId;

    /**
     * 学校名称
     */
    private String SchoolName;

    /**
     * 学校简称
     */
    private String schoolSimpleName;

    /**
     * 行政级别
     */
    private String administrativeLevel;

    /**
     * 隶属单位
     */
    private String subordinateUnit;

    /**
     * 法人代表
     */
    private String schoolCorporation;

    /**
     * 负责人
     */
    private String schoolHeader;

    /**
     * 地址
     */
    private String address;

    /**
     * 邮编
     */
    private String postCode;

    /**
     * 简拼
     */
    private String simpleSpelling;

    /**
     * 网址
     */
    private String website;

    /**
     * 备注
     */
    private String remark;



    /*******************getter、setter 方法**************************/

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(String schoolId) {
        this.schoolId = schoolId;
    }

    public String getSchoolName() {
        return SchoolName;
    }

    public void setSchoolName(String schoolName) {
        SchoolName = schoolName;
    }

    public String getSchoolSimpleName() {
        return schoolSimpleName;
    }

    public void setSchoolSimpleName(String schoolSimpleName) {
        this.schoolSimpleName = schoolSimpleName;
    }

    public String getAdministrativeLevel() {
        return administrativeLevel;
    }

    public void setAdministrativeLevel(String administrativeLevel) {
        this.administrativeLevel = administrativeLevel;
    }

    public String getSubordinateUnit() {
        return subordinateUnit;
    }

    public void setSubordinateUnit(String subordinateUnit) {
        this.subordinateUnit = subordinateUnit;
    }

    public String getSchoolCorporation() {
        return schoolCorporation;
    }

    public void setSchoolCorporation(String schoolCorporation) {
        this.schoolCorporation = schoolCorporation;
    }

    public String getSchoolHeader() {
        return schoolHeader;
    }

    public void setSchoolHeader(String schoolHeader) {
        this.schoolHeader = schoolHeader;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public String getSimpleSpelling() {
        return simpleSpelling;
    }

    public void setSimpleSpelling(String simpleSpelling) {
        this.simpleSpelling = simpleSpelling;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "School{" +
                "id=" + id +
                ", schoolId='" + schoolId + '\'' +
                ", SchoolName='" + SchoolName + '\'' +
                ", schoolSimpleName='" + schoolSimpleName + '\'' +
                ", administrativeLevel='" + administrativeLevel + '\'' +
                ", subordinateUnit='" + subordinateUnit + '\'' +
                ", schoolCorporation='" + schoolCorporation + '\'' +
                ", schoolHeader='" + schoolHeader + '\'' +
                ", address='" + address + '\'' +
                ", postCode='" + postCode + '\'' +
                ", simpleSpelling='" + simpleSpelling + '\'' +
                ", website='" + website + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
