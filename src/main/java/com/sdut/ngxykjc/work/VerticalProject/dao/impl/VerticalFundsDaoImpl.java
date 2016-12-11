package com.sdut.ngxykjc.work.VerticalProject.dao.impl;

import com.sdut.ngxykjc.base.dao.impl.BaseDaoImpl;
import com.sdut.ngxykjc.work.HorizontalProject.bean.FundsListsItem;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalFunds;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalProject;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalSearch;
import com.sdut.ngxykjc.work.VerticalProject.dao.VerticalFundsDao;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by gcl on 2016/11/26.
 */
@Repository("verticalFundsDao")
@Transactional
public class VerticalFundsDaoImpl extends BaseDaoImpl implements VerticalFundsDao {

    @Override
    public List<VerticalProject> search(VerticalSearch search) {
        return null;
    }

    @Override
    public void save(VerticalProject verticalProject, VerticalFunds funds) {
        funds.setVerticalName(verticalProject.getVerticalName());
        funds.setVerticalId(verticalProject.getId());
        funds.setRegisterPeoName(verticalProject.getRegistrationName());
        funds.setRegisterPeoId(verticalProject.getRegistrationPeoId());
        if (funds.getExamineResult() == null) funds.setExamineResult("待审核");
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
            sql = "select * from verticalFunds where verticalId=" + id;
        } else {
            sql = "select * from verticalFunds where verticalId=" + id + " and examineResult='" + fundsSearch + "'";
        }
        List<VerticalFunds> list = (List<VerticalFunds>) getBySql(VerticalFunds.class, sql);
        for (int i = 0; i < list.size(); i++) {
            VerticalFunds h = list.get(i);
            listsItems.add(new FundsListsItem(h.getId(), "第" + (i + 1) + "次到款", h.getExamineResult()));
        }
        return listsItems;
    }

    @Override
    public List<VerticalFunds> searchFundsSearch(Class clazz, Object search) {
//        VerticalFunds horizontalFundsSearch = (HorizontalFundsSearch) search;
//        return (List<VerticalFunds>) getHibernateTemplate().executeWithNativeSession(session -> {
//            Criteria criteria = session.createCriteria(clazz);
//
//            if (StringUtils.hasLength(horizontalFundsSearch.getUnitName())) {
//                criteria.add(Restrictions.like("unitName", horizontalFundsSearch.getUnitName()));
//            }
//            return criteria.list();
//
//        });
        return new ArrayList<>();
    }


}
