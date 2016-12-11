package com.sdut.ngxykjc.work.softwareWork.dao;

import com.sdut.ngxykjc.base.dao.BaseDao;
import com.sdut.ngxykjc.work.softwareWork.bean.SoftwareSearch;
import com.sdut.ngxykjc.work.softwareWork.bean.SoftwareWork;

import java.util.List;

/**
 * Created by gcl on 2016/11/19.
 * <p>
 * ResearchDao
 */
public interface SoftwareDao extends BaseDao{
    @Override
    List<SoftwareWork> selectPage(Class glazz, Object search, int first, int count);
}
