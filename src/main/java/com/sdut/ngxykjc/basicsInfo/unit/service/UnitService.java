package com.sdut.ngxykjc.basicsInfo.unit.service;

import com.sdut.ngxykjc.basicsInfo.unit.bean.Unit;

/**
 * Created by gcl on 2016/11/5.
 */
public interface UnitService {

    /**
     * 插入或更新一条记录
     */
    public void saveOrUpdate(Unit obj);

    /**
     * 删除一条记录
     */
    public void delete(final int id);

    /**
     * 删除一条记录
     *
     */
    public void delete(final Unit school);

    /**
     * 查询一条记录
     */
    public Unit get(long id);
}
