package com.sdut.ngxykjc.work.scientificResearch.service.impl;

import com.sdut.ngxykjc.base.service.impl.BaseService;
import com.sdut.ngxykjc.basicsInfo.school.bean.School;
import com.sdut.ngxykjc.work.scientificResearch.bean.ScientificResearchReward;
import com.sdut.ngxykjc.work.scientificResearch.dao.ScientificResearchDao;
import com.sdut.ngxykjc.work.scientificResearch.service.ScientificResearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;


/**
 * Created by sunming on 2016/12/5.
 */
@Service
public class ScientificResearchServiceImpl extends BaseService<ScientificResearchReward> implements ScientificResearchService {

    @Autowired
    private ScientificResearchDao scientificResearchDao;

    @Override
    public void saveOrUpdate(ScientificResearchReward obj) {
        scientificResearchDao.saveOrUpdate(obj);
    }

    @Override
    public void delete(int id) {

    }

    @Override
    public void delete(ScientificResearchReward scientificResearchReward) {

    }

    @Override
    public ScientificResearchReward get(long id) {
        return null;
    }

    @Override
    public ScientificResearchReward getById(Class clazz, long id) {
        return (ScientificResearchReward) scientificResearchDao.getById(clazz,id);
    }


    @Override
    public List<ScientificResearchReward> selectPage(Class glazz, Object search, int first, int count) {
        return (List<ScientificResearchReward>) scientificResearchDao.selectPage1(glazz, search, first, count);
    }

    @Override
    public List<ScientificResearchReward> searchScientific(Class clazz, Object search) {
        return scientificResearchDao.searchScientific(clazz, search);
    }

}
