package com.sdut.ngxykjc.action.horizontal;

import com.sdut.ngxykjc.action.BaseAction;
import com.sdut.ngxykjc.bean.HorizontalOutlay;
import com.sdut.ngxykjc.bean.HorizontalProject;
import com.sdut.ngxykjc.bean.HorizontalWork;
import com.sdut.ngxykjc.dao.HorizontalDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

/**
 * Created by 郭昌仑 on 2016/10/27.
 * <p>
 * 处理和纵向课题有关的操作
 */

@Controller
public class HorizontalAction extends BaseAction {

    @Autowired
    private HorizontalDao horizontalDao;

    private HorizontalProject project;

    private HorizontalWork work;

    private HorizontalOutlay outlay;

    /**
     * 纵向课题列表
     */
    public String projectList() {
        getRequest().setAttribute("list", horizontalDao.getAll());
        return view("horizontalProjectList");
    }

    /**
     * 删除一条课题经费记录
     */
    public String deleteOutlay() {
        String id = getRequest().getParameter("id");
        return view("");
    }

    /**
     * 删除一条工作分配记录
     */
    public String deleteWork() {
        String id = getRequest().getParameter("id");
        return view("");
    }
}
