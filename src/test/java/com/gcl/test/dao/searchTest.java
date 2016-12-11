package com.gcl.test.dao;

import com.gcl.test.BaseJunitTest;
import com.sdut.ngxykjc.basicsInfo.employee.bean.Employee;
import com.sdut.ngxykjc.basicsInfo.employee.bean.EmployeeSearch;
import com.sdut.ngxykjc.basicsInfo.employee.dao.EmployeeDao;
import com.sdut.ngxykjc.basicsInfo.employee.dao.EmployeeSearchDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by sunming on 2016/11/30.
 */
public class searchTest extends BaseJunitTest {
    @Autowired
    private EmployeeDao employeeDao;
    @Autowired
    private EmployeeSearchDao employeeSearchDao;

    @Test
    public void Test(){
        List<Employee> employeeList = (List<Employee>) employeeDao.getBySql(Employee.class,"select * from employee");
        for(Employee employee: employeeList){
            System.out.println(employee.getEmployeeName());
        }
    }

    @Test
    public void Test2(){

        List<EmployeeSearch> employeeSearcheslist = (List<EmployeeSearch>) employeeSearchDao.getBySql(EmployeeSearch.class, "select * from employeesearch");
        for (EmployeeSearch employeeSearch : employeeSearcheslist){
            System.out.println(employeeSearch.getEmployeeName());
        }
    }
}
