package com.sdut.ngxykjc.work.patent.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.work.paper.bean.Paper;
import com.sdut.ngxykjc.work.patent.bean.Patent;
import com.sdut.ngxykjc.work.patent.bean.PatentSearch;
import com.sdut.ngxykjc.work.patent.dao.PatentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;

import java.util.List;

/**
 * Created by gcl on 2016/11/27.
 */
@Controller
@Scope("session")
public class PatentAction extends BaseAction {
    private Patent patent;
    private long id;
    private PatentSearch search;
    private List<Patent> pageList;

    @Autowired
    private PatentDao patentDao;
    public String listQueryUI(){
        return "listquery";
    }


    /**
     * 详细信息
     */
    public String detail() {
        patent = (Patent) patentDao.getById(Patent.class, id);
        return SUCCESS;
    }

    /**
     * 更新或保存
     */
    public String save() {
        patentDao.saveOrUpdate(patent);
        patent = null;
        return SUCCESS;
    }

    /**
     * 删除
     */
    public String delete() {
        patentDao.delete(patent);
        patent = null;
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
        List<Patent> lists = patentDao.selectPage(Patent.class, search, first, pageCount);
        pageList = lists;
        //System.out.println(pageList);
        return SUCCESS;
    }

    public void next() {
        curpage++;
        int first = curpage + (curpage - 1) * pageCount;
        List<Patent> lists = patentDao.selectPage(Patent.class, search, first, pageCount);
        if (!CollectionUtils.isEmpty(lists)) {
            pageList = lists;
        } else {
            curpage--;
        }
        json(pageList);
    }

    public String listUI(){
        return SUCCESS;
    }

    public void pre() {
        if ((curpage - 1) <= 0) {
            json(pageList);
            return;
        }

        curpage--;
        int first = curpage + (curpage - 1) * pageCount;
        List<Patent> lists = patentDao.selectPage(Patent.class, search, first, pageCount);
        if (!CollectionUtils.isEmpty(lists)) {
            pageList = lists;
        }
        json(pageList);
    }


    /********************************************************************/
    public Patent getPatent() {
        return patent;
    }

    public void setPatent(Patent patent) {
        this.patent = patent;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public PatentSearch getSearch() {
        return search;
    }

    public void setSearch(PatentSearch search) {
        this.search = search;
    }

    public List<Patent> getPageList() {
        return pageList;
    }

    public void setPageList(List<Patent> pageList) {
        this.pageList = pageList;
    }
}
