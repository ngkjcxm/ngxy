package com.sdut.ngxykjc.work.VerticalProject.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.work.HorizontalProject.bean.FundsListsItem;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalFunds;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalProject;
import com.sdut.ngxykjc.work.VerticalProject.bean.VerticalSearch;
import com.sdut.ngxykjc.work.VerticalProject.dao.VerticalDao;
import com.sdut.ngxykjc.work.VerticalProject.dao.VerticalFundsDao;
import com.sdut.ngxykjc.work.VerticalProject.service.VerticalFundsService;
import com.sdut.ngxykjc.work.VerticalProject.service.VerticalSearchService;
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

    /**
     * 显示页面
     */
    public String listUI() {
        return SUCCESS;
    }

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

    public void saveF() {
        if (vertical == null) {
            json("error");
        } else {
            verticalFundsDao.save(vertical, funds);
            json("ok");
        }
    }

    public void fundsList() {
        List<FundsListsItem> listsItems = verticalFundsDao.fundsList(id);
        json(listsItems);
    }

    public void fundsDetail() {
        funds = (VerticalFunds) verticalFundsDao.getById(VerticalFunds.class, fundsId);
        json(funds);
    }

    public void searchF() {
        List<FundsListsItem> listsItems = verticalFundsDao.fundsList(id, fundsSearch);
        json(listsItems);
    }

    public void checkFunds() {
        if (vertical != null && funds != null) {
            funds.setExamineResult("已通过");
            verticalFundsDao.saveOrUpdate(funds);
            json("ok");
        } else {
            json("error");
        }
    }

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
