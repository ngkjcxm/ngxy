package com.sdut.ngxykjc.bean;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;


/**
 * Created by 孙铭 on 2016/10/24.
 * <p>
 * 系统用户角色
 */
@Entity
@Table
public class Role {

    /**
     * 编号
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 角色编号
     */
    @Column(name = "role_id", length = 50)
    private String roleId;

    /**
     * 角色姓名
     */
    @Column(name = "role_name", length = 50)
    private String roleName;

    /**
     * 创建人编号
     */
    @Column(name = "create_person_id", length = 50)
    private String createPersonId;

    /**
     * 创建人姓名
     */
    @Column(name = "create_person_name", length = 50)
    private String createPersonName;

    /**
     * 创建时间
     */
    @Temporal(TemporalType.DATE)
    private Date createTime;

    /**
     * 备注
     */
    @Column(name = "remark", length = 255)
    private String remark;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getCreatePersonId() {
        return createPersonId;
    }

    public void setCreatePersonId(String createPersonId) {
        this.createPersonId = createPersonId;
    }

    public String getCreatePersonName() {
        return createPersonName;
    }

    public void setCreatePersonName(String createPersonName) {
        this.createPersonName = createPersonName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", roleId='" + roleId + '\'' +
                ", roleName='" + roleName + '\'' +
                ", createPersonId='" + createPersonId + '\'' +
                ", createPersonName='" + createPersonName + '\'' +
                ", createTime=" + createTime +
                ", remark='" + remark + '\'' +
                '}';
    }
}
