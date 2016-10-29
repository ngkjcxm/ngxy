package com.sdut.ngxykjc.dao.Impl;

import com.sdut.ngxykjc.bean.HorizontalProject;
import com.sdut.ngxykjc.dao.HorizontalDao;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by gcl on 2016/10/27.
 */
@Repository("horizontalDao")
public class HorizontalDaoImpl extends BaseDaoImpl implements HorizontalDao {

    @Override
    public List<HorizontalProject> getAll() {
        return (List<HorizontalProject>) getHibernateTemplate().executeWithNativeSession(session -> {
            return session.createQuery("from HorizontalProject").list();
        });
    }

    @Override
    public List<HorizontalProject> getByProjectName(String name) {
        return (List<HorizontalProject>) getHibernateTemplate().executeWithNativeSession(session -> {
            return session.createQuery("from HorizontalProject h where h.projectName = :projectName")
                    .setString("projectName", name)
                    .list();
        });
    }

    @Override
    public List<HorizontalProject> getByProjectPeopleName(String name) {
        return (List<HorizontalProject>) getHibernateTemplate().executeWithNativeSession(session -> {
            return session.createQuery("from HorizontalProject h where h.projectDirector like :name or h.members like :name")
                    .setString("name", '%' + name + '%')
                    .list();
        });
    }

    @Override
    public List<HorizontalProject> getByProjectCheckState(int state) {
        return (List<HorizontalProject>) getBySql(HorizontalProject.class, "select * from HorizontalProject where isPass = " + state);

    }
}
