package com.sdut.ngxykjc.service.impl;

import com.google.gson.Gson;
import com.sdut.ngxykjc.dao.HorizontalDao;
import com.sdut.ngxykjc.dao.HorizontalOutlayDao;
import com.sdut.ngxykjc.dao.HorizontalWorkDao;
import com.sdut.ngxykjc.service.HorizontalService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by 郭昌仑 on 2016/10/27.
 * <p>
 * 横向课题相关service
 */
public class HorizontalServiceImpl implements HorizontalService {

    @Autowired
    private HorizontalOutlayDao outlayDao;

    @Autowired
    private HorizontalWorkDao workDao;

    @Autowired
    public HorizontalDao horizontalDao;

    @Autowired
    private Gson gson;

    @Override
    public String getProjectListJson(int page) {
        return "";
    }

    @Override
    public String getProjectListJson() {
        return gson.toJson(horizontalDao.getAll());
    }

    @Override
    public void deleteOutlay(int id) {
        outlayDao.deleteById(id);
    }

    @Override
    public void deleteWork(int id) {
        outlayDao.deleteById(id);
    }

    @Override
    public void saveOrUpdate(Object obj) {
        horizontalDao.saveOrUpdate(obj);
    }
}
