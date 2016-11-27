package com.sdut.ngxykjc.basicsInfo.unit.service.impl;

import com.sdut.ngxykjc.basicsInfo.school.bean.School;
import com.sdut.ngxykjc.basicsInfo.school.dao.SchoolDao;
import com.sdut.ngxykjc.basicsInfo.unit.bean.Unit;
import com.sdut.ngxykjc.basicsInfo.unit.dao.UnitDao;
import com.sdut.ngxykjc.basicsInfo.unit.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by sunmig on 2016/11/5.
 */
@Service
public class UnitServiceimpl implements UnitService {

    @Autowired
    private UnitDao unitDao;

    @Override
    public void saveOrUpdate(Unit obj) {
        unitDao.saveOrUpdate(obj);
    }

    @Override
    public void delete(int id) {
        unitDao.delete(id);
    }

    @Override
    public void delete(Unit unit) {
        unitDao.delete(unit);
    }

    @Override
    public Unit get(long id) {
        return (Unit) unitDao.getById(Unit.class, id);
    }
}
