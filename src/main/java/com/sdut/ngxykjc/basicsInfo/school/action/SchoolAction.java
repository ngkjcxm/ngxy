package com.sdut.ngxykjc.basicsInfo.school.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.basicsInfo.school.bean.School;
import com.sdut.ngxykjc.basicsInfo.school.service.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

/**
 * Created by sunmig on 2016/11/3.
 */
@Controller
@Scope("session")
public class SchoolAction extends BaseAction {

    @Autowired
    private SchoolService schoolService;

    private School school;

    private long id;

    /**
     * 详情信息
     */
    public String detail() {
        school = schoolService.get(id);
        return SUCCESS;
    }

    /**
     * 显示页面
     */
    public String listUI(){
        return SUCCESS;
    }

    /**
     * 插入Or修改
     * @return
     */
    public String save() {
        schoolService.saveOrUpdate(school);
        school = null;
        return SUCCESS;
    }


    public String delete() {
        schoolService.delete(school);
        school = null;
        return SUCCESS;
    }

    /*************** getter Or setter 方法 ***************/

    public School getSchool() {
        return school;
    }

    public void setSchool(School school) {
        this.school = school;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
