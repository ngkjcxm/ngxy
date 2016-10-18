package com.sdut.ngxykjc.service;

/**
 * Created by 郭昌仑 on 2016/10/17.
 *
 * 使用shiro处理用户的登录和注销
 */
public interface LoginService {

    /**
     * 登录
     * @param username 用户名
     * @param password 密码
     * @return true 登录成功 false 登录不成功
     */
    public boolean login(String username, String password);

    /**
     * 退出登录
     */
    public void logout();
}
