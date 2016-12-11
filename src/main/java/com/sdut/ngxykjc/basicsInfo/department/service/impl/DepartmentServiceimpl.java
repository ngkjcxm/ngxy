package com.sdut.ngxykjc.basicsInfo.department.service.impl;

import com.sdut.ngxykjc.base.bean.Node;
import com.sdut.ngxykjc.basicsInfo.department.bean.Department;
import com.sdut.ngxykjc.basicsInfo.department.dao.DepartmentDao;
import com.sdut.ngxykjc.basicsInfo.department.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

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

    @Override
    public List<Node> treeUnit() {

        List<Department> list = (List<Department>) departmentDao.getBySql(Department.class, "select * from department");

        List<Node> nodes = new ArrayList<>();

        int curId = 0;
        int curSchoolId = 0;
        int curUnitId = 0;

        String curSchoolName = "";
        String curUnitName = "";

        nodes.add(new Node(curId++, -1, "单位列表", ""));
        for(int i = 0; i < list.size(); i++){
            Department department = list.get(i);
            if(department.getUnitName().equals(curUnitName)){
                nodes.add(new Node(curId++, curUnitId, department.getDepartmentName(),"/department/department_detail?id="+department.getId()));
            } else{
                curUnitName = department.getUnitName();
                curUnitId = curId;
                nodes.add(new Node(curId++, 0, curUnitName, ""));
            }
        }

        return nodes;
    }
}
