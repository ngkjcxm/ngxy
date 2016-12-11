package com.sdut.ngxykjc.work.patent.service.impl;

import com.sdut.ngxykjc.work.paper.dao.PaperDao;
import com.sdut.ngxykjc.work.patent.bean.Patent;
import com.sdut.ngxykjc.work.patent.bean.PatentDesigner;
import com.sdut.ngxykjc.work.patent.dao.PatentDao;
import com.sdut.ngxykjc.work.patent.service.PatentSearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by sunming on 2016/12/5.
 */
@Service
public class PatentSearchServiceImpl implements PatentSearchService {

    @Autowired
    private PatentDao patentDao;


    @Override
    public List<Patent> patentSearch(Class clazz, Object search) {
        return patentDao.patentSearch(clazz, search);
    }
}
