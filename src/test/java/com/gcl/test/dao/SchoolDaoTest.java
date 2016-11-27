package com.gcl.test.dao;

import com.gcl.test.BaseJunitTest;
import com.sdut.ngxykjc.basicsInfo.school.bean.School;
import com.sdut.ngxykjc.basicsInfo.school.dao.SchoolDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by sunmig on 2016/11/2.
 */
public class SchoolDaoTest extends BaseJunitTest {

    @Autowired
    private SchoolDao schoolDao;

    @Test
    public void inputSchoolInfo(){

        School school = new School();
        school.setSchoolId("1");
        school.setSchoolName("山东理工大学");
        school.setSchoolSimpleName("SDUT");
        school.setAdministrativeLevel("本科");
        school.setSchoolCorporation("张铁柱");
        school.setSchoolHeader("吕传毅");
        school.setAddress("张周路58号");
        school.setPostCode("255000");
        school.setSimpleSpelling("sdut");
        school.setWebsite("www.sdut.com");
        school.setRemark("lalala");
        school.toString();
        schoolDao.saveOrUpdate(school);
    }
}
