package com.sdut.ngxykjc.dao.Impl;

import com.sdut.ngxykjc.bean.HorizontalWork;
import com.sdut.ngxykjc.dao.HorizontalOutlayDao;
import org.springframework.stereotype.Repository;

/**
 * Created by 郭昌仑 on 2016/10/27.
 */

@Repository("horizontalWorkDao")
public class HorizontalWorkDaoImpl extends BaseDaoImpl implements HorizontalOutlayDao {
    @Override
    public void deleteById(final int id) {
        HorizontalWork horizontalWork = new HorizontalWork();
        horizontalWork.setId(id);
        getHibernateTemplate().delete(horizontalWork);
    }
}
