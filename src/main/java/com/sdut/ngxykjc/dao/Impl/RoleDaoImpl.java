package com.sdut.ngxykjc.dao.Impl;

import com.sdut.ngxykjc.bean.Role;
import com.sdut.ngxykjc.dao.RoleDao;
import org.springframework.stereotype.Repository;
import org.springframework.util.Assert;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by gcl on 2016/10/25.
 * <p>
 * Role DAo Implement
 */
@Repository("roleDao")
public class RoleDaoImpl extends BaseDaoImpl implements RoleDao {

    public List<Role> getByCreateTime(Date date) {
        Assert.notNull(date, "日期不能为null");
        Role role = new Role();
        role.setCreateTime(date);
        return getHibernateTemplate().findByExample(role);
    }

    @Override
    public List<Role> getByCreateTime(String time) throws ParseException {
        Assert.hasLength(time, "时间不能为空");
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date date = format.parse(time);
        return getByCreateTime(date);
    }

    @Override
    public List<Role> getByCreatePersonName(String name) {
        Assert.hasLength(name, "姓名不能为空");
        return (List<Role>) getBySql(Role.class, "SELECT * FROM role WHERE create_person_name = '" + name + "'");
    }
}
