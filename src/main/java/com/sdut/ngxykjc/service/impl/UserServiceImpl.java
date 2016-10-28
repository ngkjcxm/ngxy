package com.sdut.ngxykjc.service.impl;

import com.sdut.ngxykjc.bean.User;
import com.sdut.ngxykjc.dao.UserDao;
import com.sdut.ngxykjc.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.util.DigestUtils;

/**
 * Created by 郭昌仑 on 2016/10/28.
 */

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public boolean register(User user) {
        Assert.notNull(user);

        // 验证username是否重复
        int size = userDao.getByUserName(user.getUsername()).size();
        if (size > 0) {
            return false;
        }

        userDao.saveOrUpdate(securityUser(user));
        return true;
    }

    @Override
    public boolean changePassword(String oldPwd, String newPwd) {
        Subject subject = SecurityUtils.getSubject();
        // 检查是否登录
        if (!subject.isAuthenticated()) {
            return false;
        }
        String username = (String) subject.getSession().getAttribute("username");
        User user = userDao.getByUserName(username).get(0);
        if (user != null && user.getPassword().equals(securityPwd(oldPwd))) {
            user.setPassword(securityPwd(newPwd));
            userDao.saveOrUpdate(user);
            return true;
        }
        return false;
    }

    @Override
    public boolean login(User user) {
        try {
            Subject subject = SecurityUtils.getSubject();
            // 如果已经登录，先退出
            if (subject.isAuthenticated()) {
                // 退出
                subject.logout();
            }

            // 获得加密后的User
            User secUser = securityUser(user);
            // 创建token
            UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), user.getPassword(), false);
            // 登录
            subject.login(token);
            // 登录成功后，用户名保存到session
            subject.getSession().setAttribute("username", user.getUsername());
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

    /**
     * 返回加密后的User
     */
    public User securityUser(User user) {
        user.setPassword(securityPwd(user.getPassword()));
        return user;
    }

    /**
     * 返回加密后的密码
     */
    public String securityPwd(String pwd) {
        /**
         * 混淆字符串，自己都不知道密码是什么
         */
        String solt = "asd3rasf0,3$kjl)(&*}{-asud9q-8";
        return DigestUtils.md5DigestAsHex((pwd + solt).getBytes());
    }
}
