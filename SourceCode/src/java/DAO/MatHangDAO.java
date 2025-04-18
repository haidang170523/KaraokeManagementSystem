/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.MatHang;

/**
 *
 * @author PC
 */
public class MatHangDAO extends DAO{
    public MatHangDAO(){
        super();
    }
    
    public ArrayList<MatHang> timMatHangTheoTen(String keySearch){
        ArrayList<MatHang> res = new ArrayList<>();
        String sql = "select * from tblMatHang where ten like ?";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + keySearch + "%");            
            ResultSet rs = ps.executeQuery();
            System.out.println(sql);
            while(rs.next()){
                MatHang mh = new MatHang();
                mh.setId(rs.getInt("id"));
                mh.setTen(rs.getString("ten"));
                mh.setSoLuong(rs.getInt("soLuong"));
                mh.setGiaBan(rs.getDouble("giaBan"));
                
                res.add(mh);
            }
            
        }catch(SQLException e){
            System.out.println(e);
        }
        return res;
    }
    
    public boolean capNhatThongTinMatHang(MatHang mh) {
        String sql = "update tblMatHang set ten = ?, soLuong = ?, giaBan = ? where id = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, mh.getTen());
            st.setInt(2, mh.getSoLuong());
            st.setDouble(3, mh.getGiaBan());
            st.setInt(4, mh.getId());
            st.executeUpdate();
            
            return true;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }
}
