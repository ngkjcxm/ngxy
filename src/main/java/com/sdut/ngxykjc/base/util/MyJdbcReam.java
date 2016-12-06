package com.sdut.ngxykjc.base.util;

import com.sdut.ngxykjc.User.dao.UserDao;
import com.sdut.ngxykjc.User.dao.impl.UserDaoImpl;
import org.apache.shiro.realm.jdbc.JdbcRealm;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Set;

/**
 * Created by 郭昌仑 on 2016/10/22.
 * <p>
 * 继承JdbcRealm并覆盖了getPermissions
 * 修改JdbcRealm获取permission的方式
 */
public class MyJdbcReam extends JdbcRealm {

    @Autowired
    private UserDao userDao;

    @Override
    protected Set<String> getPermissions(Connection conn, String username, Collection<String> roleNames) throws SQLException {
        return userDao.getPermissions(username);
    }
}
