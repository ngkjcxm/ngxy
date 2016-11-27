package com.sdut.ngxykjc.work.workAchievement.dao;

import com.sdut.ngxykjc.base.dao.BaseDao;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalProject;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalSearch;
import com.sdut.ngxykjc.work.workAchievement.bean.WorkAchieve;
import com.sdut.ngxykjc.work.workAchievement.bean.WorkArchieveSearch;

import java.util.List;

/**
 * Created by gcl on 2016/11/13.
 */
public interface WorkAchieveDao extends BaseDao{
    public List<WorkAchieve> search(WorkArchieveSearch search);
}
