package com.sdut.ngxykjc.dao.Impl;

import com.sdut.ngxykjc.bean.User;
import com.sdut.ngxykjc.dao.UserDao;
import org.springframework.stereotype.Repository;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by gcl on 2016/10/22.
 */
@Repository("userDao")
public class UserDaoImpl extends BaseDaoImpl implements UserDao {
    @Override
    public Set<String> getPermissions(String username) {
        return getHibernateTemplate().executeWithNativeSession(session -> {
            List<String> list = session
                    .createSQLQuery("SELECT permissions FROM permissions p WHERE secuser_id = (SELECT id FROM secuser WHERE username = :username)")
                    .setString("username", username).list();
            return new HashSet<String>(list);
        });
    }

    @Override
    public List<User> getByUserName(String username) {
        return (List<User>) getByHql("from User u where u.username = '" + username + "'");
    }
}
