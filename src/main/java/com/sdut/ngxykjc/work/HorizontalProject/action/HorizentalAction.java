package com.sdut.ngxykjc.work.HorizontalProject.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.base.util.UserPermissions;
import com.sdut.ngxykjc.work.HorizontalProject.bean.*;
import com.sdut.ngxykjc.work.HorizontalProject.dao.HorizontalFundsDao;
import com.sdut.ngxykjc.work.HorizontalProject.service.HorizontalFundsService;
import com.sdut.ngxykjc.work.HorizontalProject.service.HorizontalService;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by gcl on 2016/11/12.
 */
@Controller
@Scope("session")
public class HorizentalAction extends BaseAction {

    @Autowired
    private HorizontalService horizontalService;


    private Horizontal horizontal;

    private long id;

    /**
     * 搜索到的所有结果
     */
    private List<Horizontal> list;

    /**
     * 需要显示的结果
     */
    private List<Horizontal> pageList = new ArrayList<>();

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
    private HorizontalSearch search;

    public String listUI() {
        return SUCCESS;
    }

    public String listQueryUI() {
        return "listquery";
    }

    /**
     * 添加
     */
    public String addUI() {
        return "add";
    }

    /**
     * 搜索
     */
    @RequiresAuthentication
    public String search() {
        curPage = 1;
        list = horizontalService.search(search);
        pageCount = (int) Math.ceil(list.size() / (double) perPage);
        if (list.size() > perPage) {
            pageList = list.subList(0, perPage);
        } else {
            pageList = list;
        }
        return SUCCESS;
    }

    public void usearch() {
        curPage = 1;
        list = horizontalService.search(search);
        pageCount = (int) Math.ceil(list.size() / perPage);
        if (list.size() > perPage) {
            pageList = list.subList(0, perPage);
        } else {
            pageList = list;
        }
        json(pageList);
    }

    /**
     * 上一页
     */
    @RequiresAuthentication
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
    @RequiresAuthentication
    public void next() {
        if (curPage > pageCount) {
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
        if (end > list.size()) end = list.size();
        pageList = list.subList(begin, end);
        json(pageList);
    }

    /**
     * 详细信息
     */
    @RequiresAuthentication
    public String detail() {
        horizontal = horizontalService.get(id);
        return SUCCESS;
    }

    /**
     * 重置信息
     */
    @RequiresAuthentication
    public String reset() {
        horizontal = null;
        return "user";
    }

    /**
     * 用户页面详细信息
     */
    @RequiresAuthentication
    public String udetail() {
        horizontal = horizontalService.get(id);
        // 添加标志，令前台不能修改
        getRequest().setAttribute("udetail", "udetail");
        return "user";
    }

    /**
     * 更新或保存
     */
    @RequiresAuthentication
    public String save() {
        horizontalService.saveOrUpdate(horizontal);
        horizontal = null;
        return "user";
    }

    /**
     * 添加
     */
    @RequiresAuthentication
    public String add() {
        horizontalService.saveOrUpdate(horizontal);
        horizontal = null;
        return "add";
    }

    @RequiresPermissions(UserPermissions.HORIZONTAL)
    public String check() {
        horizontalService.saveOrUpdate(horizontal);
        horizontal = null;
        return SUCCESS;
    }

    /**
     * 删除
     */
    @RequiresAuthentication
    public String delete() {
        if (horizontal != null) {
            horizontalService.delete(horizontal);
        }
        return SUCCESS;
    }

    /****************************横向课题经费************************/
    @Autowired
    private HorizontalFundsService horizontalFundsService;
    private HorizontalFunds funds;
    @Autowired
    private HorizontalFundsDao horizontalFundsDao;
    private long fundsId;
    private String fundsSearch;
    private HorizontalFundsSearch horizontalFundsSearch;

    public void saveF() {
        if (horizontal == null) {
            json("error");
        } else {
            horizontalFundsDao.save(horizontal, funds);
            json("ok");
        }
    }

    public void fundsList() {
        List<FundsListsItem> listsItems = horizontalFundsDao.fundsList(id);
        json(listsItems);
    }

    public void fundsDetail() {
        funds = (HorizontalFunds) horizontalFundsDao.getById(HorizontalFunds.class, fundsId);
        json(funds);
    }

    public void searchF() {
        System.out.println(fundsSearch);
        List<FundsListsItem> listsItems = horizontalFundsDao.fundsList(id, fundsSearch);
        System.out.println(fundsSearch);
        json(listsItems);
    }

    @RequiresPermissions(UserPermissions.HORIZONTAL)
    public void checkFunds() {
        if (horizontal != null && funds != null) {
            funds.setExamineResult("已通过");
            horizontalFundsDao.saveOrUpdate(funds);
            json("ok");
        } else {
            json("error");
        }
    }

    public void deleteFunds() {
        if (horizontal != null && funds != null) {
            horizontalFundsDao.delete(funds);
            json("OK");
        } else {
            json("error");
        }
    }

    public void searchFundsSearch() {
        System.out.println("yes");
        System.out.println(horizontalFundsSearch);
        List<HorizontalFunds> fundss = horizontalFundsService.searchFundsSearch(HorizontalFunds.class, horizontalFundsSearch);
        System.out.println(fundss);
        json(fundss);

    }


    /*********************/
    public String getFundsSearch() {
        return fundsSearch;
    }

    public void setFundsSearch(String fundsSearch) {
        this.fundsSearch = fundsSearch;
    }

    public long getFundsId() {
        return fundsId;
    }

    public void setFundsId(long fundsId) {
        this.fundsId = fundsId;
    }

    /**************************************************************/

    public Horizontal getHorizontal() {
        return horizontal;
    }

    public void setHorizontal(Horizontal horizontal) {
        this.horizontal = horizontal;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public List<Horizontal> getList() {
        return list;
    }

    public void setList(List<Horizontal> list) {
        this.list = list;
    }

    public HorizontalSearch getSearch() {
        return search;
    }

    public void setSearch(HorizontalSearch search) {
        this.search = search;
    }

    public List<Horizontal> getPageList() {
        return pageList;
    }

    public void setPageList(List<Horizontal> pageList) {
        this.pageList = pageList;
    }

    public int getCurPage() {
        return curPage;
    }

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }

    public HorizontalFunds getFunds() {
        return funds;
    }

    public void setFunds(HorizontalFunds funds) {
        this.funds = funds;
    }

    public HorizontalFundsSearch getHorizontalFundsSearch() {
        return horizontalFundsSearch;
    }

    public void setHorizontalFundsSearch(HorizontalFundsSearch horizontalFundsSearch) {
        this.horizontalFundsSearch = horizontalFundsSearch;
    }
}
