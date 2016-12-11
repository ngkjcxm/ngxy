package com.gcl.test.dao;

import com.gcl.test.BaseJunitTest;
import com.sdut.ngxykjc.work.scientificResearch.bean.ScientificResearchReward;
import com.sdut.ngxykjc.work.scientificResearch.dao.ScientificResearchDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by sunming on 2016/12/7.
 */
public class ScientificResearchAward extends BaseJunitTest {

    @Autowired
    private ScientificResearchDao scientificResearchDao;

    @Test
    public void  addTest(){

        ScientificResearchReward sr = new ScientificResearchReward();

        sr.setResearchName("Test1");
        sr.setExamineResult("通过");

        scientificResearchDao.saveOrUpdate(sr);

    }

}
