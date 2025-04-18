
package model;

import java.io.Serializable;

/**
 *
 * @author PC
 */
public class MatHang implements Serializable{
    private int id;
    private String ten;
    private int soLuong;
    private double giaBan;

    public MatHang() {
    }

    public MatHang(int id, String ten, int soLuong, double giaBan) {
        this.id = id;
        this.ten = ten;
        this.soLuong = soLuong;
        this.giaBan = giaBan;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public double getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(double giaBan) {
        this.giaBan = giaBan;
    }
    
    
}
