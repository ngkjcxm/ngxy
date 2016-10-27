package com.sdut.ngxykjc.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by gcl on 2016/10/27.
 * <p>
 * 横向经费表
 */
@Entity
public class HorizontalOutlay {

    /**
     * id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 对应横向工程的id
     */
    private long projectId;

    /**
     * 参与人
     */
    private String peopleName;

    /**
     * 研发费
     */
    private int studyMoney;

    /**
     * 设备费
     */
    private int equipMoney;

    /**
     * 合计
     */
    private int totalMoney;

    /**
     * 研发账号
     */
    private String studyAccount;

    /**
     * 基金账号
     */
    private String fondAccount;

    /**
     * 是否审核
     * 0: 待审核
     * 1: 审核通过
     * -1: 审核未通过
     */
    private int state;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPeopleName() {
        return peopleName;
    }

    public void setPeopleName(String peopleName) {
        this.peopleName = peopleName;
    }

    public int getStudyMoney() {
        return studyMoney;
    }

    public void setStudyMoney(int studyMoney) {
        this.studyMoney = studyMoney;
    }

    public int getEquipMoney() {
        return equipMoney;
    }

    public void setEquipMoney(int equipMoney) {
        this.equipMoney = equipMoney;
    }

    public int getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(int totalMoney) {
        this.totalMoney = totalMoney;
    }

    public String getStudyAccount() {
        return studyAccount;
    }

    public void setStudyAccount(String studyAccount) {
        this.studyAccount = studyAccount;
    }

    public String getFondAccount() {
        return fondAccount;
    }

    public void setFondAccount(String fondAccount) {
        this.fondAccount = fondAccount;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public long getProjectId() {
        return projectId;
    }

    public void setProjectId(long projectId) {
        this.projectId = projectId;
    }

    @Override
    public String toString() {
        return "HorizontalOutlay{" +
                "id=" + id +
                ", projectId=" + projectId +
                ", peopleName='" + peopleName + '\'' +
                ", studyMoney=" + studyMoney +
                ", equipMoney=" + equipMoney +
                ", totalMoney=" + totalMoney +
                ", studyAccount='" + studyAccount + '\'' +
                ", fondAccount='" + fondAccount + '\'' +
                ", state=" + state +
                '}';
    }
}
