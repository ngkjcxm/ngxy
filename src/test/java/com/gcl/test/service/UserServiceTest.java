package com.gcl.test.service;

import com.gcl.test.BaseJunitTest;
import com.sdut.ngxykjc.User.bean.User;
import com.sdut.ngxykjc.User.dao.UserDao;
import com.sdut.ngxykjc.User.service.UserService;
import com.sdut.ngxykjc.base.util.UserPermissions;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

/**
 * Created by gcl on 2016/10/28.
 */
public class UserServiceTest extends BaseJunitTest {

    @Autowired
    private UserService userService;

    @Autowired
    private UserDao userDao;

    @Test
    public void testRegister() {
        User user = new User();
        user.setUsername("gcl");
        user.setPassword("gcl");
        user.setAvatar("avatar");
        user.setRegisterDate(new Date());

        userService.register(user);
    }

    @Test
    public void getPermissions() {
        System.out.println(userDao.getPermissions("gcl"));
    }
}
