package com.sdut.ngxykjc.work.VerticalProject.dao;

import com.sdut.ngxykjc.base.dao.BaseDao;
import com.sdut.ngxykjc.work.HorizontalProject.bean.FundsListsItem;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalFunds;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalProject;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalSearch;

import java.util.List;

/**
 * Created by gcl on 2016/11/12.
 */
public interface VerticalFundsDao extends BaseDao {

    /**
     * 搜索
     */
    public List<VerticalProject> search(VerticalSearch search);

    public void save(VerticalProject verticalProject, VerticalFunds funds);

    public List<FundsListsItem> fundsList(long id);

    /**
     * 添加搜索条件
     */
    public List<FundsListsItem> fundsList(long id, String fundsSearch);

    public List<VerticalFunds> searchFundsSearch(Class clazz, Object search);
}
