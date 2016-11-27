package com.sdut.ngxykjc.basicsInfo.department.service.impl;

import com.sdut.ngxykjc.basicsInfo.department.bean.Department;
import com.sdut.ngxykjc.basicsInfo.department.dao.DepartmentDao;
import com.sdut.ngxykjc.basicsInfo.department.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by sunmig on 2016/11/5.
 */
@Service
public class DepartmentServiceimpl implements DepartmentService {
    @Autowired
    private DepartmentDao departmentDao;

    @Override
    public Department get(long id) {
        return (Department) departmentDao.getById(Department.class, id);
    }

    @Override
    public void addOrUpdate(Department department) {
        departmentDao.saveOrUpdate(department);
    }

    @Override
    public void delete(Department department) {
        departmentDao.delete(department);
    }

    @Override
    public void delete(long id) {
        Department department = new Department();
        department.setId(id);
        delete(department);
    }
}
