package com.gcl.test.service;

import com.gcl.test.BaseJunitTest;
import com.sdut.ngxykjc.bean.User;
import com.sdut.ngxykjc.service.UserService;
import com.sdut.ngxykjc.util.UserRole;
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
        user.setUsername("pp");
        user.setPassword("pp");
        user.setAvatar("avatar");
        user.setRegisterDate(new Date());
        user.setRole(UserRole.SIMPLE);

        userService.register(user);
    }
}
