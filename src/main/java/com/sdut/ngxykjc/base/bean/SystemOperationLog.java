package com.sdut.ngxykjc.base.bean;

import java.util.Date;

/**
 * Created by sunming on 2016/11/22.
 */

public class SystemOperationLog {

    private long id;

    /**
     * 用户编号
     */
    private String userId;

    /**
     * 用户名
     */
    private String userName;

    /**
     * 用户角色
     */
    private String userRole;

    /**
     * 操作时间
     */
    private Date operationTime;

    /**
     * 登陆主机
     */
    private String logHost;

    /**
     * ip
     */
    private String ipAddress;

    /**
     * 操作表名
     */
    private String tableName;

    /**
     * 主键
     */
    private String majorKey;

    /**
     * 操作详细
     */
    private String operationDetail;

    /**
     * 备注
     */
    private String remark;

}
