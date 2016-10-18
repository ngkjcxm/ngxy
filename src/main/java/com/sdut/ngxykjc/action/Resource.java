package com.sdut.ngxykjc.action;


import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.stereotype.Controller;

/**
 * Created by 郭昌仑 on 2016/10/17.
 */

@Controller
public class Resource extends BaseAction {

    @RequiresAuthentication
    public String security() {
        DIRECT_URL = "security";
        return SUCCESS;
    }

    public String simple() {
        DIRECT_URL = "simple";
        return SUCCESS;
    }

}
