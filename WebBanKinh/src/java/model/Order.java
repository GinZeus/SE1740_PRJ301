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
public class Order {
    
   /*
    [order_id] int not null identity(1,1) primary key,
	[user_id] int ,
	[fullname] nvarchar(255),
	[address] nvarchar(255),
	[email] varchar(255),
	[phone_number] varchar(20),
	[note] nvarchar(1000) ,
	[oder_date] DATETIME ,
	[status] int ,
	[total_money] float */
    private int order_id;
    private int user_id;
    private String fullname;
    private String address;
    private String email;
    private String phone_number;
    private String note;
    private Date date;
    private int status;
    private double total_money;

    public Order() {
    }

    public Order(int order_id, int user_id, String fullname, String address, String email, String phone_number, String note, Date date, int status, double total_money) {
        this.order_id = order_id;
        this.user_id = user_id;
        this.fullname = fullname;
        this.address = address;
        this.email = email;
        this.phone_number = phone_number;
        this.note = note;
        this.date = date;
        this.status = status;
        this.total_money = total_money;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    


    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public double getTotal_money() {
        return total_money;
    }

    public void setTotal_money(double total_money) {
        this.total_money = total_money;
    }

    @Override
    public String toString() {
        return "Order{" + "order_id=" + order_id + ", user_id=" + user_id + ", fullname=" + fullname + ", address=" + address + ", email=" + email + ", phone_number=" + phone_number + ", note=" + note + ", date=" + date + ", status=" + status + ", total_money=" + total_money + '}';
    }

    
    
    
}
