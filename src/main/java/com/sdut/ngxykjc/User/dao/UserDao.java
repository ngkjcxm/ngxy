package com.sdut.ngxykjc.User.dao;

import com.sdut.ngxykjc.User.bean.User;
import com.sdut.ngxykjc.base.dao.BaseDao;

import java.util.List;
import java.util.Set;

/**
 * Created by gcl on 2016/10/22.
 */
public interface UserDao extends BaseDao {

    /**
     * 根据用户名获取权限
     *
     * @return 权限集合
     */
    public Set<String> getPermissions(String username);

    /**
     * 根据用户名查找
     */
    public List<User> getByUserName(String username);
}
