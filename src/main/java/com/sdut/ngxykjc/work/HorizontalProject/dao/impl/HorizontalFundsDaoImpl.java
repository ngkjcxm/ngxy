package com.sdut.ngxykjc.work.HorizontalProject.dao.impl;

import com.sdut.ngxykjc.base.dao.BaseDao;
import com.sdut.ngxykjc.base.dao.impl.BaseDaoImpl;
import com.sdut.ngxykjc.work.HorizontalProject.bean.*;
import com.sdut.ngxykjc.work.HorizontalProject.dao.HorizontalFundsDao;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
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

    @Override
    public List<HorizontalFunds> searchFundsSearch(Class clazz, Object search) {
        HorizontalFundsSearch horizontalFundsSearch = (HorizontalFundsSearch) search;
        return (List<HorizontalFunds>)getHibernateTemplate().executeWithNativeSession( session -> {
            Criteria criteria = session.createCriteria(clazz);

            if(StringUtils.hasLength(horizontalFundsSearch.getUnitName())){
                criteria.add(Restrictions.like("unitName",horizontalFundsSearch.getUnitName()));
            }
            return criteria.list();

        });
    }


}
