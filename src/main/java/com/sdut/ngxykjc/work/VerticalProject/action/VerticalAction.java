package com.sdut.ngxykjc.work.VerticalProject.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalProject;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalSearch;
import com.sdut.ngxykjc.work.VerticalProject.dao.VerticalDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by gcl on 2016/11/13.
 * <p>
 * VerticalAction
 */
@Controller
@Scope("session")
public class VerticalAction extends BaseAction {

    @Autowired
    private VerticalDao verticalDao;

    private List<VerticalProject> list;
    private List<VerticalProject> pageList = new ArrayList<>(5);
    private VerticalSearch search;
    private VerticalProject vertical;
    private long id;

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
     * 搜索
     */
    public String search() {
        list = verticalDao.search(search);
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
     * 详细信息
     */
    public String detail() {
        vertical = (VerticalProject) verticalDao.getById(VerticalProject.class, id);
        return SUCCESS;
    }

    /**
     * 保存
     */
    public String save() {
        verticalDao.saveOrUpdate(vertical);
        vertical = null;
        return SUCCESS;
    }

    /*          getter&setter            */
    public VerticalProject getVertical() {
        return vertical;
    }

    public void setVertical(VerticalProject vertical) {
        this.vertical = vertical;
    }

    public VerticalSearch getSearch() {
        return search;
    }

    public void setSearch(VerticalSearch search) {
        this.search = search;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public List<VerticalProject> getList() {
        return list;
    }

    public void setList(List<VerticalProject> list) {
        this.list = list;
    }

    public List<VerticalProject> getPageList() {
        return pageList;
    }

    public void setPageList(List<VerticalProject> pageList) {
        this.pageList = pageList;
    }
}
