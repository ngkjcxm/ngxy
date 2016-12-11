package com.sdut.ngxykjc.work.paper.service;

import com.sdut.ngxykjc.work.paper.bean.Paper;

import java.util.List;

/**
 * Created by sunming on 2016/12/4.
 */
public interface PaperService {

    public List<Paper> searchPaper(Class clazz, Object search);
}
