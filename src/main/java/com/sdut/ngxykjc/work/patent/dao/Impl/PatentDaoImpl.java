package com.sdut.ngxykjc.work.patent.dao.Impl;

import com.sdut.ngxykjc.base.dao.impl.BaseDaoImpl;
import com.sdut.ngxykjc.work.paper.bean.PaperSearch;
import com.sdut.ngxykjc.work.patent.bean.Patent;
import com.sdut.ngxykjc.work.patent.bean.PatentSearch;
import com.sdut.ngxykjc.work.patent.dao.PatentDao;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gcl on 2016/11/21.
 */
@Repository("patentDao")
public class PatentDaoImpl extends BaseDaoImpl implements PatentDao {
    @Override
    public List<Patent> selectPage(Class glazz, Object search, int first, int count) {
        return (List<Patent>) getHibernateTemplate().executeWithNativeSession(session -> {
            PatentSearch ss = (PatentSearch) search;
            Criteria criteria = session.createCriteria(glazz);
            if (StringUtils.hasLength(ss.getPatentName())) {
                criteria.add(Restrictions.like("patentName", ss.getPatentName()));
            }
            if (StringUtils.hasLength(ss.getPatentHolder())) {
                criteria.add(Restrictions.like("patentHolder", ss.getPatentHolder()));
            }
            if (StringUtils.hasLength(ss.getState()) && !"所有".equals(ss.getState())) {
                criteria.add(Restrictions.eq("examineResult", ss.getState()));
            }
            if (StringUtils.hasLength(ss.getYear())) {
                // 津贴发放年度
                criteria.add(Restrictions.like("grantYear", ss.getYear()));
            }
            if (StringUtils.hasLength(ss.getPatentNumber())) {
                criteria.add(Restrictions.like("patentNumber", ss.getPatentNumber()));
            }
            return criteria.setFirstResult(first).setMaxResults(count).list();
        });
    }

    @Override
    public List<Patent> patentSearch(Class clazz, Object search) {
        PatentSearch ps = (PatentSearch) search;
        return getHibernateTemplate().executeWithNativeSession(session -> {
           Criteria criteria = session.createCriteria(clazz);
           if(StringUtils.hasLength(ps.getPatentName())){
               criteria.add(Restrictions.like("patentName",ps.getPatentName()));
           }
           if(StringUtils.hasLength(ps.getPatentId())){
               criteria.add(Restrictions.like("patentId",ps.getPatentId()));
           }
           if(StringUtils.hasLength(ps.getPatentType())){
               criteria.add(Restrictions.like("patentType",ps.getPatentType()));
           }
           if(StringUtils.hasLength(ps.getYear())){
               criteria.add(Restrictions.like("years",ps.getYear()));
           }
           return criteria.list();
        });
    }
}
