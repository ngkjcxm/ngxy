package com.sdut.ngxykjc.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by 郭昌仑 on 2016/10/17.
 * <p>
 * 所有Action需要继承BaseAction，在处理方法里对DIRECT_URL
 * 赋值，从而实现动态返回view，免去了配置（模拟springmvc）
 */
public class BaseAction extends ActionSupport {

    /**
     * 返回的视图名，用于被子类覆盖
     */
    protected String DIRECT_URL;

    public String getDirectUrl() {
        return DIRECT_URL;
    }

    public void setDirectUrl(String directUrl) {
        this.DIRECT_URL = directUrl;
    }
}
