package com.sdut.ngxykjc.work.paper.dao.Impl;

import com.sdut.ngxykjc.base.dao.impl.BaseDaoImpl;
import com.sdut.ngxykjc.work.paper.bean.Paper;
import com.sdut.ngxykjc.work.paper.bean.PaperSearch;
import com.sdut.ngxykjc.work.paper.dao.PaperDao;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gcl on 2016/11/21.
 */
@Repository("paperDao")
public class PaperDaoImpl extends BaseDaoImpl implements PaperDao {
    @Override
    public List<Paper> selectPage(Class glazz, Object search, int first, int count) {
        return (List<Paper>) getHibernateTemplate().executeWithNativeSession(session -> {
            PaperSearch ss = (PaperSearch) search;
            Criteria criteria = session.createCriteria(glazz);
            if (StringUtils.hasLength(ss.getName())) {
                criteria.add(Restrictions.like("paperName", ss.getName()));
            }
            if (StringUtils.hasLength(ss.getAuthor())) {
                criteria.add(Restrictions.like("author1Name", ss.getName()));
            }
            if (StringUtils.hasLength(ss.getState()) && !"所有".equals(ss.getState())) {
                criteria.add(Restrictions.eq("examineResult", ss.getState()));
            }
            if (StringUtils.hasLength(ss.getDate())) {
                criteria.add(Restrictions.sqlRestriction("LEFT({alias}.publishDate, 7)='" + ss.getDate() + "'"));
            }
            return criteria.setFirstResult(first).setMaxResults(count).list();
        });
    }
}
