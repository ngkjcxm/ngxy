package com.sdut.ngxykjc.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by 郭昌仑 on 2016/10/17.
 * <p>
 * 所有Action需要继承BaseAction，子类方法的返回值都为
 * view(viewname)
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

    /**
     * 让子类返回此方法，用于隐藏DIRECT_URL
     */
    public String view(String viewName) {
        DIRECT_URL = viewName;
        return SUCCESS;
    }
}
