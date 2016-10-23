package com.gcl.test;

import com.sdut.ngxykjc.bean.SecUser;
import com.sdut.ngxykjc.dao.BaseDao;
import com.sdut.ngxykjc.dao.UserDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;
import java.util.Set;

/**
 * Created by gcl on 2016/10/22.
 */
public class SecUserTest extends BaseJunitTest {

    @Resource
    private BaseDao baseDao;

    @Autowired
    private UserDao userDao;

    @Test
    public void testSave() {
        SecUser user = new SecUser();
        user.setPassword("peter");
        user.setUsername("peter");
        user.setRole("manager");
        user.getPermissions().add("user:view");
        user.getPermissions().add("user:edit");
        baseDao.save(user);
    }

    @Test
    public void testGetSecUser() {
        SecUser user = (SecUser) baseDao.get(SecUser.class, 1l);
        System.out.println(user);
    }

    @Test public void getPermission(){
        Set<String> stringSet = userDao.getPermissions("peter");
        System.out.println(stringSet);
    }
}
