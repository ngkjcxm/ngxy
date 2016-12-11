package com.sdut.ngxykjc.User.dao.impl;

import com.sdut.ngxykjc.User.bean.User;
import com.sdut.ngxykjc.User.dao.UserDao;
import com.sdut.ngxykjc.base.dao.impl.BaseDaoImpl;
import com.sdut.ngxykjc.base.util.UserPermissions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by gcl on 2016/10/22.
 */
@Repository("userDao")
@Transactional
public class UserDaoImpl extends BaseDaoImpl implements UserDao {
    @Override
    public Set<String> getPermissions(String username) {
        User user = getByUserName(username).get(0);
        System.out.println(user);
        HashSet set = new HashSet<String>();
        if (("true").equals(user.getHorizontalPermission())) {
            set.add(UserPermissions.HORIZONTAL);
        }
        if (("true").equals(user.getVerticalPermission())) {
            set.add(UserPermissions.VERTICAL);
        }
        if (("true").equals(user.getPatentPermission())) {
            set.add(UserPermissions.PATENT);
        }
        if (("true").equals(user.getPaperPermission())) {
            set.add(UserPermissions.PAPER);
        }
        if (("true").equals(user.getScientficSearchPermission())) {
            set.add(UserPermissions.SCIENTIFIC_RESEARCH);
        }
        if (("true").equals(user.getSoftwarePermission())) {
            set.add(UserPermissions.SOFTWARE);
        }
        if (("true").equals(user.getWorkAchievePermission())) {
            set.add(UserPermissions.WORK_ACHIEVE);
        }
        if (("true").equals(user.getQueryPermission())) {
            set.add(UserPermissions.QUERY);
        }
        return set;
    }

    @Override
    public List<User> getByUserName(String username) {
        return (List<User>) getByHql("from User u where u.username = '" + username + "'");
    }
}
