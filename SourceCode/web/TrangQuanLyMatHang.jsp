<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.NhanVien" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Quản lý thông tin mặt hàng</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./css/trangQuanLyMatHang.css"/>
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

        <div class="product-management-box">
            <div class="logged-info">
                <span>Logged in as: <%= username %></span>
            </div>
            <h2>Quản lý thông tin mặt hàng</h2>
            <button type="button" class="btn btn-product w-100">
                Thêm mặt hàng
            </button>
            <a href="/KaraokeRestaurant/search-product">
                <button type="button" class="btn btn-product w-100">
                    Sửa thông tin mặt hàng
                </button>
            </a>             
            <button type="button" class="btn btn-product w-100">
                Xóa thông tin mặt hàng
            </button>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
