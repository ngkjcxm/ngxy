package com.sdut.ngxykjc.work.scientificResearch.dao.impl;

import com.sdut.ngxykjc.base.dao.impl.BaseDaoImpl;
import com.sdut.ngxykjc.work.scientificResearch.bean.ResearchSearch;
import com.sdut.ngxykjc.work.scientificResearch.bean.ScientificResearchReward;
import com.sdut.ngxykjc.work.scientificResearch.dao.ScientificResearchDao;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by sunming on 2016/12/6.
 */
@Repository("scientificResearchDao")
public class ScientificResearchDaoImpl extends BaseDaoImpl implements ScientificResearchDao {

    public List<ScientificResearchReward> selectPage1(Class glazz, Object search, int first, int count) {
        ResearchSearch ss = (ResearchSearch) search;
        return (List<ScientificResearchReward>) getHibernateTemplate().executeWithNativeSession(session -> {
            Criteria criteria = session.createCriteria(glazz);
         /*   if (StringUtils.hasLength(ss.getAwardYear())) {
                criteria.add(Restrictions.like("awardYear", ss.getAwardYear()));
            }
            if (StringUtils.hasLength(ss.getResearchName())) {
                criteria.add(Restrictions.like("researchName", ss.getResearchName()));
            }
            if (StringUtils.hasLength(ss.getState()) && !"所有".equals(ss.getState())) {
                criteria.add(Restrictions.eq("examineResult", ss.getState()));
            }*/
            if (StringUtils.hasLength(ss.getUnitName())) {
                criteria.add(Restrictions.like("unitName", ss.getUnitName()));
            }
            return criteria.list();
        });


    }

    @Override
    public List<ScientificResearchReward> searchScientific(Class clazz, Object search) {
        ResearchSearch ss = (ResearchSearch) search;
        return getHibernateTemplate().executeWithNativeSession(session -> {
            Criteria criteria = session.createCriteria(clazz);
            if (StringUtils.hasLength(ss.getUnitName())) {
                criteria.add(Restrictions.like("unitName", ss.getUnitName()));
            }
            return criteria.list();
        });
    }
}
