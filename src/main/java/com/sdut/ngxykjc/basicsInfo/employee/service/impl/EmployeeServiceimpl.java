package com.sdut.ngxykjc.basicsInfo.employee.service.impl;

import com.sdut.ngxykjc.basicsInfo.department.bean.Department;
import com.sdut.ngxykjc.basicsInfo.employee.bean.Employee;
import com.sdut.ngxykjc.basicsInfo.employee.dao.EmployeeDao;
import com.sdut.ngxykjc.basicsInfo.employee.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by sunming on 2016/11/5.
 */
@Service
public class EmployeeServiceimpl implements EmployeeService {

    @Autowired
    private EmployeeDao employeeDao;

    @Override
    public Employee get(long id) {
        return (Employee) employeeDao.getById(Employee.class, id);
    }

    @Override
    public void addOrUpdate(Employee employee) {
        employeeDao.saveOrUpdate(employee);
    }

    @Override
    public void delete(Employee employee) {
        employeeDao.delete(employee);
    }

    @Override
    public void delete(long id) {
        employeeDao.delete(id);
    }
}
