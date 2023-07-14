/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author datng
 */
public class OrderDetail {
    /*
    [od_id] int not null identity(1,1) primary key,
	[order_id]  int  ,
	[product_id] int ,
	[price] float ,
	[quantity] int ,
    */
    private int od_id;
    private int order_id;
    private int product_id;
    private int quantity;
    private double price;

    public OrderDetail() {
    }

    public OrderDetail(int od_id, int order_id, int product_id, int quantity, double price) {
        this.od_id = od_id;
        this.order_id = order_id;
        this.product_id = product_id;
        this.quantity = quantity;
        this.price = price;
    }

    public int getOd_id() {
        return od_id;
    }

    public void setOd_id(int od_id) {
        this.od_id = od_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "od_id=" + od_id + ", order_id=" + order_id + ", product_id=" + product_id + ", quantity=" + quantity + ", price=" + price + '}';
    }
    
}
