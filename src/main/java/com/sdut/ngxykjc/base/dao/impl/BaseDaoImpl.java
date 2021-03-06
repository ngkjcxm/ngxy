package com.sdut.ngxykjc.base.dao.impl;

import com.sdut.ngxykjc.base.dao.BaseDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by 郭昌仑 on 2016/10/17.
 */
@Transactional
public abstract class BaseDaoImpl extends HibernateDaoSupport implements BaseDao {

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

    @Override
    public List<?> getByHql(String hql) {
        HibernateTemplate template = getHibernateTemplate();
        System.out.println("remplate------------------:" + template);
        return (List<?>) getHibernateTemplate().executeWithNativeSession(session -> {
            return session.createQuery(hql).list();
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

    /**
     * 分页查询
     */
    @Override
    public List<?> selectPage(Class clazz, Object search, int first, int count) {
        return null;
    }

    // 显式注入sessionFactory
    // 否则报错： 'sessionFactory' or 'hibernateTemplate' is required
    @Autowired
    public void setSessionFactoryOverried(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }
}
