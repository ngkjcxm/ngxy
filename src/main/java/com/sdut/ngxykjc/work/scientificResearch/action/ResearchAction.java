package com.sdut.ngxykjc.work.scientificResearch.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalProject;
import com.sdut.ngxykjc.work.scientificResearch.bean.ResearchSearch;
import com.sdut.ngxykjc.work.scientificResearch.bean.ScientificResearch;
import com.sdut.ngxykjc.work.scientificResearch.bean.ScientificResearchReward;
import com.sdut.ngxykjc.work.scientificResearch.service.ScientificResearchService;
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
    private ScientificResearchReward research;
    private List<ScientificResearchReward> pageList;
    private ScientificResearchReward scientificResearchReward;

    @Autowired
    private ScientificResearchService scientificResearchService;

    /**
     * 当前页
     */
    private int curpage = 1;
    /**
     * 一页总条数
     */
    private int pageCount = 5;

    public String search(){
        System.out.println(search);
        curpage = 1;
        int first = curpage + (pageCount - 1) * pageCount;
        List<ScientificResearchReward> list = scientificResearchService.selectPage(ScientificResearchReward.class, search, first, pageCount);
        pageList = list;
        System.out.println(pageList);
        return SUCCESS;
    }

    /**
     * 详细信息
     */
    public String detail() {
        scientificResearchReward = (ScientificResearchReward) scientificResearchService.getById(ScientificResearchReward.class, id);
        return SUCCESS;
    }

    /**
     * 保存
     */
    public String save() {
        scientificResearchService.saveOrUpdate(scientificResearchReward);
        return SUCCESS;
    }

    /**
     * 删除
     */
    public String delete() {
        scientificResearchService.delete(scientificResearchReward);
        research = null;
        return SUCCESS;
    }

    //导出
    public void searchScientific(){
        System.out.println(search);
        List<ScientificResearchReward> list = scientificResearchService.searchScientific(ScientificResearchReward.class, search);
        System.out.println(list);
        json(list);
    }


    //跳转页面
    public String listUI(){
        return SUCCESS;
    }

    public String listQueryUI(){
        return "listquery";
    }



    //分页

    public void next() {
        curpage++;
        int first = curpage + (curpage - 1) * pageCount;
        List<ScientificResearchReward> lists = scientificResearchService.selectPage(ScientificResearchReward.class, search, first, pageCount);
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
