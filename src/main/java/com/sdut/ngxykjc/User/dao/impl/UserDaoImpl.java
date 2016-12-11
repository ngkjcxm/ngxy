package com.sdut.ngxykjc.User.dao.impl;

import com.sdut.ngxykjc.User.bean.User;
import com.sdut.ngxykjc.User.dao.UserDao;
import com.sdut.ngxykjc.base.dao.impl.BaseDaoImpl;
import com.sdut.ngxykjc.base.util.UserPermissions;
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
            List<User> list = session
                    .createSQLQuery("SELECT * FROM user WHERE username = :username")
                    .addEntity(User.class)
                    .setString("username", username).list();
            User user = list.get(0);
            HashSet set = new HashSet<String>();
            if (user.getHorizontalPermission().equals("true")) {
                set.add(UserPermissions.HORIZONTAL);
            }
            if (user.getVerticalPermission().equals("true")) {
                set.add(UserPermissions.VERTICAL);
            }
            if (user.getPatentPermission().equals("true")) {
                set.add(UserPermissions.PATENT);
            }
            if (user.getPaperPermission().equals("true")) {
                set.add(UserPermissions.PAPER);
            }
            if (user.getScientficSearchPermission().equals("true")) {
                set.add(UserPermissions.SCIENTIFIC_RESEARCH);
            }
            if (user.getSoftwarePermission().equals("true")) {
                set.add(UserPermissions.SOFTWARE);
            }
            if (user.getWorkAchievePermission().equals("true")) {
                set.add(UserPermissions.WORK_ACHIEVE);
            }
            if (user.getQueryPermission().equals("true")) {
                set.add(UserPermissions.QUERY);
            }
            return set;
        });
    }

    @Override
    public List<User> getByUserName(String username) {
        return (List<User>) getByHql("from User u where u.username = '" + username + "'");
    }
}
