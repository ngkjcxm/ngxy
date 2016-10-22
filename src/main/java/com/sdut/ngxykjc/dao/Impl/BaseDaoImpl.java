package com.sdut.ngxykjc.dao.Impl;

import com.sdut.ngxykjc.dao.BaseDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by 郭昌仑 on 2016/10/17.
 */

@Repository("baseDao")
public class BaseDaoImpl<T> extends HibernateDaoSupport implements BaseDao<T> {

    @Override
    public T get(Class<T> entityClazz, long id) {
        return getHibernateTemplate().get(entityClazz, id);
    }

    @Override
    public List<T> get(Class<T> entityClazz, String sql) {
        return getHibernateTemplate().executeWithNativeSession(new HibernateCallback<List<T>>() {
            public List<T> doInHibernate(Session session) {
                return (List<T>) session.createSQLQuery(sql).addEntity(entityClazz).list();
            }
        });
    }

    @Transactional
    @Override
    public void update(T t) {
        getHibernateTemplate().update(t);
    }

    @Transactional
    @Override
    public void save(T t) {
        getHibernateTemplate().saveOrUpdate(t);
    }

    @Transactional
    @Override
    public void delete(T t) {
        getHibernateTemplate().delete(t);
    }

    // 显式注入sessionFactory
    // 否则报错： 'sessionFactory' or 'hibernateTemplate' is required
    @Autowired
    public void setSessionFactoryOverried(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }
}
