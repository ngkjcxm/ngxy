package com.sdut.ngxykjc.base.service.impl;



import com.sdut.ngxykjc.base.dao1.IBaseDao;
import com.sdut.ngxykjc.base.service.IBaseService;
import com.sdut.ngxykjc.base.util.PageResult;
import com.sdut.ngxykjc.base.util.QueryHelper;

import java.lang.reflect.ParameterizedType;
import java.util.List;

/**
 * Created by sunming on 2016/12/6.
 */
public class BaseService<T> implements IBaseService<T> {

    private final Class<T> clazz;
    private IBaseDao baseDao;

    public BaseService(){
        ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
        System.out.println("22");
        clazz = (Class<T>) pt.getActualTypeArguments()[0];
    }

    @Override
    public void delete(String id){

        baseDao.delete(id);
    }

    @Override
    public T findById(String id) {
        T t = (T) baseDao.findById(id);
        return t;

    }

    @Override
    public List<T> getAll() {
        List all = baseDao.getAll();
        return all;
    }

    @Override
    public void save(T entity){


        baseDao.save(entity);
    }

    @Override
    public void update(T entity){

        baseDao.update(entity);
    }


    @Override
    public List<T> getAll(QueryHelper qh) {
        List all = baseDao.getAll(qh);
        return all;
    }

    //分页查询
    public PageResult getPageResult(QueryHelper qh, int pageNo, int pageSize)
    {
        PageResult pageResult = baseDao.getPageResult(qh, pageNo, pageSize);
        return  pageResult;
    }

    public IBaseDao getBaseDao() {
        return baseDao;
    }

    public void setBaseDao(IBaseDao baseDao) {
        this.baseDao = baseDao;
    }




}
