package com.gcl.test.service;

/**
 * Created by gcl on 2016/11/27.
 */
class Node {
    int id;
    int pid;
    String text;
    String url;

    public Node(int id, int pid, String text, String url) {
        this.id = id;
        this.pid = pid;
        this.text = text;
        this.url = url;
    }

    @Override
    public String toString() {
        return "Node{" +
                "id=" + id +
                ", pid=" + pid +
                ", text='" + text + '\'' +
                ", url='" + url + '\'' +
                '}'+'\n';
    }
}
