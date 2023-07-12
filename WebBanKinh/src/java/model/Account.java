/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author datng
 */
public class Account {
    private int id;
    private String user;
    private String pass;
    private String email;
    private int role;
    private String fullname;
    private String address;
    private String phone;
    private int deleted;

    public Account() {
    }

    public Account(int id, String user, String pass, String email, int role, String fullname, String address, String phone, int deleted) {
        this.id = id;
        this.user = user;
        this.pass = pass;
        this.email = email;
        this.role = role;
        this.fullname = fullname;
        this.address = address;
        this.phone = phone;
        this.deleted = deleted;
    }

    public int getDeleted() {
        return deleted;
    }

    public void setDeleted(int deleted) {
        this.deleted = deleted;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", user=" + user + ", pass=" + pass + ", email=" + email + ", role=" + role + ", fullname=" + fullname + ", address=" + address + ", phone=" + phone + '}';
    }

    
    
}
