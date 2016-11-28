package com.sdut.ngxykjc.work.scientificResearch.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalProject;
import com.sdut.ngxykjc.work.scientificResearch.bean.ResearchSearch;
import com.sdut.ngxykjc.work.scientificResearch.bean.ScientificResearch;
import com.sdut.ngxykjc.work.scientificResearch.dao.ResearchDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;

import java.util.List;

/**
 * Created by gcl on 2016/11/19.
 */
@Controller
@Scope("session")
public class ResearchAction extends BaseAction {

    private long id;
    private ResearchSearch search;
    private ScientificResearch research;
    private List<ScientificResearch> pageList;

    @Autowired
    private ResearchDao researchDao;

    /**
     * 当前页
     */
    private int curpage = 1;
    /**
     * 一页总条数
     */
    private int pageCount = 5;

    public String search() {
        curpage = 1;
        int first = curpage + (curpage - 1) * pageCount;
        List<ScientificResearch> lists = researchDao.selectPage(ScientificResearch.class, search, first, pageCount);
        pageList = lists;
        System.out.println(pageList);
        System.out.println(search);
        return SUCCESS;
    }

    public void next() {
        curpage++;
        int first = curpage + (curpage - 1) * pageCount;
        List<ScientificResearch> lists = researchDao.selectPage(ScientificResearch.class, search, first, pageCount);
        if (!CollectionUtils.isEmpty(lists)) {
            pageList = lists;
        } else {
            curpage--;
        }
        json(pageList);
    }

    public void pre() {
        if ((curpage - 1) <= 0) {
            json(pageList);
            return;
        }

        curpage--;
        int first = curpage + (curpage - 1) * pageCount;
        List<ScientificResearch> lists = researchDao.selectPage(ScientificResearch.class, search, first, pageCount);
        if (!CollectionUtils.isEmpty(lists)) {
            pageList = lists;
        }

        json(pageList);

    }

    /**
     * 详细信息
     */
    public String detail() {
        research = (ScientificResearch) researchDao.getById(ScientificResearch.class, id);
        return SUCCESS;
    }

    /**
     * 保存
     */
    public String save() {
        researchDao.saveOrUpdate(research);
        research = null;
        return SUCCESS;
    }

    /**
     * 删除
     */
    public String delete() {
        researchDao.delete(research);
        research = null;
        return SUCCESS;
    }

    /*          getter&setter            */
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public ResearchSearch getSearch() {
        return search;
    }

    public void setSearch(ResearchSearch search) {
        this.search = search;
    }

    public ScientificResearch getResearch() {
        return research;
    }

    public void setResearch(ScientificResearch research) {
        this.research = research;
    }

    public List<ScientificResearch> getPageList() {
        return pageList;
    }

    public void setPageList(List<ScientificResearch> pageList) {
        this.pageList = pageList;
    }
}
