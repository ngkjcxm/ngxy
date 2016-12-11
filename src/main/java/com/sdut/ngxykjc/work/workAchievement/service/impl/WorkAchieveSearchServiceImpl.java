package com.sdut.ngxykjc.work.workAchievement.service.impl;

import com.sdut.ngxykjc.work.workAchievement.bean.WorkAchieve;
import com.sdut.ngxykjc.work.workAchievement.dao.WorkAchieveDao;
import com.sdut.ngxykjc.work.workAchievement.service.WorkAchieveSearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by sunming on 2016/12/5.
 */
@Service
public class WorkAchieveSearchServiceImpl implements WorkAchieveSearchService {

    @Autowired
    WorkAchieveDao workAchieveDao;


    @Override
    public List<WorkAchieve> searchWork(Class clazz, Object search) {
        return workAchieveDao.searchWork(clazz, search);
    }
}
