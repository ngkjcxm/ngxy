package com.gcl.test.service;

/**
 * Created by gcl on 2016/11/27.
 */
class Obj {
    String name;
    String xy;
    String gzc;

    public Obj(String name, String xy, String gzc) {
        this.name = name;
        this.xy = xy;
        this.gzc = gzc;
    }

    @Override
    public String toString() {
        return "Obj{" +
                "name='" + name + '\'' +
                ", xy='" + xy + '\'' +
                ", gzc='" + gzc + '\'' +
                '}'+'\n';
    }
}
