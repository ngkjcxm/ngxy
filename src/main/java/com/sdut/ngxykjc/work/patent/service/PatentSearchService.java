package com.sdut.ngxykjc.work.patent.service;

import com.sdut.ngxykjc.work.patent.bean.Patent;

import java.util.List;

/**
 * Created by sunming on 2016/12/5.
 */
public interface PatentSearchService {


    public List<Patent> patentSearch(Class clazz, Object search);

}
