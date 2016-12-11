package com.sdut.ngxykjc.work.HorizontalProject.service.impl;

import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalFunds;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalFundsSearch;
import com.sdut.ngxykjc.work.HorizontalProject.dao.HorizontalFundsDao;
import com.sdut.ngxykjc.work.HorizontalProject.service.HorizontalFundsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * Created by sunmig on 2016/11/25.
 */
@Service
public class HorizontalFundsServiceImpl implements HorizontalFundsService {

    @Autowired
    private HorizontalFundsDao horizontalFundsDao;

    @Override
    public List<HorizontalFunds> searchFundsSearch(Class clazz, Object search) {
        return horizontalFundsDao.searchFundsSearch(clazz, search);
    }
}
