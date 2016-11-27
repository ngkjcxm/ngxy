package com.sdut.ngxykjc.basicsInfo.employee.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.basicsInfo.employee.bean.Employee;
import com.sdut.ngxykjc.basicsInfo.employee.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


/**
 * Created by sunming on 2016/11/5.
 */
@Controller
@Scope("session")
public class EmployeeAction extends BaseAction {

    @Autowired
    private EmployeeService employeeService;

    private Employee employee;

    private long id;


    /**
     * 详细信息
     */
    public String detail(){
        if(id == -1){
            return SUCCESS;
        }
        employee = employeeService.get(id);
        id = -1;
        System.out.println(employee);
        return SUCCESS;
    }

    public String listUI(){
        return SUCCESS;
    }

    public String save(){
        employeeService.addOrUpdate(employee);
        employee = null;
        return SUCCESS;
    }

    /**
     * 删除
     */
    public String delete(){
        employeeService.delete(employee);
        employeeService = null;
        return SUCCESS;
    }

    /**
     * 返回tree数据
     */
    public void tree(){
    }

    /************** getter or setter ***************/

    public EmployeeService getEmployeeService() {
        return employeeService;
    }

    public void setEmployeeService(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
