package com.sdut.ngxykjc.service.impl;

import com.google.gson.Gson;
import com.sdut.ngxykjc.bean.HorizontalProject;
import com.sdut.ngxykjc.dao.HorizontalDao;
import com.sdut.ngxykjc.dao.HorizontalOutlayDao;
import com.sdut.ngxykjc.dao.HorizontalWorkDao;
import com.sdut.ngxykjc.service.HorizontalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by 郭昌仑 on 2016/10/27.
 * <p>
 * 横向课题相关service
 */

@Service
public class HorizontalServiceImpl implements HorizontalService {

    @Autowired
    private HorizontalOutlayDao horizontalOutlayDao;

    @Autowired
    private HorizontalWorkDao horizontalWorkDao;

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
        horizontalOutlayDao.deleteById(id);
    }

    @Override
    public void deleteWork(int id) {
        horizontalOutlayDao.deleteById(id);
    }

    @Override
    public void saveOrUpdate(Object obj) {
        horizontalDao.saveOrUpdate(obj);
    }

    @Override
    public HorizontalProject getProject(final int projectId) {
        return (HorizontalProject) horizontalDao.getById(HorizontalProject.class, projectId);
    }

    @Override
    public String getOutlayList(int projectid) {
        return gson.toJson(horizontalOutlayDao.getListByProjectId(projectid));
    }

    @Override
    public String getWorkList(int projectid) {
        return gson.toJson(horizontalWorkDao.getListByProjectId(projectid));
    }

    @Override
    public List<HorizontalProject> search(HorizontalProject project) {

        if(project == null){
            return horizontalDao.getAll();
        }

        String where = " where";
        int flag = 0;
        if (StringUtils.hasLength(project.getProjectName())) {
            flag = 1;
            where += " projectName like '%" + project.getProjectName() + "%'";
        }
        if (StringUtils.hasLength(project.getProjectDirector())) {
            if(flag == 1){
                where += " AND ";
            }else {
                flag = 1;
            }
            where += " projectDirector like '%" + project.getProjectDirector() + "%'";
        }
        if (StringUtils.hasLength(project.getDirectorUnit())) {
            if(flag == 1){
                where += " AND ";
            }else {
                flag = 1;
            }
            where += " DirectorUnit like '%" + project.getDirectorUnit() + "%'";
        }

        // 如果有查询条件
        if (flag != 0) {
            return (List<HorizontalProject>) horizontalDao
                    .getBySql(HorizontalProject.class, "select * from HorizontalProject" + where);
        } else {
            // 如果没有查询条件，返回所有
            return horizontalDao.getAll();
        }
    }
}
