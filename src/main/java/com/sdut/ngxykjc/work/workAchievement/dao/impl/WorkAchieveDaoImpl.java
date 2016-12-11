package com.sdut.ngxykjc.work.workAchievement.dao.impl;

import com.sdut.ngxykjc.base.dao.impl.BaseDaoImpl;
import com.sdut.ngxykjc.work.workAchievement.bean.WorkAchieve;
import com.sdut.ngxykjc.work.workAchievement.bean.WorkArchieveSearch;
import com.sdut.ngxykjc.work.workAchievement.dao.WorkAchieveDao;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gcl on 2016/11/13.
 * <p>
 * WorkAchieveDaoImpl
 */
@Repository("workAchieveDao")
public class WorkAchieveDaoImpl extends BaseDaoImpl implements WorkAchieveDao {
    /**
     * 搜索
     *
     * @param search 搜索条件
     * @return Horizontal
     */
    @Override
    public List<WorkAchieve> search(WorkArchieveSearch search) {

        if (search == null) {
            return getAll();
        }

        String where = " where";
        int flag = 0;
        if (StringUtils.hasLength(search.getAcademicUnit1Name())) {
            flag = 1;
            where += " academicUnit1Name like '%" + search.getAcademicUnit1Name() + "%'";
        }
        if (StringUtils.hasLength(search.getWorkName())) {
            if (flag == 1) {
                where += " AND ";
            } else {
                flag = 1;
            }
            where += " WorkName like '%" + search.getWorkName() + "%'";
        }
        if (StringUtils.hasLength(search.getState()) & !"所有".equals(search.getState())) {
            if (flag == 1) {
                where += " AND ";
            } else {
                flag = 1;
            }
            switch (search.getState()) {
                case "已通过":
                    where += " examineResult='已通过'";
                    break;
                case "待审核":
                    where += " examineResult='待审核'";
                    break;
                case "未通过":
                    where += " examineResult='未通过'";
                    break;
            }
        }
        if (search.getDate() != null) {
            if (flag == 1) {
                where += " AND ";
            } else {
                flag = 1;
            }
            String date = "'" + DateFormatUtils.format(search.getDate(), "yyyy-MM") + "'";
            where += " publishDate =" + date;
        }
        // 如果有查询条件
        if (flag != 0) {
            return (List<WorkAchieve>) getBySql(WorkAchieve.class, "select * from workachieve" + where);
        } else {
            // 如果没有查询条件，返回所有
            return getAll();
        }
    }

    @Override
    public List<WorkAchieve> searchWork(Class clazz, Object search) {
        WorkArchieveSearch ws = (WorkArchieveSearch) search;
        return getHibernateTemplate().executeWithNativeSession(session -> {
            Criteria criteria = session.createCriteria(clazz);
            if (StringUtils.hasLength(ws.getWorkName())) {
                criteria.add(Restrictions.like("workName", ws.getWorkName()));
            }
            return criteria.list();
        });
    }

    private List<WorkAchieve> getAll() {
        return (List<WorkAchieve>) getBySql(WorkAchieve.class, "SELECT * FROM workachieve");
    }

    @Override
    public List<WorkAchieve> selectPage(Class glazz, Object s, int first, int count) {
        WorkArchieveSearch search = (WorkArchieveSearch) s;
        return getHibernateTemplate().executeWithNativeSession(session -> {
            Criteria criteria = session.createCriteria(glazz);
            if (StringUtils.hasLength(search.getWorkName())) {
                criteria.add(Restrictions.like("workName", search.getWorkName()));
            }
            if (StringUtils.hasLength(search.getState()) && !"所有".equals(search.getState())) {
                criteria.add(Restrictions.like("examineResult", search.getState()));
            }
            return criteria.setFirstResult(first).setMaxResults(count).list();
        });
    }
}