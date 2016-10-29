package com.sdut.ngxykjc.service;

import com.sdut.ngxykjc.bean.HorizontalProject;

import java.util.List;

/**
 * Created by 郭昌仑 on 2016/10/27.
 * <p>
 * HorizontalService
 */
public interface HorizontalService {

    /**
     * 返回横向课题json字符串
     * <p>
     * 分页使用
     *
     * @param page 页数
     */
    public String getProjectListJson(final int page);

    /**
     * 返回所有课题的json字符串
     */
    public String getProjectListJson();

    /**
     * 删除一条经费记录
     *
     * @param id id
     */
    public void deleteOutlay(final int id);

    /**
     * 删除一条分工记录
     *
     * @param id id
     */
    public void deleteWork(final int id);

    /**
     * 更新或插入
     *
     * @param obj obj
     */
    public void saveOrUpdate(Object obj);

    /**
     * 根据id，获取纵向课题
     * @param projectId id
     * @return
     */
    public HorizontalProject getProject(int projectId);

    /**
     * 根据纵向课题名，返回经费字符创
     */
    public String getOutlayList(int projectId);

    /**
     * 根据纵向课题名，返回工作量字符创
     */
    public String getWorkList(int projectId);

    /**
     * 查找
     * @return 查找结果
     */
    List<HorizontalProject> search(HorizontalProject project);
}
