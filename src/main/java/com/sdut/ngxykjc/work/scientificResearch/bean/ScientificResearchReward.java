package com.sdut.ngxykjc.work.scientificResearch.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by sunming on 2016/11/22.
 * 科研成果奖励信息
 */
@Entity
@Table(name = "scientificResearchReward")
public class ScientificResearchReward {


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
     * 首位作者编号
     */
    private String completePeoId;

    /**
     * 首位作者姓名
     */
    private String completePeoName;

    /**
     * 首位完成人单位编号
     */
    private String unitId;

    /**
     * 首位完成人单位名称
     */
    private String unitName;

    /**
     * 首位完成人学术归属单位比编号
     */
    private String academicUnitId;

    /**
     * 首位完成人学术归属单位名称
     */
    private String academicUnitName;

    /**
     * 授奖部门
     */
    private String awardDepartment;

    /**
     * 获奖类别
     */
    private String awardType;

    /**
     * 课题来源
     */
    private String subjectSource;

    /**
     * 单位排名
     */
    private String unitOrder;

    /**
     * 奖励等级
     */
    private String rewardGrade;

    /**
     * 其他成员姓名
     */
    private String otherMemberName;

    /**
     * 其他成员编号
     */
    private String otherMemberId;

    /**
     * 授奖日期
     */
    @Temporal(TemporalType.DATE)
    private Date awardDate;

    /**
     * 获奖年度
     */
    @Temporal(TemporalType.DATE)
    private Date awardYear;

    /**
     * 证书编号
     */
    private String diplomaId;

    /**
     * 津贴发放年度
     */
    @Temporal(TemporalType.DATE)
    private Date allowance;

    /**
     * 单位证书附件
     */
    private String unitDiplomaAnnexes;

    /**
     * 单位证书附件名称
     */
    private String unitDiplomaAnnexesName;

    /**
     * 个人证书
     */
    private String peoDiploma;

    /**
     * 个人证书附件名称
     */
    private String peoDiplomaAnnexes;

    /**
     * 登记年度
     */
    private String registerYear;

    /**
     * 登记时间
     */
    @Temporal(TemporalType.DATE)
    private Date registerDate;

    /**
     * 登记人编号
     */
    private String registerPeoId;

    /**
     * 登记人姓名
     */
    private String registerPeoName;

    /**
     * 提交状态
     */
    private String submitStatus;

    /**
     * 审核状态
     */
    private String examineStatus;

    /**
     * 审核结论
     */
    private String examineResult;


    /**
     * 审核时间
     */
    @Temporal(TemporalType.DATE)
    private Date examineDate;

    /**
     * 审核人编号
     */
    private String examinePeoId;

    /**
     * 审核人姓名
     */
    private String examinePeoName;

    /**
     * 备注
     */
    private String remark;




}
