package com.sdut.ngxykjc.dao;

import com.sdut.ngxykjc.bean.HorizontalOutlay;
import com.sdut.ngxykjc.dao.BaseDao;

import java.util.List;

/**
 * Created by 郭昌仑 on 2016/10/27.
 */
public interface HorizontalOutlayDao extends BaseDao {

    /**
     * 通过id删除一条记录
     */
    public void deleteById(final int id);

    /**
     * 根据工程id获得经费列表
     */
    public List<HorizontalOutlay> getListByProjectId(int projectId);
}
