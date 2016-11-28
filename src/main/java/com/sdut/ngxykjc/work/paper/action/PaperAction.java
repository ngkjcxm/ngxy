package com.sdut.ngxykjc.work.paper.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.work.paper.bean.Paper;
import com.sdut.ngxykjc.work.paper.bean.PaperSearch;
import com.sdut.ngxykjc.work.paper.dao.PaperDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;

import java.util.List;

/**
 * Created by gcl on 2016/11/21.
 * <p>
 * PaperAction
 */
@Controller
@Scope("session")
public class PaperAction extends BaseAction {

    private Paper paper;
    private long id;
    private PaperSearch search;
    private List<Paper> pageList;

    @Autowired
    private PaperDao paperDao;

    /**
     * 详细信息
     */
    public String detail() {
        paper = (Paper) paperDao.getById(Paper.class, id);
        return SUCCESS;
    }

    /**
     * 更新或保存
     */
    public String save() {
        paperDao.saveOrUpdate(paper);
        paper = null;
        return SUCCESS;
    }

    /**
     * 删除
     */
    public String delete() {
        paperDao.delete(paper);
        paper = null;
        return SUCCESS;
    }


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
        List<Paper> lists = paperDao.selectPage(Paper.class, search, first, pageCount);
        pageList = lists;
        //System.out.println(pageList);
        return SUCCESS;
    }

    public void next() {
        curpage++;
        int first = curpage + (curpage - 1) * pageCount;
        List<Paper> lists = paperDao.selectPage(Paper.class, search, first, pageCount);
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
        List<Paper> lists = paperDao.selectPage(Paper.class, search, first, pageCount);
        if (!CollectionUtils.isEmpty(lists)) {
            pageList = lists;
        }

        json(pageList);

    }


    /********** Setter&Getter **************/
    public Paper getPaper() {
        return paper;
    }

    public void setPaper(Paper paper) {
        this.paper = paper;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public PaperSearch getSearch() {
        return search;
    }

    public void setSearch(PaperSearch search) {
        this.search = search;
    }

    public List<Paper> getPageList() {
        return pageList;
    }

    public void setPageList(List<Paper> pageList) {
        this.pageList = pageList;
    }
}
