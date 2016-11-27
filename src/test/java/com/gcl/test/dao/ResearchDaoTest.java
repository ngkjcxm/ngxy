package com.gcl.test.dao;

import com.gcl.test.BaseJunitTest;
import com.sdut.ngxykjc.work.scientificResearch.bean.ResearchSearch;
import com.sdut.ngxykjc.work.scientificResearch.bean.ScientificResearch;
import com.sdut.ngxykjc.work.scientificResearch.dao.ResearchDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by gcl on 2016/11/20.
 */
public class ResearchDaoTest extends BaseJunitTest {

    @Autowired
    private ResearchDao researchDao;

    @Test
    public void selectPage() {
        ResearchSearch search = new ResearchSearch();
        search.setDate("2016-10");
        search.setState("所有");
        List list = researchDao.selectPage(ScientificResearch.class, search, 1, 5);
    }
}
