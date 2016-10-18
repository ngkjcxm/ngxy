package com.sdut.ngxykjc.action;

import com.opensymphony.xwork2.ActionSupport;
import com.sdut.ngxykjc.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

/**
 * Created by 郭昌仑 on 2016/10/17.
 * <p>
 * 登录和注销
 */

@Controller
@Scope("prototype")
public class Login extends BaseAction {

    private String username;
    private String password;

    @Autowired
    private LoginService loginService;

    public String login() {
        if (loginService.login(username, password)) {
            return view("login_success");
        } else {
            return view("login_error");
        }
    }

    /**
     * 退出登录
     */
    public String logout() {
        loginService.logout();
        return view("logout");
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
}
