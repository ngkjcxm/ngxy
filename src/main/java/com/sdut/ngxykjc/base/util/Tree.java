package com.sdut.ngxykjc.base.util;

import java.util.*;

/**
 * Created by gcl on 2016/11/13.
 */
public class Tree {
    private static String treeHeader = "<ul><li>";
    private static String treeFooter = "</li></ul>";

    private String head;
    private HashMap<String, Object> top = new HashMap<String, Object>();

    public Tree(String head) {
        this.head = head;
        top.put(head, new HashMap<String, Object>());
    }

    public void addContainer(String container) {
        ((HashMap) top.get(head)).put(container, new HashMap<String, Object>());
    }

    public void addLeaf(String leaf, String url, String... container) {
        HashMap hashMap = top;
        for (String c : container) {
            hashMap = (HashMap) hashMap.get(c);
        }
        hashMap.put(leaf, leaf + url);
    }

    @Override
    public String toString() {
        String html = "";
        top.size();
        return "";
    }

    private String html = "";

    public String generator() {
        generator(top);
        return html;
    }

    public void generator(HashMap map) {
        Iterator iter = map.entrySet().iterator();
        html += "<ul><li>";
        while (iter.hasNext()) {
            Object obj = iter.next();
            if (obj instanceof HashMap) {
                generator((HashMap) obj);
            } else {
                html += "<li>" + ((Map.Entry) obj).getKey() + "</li>";
            }
        }
        html += "</ul></li>";
    }
}
