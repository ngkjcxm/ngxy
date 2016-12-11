package com.sdut.ngxykjc.work.workAchievement.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.base.util.UserPermissions;
import com.sdut.ngxykjc.work.workAchievement.bean.WorkAchieve;
import com.sdut.ngxykjc.work.workAchievement.bean.WorkArchieveSearch;
import com.sdut.ngxykjc.work.workAchievement.dao.WorkAchieveDao;
import com.sdut.ngxykjc.work.workAchievement.service.WorkAchieveSearchService;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by gcl on 2016/11/17.
 */

@Controller
@Scope("session")
public class WorkAchieveAction extends BaseAction {

    @Autowired
    private WorkAchieveDao workAchieveDao;

    @Autowired
    private WorkAchieveSearchService workAchieveSearchService;

    private WorkAchieve workAchieve;


    private long id;


    public String listQueryUI() {
        return "listquery";
    }


    /**
     * 搜索到的所有结果
     */
    private List<WorkAchieve> list;

    /**
     * 需要显示的结果
     */
    private List<WorkAchieve> pageList = new ArrayList<>();

    /**
     * 当前页:从1开始
     */
    private int curpage = 0;

    /**
     * 总页数
     */
    private int pageCount = 5;

    /**
     * 搜索条件
     */
    private WorkArchieveSearch search;

    /**
     * 搜索
     */
    @RequiresAuthentication
    public String search() {
        int first = 0;
        curpage = 0;
        List<WorkAchieve> lists = workAchieveDao.selectPage(WorkAchieve.class, search, first, pageCount);
        pageList = lists;
        return SUCCESS;
    }

    public String msearch() {
        search();
        return SUCCESS;
    }

    public String usearch() {
        search();
        return "user";
    }

    @RequiresAuthentication
    public void next() {
        curpage++;
        int first = curpage * pageCount;
        List<WorkAchieve> lists = workAchieveDao.selectPage(WorkAchieve.class, search, first, pageCount);
        if (!CollectionUtils.isEmpty(lists)) {
            pageList = lists;
        } else {
            curpage--;
        }
        json(pageList);
    }

    @RequiresAuthentication
    public void pre() {
        if (curpage == 0) {
            json(pageList);
            return;
        }

        curpage--;
        int first = curpage * pageCount;
        List<WorkAchieve> lists = workAchieveDao.selectPage(WorkAchieve.class, search, first, pageCount);
        if (!CollectionUtils.isEmpty(lists)) {
            pageList = lists;
        }
        json(pageList);
    }

    /**
     * 添加或修改
     */
    @RequiresAuthentication
    public String save() {
        workAchieveDao.saveOrUpdate(workAchieve);
        workAchieve = null;
        return "user";
    }

    @RequiresPermissions(UserPermissions.WORK_ACHIEVE)
    public String check() {
        workAchieveDao.saveOrUpdate(workAchieve);
        workAchieve = null;
        return SUCCESS;
    }

    /**
     * 删除
     */
    @RequiresAuthentication
    public String delete() {
        workAchieveDao.delete(workAchieve);
        return SUCCESS;
    }

    @RequiresAuthentication
    public String udelete() {
        workAchieveDao.delete(workAchieve);
        return "user";
    }

    /**
     * 详细信息
     */
    @RequiresAuthentication
    public String detail() {
        workAchieve = (WorkAchieve) workAchieveDao.getById(WorkAchieve.class, id);
        return SUCCESS;
    }

    @RequiresAuthentication
    public String udetail() {
        workAchieve = (WorkAchieve) workAchieveDao.getById(WorkAchieve.class, id);
        return "user";
    }

    /**
     * 显示页面
     */
    @RequiresAuthentication
    public String listUI() {
        return SUCCESS;
    }

    @RequiresPermissions(UserPermissions.QUERY)
    public void searchWork() {
        List<WorkAchieve> list = workAchieveSearchService.searchWork(WorkAchieve.class, search);
        System.out.println(list);
        json(list);
    }

    /* setter & getter */
    public WorkAchieve getWorkAchieve() {
        return workAchieve;
    }

    public void setWorkAchieve(WorkAchieve workAchieve) {
        this.workAchieve = workAchieve;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public List<WorkAchieve> getPageList() {
        return pageList;
    }

    public void setPageList(List<WorkAchieve> pageList) {
        this.pageList = pageList;
    }

    public WorkArchieveSearch getSearch() {
        return search;
    }

    public void setSearch(WorkArchieveSearch search) {
        this.search = search;
    }

    public WorkAchieveDao getWorkAchieveDao() {
        return workAchieveDao;
    }

    public void setWorkAchieveDao(WorkAchieveDao workAchieveDao) {
        this.workAchieveDao = workAchieveDao;
    }
}
