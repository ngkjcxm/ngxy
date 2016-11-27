package com.sdut.ngxykjc.work.HorizontalProject.dao.impl;

import com.sdut.ngxykjc.base.dao.BaseDao;
import com.sdut.ngxykjc.base.dao.impl.BaseDaoImpl;
import com.sdut.ngxykjc.work.HorizontalProject.bean.FundsListsItem;
import com.sdut.ngxykjc.work.HorizontalProject.bean.Horizontal;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalFunds;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalSearch;
import com.sdut.ngxykjc.work.HorizontalProject.dao.HorizontalFundsDao;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by gcl on 2016/11/26.
 */
@Repository("horizontalFundsDao")
@Transactional
public class HorizontalFundsDaoImpl extends BaseDaoImpl implements HorizontalFundsDao {

    @Override
    public List<Horizontal> search(HorizontalSearch search) {
        return null;
    }

    @Override
    public void save(Horizontal horizontal, HorizontalFunds funds) {
        funds.setHorizontalName(horizontal.getProjectName());
        funds.setHorizontalId(horizontal.getId());
        funds.setRegisterPeoName(horizontal.getRegistrationPeoName());
        funds.setRegisterPeoId(horizontal.getRegistrationPeoId());
        saveOrUpdate(funds);
    }

    @Override
    public List<FundsListsItem> fundsList(long id) {
        return fundsList(id, "所有");
    }

    @Override
    public List<FundsListsItem> fundsList(long id, String fundsSearch) {
        List<FundsListsItem> listsItems = new ArrayList<>();
        String sql;
        if ("所有".equals(fundsSearch)) {
            sql = "select * from horizontalFunds where horizontalId=" + id;
        } else {
            sql = "select * from horizontalFunds where horizontalId=" + id + " and examineResult='" + fundsSearch + "'";
        }
        List<HorizontalFunds> list = (List<HorizontalFunds>) getBySql(HorizontalFunds.class, sql);
        for (int i = 0; i < list.size(); i++) {
            HorizontalFunds h = list.get(i);
            listsItems.add(new FundsListsItem(h.getId(), "第" + (i + 1) + "次到款", h.getExamineResult()));
        }
        return listsItems;
    }
}
