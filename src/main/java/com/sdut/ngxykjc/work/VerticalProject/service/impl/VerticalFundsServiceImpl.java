package com.sdut.ngxykjc.work.VerticalProject.service.impl;

import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalFunds;
import com.sdut.ngxykjc.work.VerticalProject.dao.VerticalFundsDao;
import com.sdut.ngxykjc.work.VerticalProject.service.VerticalFundsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by sunmig on 2016/11/25.
 */
@Service
public class VerticalFundsServiceImpl implements VerticalFundsService {

    @Autowired
    private VerticalFundsDao verticalFundsDao;

    @Override
    public List<VerticalFunds> searchFundsSearch(Class clazz, Object search) {
        return verticalFundsDao.searchFundsSearch(clazz, search);
    }
}
