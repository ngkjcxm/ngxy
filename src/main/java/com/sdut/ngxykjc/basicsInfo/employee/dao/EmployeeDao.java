package com.sdut.ngxykjc.basicsInfo.employee.dao;

import com.sdut.ngxykjc.base.dao.BaseDao;
import com.sdut.ngxykjc.basicsInfo.employee.bean.Employee;

import java.util.List;

/**
 * Created by sunming on 2016/11/5.
 */
public interface EmployeeDao extends BaseDao {

    public List<Employee> searchEmployeeList(Class glazz, Object search);

    /**
     * 根据姓名获取单位
     */
    public String getUnitByName(String name);
}
