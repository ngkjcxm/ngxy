package com.sdut.ngxykjc.dao;

import com.sdut.ngxykjc.bean.SecUser;
import com.sdut.ngxykjc.bean.User;
import com.sdut.ngxykjc.dao.Impl.BaseDaoImpl;

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
