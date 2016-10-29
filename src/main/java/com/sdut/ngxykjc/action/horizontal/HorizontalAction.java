package com.sdut.ngxykjc.action.horizontal;

import com.sdut.ngxykjc.action.BaseAction;
import com.sdut.ngxykjc.bean.HorizontalOutlay;
import com.sdut.ngxykjc.bean.HorizontalProject;
import com.sdut.ngxykjc.bean.HorizontalWork;
import com.sdut.ngxykjc.service.HorizontalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import java.util.List;

/**
 * Created by 郭昌仑 on 2016/10/27.
 * <p>
 * 处理和纵向课题有关的操作
 */

@Controller
@Scope("prototype")
public class HorizontalAction extends BaseAction {

    @Autowired
    private HorizontalService horizontalService;

    private HorizontalProject project;

    private HorizontalWork work;

    private HorizontalOutlay outlay;

    // 单个课题的id
    private int projectId;

    // 需要删除的outlayId
    private int outlayId;

    // 需要删除的workId
    private int workId;

    // 查找条件
    private String searchParam;
    // 查找类型
    private String searchType;

    /**
     * 转到纵向课题查找页面
     ***/
    public String search() {
        List<HorizontalProject> list = horizontalService.search(project);
        getRequest().setAttribute("list", list);
        return view("horizontalSearch");
    }

    /**
     * 转到纵向课题详情页面
     **/
    public String detail() {
        HorizontalProject project = horizontalService.getProject(projectId);
        getRequest().setAttribute("project", project);
        return view("horizontalDetail");
    }

    /**
     * 提交纵向工程表单
     **/
    public String projectForm() {
        horizontalService.saveOrUpdate(project);
        return redirect("horizontalAction_search.action");
    }

    /**
     * Json：纵向课题列表
     **/
    public void projectList() {
        // 返回json字符创
        json(horizontalService.getProjectListJson());
    }

    /**
     * 经费列表：需要注入projectId
     **/
    public void outlayList() {
        json(horizontalService.getOutlayList(projectId));
    }

    /**
     * 工作量列表：需要注入projectId
     **/
    public void workList() {
        json(horizontalService.getWorkList(projectId));
    }

    /**
     * 删除一条经费记录：需要注入outlayId
     **/
    public String deleteOutlay() {
        horizontalService.deleteOutlay(outlayId);
        return view("loginOK");
    }

    /**
     * 删除一条工作分配记录：需要注入outlayId
     **/
    public String deleteWork() {
        horizontalService.deleteOutlay(workId);
        return view("loginOK");
    }

    /**
     * setter&getter
     **/
    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    public HorizontalProject getProject() {
        return project;
    }

    public void setProject(HorizontalProject project) {
        this.project = project;
    }

    public HorizontalWork getWork() {
        return work;
    }

    public void setWork(HorizontalWork work) {
        this.work = work;
    }

    public HorizontalOutlay getOutlay() {
        return outlay;
    }

    public void setOutlay(HorizontalOutlay outlay) {
        this.outlay = outlay;
    }

    public int getOutlayId() {
        return outlayId;
    }

    public void setOutlayId(int outlayId) {
        this.outlayId = outlayId;
    }

    public int getWorkId() {
        return workId;
    }

    public void setWorkId(int workId) {
        this.workId = workId;
    }
}
