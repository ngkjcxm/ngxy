package com.sdut.ngxykjc.basicsInfo.employee.service.impl;

import com.sdut.ngxykjc.basicsInfo.department.bean.Department;
import com.sdut.ngxykjc.basicsInfo.employee.bean.Employee;
import com.sdut.ngxykjc.basicsInfo.employee.dao.EmployeeDao;
import com.sdut.ngxykjc.basicsInfo.employee.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import com.sdut.ngxykjc.base.bean.Node;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

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

    @Override
    public List<Node> tree() {
        List<Employee> lists = (List<Employee>) employeeDao.getBySql(Employee.class, "select * from employee");
        List<Node> nodes = new ArrayList<>();
        // 当前id
        int curId = 0;
        // 当前学院id
        int curxuid = 0;
        // 当前部门id
        int curgzcid = 0;
        // 当前学院名称
        String curXY = "";
        // 当前部门名称;
        String curGZC = "";
        nodes.add(new Node(curId++, -1, "请选择", ""));
        for (int i = 0; i < lists.size(); i++) {
            Employee obj = lists.get(i);
            if (obj.getAcademiaUnitName().equals(curXY)) {
                if (obj.getDepartmentName().equals(curGZC)) {
                    nodes.add(new Node(curId++, curgzcid, obj.getEmployeeName(), "javascript:employeeTree('" + obj.getEmployeeName() + "');"));
                } else {
                    // 添加部门
                    curGZC = obj.getDepartmentName();
                    curgzcid = curId++;
                    nodes.add(new Node(curgzcid, curxuid, obj.getDepartmentName(), ""));

                    // 添加人
                    nodes.add(new Node(curId++, curgzcid, obj.getEmployeeName(), "javascript:employeeTree('" + obj.getEmployeeName() + "');"));
                }
            } else {
                // 添加学院
                curXY = obj.getAcademiaUnitName();
                curxuid = curId++;
                nodes.add(new Node(curxuid, 0, obj.getAcademiaUnitName(), ""));

                // 添加部门
                curgzcid = curId++;
                curGZC = obj.getDepartmentName();
                nodes.add(new Node(curgzcid, curxuid, obj.getDepartmentName(), ""));

                // 添加学生
                nodes.add(new Node(curId++, curgzcid, obj.getEmployeeName(), "javascript:employeeTree('" + obj.getEmployeeName() + "');"));
            }
        }
        return nodes;
    }
}
