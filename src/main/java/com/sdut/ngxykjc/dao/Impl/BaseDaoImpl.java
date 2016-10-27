package com.sdut.ngxykjc.dao.Impl;

import com.sdut.ngxykjc.dao.BaseDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by 郭昌仑 on 2016/10/17.
 */

@Repository("baseDao")
public class BaseDaoImpl extends HibernateDaoSupport implements BaseDao {

    @Override
    public Object getById(Class<?> entityClazz, long id) {
        return getHibernateTemplate().get(entityClazz, id);
    }

    @Override
    public List<?> getBySql(Class<?> entityClazz, String sql) {
        return getHibernateTemplate().executeWithNativeSession(session -> {
            return (List<?>) session.createSQLQuery(sql).addEntity(entityClazz).list();
        });
    }

    @Transactional
    @Override
    public void update(Object t) {
        getHibernateTemplate().update(t);
    }

    @Transactional
    @Override
    public void saveOrUpdate(Object t) {
        getHibernateTemplate().saveOrUpdate(t);
    }

    @Transactional
    @Override
    public void delete(Object t) {
        getHibernateTemplate().delete(t);
    }

    // 显式注入sessionFactory
    // 否则报错： 'sessionFactory' or 'hibernateTemplate' is required
    @Autowired
    public void setSessionFactoryOverried(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }
}
