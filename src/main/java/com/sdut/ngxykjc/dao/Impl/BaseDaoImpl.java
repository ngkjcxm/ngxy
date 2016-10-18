package com.sdut.ngxykjc.dao.Impl;

import com.sdut.ngxykjc.dao.BaseDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

/**
 * Created by gcl on 2016/10/17.
 */

@Repository
public class BaseDaoImpl<T> extends HibernateDaoSupport implements BaseDao<T> {

    @Override
    public T get(Class<T> entityClazz, long id) {
        return getHibernateTemplate().get(entityClazz, id);
    }

    // 显式注入sessionFactory
    // 否则报错： 'sessionFactory' or 'hibernateTemplate' is required
    @Autowired
    public void setSessionFactoryOverried(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }
}
