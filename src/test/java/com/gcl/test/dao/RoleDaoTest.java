package com.gcl.test.dao;

import com.gcl.test.BaseJunitTest;
import com.sdut.ngxykjc.bean.Role;
import com.sdut.ngxykjc.dao.RoleDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

/**
 * Created by gcl on 2016/10/25.
 */
public class RoleDaoTest extends BaseJunitTest {

    @Autowired
    private RoleDao roleDao;

    @Test
    public void testSave() {
        Role role = new Role();
        role.setRoleId("1");
        role.setRoleName("edit");
        role.setCreatePersonId("1001");
        role.setCreatePersonName("战三");
        role.setCreateTime(new Date());
        role.setRemark("权限允许编辑");
        roleDao.save(role);
    }

    @Test
    public void testGetByName() {
        List<Role> list = roleDao.getByCreatePersonName("zhang三");
        System.out.println(list);
    }

    @Test
    public void testGetByCreateTime() {
        List<Role> list = null;
        try {
            list = roleDao.getByCreateTime("2016-1022");
            System.out.println(list);
        } catch (ParseException e) {
            System.out.println("日期解析错误");
            e.printStackTrace();
        }
    }
}
