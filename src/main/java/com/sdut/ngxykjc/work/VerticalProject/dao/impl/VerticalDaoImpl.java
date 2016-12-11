package com.sdut.ngxykjc.work.VerticalProject.dao.impl;

import com.sdut.ngxykjc.base.dao.impl.BaseDaoImpl;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalProject;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalSearch;
import com.sdut.ngxykjc.work.VerticalProject.dao.VerticalDao;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gcl on 2016/11/13.
 */
@Repository("VerticalDao")
public class VerticalDaoImpl extends BaseDaoImpl implements VerticalDao {

    /**
     * 搜索
     *
     * @param search 搜索条件
     * @return Horizontal
     */
    @Override
    public List<VerticalProject> search(VerticalSearch search) {

        if (search == null) {
            return getAll();
        }

        String where = " where";
        int flag = 0;
        if (StringUtils.hasLength(search.getVerticalName())) {
            flag = 1;
            where += " verticalName like '%" + search.getVerticalName() + "%'";
        }
        if (StringUtils.hasLength(search.getState()) & !"所有".equals(search.getState())) {
            if (flag == 1) {
                where += " AND ";
            } else {
                flag = 1;
            }
            switch (search.getState()) {
                case "已审核":
                    where += " examineStatus='通过'";
                    break;
                case "未审请审核":
                    where += " examineStatus='未通过'";
                    break;
                case "等待结题审核":
                    where += " endTopicExamineResult='未通过'";
                    break;
                case "已结题":
                    where += " endTopicExamineResult='通过'";
                    break;
            }
        }
        if (search.getRegistrationDate() != null) {
            if (flag == 1) {
                where += " AND ";
            } else {
                flag = 1;
            }
            String date = "'" + DateFormatUtils.format(search.getRegistrationDate(), "yyyy-MM-dd") + "'";
            where += " registrationDate =" + date;
        }
        if (StringUtils.hasLength(search.getUnitName())) {
            if (flag == 1) {
                where += " AND ";
            } else {
                flag = 1;
            }
            where += " unitName like '%" + search.getUnitName() + "%'";
        }
        if (StringUtils.hasLength(search.getVerticalHeaderName())) {
            if (flag == 1) {
                where += " AND ";
            } else {
                flag = 1;
            }
            where += " verticalHeaderName like '%" + search.getVerticalHeaderName() + "%'";
        }

        // 如果有查询条件
        if (flag != 0) {
            return (List<VerticalProject>) getBySql(VerticalProject.class, "select * from vertial" + where);
        } else {
            // 如果没有查询条件，返回所有
            return getAll();
        }
    }

    @Override
    public List<VerticalProject> searchVertical(Class clazz, Object search) {
        VerticalSearch verticalSearch = (VerticalSearch) search;
        return getHibernateTemplate().executeWithNativeSession(session -> {
            Criteria criteria = session.createCriteria(clazz);
            if (StringUtils.hasLength(verticalSearch.getVerticalName())){
                criteria.add(Restrictions.like("VerticalName", verticalSearch.getVerticalName()));
            }
            return criteria.list();
        });
    }

    private List<VerticalProject> getAll() {
        return (List<VerticalProject>) getBySql(VerticalProject.class, "SELECT * FROM vertial");
    }
}
