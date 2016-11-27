package com.sdut.ngxykjc.work.HorizontalProject.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.work.HorizontalProject.bean.FundsListsItem;
import com.sdut.ngxykjc.work.HorizontalProject.bean.Horizontal;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalFunds;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalSearch;
import com.sdut.ngxykjc.work.HorizontalProject.dao.HorizontalFundsDao;
import com.sdut.ngxykjc.work.HorizontalProject.service.HorizontalService;
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

    /**
     * 搜索
     */
    public String search() {
        list = horizontalService.search(search);
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
        horizontal = horizontalService.get(id);
        return SUCCESS;
    }

    /**
     * 更新或保存
     */
    public String save() {
        horizontalService.saveOrUpdate(horizontal);
        horizontal = null;
        return SUCCESS;
    }

    /****************************横向课题经费************************/
    private HorizontalFunds funds;
    @Autowired
    private HorizontalFundsDao horizontalFundsDao;
    private long fundsId;
    private String fundsSearch;

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
        List<FundsListsItem> listsItems = horizontalFundsDao.fundsList(id, fundsSearch);
        System.out.println(fundsSearch);
        json(listsItems);
    }

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
}
