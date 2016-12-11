package com.sdut.ngxykjc.basicsInfo.unit.service.impl;

import com.sdut.ngxykjc.base.bean.Node;
import com.sdut.ngxykjc.basicsInfo.employee.bean.Employee;
import com.sdut.ngxykjc.basicsInfo.school.bean.School;
import com.sdut.ngxykjc.basicsInfo.school.dao.SchoolDao;
import com.sdut.ngxykjc.basicsInfo.unit.bean.Unit;
import com.sdut.ngxykjc.basicsInfo.unit.dao.UnitDao;
import com.sdut.ngxykjc.basicsInfo.unit.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

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

    @Override
    public List<Node> treeUnit() {

        List<Unit> list = (List<Unit>) unitDao.getBySql(Unit.class, "select * from unit");

        List<Node> nodes = new ArrayList<>();
        //当前Id
        int curId = 0;
        //当前学校Id
        int curSchoolId = 0;
        //当前学校名称
        String curSchoolName = "";

        nodes.add(new Node(curId++, -1, "单位列表", ""));

        for (int i = 0; i < list.size(); i++) {
            Unit unit = list.get(i);
            if (unit.getSchoolName().equals(curSchoolName)) {
                nodes.add(new Node(curId++, curSchoolId, unit.getUnitName(), "/unit/unit_detail?id="+unit.getId()));
            } else {
                curSchoolId = curId;
                curSchoolName = unit.getSchoolName();
                nodes.add(new Node(curId++, 0, curSchoolName, ""));
            }
        }
        return nodes;
    }



}
