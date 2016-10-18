package com.sdut.ngxykjc.dao;

/**
 * Created by 郭昌仑 on 2016/10/17.
 */
public interface BaseDao<T> {

    public T get(Class<T> entityClazz, long id);
}
