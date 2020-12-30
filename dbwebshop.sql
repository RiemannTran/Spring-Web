CREATE TABLE CHUCVU (
machucvu integer AUTO_INCREMENT PRIMARY KEY,
tenchucvu nvarchar(30) NOT NULL
);

CREATE TABLE ROLES (
 marole integer NOT NULL AUTO_INCREMENT  PRIMARY KEY,
 tenrole varchar(255) NOT NULL
);
CREATE TABLE NHANVIENROLE (
 manhanvien integer NOT NULL,
 marole integer NOT NULL,
 PRIMARY KEY (manhanvien,marole)
);

CREATE TABLE NHANVIEN (
manhanvien integer AUTO_INCREMENT PRIMARY KEY,
hoten nvarchar(50) ,
diachi nvarchar(100),
gioitinh bit,
machucvu integer,
email nvarchar(50),
tendangnhap nvarchar(50),
matkhau varchar(50),
enabled tinyint,
CONSTRAINT FK_NHANVIEN_CHUCVU FOREIGN KEY (machucvu)
REFERENCES CHUCVU(machucvu)
);

CREATE TABLE DANHMUC (
madanhmuc integer AUTO_INCREMENT PRIMARY KEY,
tendanhmuc nvarchar(50) ,
hinhdanhmuc text
);

CREATE TABLE SANPHAM (
masanpham integer AUTO_INCREMENT PRIMARY KEY,
madanhmuc integer,
tensanpham nvarchar(100),
tenhang nvarchar(100),
giahoadontien varchar(50),
mota text,
hinhsanpham text,
CONSTRAINT FK_SANPHAM_DANHMUC FOREIGN KEY (madanhmuc)
REFERENCES DANHMUC(madanhmuc)
);

CREATE TABLE MAUSANPHAM (
mamau integer AUTO_INCREMENT PRIMARY KEY,
tenmau nvarchar(50)
);


CREATE TABLE CHITIETSANPHAM (
machitietsanpham integer AUTO_INCREMENT PRIMARY KEY,
masanpham integer,
mahang integer,
mamau integer,
soluong integer,
ngaynhap nvarchar(50),
CONSTRAINT FK_CHITIET_SANPHAM FOREIGN KEY (masanpham) REFERENCES SANPHAM(masanpham),
CONSTRAINT FK_CHITIET_LOAIHANG FOREIGN KEY (mahang)REFERENCES LOAIHANG(mahang),
CONSTRAINT FK_CHITIET_MAU FOREIGN KEY (mamau)REFERENCES MAUSANPHAM(mamau)
);

CREATE TABLE KHUYENMAI (
makhuyenmai integer AUTO_INCREMENT PRIMARY KEY,
tenkhuyenmai nvarchar(50),
thoigianbatdau nvarchar(50),
thoigianketthuc nvarchar(50),
mota text,
hinhanhkhuyenmai text
);

CREATE TABLE CHITIETKHUYENMAI (
makhuyenmai integer,
masanpham integer,
giamgia integer,
primary key(makhuyenmai,masanpham),
CONSTRAINT FK_CHITIETKHUYENMAI_SANPHAM FOREIGN KEY (masanpham)REFERENCES SANPHAM(masanpham)
);

CREATE TABLE HOADON (
mahoadon integer AUTO_INCREMENT PRIMARY KEY,
tenkhachhang nvarchar(50),
sodt nvarchar(50),
diachigiaohang nvarchar(100),
tinhtrang bit,
ngaymua nvarchar(10)
);

CREATE TABLE CHITIETHOADON (
mahoadon integer,
machitietsanpham integer,
soluong integer,
giatien varchar(50),
primary key(mahoadon,machitietsanpham),
CONSTRAINT FK_CTHOADON FOREIGN KEY (mahoadon)REFERENCES HOADON(mahoadon),
CONSTRAINT FK_CTSANPHAM FOREIGN KEY (machitietsanpham)REFERENCES CHITIETSANPHAM(machitietsanpham)
);

