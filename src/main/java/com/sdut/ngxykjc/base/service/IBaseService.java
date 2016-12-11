package com.sdut.ngxykjc.base.service;


import com.sdut.ngxykjc.base.util.PageResult;
import com.sdut.ngxykjc.base.util.QueryHelper;

import java.util.List;

/**
 * Created by sunming on 2016/12/6.
 */
public interface IBaseService<T> {

    void save(T entity);

    T findById(String id);

    List<T> getAll();

    void update(T entity);

    void delete(String id);

    List<T> getAll(QueryHelper qh);
    //分页查询
    public PageResult getPageResult(QueryHelper qh, int pageNo, int pageSize);


}
