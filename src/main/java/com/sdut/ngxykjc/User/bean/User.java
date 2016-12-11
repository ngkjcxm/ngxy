package com.sdut.ngxykjc.User.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by 郭昌仑 on 2016/10/28.
 * <p>
 * 用户
 */
@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    /**
     * 用户名
     */
    private String username;

    /**
     * 真实姓名
     */
    private String realName;

    /**
     * 密码
     */
    private String password;

    /**
     * 头像url
     */
    private String avatar;

    /**
     * 角色
     */
    private String role;

    /**
     * 注册日期
     */
    @Temporal(TemporalType.DATE)
    private Date registerDate;

    /**
     * 办公地点
     */
    private String workSpace;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 电话
     */
    private String phone;
    /**
     * 备注
     */
    private String remark;

    // 各种权限信息
    private String horizontalPermission;
    private String verticalPermission;
    private String patentPermission;
    private String paperPermission;
    private String scientficSearchPermission;
    private String softwarePermission;
    private String workAchievePermission;
    private String queryPermission;


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getHorizontalPermission() {
        return horizontalPermission;
    }

    public void setHorizontalPermission(String horizontalPermission) {
        this.horizontalPermission = horizontalPermission;
    }

    public String getVerticalPermission() {
        return verticalPermission;
    }

    public void setVerticalPermission(String verticalPermission) {
        this.verticalPermission = verticalPermission;
    }

    public String getPatentPermission() {
        return patentPermission;
    }

    public void setPatentPermission(String patentPermission) {
        this.patentPermission = patentPermission;
    }

    public String getPaperPermission() {
        return paperPermission;
    }

    public void setPaperPermission(String paperPermission) {
        this.paperPermission = paperPermission;
    }

    public String getScientficSearchPermission() {
        return scientficSearchPermission;
    }

    public void setScientficSearchPermission(String scientficSearchPermission) {
        this.scientficSearchPermission = scientficSearchPermission;
    }

    public String getSoftwarePermission() {
        return softwarePermission;
    }

    public void setSoftwarePermission(String softwarePermission) {
        this.softwarePermission = softwarePermission;
    }

    public String getWorkAchievePermission() {
        return workAchievePermission;
    }

    public void setWorkAchievePermission(String workAchievePermission) {
        this.workAchievePermission = workAchievePermission;
    }

    public String getQueryPermission() {
        return queryPermission;
    }

    public void setQueryPermission(String queryPermission) {
        this.queryPermission = queryPermission;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Date getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    public String getWorkSpace() {
        return workSpace;
    }

    public void setWorkSpace(String workSpace) {
        this.workSpace = workSpace;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", avatar='" + avatar + '\'' +
                ", registerDate=" + registerDate +
                ", workSpace='" + workSpace + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", remark='" + remark + '\'' +
                ", horizontalPermission='" + horizontalPermission + '\'' +
                ", verticalPermission='" + verticalPermission + '\'' +
                ", patentPermission='" + patentPermission + '\'' +
                ", paperPermission='" + paperPermission + '\'' +
                ", scientficSearchPermission='" + scientficSearchPermission + '\'' +
                ", softwarePermission='" + softwarePermission + '\'' +
                ", workAchievePermission='" + workAchievePermission + '\'' +
                ", queryPermission='" + queryPermission + '\'' +
                '}';
    }
}
