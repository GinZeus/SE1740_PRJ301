/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author datng
 */
public class Brand {
    private int bid;
    private String bname;
    private String baddress;

    public Brand() {
    }

    public Brand(int bid, String bname, String baddress) {
        this.bid = bid;
        this.bname = bname;
        this.baddress = baddress;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getBaddress() {
        return baddress;
    }

    public void setBaddress(String baddress) {
        this.baddress = baddress;
    }

    @Override
    public String toString() {
        return "Brand{" + "bid=" + bid + ", bname=" + bname + ", baddress=" + baddress + '}';
    }
    
    
}
