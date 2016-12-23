package com.sdut.ngxykjc.work.VerticalProject.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.base.util.UserPermissions;
import com.sdut.ngxykjc.work.HorizontalProject.bean.FundsListsItem;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalFunds;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalProject;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalSearch;
import com.sdut.ngxykjc.work.VerticalProject.dao.VerticalDao;
import com.sdut.ngxykjc.work.VerticalProject.dao.VerticalFundsDao;
import com.sdut.ngxykjc.work.VerticalProject.service.VerticalFundsService;
import com.sdut.ngxykjc.work.VerticalProject.service.VerticalSearchService;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
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
    private VerticalSearchService verticalSearchService;

    @Autowired
    private VerticalDao verticalDao;

    private List<VerticalProject> list;
    private List<VerticalProject> pageList = new ArrayList<>(5);
    private VerticalSearch search;
    private VerticalProject vertical;
    private long id;

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
     * 当前页:从0开始
     */
    private int curPage = 0;

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
    @RequiresAuthentication
    public String search() {
        curPage = 0;
        list = verticalDao.search(search);
        pageCount = (int) Math.ceil(list.size() / (double) perPage);
        System.out.println(list.size());
        System.out.println(pageCount);
        if (list.size() > perPage) {
            pageList = list.subList(0, perPage);
        } else {
            pageList = list;
        }
        return SUCCESS;
    }

    @RequiresAuthentication
    public void usearch() {
        curPage = 0;
        list = verticalDao.search(search);
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
    public void pre() {
        if (curPage == 0) {
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
        System.out.println(curPage);
        page();
    }

    /**
     * 分页
     */
    public void page() {
        int begin = curPage * perPage;
        int end = (curPage + 1) * perPage;
        if (end > list.size()) end = list.size();
        pageList = list.subList(begin, end);
        json(pageList);
    }

    /**
     * 详细信息
     */
    @RequiresAuthentication
    public String detail() {
        vertical = (VerticalProject) verticalDao.getById(VerticalProject.class, id);
        return SUCCESS;
    }

    /**
     * 重置信息
     */
    @RequiresAuthentication
    public String reset() {
        vertical = null;
        return "user";
    }

    /**
     * udetail
     */
    @RequiresAuthentication
    public String udetail() {
        vertical = (VerticalProject) verticalDao.getById(VerticalProject.class, id);
        // 添加标志，令前台不能修改
        getRequest().setAttribute("udetail", "udetail");
        return "user";
    }

    /**
     * 保存
     */
    @RequiresAuthentication
    public String save() {
        verticalDao.saveOrUpdate(vertical);
        vertical = null;
        return "user";
    }

    /**
     * 添加
     */
    @RequiresAuthentication
    public String add() {
        verticalDao.saveOrUpdate(vertical);
        vertical = null;
        return "add";
    }

    @RequiresPermissions(UserPermissions.VERTICAL)
    public String delete() {
        verticalDao.delete(vertical);
        vertical = null;
        return SUCCESS;
    }

    @RequiresPermissions(UserPermissions.VERTICAL)
    public String check() {
        verticalDao.saveOrUpdate(vertical);
        vertical = null;
        return SUCCESS;
    }

    /**
     * 显示页面
     */
    @RequiresAuthentication
    public String listUI() {
        return SUCCESS;
    }

    @RequiresPermissions(UserPermissions.VERTICAL)
    public void searchVertical() {

        System.out.println("--" + search);
        List<VerticalProject> list = verticalSearchService.searchVertical(VerticalProject.class, search);
        System.out.println("-->" + list);
        json(list);
    }

    /****************************纵向课题经费************************/

    @Autowired
    private VerticalFundsService verticalFundsService;
    private VerticalFunds funds;
    @Autowired
    private VerticalFundsDao verticalFundsDao;
    private long fundsId;
    private String fundsSearch;
    //private VorizontalFundsSearch horizontalFundsSearch;

    @RequiresAuthentication
    public void saveF() {
        if (vertical == null) {
            json("error");
        } else {
            verticalFundsDao.save(vertical, funds);
            json("ok");
        }
    }

    @RequiresAuthentication
    public void fundsList() {
        List<FundsListsItem> listsItems = verticalFundsDao.fundsList(id);
        json(listsItems);
    }

    @RequiresAuthentication
    public void fundsDetail() {
        funds = (VerticalFunds) verticalFundsDao.getById(VerticalFunds.class, fundsId);
        json(funds);
    }

    @RequiresAuthentication
    public void searchF() {
        List<FundsListsItem> listsItems = verticalFundsDao.fundsList(id, fundsSearch);
        json(listsItems);
    }

    @RequiresPermissions(UserPermissions.VERTICAL)
    public void checkFunds() {
        if (vertical != null && funds != null) {
            funds.setExamineResult("已通过");
            verticalFundsDao.saveOrUpdate(funds);
            json("ok");
        } else {
            json("error");
        }
    }

    @RequiresAuthentication
    public void deleteFunds() {
        if (vertical != null && funds != null) {
            verticalFundsDao.delete(funds);
            json("OK");
        } else {
            json("error");
        }
    }

//    public void searchFundsSearch(){
//        System.out.println("yes");
//        System.out.println(horizontalFundsSearch);
//        List<HorizontalFunds> fundss = horizontalFundsService.searchFundsSearch(HorizontalFunds.class, horizontalFundsSearch);
//        System.out.println(fundss);
//        json(fundss);
//    }


    /*********************/


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

    public VerticalFunds getFunds() {
        return funds;
    }

    public void setFunds(VerticalFunds funds) {
        this.funds = funds;
    }

    public long getFundsId() {
        return fundsId;
    }

    public void setFundsId(long fundsId) {
        this.fundsId = fundsId;
    }

    public String getFundsSearch() {
        return fundsSearch;
    }

    public void setFundsSearch(String fundsSearch) {
        this.fundsSearch = fundsSearch;
    }
}
