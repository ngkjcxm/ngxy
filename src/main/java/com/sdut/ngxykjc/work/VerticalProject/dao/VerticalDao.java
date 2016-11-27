package com.sdut.ngxykjc.work.VerticalProject.dao;

import com.sdut.ngxykjc.base.dao.BaseDao;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalProject;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalSearch;

import java.util.List;

/**
 * Created by gcl on 2016/11/13.
 */
public interface VerticalDao extends BaseDao{
    /**
     * 搜索
     * @param search 搜索条件
     * @return 搜索结果
     */
    List<VerticalProject> search(VerticalSearch search);
}
