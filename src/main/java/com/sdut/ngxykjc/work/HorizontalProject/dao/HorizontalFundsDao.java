package com.sdut.ngxykjc.work.HorizontalProject.dao;

import com.sdut.ngxykjc.base.dao.BaseDao;
import com.sdut.ngxykjc.work.HorizontalProject.bean.FundsListsItem;
import com.sdut.ngxykjc.work.HorizontalProject.bean.Horizontal;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalFunds;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalSearch;

import java.util.List;

/**
 * Created by gcl on 2016/11/12.
 */
public interface HorizontalFundsDao extends BaseDao {

    /**
     * 搜索
     */
    public List<Horizontal> search(HorizontalSearch search);

    public void save(Horizontal horizontal, HorizontalFunds funds);

    public List<FundsListsItem> fundsList(long id);

    /**
     * 添加搜索条件
     */
    public List<FundsListsItem> fundsList(long id, String fundsSearch);
}
