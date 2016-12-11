package com.sdut.ngxykjc.work.VerticalProject.service.impl;

import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalProject;
import com.sdut.ngxykjc.work.VerticalProject.dao.VerticalDao;
import com.sdut.ngxykjc.work.VerticalProject.service.VerticalSearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by sunming on 2016/12/4.
 */
@Service
public class VerticalSearchServiceImpl implements VerticalSearchService {

    @Autowired
    private VerticalDao verticalDao;


    @Override
    public List<VerticalProject> searchVertical(Class clazz, Object search) {
        return verticalDao.searchVertical(clazz, search);
    }
}
