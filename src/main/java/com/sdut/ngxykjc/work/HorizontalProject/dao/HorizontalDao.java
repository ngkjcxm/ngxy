package com.sdut.ngxykjc.work.HorizontalProject.dao;

import com.sdut.ngxykjc.base.dao.BaseDao;
import com.sdut.ngxykjc.work.HorizontalProject.bean.Horizontal;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalSearch;

import java.util.List;

/**
 * Created by gcl on 2016/11/12.
 */
public interface HorizontalDao extends BaseDao {

    /**
     * 搜索
     */
    public List<Horizontal> search(HorizontalSearch search);
}
