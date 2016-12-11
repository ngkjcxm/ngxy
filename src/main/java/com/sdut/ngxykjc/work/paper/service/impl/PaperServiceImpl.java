package com.sdut.ngxykjc.work.paper.service.impl;

import com.sdut.ngxykjc.work.paper.bean.Paper;
import com.sdut.ngxykjc.work.paper.dao.PaperDao;
import com.sdut.ngxykjc.work.paper.service.PaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by sunming on 2016/12/4.
 */
@Service
public class PaperServiceImpl implements PaperService{

    @Autowired
    public PaperDao paperDao;
    @Override
    public List<Paper> searchPaper(Class clazz, Object search) {
        return paperDao.searchPaper(clazz,search);
    }
}
