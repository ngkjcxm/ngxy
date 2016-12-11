package com.sdut.ngxykjc.work.paper.dao;

import com.sdut.ngxykjc.base.dao.BaseDao;
import com.sdut.ngxykjc.work.paper.bean.Paper;

import java.util.List;

/**
 * Created by gcl on 2016/11/21.
 * <p>
 * PaperDao
 */
public interface PaperDao extends BaseDao{
    @Override
    public List<Paper> selectPage(Class glazz, Object search, int first, int count);


    public List<Paper> searchPaper(Class clazz, Object search);
}
