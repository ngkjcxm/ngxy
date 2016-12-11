package com.sdut.ngxykjc.work.HorizontalProject.service;

import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalFunds;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalFundsSearch;

import java.util.List;
import java.util.Objects;

/**
 * Created by sunmig on 2016/11/25.
 */
public interface HorizontalFundsService {

    public List<HorizontalFunds> searchFundsSearch(Class clazz,Object search);
}
