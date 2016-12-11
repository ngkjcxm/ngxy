package com.sdut.ngxykjc.work.scientificResearch.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.base.util.UserPermissions;
import com.sdut.ngxykjc.work.scientificResearch.bean.ResearchSearch;
import com.sdut.ngxykjc.work.scientificResearch.bean.ScientificResearchReward;
import com.sdut.ngxykjc.work.scientificResearch.service.ScientificResearchService;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
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
    private List<ScientificResearchReward> pageList;
    private ScientificResearchReward scientificResearchReward;

    @Autowired
    private ScientificResearchService scientificResearchService;

    /**
     * 当前页
     */
    private int curpage = 0;
    /**
     * 一页总条数
     */
    private int pageCount = 5;

    @RequiresAuthentication
    public String search() {
        curpage = 0;
        int first = curpage * pageCount;
        List<ScientificResearchReward> list = scientificResearchService.selectPage(ScientificResearchReward.class, search, first, pageCount);
        pageList = list;
        return SUCCESS;
    }

    @RequiresAuthentication
    public String usearch() {
        curpage = 0;
        int first = curpage * pageCount;
        List<ScientificResearchReward> list = scientificResearchService.selectPage(ScientificResearchReward.class, search, first, pageCount);
        pageList = list;
        return "user";
    }

    /**
     * 详细信息
     */
    @RequiresAuthentication
    public String detail() {
        scientificResearchReward = (ScientificResearchReward) scientificResearchService.getById(ScientificResearchReward.class, id);
        return SUCCESS;
    }

    @RequiresAuthentication
    public String udetail() {
        scientificResearchReward = (ScientificResearchReward) scientificResearchService.getById(ScientificResearchReward.class, id);
        return "user";
    }

    /**
     * 保存
     */
    @RequiresAuthentication
    public String save() {
        scientificResearchService.saveOrUpdate(scientificResearchReward);
        return "user";
    }

    @RequiresPermissions(UserPermissions.SCIENTIFIC_RESEARCH)
    public String check() {
        scientificResearchService.saveOrUpdate(scientificResearchReward);
        return SUCCESS;
    }

    /**
     * 删除
     */
    @RequiresAuthentication
    public String delete() {
        scientificResearchService.delete(scientificResearchReward);
        scientificResearchReward = null;
        return SUCCESS;
    }

    @RequiresAuthentication
    public String udelete() {
        scientificResearchService.delete(scientificResearchReward);
        scientificResearchService = null;
        return "user";
    }

    //导出
    @RequiresAuthentication
    public void searchScientific() {
        System.out.println(search);
        List<ScientificResearchReward> list = scientificResearchService.searchScientific(ScientificResearchReward.class, search);
        System.out.println(list);
        json(list);
    }


    //跳转页面
    public String listUI() {
        return SUCCESS;
    }

    public String listQueryUI() {
        return "listquery";
    }


    //分页
    public void next() {
        curpage++;
        int first = curpage * pageCount;
        List<ScientificResearchReward> lists = scientificResearchService.selectPage(ScientificResearchReward.class, search, first, pageCount);
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
        List<ScientificResearchReward> lists = scientificResearchService.selectPage(ScientificResearchReward.class, search, first, pageCount);
        if (!CollectionUtils.isEmpty(lists)) {
            pageList = lists;
        }
        json(pageList);

    }

    /********* getter or setter **********/

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

    public List<ScientificResearchReward> getPageList() {
        return pageList;
    }

    public void setPageList(List<ScientificResearchReward> pageList) {
        this.pageList = pageList;
    }

    public ScientificResearchReward getScientificResearchReward() {
        return scientificResearchReward;
    }

    public void setScientificResearchReward(ScientificResearchReward scientificResearchReward) {
        this.scientificResearchReward = scientificResearchReward;
    }

    public ScientificResearchService getScientificResearchService() {
        return scientificResearchService;
    }

    public void setScientificResearchService(ScientificResearchService scientificResearchService) {
        this.scientificResearchService = scientificResearchService;
    }
}
