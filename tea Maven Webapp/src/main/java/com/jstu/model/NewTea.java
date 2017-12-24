package com.jstu.model;

public class NewTea {
    private Integer teaid;

    private String teaname;

    private String tealocation;

    private String teainfo;

    private String teapath;

    public Integer getTeaid() {
        return teaid;
    }

    public void setTeaid(Integer teaid) {
        this.teaid = teaid;
    }

    public String getTeaname() {
        return teaname;
    }

    public void setTeaname(String teaname) {
        this.teaname = teaname == null ? null : teaname.trim();
    }

    public String getTealocation() {
        return tealocation;
    }

    public void setTealocation(String tealocation) {
        this.tealocation = tealocation == null ? null : tealocation.trim();
    }

    public String getTeainfo() {
        return teainfo;
    }

    public void setTeainfo(String teainfo) {
        this.teainfo = teainfo == null ? null : teainfo.trim();
    }

    public String getTeapath() {
        return teapath;
    }

    public void setTeapath(String teapath) {
        this.teapath = teapath == null ? null : teapath.trim();
    }
}