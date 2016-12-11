package com.sdut.ngxykjc.work.scientificResearch.dao;

import com.sdut.ngxykjc.base.dao.BaseDao;
import com.sdut.ngxykjc.work.scientificResearch.bean.ScientificResearch;

import java.util.List;

/**
 * Created by gcl on 2016/11/19.
 * <p>
 * ResearchDao
 */
public interface ResearchDao extends BaseDao{
    @Override
    List<ScientificResearch> selectPage(Class glazz, Object search, int first, int count);
}
