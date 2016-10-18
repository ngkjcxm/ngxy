package com.gcl.test;

import com.sdut.ngxykjc.bean.HorizontalProject;
import com.sdut.ngxykjc.dao.BaseDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by 郭昌仑 on 2016/10/18.
 *
 * 测试BaseDao
 *
 */
public class BaseDaoTest extends BaseJunitTest {

    @Autowired
    private BaseDao<HorizontalProject> baseDao;

    @Test
    public void testHor(){
        HorizontalProject pro = new HorizontalProject();
        pro.setAuditor("张三");
        pro.setConsignor("李四");
        pro.setDirectorUnit("计算机");

        baseDao.save(pro);
    }

}
