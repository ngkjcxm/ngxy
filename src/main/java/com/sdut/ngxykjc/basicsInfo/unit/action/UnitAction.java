package com.sdut.ngxykjc.basicsInfo.unit.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.basicsInfo.unit.bean.Unit;
import com.sdut.ngxykjc.basicsInfo.unit.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

/**
 * Created by gcl on 2016/11/5.
 */
@Controller
@Scope("prototype")
public class UnitAction extends BaseAction {

    @Autowired
    private UnitService unitService;

    private Unit unit;

    private long id;

    /**
     * 详情信息
     */
    public String detail() {
        System.out.println("--------------------------------");
        unit = unitService.get(id);
        return SUCCESS;
    }

    public String save() {
        unitService.saveOrUpdate(unit);
        unit = null;
        return SUCCESS;
    }

    public String delete() {
        unitService.delete(unit);
        unit = null;
        return SUCCESS;
    }

    public String listUI(){
        return SUCCESS;
    }

    public Unit getUnit() {
        return unit;
    }

    public void setUnit(Unit unit) {
        this.unit = unit;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
