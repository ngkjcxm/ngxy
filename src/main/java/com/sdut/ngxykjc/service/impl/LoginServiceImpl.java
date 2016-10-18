package com.sdut.ngxykjc.service.impl;

import com.sdut.ngxykjc.service.LoginService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Component;

/**
 * Created by 郭昌仑 on 2016/10/17.
 */

@Component
public class LoginServiceImpl implements LoginService {
    @Override
    public boolean login(String username, String password) {
        try {
            Subject subject = SecurityUtils.getSubject();
            // 如果已经登录，先退出
            if (subject.isAuthenticated()) {
                // 退出
                subject.logout();
            }

            UsernamePasswordToken token = new UsernamePasswordToken(username, password, false);
            // 登录
            subject.login(token);
            return true;
        } catch (Exception e) {
            // 登录失败，返回false
            return false;
        }
    }

    @Override
    public void logout() {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
    }
}
