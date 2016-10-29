package com.sdut.ngxykjc.dao;

import com.sdut.ngxykjc.bean.HorizontalWork;

import java.util.List;

/**
 * Created by 郭昌仑 on 2016/10/27.
 */
public interface HorizontalWorkDao extends BaseDao {

    /**
     * 通过id删除一条记录
     */
    public void deleteById(final int id);

    /**
     * 根据工程Id获得经费列表
     */
    public List<HorizontalWork> getListByProjectId(int projectId);
}
