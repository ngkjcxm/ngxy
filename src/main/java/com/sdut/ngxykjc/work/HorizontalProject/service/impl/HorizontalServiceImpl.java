package com.sdut.ngxykjc.work.HorizontalProject.service.impl;

import com.sdut.ngxykjc.work.HorizontalProject.bean.Horizontal;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalSearch;
import com.sdut.ngxykjc.work.HorizontalProject.dao.HorizontalDao;
import com.sdut.ngxykjc.work.HorizontalProject.service.HorizontalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 郭昌仑 on 2016/11/12.
 */
@Service
public class HorizontalServiceImpl implements HorizontalService {
    @Autowired
    private HorizontalDao horizontalDao;

    @Override
    public Horizontal get(long id) {
        return (Horizontal) horizontalDao.getById(Horizontal.class, id);
    }

    @Override
    public void saveOrUpdate(Horizontal horizontal) {
        horizontalDao.saveOrUpdate(horizontal);
    }

    @Override
    public List<Horizontal> search(HorizontalSearch search){
        return horizontalDao.search(search);
    }
}
