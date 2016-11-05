package com.gcl.test.service;

import com.gcl.test.BaseJunitTest;
import com.sdut.ngxykjc.User.bean.User;
import com.sdut.ngxykjc.User.service.UserService;
import com.sdut.ngxykjc.base.util.UserRole;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

/**
 * Created by gcl on 2016/10/28.
 */
public class UserServiceTest extends BaseJunitTest {

    @Autowired
    private UserService userService;

    @Test
    public void testRegister(){
        User user = new User();
        user.setUsername("liept_admin");
        user.setPassword("liept_admin");
        user.setAvatar("avatar");
        user.setRegisterDate(new Date());
        user.setRole(UserRole.SIMPLE);

        userService.register(user);
    }
}
