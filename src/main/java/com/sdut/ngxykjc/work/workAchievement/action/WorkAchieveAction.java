package com.sdut.ngxykjc.work.workAchievement.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.work.HorizontalProject.bean.Horizontal;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalSearch;
import com.sdut.ngxykjc.work.workAchievement.bean.WorkAchieve;
import com.sdut.ngxykjc.work.workAchievement.bean.WorkArchieveSearch;
import com.sdut.ngxykjc.work.workAchievement.dao.WorkAchieveDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

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

    private WorkAchieve workAchieve;

    private long id;

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
    private int curPage = 1;

    /**
     * 总页数
     */
    private int pageCount;

    /**
     * 一页行数
     */
    private int perPage = 5;

    /**
     * 搜索条件
     */
    private WorkArchieveSearch search;

    /**
     * 搜索
     */
    public String search() {
        list = workAchieveDao.search(search);
        pageCount = (int) Math.ceil(list.size() / perPage);
        if (list.size() > perPage) {
            pageList = list.subList(0, perPage);
        } else {
            pageList = list;
        }
        return SUCCESS;
    }

    /**
     * 上一页
     */
    public void pre() {
        if (curPage == 1) {
            json("-1");
            return;
        }
        curPage--;
        page();
    }

    /**
     * 下一页
     */
    public void next() {
        if (curPage >= pageCount) {
            json("-1");
            return;
        }
        curPage++;
        page();
    }

    /**
     * 分页
     */
    public void page() {
        int begin = (curPage - 1) * perPage;
        int end = curPage * perPage;
        pageList = list.subList(begin, end);
        json(pageList);
    }

    /**
     * 添加或修改
     */
    public String save() {
        workAchieveDao.saveOrUpdate(workAchieve);
        workAchieve = null;
        return SUCCESS;
    }

    /**
     * 删除
     */
    public String delete() {
        workAchieveDao.delete(workAchieve);
        return SUCCESS;
    }

    /**
     * 详细信息
     */
    public String detail() {
        workAchieve = (WorkAchieve) workAchieveDao.getById(WorkAchieve.class, id);
        return SUCCESS;
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
}
