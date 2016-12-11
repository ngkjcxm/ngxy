package com.sdut.ngxykjc.basicsInfo.systemParameter.bean;

import javax.persistence.*;

/**
 * Created by sunming on 2016/11/5.
 */
@Entity
@Table(name = "parameter")
public class Parameter {

    /**
     * id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 参数编号
     */
    private String parameterId;

    /**
     * 参数名称
     */
    private String parameterName;

    /**
     * 参数组
     */
    private String parameterGroup;

    /**
     * 参数值
     */
    private String parameterValue;

    /**
     * 序号
     */
    private String order;

    /**
     * 组内序号
     */
    private String groupOrder;

    /**
     * 备注
     */
    private String remark;

    /****************getter Or setter**************/

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getParameterId() {
        return parameterId;
    }

    public void setParameterId(String parameterId) {
        this.parameterId = parameterId;
    }

    public String getParameterName() {
        return parameterName;
    }

    public void setParameterName(String parameterName) {
        this.parameterName = parameterName;
    }

    public String getParameterGroup() {
        return parameterGroup;
    }

    public void setParameterGroup(String parameterGroup) {
        this.parameterGroup = parameterGroup;
    }

    public String getParameterValue() {
        return parameterValue;
    }

    public void setParameterValue(String parameterValue) {
        this.parameterValue = parameterValue;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    public String getGroupOrder() {
        return groupOrder;
    }

    public void setGroupOrder(String groupOrder) {
        this.groupOrder = groupOrder;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "Parameter{" +
                "id=" + id +
                ", parameterId='" + parameterId + '\'' +
                ", parameterName='" + parameterName + '\'' +
                ", parameterGroup='" + parameterGroup + '\'' +
                ", parameterValue='" + parameterValue + '\'' +
                ", order='" + order + '\'' +
                ", groupOrder='" + groupOrder + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
