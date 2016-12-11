package com.sdut.ngxykjc.work.scientificResearch.dao;

import com.sdut.ngxykjc.base.dao.BaseDao;
import com.sdut.ngxykjc.work.scientificResearch.bean.ScientificResearch;
import com.sdut.ngxykjc.work.scientificResearch.bean.ScientificResearchReward;

import java.util.List;

/**
 * Created by sunming on 2016/12/6.
 */
public interface ScientificResearchDao extends BaseDao {
   public List<ScientificResearchReward> selectPage1(Class glazz, Object search, int first, int count);

   public List<ScientificResearchReward> searchScientific(Class clazz, Object search);

}
