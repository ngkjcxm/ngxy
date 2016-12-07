package com.sdut.ngxykjc.work.patent.dao;

import com.sdut.ngxykjc.base.dao.BaseDao;
import com.sdut.ngxykjc.work.patent.bean.Patent;

import java.io.File;
import java.util.List;

/**
 * Created by gcl on 2016/11/27.
 */
public interface PatentDao extends BaseDao {
    @Override
    public List<Patent> selectPage(Class glazz, Object search, int first, int count);

    public void saveFile(File file, String fileName, String oldName) throws Exception;
}
