# Hệ thống quản lý Karaoke

*Một ứng dụng web để tự động hóa quản lý quán Karaoke, tối ưu hóa quy trình và nâng cao hiệu quả kinh doanh.*

---

## Giới thiệu

Hệ thống quản lý Karaoke là một dự án cá nhân được phát triển để tự động hóa các hoạt động quản lý tại một quán Karaoke, bao gồm quản lý mặt hàng, nhập hàng từ nhà cung cấp, và thống kê doanh thu. Dự án này được xây dựng nhằm:

- Tăng hiệu quả vận hành bằng cách giảm thời gian xử lý thủ công.
- Hỗ trợ quản lý ra quyết định thông qua báo cáo doanh thu chi tiết.
- Nâng cao kỹ năng Business Analyst và lập trình (Java, MySQL) thông qua một sản phẩm thực tế.

Dự án được thiết kế theo kiến trúc MVC, sử dụng Java, JSP, và MySQL, phù hợp để triển khai trên các quán Karaoke quy mô nhỏ đến trung bình.

---

## Chức năng chính

- **Quản lý mặt hàng**: Thêm, sửa, xóa thông tin mặt hàng (VD: đồ uống, đồ ăn nhẹ).
- **Nhập hàng**: Chọn nhà cung cấp, nhập số lượng, đơn giá, và xác nhận đơn hàng.
- **Thống kê doanh thu**: Lọc và hiển thị báo cáo doanh thu theo thời gian hoặc loại mặt hàng.
- **Quản lý người dùng**: Đăng ký, đăng nhập, quên mật khẩu, phân quyền (nhân viên, quản lý).

---

## Công nghệ sử dụng

- **Frontend**: JSP, HTML, CSS
- **Backend**: Java (Java EE)
- **Cơ sở dữ liệu**: MySQL
- **Kiến trúc**: MVC (Model-View-Controller)
- **Công cụ phát triển**:
  - IDE: NetBeans
  - Thiết kế: Draw.io (sơ đồ UML), Figma (wireframes)
  - Quản lý dự án: Trello
- **Môi trường triển khai**: Ứng dụng web, tương thích với laptop và máy tính bảng

---

## Cài đặt và chạy dự án

### Yêu cầu
- Java Development Kit (JDK) 8 hoặc cao hơn
- MySQL Community Edition 8.0
- NetBeans IDE hoặc Eclipse
- Apache Tomcat (dành cho triển khai ứng dụng web)
- Git (để clone repository)

### Hướng dẫn cài đặt

1. **Clone repository**:
   ```bash
   git clone https://github.com/[your-username]/karaoke-management-system.git
   cd karaoke-management-system
   ```

2. **Thiết lập cơ sở dữ liệu**:
   - Tạo database MySQL:
     ```sql
     CREATE DATABASE karaoke_db;
     ```
   - Chạy script SQL trong thư mục `database/setup.sql` để tạo bảng và dữ liệu mẫu.

3. **Cấu hình dự án**:
   - Mở dự án trong NetBeans/Eclipse.
   - Cập nhật thông tin kết nối database trong file `src/main/resources/database.properties`:
     ```properties
     url=jdbc:mysql://localhost:3306/karaoke_db
     username=root
     password=[your-password]
     ```

4. **Triển khai ứng dụng**:
   - Cấu hình Apache Tomcat trong IDE.
   - Chạy dự án và truy cập tại `http://localhost:8080/karaoke-management`.

5. **Tài khoản mặc định**:
   - Quản lý: `admin/admin123`
   - Nhân viên: `staff/staff123`

---

## Tài liệu dự án

Bộ tài liệu phân tích và đặc tả được lưu trong thư mục `docs/`:
- **SRS - Hệ thống quản lý Karaoke.docx**: Đặc tả yêu cầu phần mềm chi tiết.
- **Business Case - Hệ thống quản lý Karaoke.docx**: Mục tiêu kinh doanh, chi phí-lợi ích, rủi ro.
- **Stakeholder Analysis.xlsx**: Phân tích các bên liên quan.
- **Requirements Traceability Matrix.xlsx**: Ma trận truy xuất yêu cầu.
- **Process Models.pdf**: Sơ đồ quy trình as-is và to-be.
- **Wireframes.pdf**: Phác thảo giao diện người dùng.
- **Data Dictionary.docx**: Từ điển dữ liệu cho cơ sở dữ liệu.
- **Test Scenarios Outline.xlsx**: Kịch bản kiểm thử.
- **Risk Register.xlsx**: Sổ đăng ký rủi ro.

---

## Đóng góp

Mọi đóng góp đều được hoan nghênh! Để đóng góp:
1. Fork repository này.
2. Tạo branch mới: `git checkout -b feature/your-feature`.
3. Commit thay đổi: `git commit -m "Add your feature"`.
4. Push lên branch: `git push origin feature/your-feature`.
5. Tạo Pull Request trên GitHub.

Vui lòng tham khảo [CONTRIBUTING.md](CONTRIBUTING.md) để biết chi tiết.

---

## Liên hệ

- **Tác giả**: Hải Đăng
- **Email**: sorrydang2k3@gmail.com
- **GitHub**: haidang170523

Nếu bạn có câu hỏi hoặc muốn thảo luận về dự án, hãy mở một issue trên GitHub hoặc liên hệ trực tiếp!
