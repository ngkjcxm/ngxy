package com.sdut.ngxykjc.work.softwareWork.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.work.scientificResearch.bean.ResearchSearch;
import com.sdut.ngxykjc.work.scientificResearch.bean.ScientificResearch;
import com.sdut.ngxykjc.work.scientificResearch.dao.ResearchDao;
import com.sdut.ngxykjc.work.softwareWork.bean.SoftwareSearch;
import com.sdut.ngxykjc.work.softwareWork.bean.SoftwareWork;
import com.sdut.ngxykjc.work.softwareWork.dao.SoftwareDao;
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
public class SoftwareAction extends BaseAction {

    private long id;
    private SoftwareSearch search;
    private SoftwareWork software;
    private List<SoftwareWork> pageList;

    @Autowired
    private SoftwareDao softwareDao;

    /**
     * 当前页
     */
    private int curpage = 1;
    /**
     * 一页总条数
     */
    private int pageCount = 5;

    public String search() {
        int first = curpage + (curpage - 1) * pageCount;
        List<SoftwareWork> lists = softwareDao.selectPage(SoftwareWork.class, search, first, pageCount);
        pageList = lists;
        return SUCCESS;
    }

    public void next() {
        curpage++;
        int first = curpage + (curpage - 1) * pageCount;
        List<SoftwareWork> lists = softwareDao.selectPage(SoftwareWork.class, search, first, pageCount);
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
        List<SoftwareWork> lists = softwareDao.selectPage(SoftwareWork.class, search, first, pageCount);
        if (!CollectionUtils.isEmpty(lists)) {
            pageList = lists;
        }

        json(pageList);

    }

    /**
     * 详细信息
     */
    public String detail() {
        software = (SoftwareWork) softwareDao.getById(SoftwareWork.class, id);
        return SUCCESS;
    }

    /**
     * 保存
     */
    public String save() {
        softwareDao.saveOrUpdate(software);
        software = null;
        return SUCCESS;
    }

    /**
     * 删除
     */
    public String delete() {
        softwareDao.delete(software);
        software = null;
        return SUCCESS;
    }

    /*          getter&setter            */
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public SoftwareSearch getSearch() {
        return search;
    }

    public void setSearch(SoftwareSearch search) {
        this.search = search;
    }

    public SoftwareWork getSoftware() {
        return software;
    }

    public void setSoftware(SoftwareWork software) {
        this.software = software;
    }

    public List<SoftwareWork> getPageList() {
        return pageList;
    }

    public void setPageList(List<SoftwareWork> pageList) {
        this.pageList = pageList;
    }
}
