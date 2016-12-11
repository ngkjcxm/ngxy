package com.sdut.ngxykjc.base.util;

/**
 * Created by gcl on 2016/11/13.
 */
public class TreeTest {

    public static void main(String[] args) {
        Tree tree = new Tree("head");
        tree.addContainer("container_1");
        tree.addContainer("container_2");
        tree.addContainer("container_3");
        tree.addLeaf("lead_1_1", "url", "container_1");
        tree.addLeaf("lead_1_2", "url", "container_1");
        tree.addLeaf("lead_1_3", "url", "container_1");

        tree.addLeaf("lead_2_1", "url", "container_2");

        tree.addLeaf("lead_3_1", "url", "container_3");

       String html =  tree.generator();
        System.out.println(html);
    }
}
