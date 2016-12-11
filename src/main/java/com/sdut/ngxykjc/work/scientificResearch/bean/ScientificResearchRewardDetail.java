package com.sdut.ngxykjc.work.scientificResearch.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by sunming on 2016/11/22.
 * 科研成果奖励明细
 */
@Entity
@Table(name = "scientificResearchRewardDetail")
public class ScientificResearchRewardDetail {

  
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 成果编号
     */
    private String researchId;

    /**
     * 成果名称
     */
    private String researchName;

    /**
     * 参与人排序
     */
    private String participantOrder;

    /**
     * 参与人编号
     */
    private String participantId;

    /**
     * 参与人姓名
     */
    private String participantName;

    /**
     * 参与人部门编号
     */
    private String departmentId;

    /**
     * 参与人部门名称
     */
    private String departmentName;

    /**
     * 参与人单位编号
     */
    private String unitId;

    /**
     * 参与人单位名称
     */
    private String unitName;

    /**
     * 备注
     */
    private String remark;

    /********** getter or setter **************/

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getResearchId() {
        return researchId;
    }

    public void setResearchId(String researchId) {
        this.researchId = researchId;
    }

    public String getResearchName() {
        return researchName;
    }

    public void setResearchName(String researchName) {
        this.researchName = researchName;
    }

    public String getParticipantOrder() {
        return participantOrder;
    }

    public void setParticipantOrder(String participantOrder) {
        this.participantOrder = participantOrder;
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
        return "ScientificResearchRewardDetail{" +
                "id=" + id +
                ", researchId='" + researchId + '\'' +
                ", researchName='" + researchName + '\'' +
                ", participantOrder='" + participantOrder + '\'' +
                ", participantId='" + participantId + '\'' +
                ", participantName='" + participantName + '\'' +
                ", departmentId='" + departmentId + '\'' +
                ", departmentName='" + departmentName + '\'' +
                ", unitId='" + unitId + '\'' +
                ", unitName='" + unitName + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
