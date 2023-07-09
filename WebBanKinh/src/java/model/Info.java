/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author datng
 */
public class Info {
    private int info_id;
    private String material;
    private String color;
    private String title;
    private String description;
    private String imageUrl1;
    private String imageUrl2;
    private String imageUrl3;
    private double price;

    public Info() {
    }

    public Info(int info_id, String material, String color, String title, String description, String imageUrl1, String imageUrl2, String imageUrl3, double price) {
        this.info_id = info_id;
        this.material = material;
        this.color = color;
        this.title = title;
        this.price=price;
        this.description = description;
        this.imageUrl1 = imageUrl1;
        this.imageUrl2 = imageUrl2;
        this.imageUrl3 = imageUrl3;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getInfo_id() {
        return info_id;
    }

    public void setInfo_id(int info_id) {
        this.info_id = info_id;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImageUrl1() {
        return imageUrl1;
    }

    public void setImageUrl1(String imageUrl1) {
        this.imageUrl1 = imageUrl1;
    }

    public String getImageUrl2() {
        return imageUrl2;
    }

    public void setImageUrl2(String imageUrl2) {
        this.imageUrl2 = imageUrl2;
    }

    public String getImageUrl3() {
        return imageUrl3;
    }

    public void setImageUrl3(String imageUrl3) {
        this.imageUrl3 = imageUrl3;
    }

    @Override
    public String toString() {
        return "Info{" + "info_id=" + info_id + ", material=" + material + ", color=" + color + ", title=" + title + ", description=" + description + ", imageUrl1=" + imageUrl1 + ", imageUrl2=" + imageUrl2 + ", imageUrl3=" + imageUrl3 + ", price=" + price + '}';
    }

    

    
    
}
