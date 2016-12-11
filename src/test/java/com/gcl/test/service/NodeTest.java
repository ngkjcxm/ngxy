package com.gcl.test.service;

import com.gcl.test.BaseJunitTest;
import com.sdut.ngxykjc.base.bean.Node;
import com.sdut.ngxykjc.basicsInfo.department.bean.Department;
import com.sdut.ngxykjc.basicsInfo.department.dao.DepartmentDao;
import com.sdut.ngxykjc.basicsInfo.employee.bean.Employee;
import com.sdut.ngxykjc.basicsInfo.employee.dao.EmployeeDao;
import com.sdut.ngxykjc.basicsInfo.unit.bean.Unit;
import com.sdut.ngxykjc.basicsInfo.unit.dao.UnitDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by sunming on 2016/12/9.
 */
public class NodeTest extends BaseJunitTest{


    @Autowired
    private EmployeeDao employeeDao;
    @Autowired
    private UnitDao unitDao;
    @Autowired
    private DepartmentDao departmentDao;


    @Test
    public void treeForEmployee() {

        // 当前id
        int curId = 0;
        List<Node> nodes = new ArrayList<>();
        nodes.add(new Node(curId++, -1, "请选择", ""));
        List<Employee> listEmployee = (List<Employee>) employeeDao.getBySql(Employee.class, "select * from employee");
        List<Unit> listUnit = (List<Unit>) unitDao.getBySql(Unit.class, "select * from unit");
        List<Department> listDeparment = (List<Department>) departmentDao.getBySql(Department.class, "select * from department");

        HashMap<String , Integer> unitListMap = new HashMap<String, Integer>();
        HashMap<String , Integer> departmentMap = new HashMap<String , Integer>();

        for (int i = 0; i < listUnit.size(); i++){
            Unit unit = listUnit.get(i);
            int id = curId;
            String name = unit.getUnitName();
            nodes.add(new Node(curId++, 0, name,""));
            unitListMap.put(name, id);
        }

        for (int  i = 0; i < listDeparment.size(); i++){
            Department department = listDeparment.get(i);
            int id = curId;
            String name = department.getDepartmentName();
            String  pidName = department.getUnitName();
            int pidId = unitListMap.get(pidName);
            nodes.add(new Node(curId++, pidId, name, ""));
            departmentMap.put(name, id);
        }

        for(int i = 0; i < listEmployee.size(); i++){
            Employee employee = listEmployee.get(i);
            String name = employee.getEmployeeName();
            int pidId = departmentMap.get(employee.getDepartmentName());
            nodes.add(new Node(curId++, pidId, name, "/employee/employee_detail?id=" + employee.getId() + ""));
        }
    }

    public EmployeeDao getEmployeeDao() {
        return employeeDao;
    }

    public void setEmployeeDao(EmployeeDao employeeDao) {
        this.employeeDao = employeeDao;
    }

    public UnitDao getUnitDao() {
        return unitDao;
    }

    public void setUnitDao(UnitDao unitDao) {
        this.unitDao = unitDao;
    }

    public DepartmentDao getDepartmentDao() {
        return departmentDao;
    }

    public void setDepartmentDao(DepartmentDao departmentDao) {
        this.departmentDao = departmentDao;
    }
}
