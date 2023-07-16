/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author datng
 */
public class Product {
    private int id;
    private String name;
    private int category_id;
    private int brand_id;
    private double price;
    private String imageurl;
    private Date createTime;
    private int deleted;
    private int status;
    
    public Product(){
    }

    public Product(int id, String name, int category_id, int brand_id, double price, String imageurl, Date createTime, int deleted, int status) {
        this.id = id;
        this.name = name;
        this.category_id = category_id;
        this.brand_id = brand_id;
        this.price = price;
        this.imageurl = imageurl;
        this.createTime = createTime;
        this.deleted = deleted;
        this.status = status;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    

    public int getDeleted() {
        return deleted;
    }

    public void setDeleted(int deleted) {
        this.deleted = deleted;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImageurl() {
        return imageurl;
    }

    public void setImageurl(String imageurl) {
        this.imageurl = imageurl;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", category_id=" + category_id + ", brand_id=" + brand_id + ", price=" + price + ", imageurl=" + imageurl + ", createTime=" + createTime + '}';
    }
    
    
    
}
