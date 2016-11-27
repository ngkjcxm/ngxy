package com.sdut.ngxykjc.work.HorizontalProject.bean;

/**
 * Created by gcl on 2016/11/26.
 */
public class FundsListsItem {

    private long id;
    private String explain;
    private String state;

    public FundsListsItem(long id, String explain, String state) {
        this.id = id;
        this.explain = explain;
        this.state = state;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getExplain() {
        return explain;
    }

    public void setExplain(String explain) {
        this.explain = explain;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "FundsListsItem{" +
                "id=" + id +
                ", explain='" + explain + '\'' +
                ", state='" + state + '\'' +
                '}';
    }
}
