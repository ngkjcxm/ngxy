package com.sdut.ngxykjc.basicsInfo.school.service;

import com.sdut.ngxykjc.basicsInfo.school.bean.School;

/**
 * Created by 孙铭 on 2016/11/3.
 */
public interface SchoolService {

    /**
     * 插入或更新一条记录
     */
    public void saveOrUpdate(School obj);

    /**
     * 删除一条记录
     */
    public void delete(final int id);

    /**
     * 删除一条记录
     *
     */
    public void delete(final School school);

    /**
     * 查询一条记录
     */
    public School get(long id);
}
