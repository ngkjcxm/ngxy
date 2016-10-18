package com.gcl.test;

import com.sdut.ngxykjc.bean.Dog;
import com.sdut.ngxykjc.dao.BaseDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by 郭昌仑 on 2016/10/18.
 *
 * 测试BaseDao
 *
 */
public class BaseDaoTest extends BaseJunitTest {

    @Autowired
    private BaseDao<Dog> baseDao;

    public void testInsert(){
        Dog dog = new Dog();
        dog.setAge(1);
        dog.setName("Toni");
        baseDao.save(dog);
    }

    public void testGet(){
        Dog dog = baseDao.get(Dog.class, 1);
        System.out.println(dog);
    }

    @Test
    public void testGetWithSql(){
        List<Dog> dogs = baseDao.get(Dog.class, "SELECT * FROM dog");
        System.out.println(dogs);
    }

    public void testUpdate(){
        Dog dog = new Dog();
        dog.setId(1);
        dog.setName("update");
        dog.setAge(100);

        baseDao.update(dog);
    }

    public void testDelete(){
        Dog dog = new Dog();
        dog.setId(1);
        dog.setName("update");
        dog.setAge(100);

        baseDao.delete(dog);
    }

}
