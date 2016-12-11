package com.sdut.ngxykjc.work.VerticalProject.service;

import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalProject;

import java.util.List;

/**
 * Created by sunming on 2016/12/4.
 */
public interface VerticalSearchService {

    public List<VerticalProject> searchVertical(Class clazz, Object search);

}
