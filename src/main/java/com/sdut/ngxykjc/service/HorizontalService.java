package com.sdut.ngxykjc.service;

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
}
