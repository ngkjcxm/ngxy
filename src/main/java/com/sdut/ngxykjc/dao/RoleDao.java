package com.sdut.ngxykjc.dao;

import com.sdut.ngxykjc.bean.Role;
import com.sdut.ngxykjc.dao.Impl.BaseDaoImpl;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

/**
 * Created by 郭昌仑 on 2016/10/25.
 * <p>
 * Role Dao
 */
public interface RoleDao extends BaseDao {

    /**
     * 根据时间获取角色
     *
     * @param time 时间字符串：格式：2016-10-13
     * @return 如果找到则返回Role，否则返回空List
     */
    public List<Role> getByCreateTime(String time) throws ParseException;

    /**
     * 根据创建人姓名返回Role
     *
     * @param name 创建人姓名
     * @return 如果找到则返回Role，否则返回空List
     */
    public List<Role> getByCreatePersonName(String name);
}
