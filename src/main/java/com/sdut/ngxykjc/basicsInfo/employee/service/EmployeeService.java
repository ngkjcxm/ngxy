package com.sdut.ngxykjc.basicsInfo.employee.service;

import com.sdut.ngxykjc.base.bean.Node;
import com.sdut.ngxykjc.basicsInfo.employee.bean.Employee;

import java.util.List;

/**
 * Created by sunming on 2016/11/5.
 */
public interface EmployeeService {

    public Employee get(long id);

    public void addOrUpdate(Employee employee);

    public void delete(Employee employee);

    public void delete(long id);

    public List<Node> tree();
}
