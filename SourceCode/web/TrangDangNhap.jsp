
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đăng nhập</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./css/trangDangNhap.css"/>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        
        <%
            // kiểm tra nếu đăng nhập thất bại hiện lỗi
            String loginError = (String) session.getAttribute("loginError");            
            String username = (String) session.getAttribute("username");
            String password = (String) session.getAttribute("password");
            if(username == null){
                username = "";                
            }
            if(password == null){
                password = "";
            }
            if (loginError != null && loginError.equals("true")) {
        %>
        <script>
            swal("Thông tin đăng nhập sai", "Vui lòng thử lại", "error");
        </script>
        <%
            }
        %>

        <div class="login-box">
            <h2>Đăng nhập</h2>
            <form action="login" method="post">
                <div class="mb-3">
                    <label for="username" class="form-label">Tên Đăng nhập</label>
                    <input type="text" 
                           required
                           name="username" 
                           class="form-control" 
                           id="username" 
                           placeholder="Nhập tên đăng nhập"
                           value="<%= username %>"
                    >
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Mật khẩu</label>
                    <div class="input-group">
                        <input type="password" 
                               name="password" 
                               required
                               class="form-control" 
                               id="password" 
                               placeholder="Nhập mật khẩu" 
                               value="<%= password %>"
                        >
                        <span class="input-group-text" onclick="togglePassword()">
                            <i id="eye-icon" class="fas fa-eye"></i>
                        </span>
                    </div>
                </div>
                <button type="submit" class="btn btn-login w-100">Đăng nhập</button>
                <div class="text-link">
                    <a href="#">Quên mật khẩu?</a> | <a href="#">Đăng ký</a>
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
        <script src="./js/trangDangNhap.js"></script>
    </body>
</html>
