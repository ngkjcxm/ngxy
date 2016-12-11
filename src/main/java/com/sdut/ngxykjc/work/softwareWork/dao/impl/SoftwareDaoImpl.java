package com.sdut.ngxykjc.work.softwareWork.dao.impl;

import com.sdut.ngxykjc.base.dao.impl.BaseDaoImpl;
import com.sdut.ngxykjc.work.softwareWork.bean.SoftwareSearch;
import com.sdut.ngxykjc.work.softwareWork.bean.SoftwareWork;
import com.sdut.ngxykjc.work.softwareWork.dao.SoftwareDao;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gcl on 2016/11/19.
 * SoftwareDaoImpl
 */
@Repository("softwareDao")
public class SoftwareDaoImpl extends BaseDaoImpl implements SoftwareDao {
    @Override
    public List<SoftwareWork> selectPage(Class clazz, Object search, int first, int count) {
        SoftwareSearch ss = (SoftwareSearch) search;
        return (List<SoftwareWork>) getHibernateTemplate().executeWithNativeSession(session -> {
            Criteria criteria = session.createCriteria(clazz);
            if (StringUtils.hasLength(ss.getBelong())) {
                criteria.add(Restrictions.like("academicUnit1Name", ss.getBelong()));
            }
            if (StringUtils.hasLength(ss.getName())) {
                criteria.add(Restrictions.like("author1Name", ss.getName()));
            }
            if (StringUtils.hasLength(ss.getState()) && !"所有".equals(ss.getState())) {
                criteria.add(Restrictions.eq("examineStatus", ss.getState()));
            }
            if (StringUtils.hasLength(ss.getDate())) {
                criteria.add(Restrictions.sqlRestriction("LEFT({alias}.issueDate, 7)='" + ss.getDate() + "'"));
            }
            return criteria.setFirstResult(first).setMaxResults(count).list();
        });
    }
}
