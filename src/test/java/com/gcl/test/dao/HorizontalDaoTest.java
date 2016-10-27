package com.gcl.test.dao;

import com.gcl.test.BaseJunitTest;
import com.sdut.ngxykjc.bean.HorizontalOutlay;
import com.sdut.ngxykjc.bean.HorizontalProject;
import com.sdut.ngxykjc.bean.HorizontalWork;
import com.sdut.ngxykjc.dao.HorizontalDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

/**
 * Created by gcl on 2016/10/27.
 */
public class HorizontalDaoTest extends BaseJunitTest {

    @Autowired
    private HorizontalDao horizontalDao;

    @Test
    public void initDate() {
        for (int i = 0; i < 10; i++) {
            HorizontalProject horizontalProject = new HorizontalProject();
            horizontalProject.setProjectName("project" + i);
            horizontalProject.setDirectorUnit("教务处");
            horizontalProject.setConsignor("山东理工");
            horizontalProject.setAuditor("老张");
            horizontalProject.setIndateFrom(new Date());
            horizontalProject.setIndateTo(new Date());
            horizontalProject.setIndateFrom(new Date());
            horizontalProject.setIsEnd(0);
            horizontalProject.setIsPass(0);
            horizontalProject.setMembers("王五");
            horizontalProject.setNote("");


            for (int j = 0; j < 3; j++) {
                HorizontalOutlay horizontalOutlay = new HorizontalOutlay();
                horizontalOutlay.setEquipMoney(10);
                horizontalOutlay.setFondAccount("100101");
                horizontalOutlay.setPeopleName("张三");
                horizontalOutlay.setState(0);
                horizontalOutlay.setTotalMoney(30);
                horizontalOutlay.setStudyAccount("111011");
                horizontalOutlay.setTotalMoney(100);
                //horizontalProject.getHorizontalOutlays().add(horizontalOutlay);
            }

            for (int k = 0; k < 3; k++) {
                HorizontalWork horizontalWork = new HorizontalWork();
                horizontalWork.setState(0);
                horizontalWork.setPeopleName("老王");
                horizontalWork.setEquipWork(100);
                horizontalWork.setStudyWork(10);
                horizontalWork.setTotalWork(110);
                //horizontalProject.getHorizontalWorks().add(horizontalWork);
            }

            //horizontalDao.save(horizontalProject);
        }
    }

    @Test
    public void testFromProjectName() {
        System.out.println(horizontalDao.getById(HorizontalProject.class, 1));
    }
}
