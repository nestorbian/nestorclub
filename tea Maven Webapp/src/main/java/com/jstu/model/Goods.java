package com.jstu.model;

public class Goods {
    private Integer goodid;

    private String goodname;

    private Double goodprice;

    private Integer goodstock;

    private String goodinfo;

    private String googpath;

    public Integer getGoodid() {
        return goodid;
    }

    public void setGoodid(Integer goodid) {
        this.goodid = goodid;
    }

    public String getGoodname() {
        return goodname;
    }

    public void setGoodname(String goodname) {
        this.goodname = goodname == null ? null : goodname.trim();
    }

    public Double getGoodprice() {
        return goodprice;
    }

    public void setGoodprice(Double goodprice) {
        this.goodprice = goodprice;
    }

    public Integer getGoodstock() {
        return goodstock;
    }

    public void setGoodstock(Integer goodstock) {
        this.goodstock = goodstock;
    }

    public String getGoodinfo() {
        return goodinfo;
    }

    public void setGoodinfo(String goodinfo) {
        this.goodinfo = goodinfo == null ? null : goodinfo.trim();
    }

    public String getGoogpath() {
        return googpath;
    }

    public void setGoogpath(String googpath) {
        this.googpath = googpath == null ? null : googpath.trim();
    }
}