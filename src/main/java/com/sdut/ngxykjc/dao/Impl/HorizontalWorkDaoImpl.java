package com.sdut.ngxykjc.dao.Impl;

import com.sdut.ngxykjc.bean.HorizontalWork;
import com.sdut.ngxykjc.dao.HorizontalWorkDao;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 郭昌仑 on 2016/10/27.
 */

@Repository("horizontalWorkDao")
public class HorizontalWorkDaoImpl extends BaseDaoImpl implements HorizontalWorkDao {
    @Override
    public void deleteById(final int id) {
        HorizontalWork horizontalWork = new HorizontalWork();
        horizontalWork.setId(id);
        getHibernateTemplate().delete(horizontalWork);
    }

    @Override
    public List<HorizontalWork> getListByProjectId(int projectId) {
        return (List<HorizontalWork>) getByHql("from HorizontalWork h where h.projectId = " + projectId);
    }
}
