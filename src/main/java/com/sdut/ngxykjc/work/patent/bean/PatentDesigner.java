package com.sdut.ngxykjc.work.patent.bean;


import javax.persistence.*;

/**
 * Created by sunming on 2016/11/21.
 */
@Entity
@Table(name = "patentDesigner")
public class PatentDesigner {

    /**
     * Id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     *  专利编号
     */
    private String patentId;

    /**
     * 专利名称
     */
    private String patentName;

    /**
     * 发明人或设计人排序
     */
    private String patentCreaterOrder;

    /**
     * 发明人或者设计人编号
     */
    private String patentCreaterId;

    /**
     * 发明人或者设计人姓名
     */
    private String patentCreaterName;

    /**
     * 发明人或者设计人单位部门编号
     */
    private String departmentId;

    /**
     * 发明人或者设计人单位部门名称
     */
    private String departmentName;

    /**
     * 发明人或者设计人单位编号
     */
    private String unitId;

    /**
     * 发明人或者设计人单位名称
     */
    private String unitName;

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

    public String getPatentId() {
        return patentId;
    }

    public void setPatentId(String patentId) {
        this.patentId = patentId;
    }

    public String getPatentName() {
        return patentName;
    }

    public void setPatentName(String patentName) {
        this.patentName = patentName;
    }

    public String getPatentCreaterOrder() {
        return patentCreaterOrder;
    }

    public void setPatentCreaterOrder(String patentCreaterOrder) {
        this.patentCreaterOrder = patentCreaterOrder;
    }

    public String getPatentCreaterId() {
        return patentCreaterId;
    }

    public void setPatentCreaterId(String patentCreaterId) {
        this.patentCreaterId = patentCreaterId;
    }

    public String getPatentCreaterName() {
        return patentCreaterName;
    }

    public void setPatentCreaterName(String patentCreaterName) {
        this.patentCreaterName = patentCreaterName;
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
        return "PatentDesigner{" +
                "id=" + id +
                ", patentId='" + patentId + '\'' +
                ", patentName='" + patentName + '\'' +
                ", patentCreaterOrder='" + patentCreaterOrder + '\'' +
                ", patentCreaterId='" + patentCreaterId + '\'' +
                ", patentCreaterName='" + patentCreaterName + '\'' +
                ", departmentId='" + departmentId + '\'' +
                ", departmentName='" + departmentName + '\'' +
                ", unitId='" + unitId + '\'' +
                ", unitName='" + unitName + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
