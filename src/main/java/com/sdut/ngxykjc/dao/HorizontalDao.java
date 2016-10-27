package com.sdut.ngxykjc.dao;

import com.sdut.ngxykjc.bean.HorizontalProject;

import java.util.List;

/**
 * Created by 郭昌仑 on 2016/10/27.
 * <p>
 * HorizontalDao
 */
public interface HorizontalDao extends BaseDao {

    /**
     * 获取所有的HorizontalProject
     */
    public List<HorizontalProject> getAll();

    /**
     * 根据项目名称查找
     */
    public List<HorizontalProject> getByProjectName(String name);

    /**
     * 根据项目参与人查找
     */
    public List<HorizontalProject> getByProjectPeopleName(String name);
}