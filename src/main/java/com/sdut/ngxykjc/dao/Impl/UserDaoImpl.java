package com.sdut.ngxykjc.dao.Impl;

import com.sdut.ngxykjc.bean.SecUser;
import com.sdut.ngxykjc.dao.UserDao;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.context.annotation.Scope;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.stereotype.Repository;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by gcl on 2016/10/22.
 */
@Repository("userDao")
public class UserDaoImpl<T> extends BaseDaoImpl<T> implements UserDao<T> {
    @Override
    public Set<String> getPermissions(String username) {
        return getHibernateTemplate().executeWithNativeSession(new HibernateCallback<Set<String>>() {
            @Override
            public Set<String> doInHibernate(Session session) throws HibernateException {
                List<String> list = session.createSQLQuery("SELECT permissions FROM permissions p WHERE secuser_id = (SELECT id FROM secuser WHERE username = :username)")
                        .setString("username", username).list();
                return new HashSet<String>(list);
            }
        });
    }
}
