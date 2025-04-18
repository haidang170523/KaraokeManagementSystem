

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.NhanVien" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Giao diện nhân viên</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./css/trangChuQuanLy.css"/>
    </head>
    <body>
        <%
            // lay thong tin nhanVien tu session
            NhanVien nv = (NhanVien) session.getAttribute("nhanVien");
            String username = "";
            if(nv != null){
                username = nv.getTenDangNhap();
            }
        %>
        <div class="management-box">
            <div class="logged-info">
                <span>Logged in as: <%= username %></span>
            </div>
            <h2>Giao diện nhân viên</h2>
            <a href="/KaraokeRestaurant/product-manager">
                <button type="button" class="btn btn-management w-100">
                    Quản lý thông tin mặt hàng bán kèm
                </button>
            </a>
            <a href="#">
                <button type="button" class="btn btn-management w-100">               
                    Nhập hàng từ nhà cung cấp                
                </button>
            </a>
            <a href="#">            
                <button type="button" class="btn btn-management w-100">
                    Xem báo cáo thống kê
                </button>
            </a> 
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
