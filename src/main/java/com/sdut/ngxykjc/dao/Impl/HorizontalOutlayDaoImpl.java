package com.sdut.ngxykjc.dao.Impl;

import com.sdut.ngxykjc.bean.HorizontalOutlay;
import com.sdut.ngxykjc.dao.HorizontalOutlayDao;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by gcl on 2016/10/27.
 */

@Repository("horizontalOutlayDao")
public class HorizontalOutlayDaoImpl extends BaseDaoImpl implements HorizontalOutlayDao {
    @Override
    public void deleteById(final int id) {
        HorizontalOutlay horizontalOutlay = new HorizontalOutlay();
        horizontalOutlay.setId(id);
        getHibernateTemplate().delete(horizontalOutlay);
    }

    @Override
    public List<HorizontalOutlay> getListByProjectId(int projectId) {
        return (List<HorizontalOutlay>) getByHql("from HorizontalOutlay h where h.projectId = " + projectId);
    }
}
