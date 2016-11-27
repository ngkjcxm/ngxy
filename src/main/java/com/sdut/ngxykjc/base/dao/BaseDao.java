package com.sdut.ngxykjc.base.dao;

import java.util.List;

/**
 * Created by 郭昌仑 on 2016/10/17.
 */
public interface BaseDao {

    /**
     * 根据主键获取数据
     */
    public Object getById(Class<?> entityClazz, long id);

    /**
     * 根据SQL语句获取数据
     */
    public List<?> getBySql(Class<?> entityClazz, String sql);

    /**
     * 根据HQL语句获取数据
     */
    public List<?> getByHql(String hql);

    /**
     * 修改数据
     */
    public void update(Object t);

    /**
     * 插入或更新数据
     */
    public void saveOrUpdate(Object t);

    /**
     * 删除数据
     */
    public void delete(Object t);

    /**
     * 分页查询
     */
    public List<?> selectPage(Class glazz, Object search, int first, int count);
}
