package com.sdut.ngxykjc.action.test;


import com.sdut.ngxykjc.action.BaseAction;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

/**
 * Created by 郭昌仑 on 2016/10/17.
 */

@Controller
public class Resource extends BaseAction {

    @RequiresPermissions(value = {"user:view", "user:edit", "user:delete"}, logical = Logical.AND)
    public String security() {
        return view("security");
    }

    public String simple() {
        return view("simple");
    }

    @RequiresAuthentication
    public String logined() {
        return view("simple");
    }
}