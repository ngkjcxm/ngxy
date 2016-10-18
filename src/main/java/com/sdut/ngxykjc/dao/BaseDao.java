package com.sdut.ngxykjc.dao;

import java.util.List;

/**
 * Created by 郭昌仑 on 2016/10/17.
 *
 */
public interface BaseDao<T> {

    /**
     * 根据主键获取数据
     */
    public T get(Class<T> entityClazz, long id);

    /**
     * 根据SQL语句获取数据
     */
    public List<T> get(Class<T> entityClazz, String sql);

    /**
     * 修改数据
     */
    public void update(T t);

    /**
     * 插入数据
     */
    public void save(T t);

    /**
     * 删除数据
     */
    public void delete(T t);
}
