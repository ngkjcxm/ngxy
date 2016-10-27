package com.sdut.ngxykjc.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by gcl on 2016/10/27.
 * <p>
 * 横向课题工作量分配表
 */

@Entity
public class HorizontalWork {

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
     * 研发工作量
     */
    private int studyWork;

    /**
     * 设备工作量
     */
    private int equipWork;

    /**
     * 合计
     */
    private int totalWork;

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

    public int getStudyWork() {
        return studyWork;
    }

    public void setStudyWork(int studyWork) {
        this.studyWork = studyWork;
    }

    public int getEquipWork() {
        return equipWork;
    }

    public void setEquipWork(int equipWork) {
        this.equipWork = equipWork;
    }

    public int getTotalWork() {
        return totalWork;
    }

    public void setTotalWork(int totalWork) {
        this.totalWork = totalWork;
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
        return "HorizontalWork{" +
                "id=" + id +
                ", projectId=" + projectId +
                ", peopleName='" + peopleName + '\'' +
                ", studyWork=" + studyWork +
                ", equipWork=" + equipWork +
                ", totalWork=" + totalWork +
                ", state=" + state +
                '}';
    }
}
