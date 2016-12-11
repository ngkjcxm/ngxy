package com.sdut.ngxykjc.work.scientificResearch.dao.impl;

import com.sdut.ngxykjc.base.dao.impl.BaseDaoImpl;
import com.sdut.ngxykjc.work.scientificResearch.bean.ResearchSearch;
import com.sdut.ngxykjc.work.scientificResearch.bean.ScientificResearch;
import com.sdut.ngxykjc.work.scientificResearch.dao.ResearchDao;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Restrictions;
import org.hibernate.type.Type;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gcl on 2016/11/19.
 * ReearchDaoImpl
 */
@Repository("researchDao")
public class ReearchDaoImpl extends BaseDaoImpl implements ResearchDao {
    @Override
    public List<ScientificResearch> selectPage(Class clazz, Object search, int first, int count) {
        ResearchSearch ss = (ResearchSearch) search;
        return (List<ScientificResearch>) getHibernateTemplate().executeWithNativeSession(session -> {
            Criteria criteria = session.createCriteria(clazz);
            if (StringUtils.hasLength(ss.getBelong())) {
                criteria.add(Restrictions.like("unitName", ss.getBelong()));
            }
            if (StringUtils.hasLength(ss.getResearchName())) {
                criteria.add(Restrictions.like("researchName", ss.getResearchName()));
            }
            if (StringUtils.hasLength(ss.getState()) && !"所有".equals(ss.getState())) {
                criteria.add(Restrictions.eq("examineResult", ss.getState()));
            }
            if (StringUtils.hasLength(ss.getDate())) {
                criteria.add(Restrictions.sqlRestriction("LEFT({alias}.registerDate, 7)='" + ss.getDate() + "'"));
            }
            return criteria.setFirstResult(first).setMaxResults(count).list();
        });
    }
}
