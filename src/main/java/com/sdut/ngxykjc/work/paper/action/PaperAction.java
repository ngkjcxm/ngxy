package com.sdut.ngxykjc.work.paper.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.base.util.UserPermissions;
import com.sdut.ngxykjc.work.paper.bean.Paper;
import com.sdut.ngxykjc.work.paper.bean.PaperSearch;
import com.sdut.ngxykjc.work.paper.dao.PaperDao;
import com.sdut.ngxykjc.work.paper.service.PaperService;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
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
    private PaperService paperService;

    @Autowired
    private PaperDao paperDao;

    public String listQueryUI() {
        return "listquery";
    }

    /**
     * 跳转页面
     *
     * @return
     */
    public String listUI() {
        return SUCCESS;
    }

    /**
     * 详细信息
     */
    @RequiresAuthentication
    public String detail() {
        paper = (Paper) paperDao.getById(Paper.class, id);
        return SUCCESS;
    }

    /**
     * 详细信息
     * forUser
     */
    @RequiresAuthentication
    public String udetail() {
        paper = (Paper) paperDao.getById(Paper.class, id);
        System.out.println("------------------------------------");
        return "user";
    }

    /**
     * 更新或保存
     */
    @RequiresAuthentication
    public String save() {
        paperDao.saveOrUpdate(paper);
        paper = null;
        return SUCCESS;
    }

    /**
     * 审批
     */
    @RequiresPermissions(UserPermissions.PAPER)
    public String check() {
        paperDao.saveOrUpdate(paper);
        paper = null;
        return SUCCESS;
    }

    /**
     * 删除
     */
    @RequiresAuthentication
    public String delete() {
        paperDao.delete(paper);
        paper = null;
        return SUCCESS;
    }

    /**
     * 删除
     * forUser
     */
    @RequiresAuthentication
    public String udelete() {
        paperDao.delete(paper);
        paper = null;
        return "user";
    }

    /**
     * 当前页
     */
    private int curpage = 0;

    /**
     * 一页总条数
     */
    private int pageCount = 5;

    @RequiresAuthentication
    public String msearch() {
        search();
        return SUCCESS;
    }

    @RequiresAuthentication
    public String usearch() {
        search();
        return "user";
    }

    public String search() {
        curpage = 0;
        int first = curpage * pageCount;
        List<Paper> lists = paperDao.selectPage(Paper.class, search, first, pageCount);
        pageList = lists;
        //System.out.println(pageList);
        return SUCCESS;
    }

    public void next() {
        curpage++;
        int first = curpage * pageCount;
        List<Paper> lists = paperDao.selectPage(Paper.class, search, first, pageCount);
        if (!CollectionUtils.isEmpty(lists)) {
            pageList = lists;
        } else {
            curpage--;
        }
        json(pageList);
    }

    public void pre() {
        if (curpage == 0) {
            json(pageList);
            return;
        }
        curpage--;
        int first = curpage * pageCount;
        List<Paper> lists = paperDao.selectPage(Paper.class, search, first, pageCount);
        if (!CollectionUtils.isEmpty(lists)) {
            pageList = lists;
        }
        json(pageList);
    }

    @RequiresPermissions(UserPermissions.QUERY)
    public void searchPaper() {
        List<Paper> list = paperService.searchPaper(Paper.class, search);
        System.out.println(list);
        json(list);
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

    public PaperService getPaperService() {
        return paperService;
    }

    public void setPaperService(PaperService paperService) {
        this.paperService = paperService;
    }
}
