package com.sdut.ngxykjc.work.HorizontalProject.bean;

import java.util.List;

/**
 * Created by gcl on 2016/11/27.
 * <p>
 * 搜索项目负责人
 */
public class SearchPeople {

    private String top;
    private List<Node> yx;

    class Node {
        String id;
        String pid;
        String text;
        String url;
    }
}
