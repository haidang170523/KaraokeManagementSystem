package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.NhanVien;

public class NhanVienDAO extends DAO{
     public NhanVienDAO() {
        super();
    }
    
    public boolean kiemTraDangNhap(NhanVien nv){
        String sql = "select tenDayDu, vaiTro, id from tblNhanVien where tenDangNhap = ? and matKhau = ?";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, nv.getTenDangNhap());
            ps.setString(2, nv.getMatKhau());
            ResultSet rs = ps.executeQuery();
            System.out.println(sql);
            if(rs.next()){
                nv.setId(rs.getInt("id"));
                nv.setTenDayDu(rs.getString("tenDayDu"));
                nv.setVaiTro(rs.getString("vaiTro"));
                return true;
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return false;
    }
}
