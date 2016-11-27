package com.gcl.test.service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by gcl on 2016/11/27.
 */
public class TestTree {

    public static void main(String[] args) {
        Obj o1 = new Obj("o1", "xy1", "gzc1");
        Obj o2 = new Obj("o2", "xy1", "gzc1");

        Obj o3 = new Obj("o3", "xy1", "gzc2");
        Obj o4 = new Obj("o4", "xy1", "gzc2");

        Obj o5 = new Obj("o5", "xy2", "gzc1");
        Obj o6 = new Obj("o6", "xy2", "gzc1");

        List<Obj> lists = new ArrayList<>();
        lists.add(o1);
        lists.add(o2);
        lists.add(o3);
        lists.add(o4);
        lists.add(o5);
        lists.add(o6);

        List<Node> nodes = new ArrayList<>();
        int curId = 0;
        int curxuid = 0;
        int curgzcid = 0;
        nodes.add(new Node(curId++, -1, "Top", ""));
        String curXY = "";
        String curGZC = "";
        for (int i = 0; i < lists.size(); i++) {
            Obj obj = lists.get(i);
            if (obj.xy.equals(curXY)) {
                if (obj.gzc.equals(curGZC)) {
                    nodes.add(new Node(curId++, curgzcid, obj.name, ""));
                } else {
                    // 添加工作处
                    curGZC = obj.gzc;
                    curgzcid = curId++;
                    nodes.add(new Node(curgzcid, curxuid, obj.gzc, ""));

                    // 添加学生
                    nodes.add(new Node(curId++, curgzcid, obj.name, ""));
                }
            } else {
                // 添加学院
                curXY = obj.xy;
                curxuid = curId++;
                nodes.add(new Node(curxuid, 0, obj.xy, ""));

                // 添加工作处
                curgzcid = curId++;
                curGZC = obj.gzc;
                nodes.add(new Node(curgzcid, curxuid, obj.gzc, ""));

                // 添加学生
                nodes.add(new Node(curId++, curgzcid, obj.name, ""));
            }
        }

        System.out.println(nodes);
    }
}
