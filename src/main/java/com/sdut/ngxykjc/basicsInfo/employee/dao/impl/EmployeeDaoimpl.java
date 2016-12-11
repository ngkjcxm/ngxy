package com.sdut.ngxykjc.basicsInfo.employee.dao.impl;

import com.sdut.ngxykjc.base.dao.impl.BaseDaoImpl;
import com.sdut.ngxykjc.basicsInfo.employee.bean.Employee;
import com.sdut.ngxykjc.basicsInfo.employee.bean.EmployeeSearch;
import com.sdut.ngxykjc.basicsInfo.employee.dao.EmployeeDao;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by sunming on 2016/11/5.
 */
@Repository("employeeDao")
public class EmployeeDaoimpl extends BaseDaoImpl implements EmployeeDao {

    @Override
    public List<Employee> searchEmployeeList(Class clazz, Object search) {
        EmployeeSearch employeeSearch = (EmployeeSearch) search;
        return (List<Employee>) getHibernateTemplate().executeWithNativeSession(session -> {
            Criteria criteria = session.createCriteria(clazz);
            //姓名
            if (StringUtils.hasLength(employeeSearch.getEmployeeName())) {
                criteria.add(Restrictions.like("employeeName", employeeSearch.getEmployeeName()));
            }
            //性别
            if (StringUtils.hasLength(employeeSearch.getSex())) {
                criteria.add(Restrictions.like("sex", employeeSearch.getSex()));
            }
            //单位
            if (StringUtils.hasLength(employeeSearch.getUnitName())) {
                criteria.add(Restrictions.like("unitName", employeeSearch.getUnitName()));
            }
            //学位
            if (StringUtils.hasLength(employeeSearch.getAcademicDegree())) {
                criteria.add(Restrictions.like("fulltimeDegree", employeeSearch.getAcademicDegree()));
            }
            //职称
            if (StringUtils.hasLength(employeeSearch.getTitle())) {
                criteria.add(Restrictions.like("jopTileName", employeeSearch.getTitle()));
            }
            //政治面貌
            if (StringUtils.hasLength(employeeSearch.getPoliticalStatus())) {
                criteria.add(Restrictions.like("politicalLandscape", employeeSearch.getPoliticalStatus()));
            }
            return criteria.list();

        });
    }

    @Override
    public String getUnitByName(String name) {
        Employee employee = (Employee) getBySql(Employee.class, "select * from employee where employeeName = '" + name + "'").get(0);
        if (employee == null) return "";
        return employee.getAcademiaUnitName();
    }
}
