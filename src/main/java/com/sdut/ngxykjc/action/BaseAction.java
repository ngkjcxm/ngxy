package com.sdut.ngxykjc.action;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

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
    private String DIRECT_URL;

    public String getDirectUrl() {
        return DIRECT_URL;
    }

    public void setDirectUrl(String directUrl) {
        this.DIRECT_URL = directUrl;
    }

    /**
     * 封装获取request的方法
     *
     * @return request
     */
    public HttpServletRequest getRequest() {
        return ServletActionContext.getRequest();
    }

    /**
     * 封装获取response的方法
     *
     * @return response
     */
    public HttpServletResponse getResponse() {
        return ServletActionContext.getResponse();
    }

    /**
     * 封装返回json的方法
     */
    public void json(String json) {
        PrintWriter out = null;
        try {
            out = getResponse().getWriter();
            out.write(json);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (out != null) {
                out.close();
            }
        }
    }

    /**
     * 让子类返回此方法，用于隐藏DIRECT_URL
     * <p>
     * 默认resultType:dispatcher
     */
    public String view(String viewName) {
        DIRECT_URL = viewName;
        return SUCCESS;
    }

    /**
     * 重定向到视图
     * <p>
     * resultType:redirect
     */
    public String redirect(String viewName) {
        DIRECT_URL = viewName;
        return "action";
    }
}
