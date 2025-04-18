<%-- 
    Document   : TrangTimKiemMatHang
    Created on : Sep 25, 2024, 4:48:15 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="model.NhanVien" %>
<%@ page import="model.MatHang" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tìm kiếm mặt hàng</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="./css/trangTimKiemMatHang.css"/>
    </head>
    <body>
        <%
            // lay thong tin nhanVien tu session
            NhanVien nv = (NhanVien) session.getAttribute("nhanVien");
            String username = "";
            if(nv != null){
               username = nv.getTenDangNhap();
            }
           
           // lay keySearch
            String keySearch = (String) session.getAttribute("keySearch");
            if(keySearch == null){
                keySearch = "";
            }
            
            // kiem tra ket qua tra ve khi search
            ArrayList<MatHang> listMatHang = (ArrayList<MatHang>) session.getAttribute("listMatHang");
            
            // neu kho tim thay thong bao 
            String isEmpty = (String) session.getAttribute("isEmpty");
            if(isEmpty != null && isEmpty.equals("true")){                        
        %>
        <script>
            swal("Không tìm thấy sản phẩm nào", "Vui lòng thử lại", "info");
        </script>
        <%
            }
        %>
        <div class="search-container">
            <div class="logged-info">
                <span>Logged in as: <%= username %></span>
            </div>
            <div class="search-header">
                <h2>Tìm kiếm mặt hàng</h2>
            </div>            
            <form action="search-product" method="post" class="input-group mb-3">
                <input type="text" 
                       class="form-control"
                       name="keySearch"
                       placeholder="Nhập tên hoặc mã mặt hàng"
                       value="<%= keySearch %>"
                       >
                <button class="btn btn-search" type="submit">Tìm kiếm</button>
            </form>

            <div class="table-container">
                <table class="table table-bordered">
                    <thead class="table-light">
                        <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Mã Mặt Hàng</th>
                            <th scope="col">Tên MH</th>
                        </tr>
                    </thead>
                    <tbody id="item-table"> 
                        <c:set var="cnt" value="1"></c:set>
                        <c:forEach items="${listMatHang}" var="mh">

                            <tr onclick="window.location.href = '/KaraokeRestaurant/edit-product?id=${mh.id}'">     
                                <td>${cnt}</td>
                                <c:set var="cnt" value="${cnt + 1}"/>
                                <td>${mh.id}</td>
                                <td>${mh.ten}</td>                            
                            </tr>

                        </c:forEach>                        
                    </tbody>
                </table>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
