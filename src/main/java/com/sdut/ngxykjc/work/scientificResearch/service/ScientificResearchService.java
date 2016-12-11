package com.sdut.ngxykjc.work.scientificResearch.service;

import com.sdut.ngxykjc.base.service.IBaseService;
import com.sdut.ngxykjc.basicsInfo.school.bean.School;
import com.sdut.ngxykjc.work.scientificResearch.bean.ScientificResearchReward;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by sunming on 2016/12/5.
 */
public interface ScientificResearchService extends IBaseService<ScientificResearchReward> {

    /**
     * 插入或更新一条记录
     */
    public void saveOrUpdate(ScientificResearchReward obj);

    /**
     * 删除一条记录
     */
    public void delete(final int id);

    /**
     * 删除一条记录
     *
     */
    public void delete(final ScientificResearchReward scientificResearchReward);

    /**
     * 查询一条记录
     */
    public ScientificResearchReward get(long id);


    public ScientificResearchReward getById(Class clazz, long id);


    List<ScientificResearchReward> selectPage(Class glazz, Object search, int first, int count);

    public  List<ScientificResearchReward> searchScientific(Class clazz, Object search);

}
