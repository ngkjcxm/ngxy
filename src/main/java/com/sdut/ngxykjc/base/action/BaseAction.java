package com.sdut.ngxykjc.base.action;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

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

    private static Gson gson = new GsonBuilder()
            .setDateFormat("yyyy-MM-dd")
            .create();

    //返回的视图名，用于被子类覆盖
    private String DIRECT_URL;

    /**
     * 封装request方法
     *
     * @return
     */
    public HttpServletRequest getRequest() {
        return ServletActionContext.getRequest();
    }

    /**
     * 封装获取reponse
     *
     * @return
     */
    public HttpServletResponse getResponse() {
        return ServletActionContext.getResponse();
    }


    /**
     * 封装返回json的方法
     */
    public void json(String json) {
        PrintWriter jsonOut = null;
        try {
            getResponse().setCharacterEncoding("utf-8");
            jsonOut = getResponse().getWriter();
            jsonOut.write(json);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (jsonOut != null) {
                jsonOut.close();
            }
        }
    }

    /**
     * 直接返回json对象
     *
     * @param obj
     */
    public void json(Object obj) {
        String json = gson.toJson(obj);
        json(json);
    }


    /**
     * 让子类返回此方法，用于隐藏DIRECT_URL
     *
     * @param viewStr
     * @return
     */
    public String view(String viewStr) {
        DIRECT_URL = viewStr;
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


    /********************** get(set)方法 **********************/

    public String getDirectUrl() {
        return DIRECT_URL;
    }

    public void setDirectUrl(String directUrl) {
        this.DIRECT_URL = directUrl;
    }
}
