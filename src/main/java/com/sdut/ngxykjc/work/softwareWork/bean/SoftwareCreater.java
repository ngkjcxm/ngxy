package com.sdut.ngxykjc.work.softwareWork.bean;

import javax.persistence.*;

/**
 * Created by sunmig on 2016/11/22.
 * 软件著作权完成人明细
 */
@Entity
@Table(name = "softwareCreater")
public class SoftwareCreater {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 著作权编号
     */
    private String copyrightId;

    /**
     * 著作权排序
     */

    /**
     * 软件名称
     */
    private String softwareName;

    /**
     * 完成人编号
     */
    private String createrId;

    /**
     * 完成人名称
     */
    private String createrName;

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
     **/
    private String unitId;

    /**
     * 单位名称
     */
    private String unitName;

    /**
     * 备注
     */
    private String remark;

    /********** getter or setter ***************/

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCopyrightId() {
        return copyrightId;
    }

    public void setCopyrightId(String copyrightId) {
        this.copyrightId = copyrightId;
    }

    public String getSoftwareName() {
        return softwareName;
    }

    public void setSoftwareName(String softwareName) {
        this.softwareName = softwareName;
    }

    public String getCreaterId() {
        return createrId;
    }

    public void setCreaterId(String createrId) {
        this.createrId = createrId;
    }

    public String getCreaterName() {
        return createrName;
    }

    public void setCreaterName(String createrName) {
        this.createrName = createrName;
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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "SoftwareCreater{" +
                "id=" + id +
                ", copyrightId='" + copyrightId + '\'' +
                ", softwareName='" + softwareName + '\'' +
                ", createrId='" + createrId + '\'' +
                ", createrName='" + createrName + '\'' +
                ", departmentId='" + departmentId + '\'' +
                ", departmentName='" + departmentName + '\'' +
                ", unitId='" + unitId + '\'' +
                ", unitName='" + unitName + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
