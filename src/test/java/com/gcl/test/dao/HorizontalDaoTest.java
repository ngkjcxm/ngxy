package com.gcl.test.dao;

import com.gcl.test.BaseJunitTest;
import com.sdut.ngxykjc.work.HorizontalProject.bean.Horizontal;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalSearch;
import com.sdut.ngxykjc.work.HorizontalProject.dao.HorizontalDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by gcl on 2016/11/12.
 */
public class HorizontalDaoTest extends BaseJunitTest {

    @Autowired
    private HorizontalDao horizontalDao;

    @Test
    public void testGet(){
        HorizontalSearch search = new HorizontalSearch();
        search.setEndProjectResult("已结题");
        List<Horizontal> list = horizontalDao.search(search);
        System.out.println(list);
    }
}
