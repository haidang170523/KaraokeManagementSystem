<%-- 
    Document   : TrangSuaThongTinMatHang
    Created on : Sep 25, 2024, 4:51:42 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.NhanVien" %>
<%@ page import="model.MatHang" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sửa thông tin mặt hàng</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./css/trangSuaThongTinMatHang.css"/>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        <%
            // lay thong tin nhanVien tu session
            NhanVien nv = (NhanVien) session.getAttribute("nhanVien");
            String username = "";
            if(nv != null){
                username = nv.getTenDangNhap();
            }
            
            // lay id tu paramater
            int idMatHang = Integer.parseInt(request.getParameter("id"));
            
            // lay danh sach mat hang 
            ArrayList<MatHang> listMatHang = (ArrayList<MatHang>) session.getAttribute("listMatHang");
            MatHang matHang = new MatHang();
            for(int i = 0; i < listMatHang.size(); i++){
                if(listMatHang.get(i).getId() == idMatHang){
                    matHang = listMatHang.get(i);
                    break;
                } 
            }     

            // check kiem tra xem cap nhat dung thi hien thanh cong
            String editSuccess = (String) session.getAttribute("editSuccess");
            if(editSuccess != null && editSuccess.equals("true")){                        
        %>
        <script>
            swal("Success", "Cập nhật thành công", "success").then(function () {
                // Khi người dùng nhấn "OK", chuyển hướng về trang chủ
                window.location.href = "/KaraokeRestaurant/home-manager"; // Thay đổi URL theo trang chủ của bạn
            });
        </script>
        <%
            }
             session.removeAttribute("editSuccess");      

            //check kiem tra xem cap nhat loi thi hien ko thanh cong
            String editFail = (String) session.getAttribute("editFail");
            if(editFail != null && editFail.equals("true")){   
        %>
        <script>
            swal("Cập nhật thất bại", "Vui lòng thử lại", "error");
        </script>
        <%
            }
             session.removeAttribute("editFail");     

            String error = (String) session.getAttribute("error");
            if(error != null && error.equals("true")){
        %>
        <script>
            swal("Cập nhật thất bại", "Vui lòng thử lại do ten san pham da ton tai", "error");
        </script>
        <%
            }
             session.removeAttribute("error");  
        %>
        
        <div class="edit-container">
            <div class="logged-info">
                <span>Logged in as: <%=username%></span>
            </div>
            <div class="edit-header">
                <h2>Sửa thông tin mặt hàng</h2>
            </div>
            <form action="edit-product" method="post">
                <div class="mb-3">
                    <label for="maMH" class="form-label">Mã MH</label>
                    <input type="text"
                           class="form-control"
                           id="maMH"  
                           name="maMh"
                           readonly 
                           value="<%= matHang.getId() %>"
                           >
                </div>
                <div class="mb-3">
                    <label for="tenMH" class="form-label">Tên MH</label>
                    <input type="text"
                           class="form-control"
                           id="tenMH"                           
                           name="tenMh"
                           value="<%= matHang.getTen() %>"
                           >
                </div>
                <div class="mb-3">
                    <label for="gia" class="form-label">Giá</label>
                    <input type="number"
                           class="form-control"
                           id="gia"                           
                           name="giaBan"
                           value="<%= matHang.getGiaBan() %>"
                           >
                </div>
                <div class="mb-3">
                    <label for="soLuong" class="form-label">Số lượng</label>
                    <input type="number"
                           class="form-control"
                           id="soLuong"
                           name="soLuong"
                           value="<%= matHang.getSoLuong() %>"
                           >
                </div>
                <div class="d-flex justify-content-between">
                    <button type="submit" class="btn btn-update">Cập nhật</button>
                    <a href="/KaraokeRestaurant/home-manager">
                        <button type="button" class="btn btn-cancel">Hủy</button>
                    </a>
                </div>
            </form>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
