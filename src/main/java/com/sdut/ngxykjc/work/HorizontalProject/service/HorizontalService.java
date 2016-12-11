package com.sdut.ngxykjc.work.HorizontalProject.service;

import com.sdut.ngxykjc.work.HorizontalProject.bean.Horizontal;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalFunds;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalFundsSearch;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalSearch;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by gcl on 2016/11/12.
 */
public interface HorizontalService {
    public Horizontal get(long id);

    public void saveOrUpdate(Horizontal horizontal);

    public void delete(Horizontal horizontal);

    public List<Horizontal> search(HorizontalSearch search);

}
