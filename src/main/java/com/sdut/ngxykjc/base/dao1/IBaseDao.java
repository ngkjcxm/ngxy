package com.sdut.ngxykjc.base.dao1;


import com.sdut.ngxykjc.base.util.PageResult;
import com.sdut.ngxykjc.base.util.QueryHelper;

import java.util.List;

/**
 * Created by sunming on 2016/12/6.
 */

public interface IBaseDao<T> {
    //class Phone

    //保存对象
    void save(T t);

    T findById(String id);

    List<T> getAll();

    void delete(String id);

    void update(T t);

    //使用QueryHelper改进查询
    public List<T> getAll(QueryHelper qh);

    //分页查询
    public PageResult getPageResult(QueryHelper qh, int pageNo, int pageSize);


}
