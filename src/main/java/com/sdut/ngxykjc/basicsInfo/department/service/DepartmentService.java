package com.sdut.ngxykjc.basicsInfo.department.service;

import com.sdut.ngxykjc.base.bean.Node;
import com.sdut.ngxykjc.basicsInfo.department.bean.Department;

import java.util.List;

/**
 * Created by sunmig on 2016/11/5.
 */
public interface DepartmentService {

    public Department get(long id);

    public void addOrUpdate(Department department);

    public void delete(Department department);

    public void delete(long id);

    public List<Node> treeUnit();
}
