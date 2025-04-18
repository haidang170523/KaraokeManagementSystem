CREATE TABLE tblMatHang (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ten NVARCHAR(255) NOT NULL,
    soLuong INT NOT NULL,
    giaBan FLOAT NOT NULL
);

CREATE TABLE tblNhanVien (
    id INT IDENTITY(1,1) PRIMARY KEY,
    tenDangNhap NVARCHAR(255) NOT NULL,
    matKhau NVARCHAR(255) NOT NULL,
    tenDayDu NVARCHAR(255),
	vaiTro NVARCHAR(255)
);

INSERT INTO tblNhanVien(tenDangNhap, matKhau, tenDayDu, vaiTro) values('haidang', '123456', 'ngo hai dang', 'quanly');

INSERT INTO tblMatHang(ten, soLuong, giaBan) values('Nuoc cam', 9, 10000);

ALTER TABLE tblMatHang
ADD CONSTRAINT UQ_tblMatHang_ten UNIQUE (ten);