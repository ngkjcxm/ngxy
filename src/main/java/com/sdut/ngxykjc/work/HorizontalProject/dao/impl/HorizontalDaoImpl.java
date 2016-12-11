package com.sdut.ngxykjc.work.HorizontalProject.dao.impl;

import com.sdut.ngxykjc.base.dao.impl.BaseDaoImpl;
import com.sdut.ngxykjc.work.HorizontalProject.bean.Horizontal;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalSearch;
import com.sdut.ngxykjc.work.HorizontalProject.dao.HorizontalDao;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gcl on 2016/11/12.
 */
@Repository("horizontalDao")
public class HorizontalDaoImpl extends BaseDaoImpl implements HorizontalDao {

    /**
     * 搜索
     *
     * @param search 搜索条件
     * @return Horizontal
     */
    @Override
    public List<Horizontal> search(HorizontalSearch search) {

        if (search == null) {
            return getAll();
        }

        String where = " where";
        int flag = 0;
        if (StringUtils.hasLength(search.getProjectName())) {
            flag = 1;
            where += " projectName like '%" + search.getProjectName() + "%'";
        }
        if (StringUtils.hasLength(search.getEndProjectResult()) & !"所有".equals(search.getEndProjectResult())) {
            if (flag == 1) {
                where += " AND ";
            } else {
                flag = 1;
            }
            where += " endProjectResult like '%" + search.getEndProjectResult() + "%'";
        }
        if (search.getEndProjectDate() != null) {
            if (flag == 1) {
                where += " AND ";
            } else {
                flag = 1;
            }
            String date = "'" + DateFormatUtils.format(search.getEndProjectDate(), "yyyy-MM-dd") + "'";
            where += " EndProjectDate =" + date;
        }
        if (search.getSigningDate() != null) {
            if (flag == 1) {
                where += " AND ";
            } else {
                flag = 1;
            }
            String date = "'" + DateFormatUtils.format(search.getSigningDate(), "yyyy-MM-dd") + "'";
            where += " SigningDate =" + date;
        }
        // 如果有查询条件
        if (flag != 0) {
            return (List<Horizontal>) getBySql(Horizontal.class, "select * from horizontal" + where);
        } else {
            // 如果没有查询条件，返回所有
            return getAll();
        }
    }

    private List<Horizontal> getAll() {
        return (List<Horizontal>) getBySql(Horizontal.class, "SELECT * FROM horizontal");
    }
}
