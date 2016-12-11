package com.sdut.ngxykjc.User.service;


import com.sdut.ngxykjc.User.bean.User;
import com.sdut.ngxykjc.base.bean.Node;

import java.util.List;

/**
 * Created by gcl on 2016/10/28.
 * <p>
 * 用户服务方法：提供了注册，改密功能
 */
public interface UserService {

    /**
     * 注册
     *
     * @return 是否注册成功
     */
    public boolean register(User user);

    /**
     * 修改密码
     *
     * @return 是否修改成功
     */
    public boolean changePassword(String oldPwd, String newPwd);

    /**
     * 登录
     *
     * @return true 登录成功 false 登录不成功
     */
    public boolean login(User user);

    /**
     * 退出登录
     */
    public void logout();

    /**
     * 保存
     */
    public void save(User user);

    /**
     * 管理员树结构
     */
    public List<Node> managerTree();

    public User getUser(long id);

    public void delete(User user);
}
