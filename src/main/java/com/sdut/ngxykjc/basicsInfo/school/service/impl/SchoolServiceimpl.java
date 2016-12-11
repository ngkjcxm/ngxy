package com.sdut.ngxykjc.basicsInfo.school.service.impl;

import com.sdut.ngxykjc.basicsInfo.school.bean.School;
import com.sdut.ngxykjc.basicsInfo.school.dao.SchoolDao;
import com.sdut.ngxykjc.basicsInfo.school.service.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by gcl on 2016/11/3.
 */
@Service
public class SchoolServiceimpl implements SchoolService{

    @Autowired
    private SchoolDao schoolDao;

    @Override
    public void saveOrUpdate(School obj) {
        schoolDao.saveOrUpdate(obj);
    }

    @Override
    public void delete(int id) {
        schoolDao.delete(id);
    }

    @Override
    public void delete(School school) {
        schoolDao.delete(school);
    }

    @Override
    public School get(long id) {
        return (School) schoolDao.getById(School.class, id);
    }
}
