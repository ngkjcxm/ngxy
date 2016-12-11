package com.sdut.ngxykjc.work.workAchievement.service;

import com.sdut.ngxykjc.work.workAchievement.bean.WorkAchieve;

import java.util.List;

/**
 * Created by sunming on 2016/12/5.
 */
public interface WorkAchieveSearchService {

    public List<WorkAchieve> searchWork(Class clazz, Object search);


}
