package com.sdut.ngxykjc.work.VerticalProject.service;

import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalFunds;

import java.util.List;

/**
 * Created by sunmig on 2016/11/25.
 */
public interface VerticalFundsService {

    public List<VerticalFunds> searchFundsSearch(Class clazz, Object search);
}
