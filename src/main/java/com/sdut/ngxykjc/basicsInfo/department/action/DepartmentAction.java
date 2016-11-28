package com.sdut.ngxykjc.basicsInfo.department.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.basicsInfo.department.bean.Department;
import com.sdut.ngxykjc.basicsInfo.department.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

/**
 * Created by sunmig on 2016/11/5.
 */
@Controller
@Scope("session")
public class DepartmentAction extends BaseAction {

    @Autowired
    private DepartmentService departmentService;

    private Department department;

    private long id;

    /**
     * 详情信息
     */
    public String detail() {
        department = departmentService.get(id);
        return SUCCESS;
    }

    public String listUI() {
        return SUCCESS;
    }

    public String save() {
        departmentService.addOrUpdate(department);
        department = null;
        return SUCCESS;
    }

    public String delete() {
        departmentService.delete(department);
        department = null;
        return SUCCESS;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
