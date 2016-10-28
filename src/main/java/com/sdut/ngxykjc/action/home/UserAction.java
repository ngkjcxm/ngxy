package com.sdut.ngxykjc.action.home;

import com.sdut.ngxykjc.action.BaseAction;
import com.sdut.ngxykjc.bean.User;
import com.sdut.ngxykjc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

/**
 * Created by gcl on 2016/10/28.
 * <p>
 * 处理一系列用户操作：比如：登录、退出、修改密码、修改信息
 */

@Controller
@Scope("prototype")
public class UserAction extends BaseAction {

    @Autowired
    private UserService userService;

    private User user;

    /**
     * 登录
     */
    public String login() {
        // 如果登录成功
        if (userService.login(user)) {
            return view("loginOK");
        }
        return view("loginError");
    }

    /**
     * 退出
     */
    public String logout() {
        userService.logout();
        return view("loginOK");
    }

    /********************修改密码方法***********************/
    private String oldPwd;
    private String newPwd;

    /**
     * 修改密码
     */
    public String change() {
        // 如果修改成功
        if (userService.changePassword(oldPwd, newPwd)) {
            return view("loginError");
        }
        return view("loginOK");
    }

    /**********************getter&setter**************************/
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getOldPwd() {
        return oldPwd;
    }

    public void setOldPwd(String oldPwd) {
        this.oldPwd = oldPwd;
    }

    public String getNewPwd() {
        return newPwd;
    }

    public void setNewPwd(String newPwd) {
        this.newPwd = newPwd;
    }
}
