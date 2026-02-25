-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 14, 2026 lúc 03:01 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `b2203479`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietddh`
--

CREATE TABLE `chitietddh` (
  `madon` int(11) NOT NULL,
  `msp` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `dongia` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietddh`
--

INSERT INTO `chitietddh` (`madon`, `msp`, `soluong`, `dongia`) VALUES
(1, 1, 2, 20000000.00),
(2, 2, 1, 18000000.00),
(3, 3, 1, 25000000.00),
(4, 4, 1, 23000000.00),
(5, 5, 2, 19000000.00),
(6, 6, 3, 500000.00),
(7, 7, 1, 9000000.00),
(8, 8, 1, 15000000.00),
(9, 9, 1, 12000000.00),
(10, 10, 2, 3000000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiettrangthai`
--

CREATE TABLE `chitiettrangthai` (
  `madon` int(11) NOT NULL,
  `manv` int(11) DEFAULT NULL,
  `matrangthai` int(11) NOT NULL,
  `noidung` text DEFAULT NULL,
  `ngaytao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiettrangthai`
--

INSERT INTO `chitiettrangthai` (`madon`, `manv`, `matrangthai`, `noidung`, `ngaytao`) VALUES
(1, 1, 1, 'Tạo đơn hàng', '2024-02-01 08:00:00'),
(2, 2, 2, 'Xác nhận đơn', '2024-02-02 09:00:00'),
(3, 3, 3, 'Đang giao', '2024-02-03 10:00:00'),
(4, 4, 4, 'Hoàn thành', '2024-02-04 11:00:00'),
(5, 5, 5, 'Đã hủy', '2024-02-05 12:00:00'),
(6, 6, 1, 'Tạo đơn', '2024-02-06 08:00:00'),
(7, 7, 2, 'Xác nhận', '2024-02-07 09:00:00'),
(8, 8, 3, 'Đang giao', '2024-02-08 10:00:00'),
(9, 9, 4, 'Hoàn thành', '2024-02-09 11:00:00'),
(10, 10, 1, 'Tạo đơn', '2024-02-10 12:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `madon` int(11) NOT NULL,
  `ngaydat` date DEFAULT NULL,
  `makhach` int(11) DEFAULT NULL,
  `manv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`madon`, `ngaydat`, `makhach`, `manv`) VALUES
(1, '2024-02-01', 1, 1),
(2, '2024-02-02', 2, 2),
(3, '2024-02-03', 3, 3),
(4, '2024-02-04', 4, 4),
(5, '2024-02-05', 5, 5),
(6, '2024-02-06', 6, 6),
(7, '2024-02-07', 7, 7),
(8, '2024-02-08', 8, 8),
(9, '2024-02-09', 9, 9),
(10, '2024-02-10', 10, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makhach` int(11) NOT NULL,
  `hoten` varchar(150) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makhach`, `hoten`, `diachi`, `email`, `password`) VALUES
(1, 'Nguyễn Văn A', 'Hà Nội', 'a@gmail.com', '123'),
(2, 'Trần Văn B', 'TP.HCM', 'b@gmail.com', '123'),
(3, 'Lê Văn C', 'Đà Nẵng', 'c@gmail.com', '123'),
(4, 'Phạm Văn D', 'Huế', 'd@gmail.com', '123'),
(5, 'Hoàng Văn E', 'Cần Thơ', 'e@gmail.com', '123'),
(6, 'Vũ Văn F', 'Hải Phòng', 'f@gmail.com', '123'),
(7, 'Đặng Văn G', 'Quảng Ninh', 'g@gmail.com', '123'),
(8, 'Bùi Văn H', 'Nghệ An', 'h@gmail.com', '123'),
(9, 'Đỗ Văn I', 'Thanh Hóa', 'i@gmail.com', '123'),
(10, 'Ngô Văn K', 'Bình Dương', 'k@gmail.com', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `maloai` int(11) NOT NULL,
  `tenloai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`maloai`, `tenloai`) VALUES
(1, 'Điện thoại'),
(2, 'Laptop'),
(3, 'Tablet'),
(4, 'Phụ kiện'),
(5, 'Đồng hồ'),
(6, 'TV'),
(7, 'Máy lạnh'),
(8, 'Tủ lạnh'),
(9, 'Máy giặt'),
(10, 'Loa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` int(11) NOT NULL,
  `hotennv` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `hotennv`, `email`, `password`) VALUES
(1, 'Nguyễn NV1', 'nv1@gmail.com', '123'),
(2, 'Nguyễn NV2', 'nv2@gmail.com', '123'),
(3, 'Nguyễn NV3', 'nv3@gmail.com', '123'),
(4, 'Nguyễn NV4', 'nv4@gmail.com', '123'),
(5, 'Nguyễn NV5', 'nv5@gmail.com', '123'),
(6, 'Nguyễn NV6', 'nv6@gmail.com', '123'),
(7, 'Nguyễn NV7', 'nv7@gmail.com', '123'),
(8, 'Nguyễn NV8', 'nv8@gmail.com', '123'),
(9, 'Nguyễn NV9', 'nv9@gmail.com', '123'),
(10, 'Nguyễn NV10', 'nv10@gmail.com', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `msp` int(11) NOT NULL,
  `tensp` varchar(200) DEFAULT NULL,
  `dongia` decimal(12,2) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `link_hinh` varchar(255) DEFAULT NULL,
  `maloai` int(11) DEFAULT NULL,
  `ngaythem` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`msp`, `tensp`, `dongia`, `mota`, `link_hinh`, `maloai`, `ngaythem`) VALUES
(1, 'iPhone 14', 20000000.00, 'Điện thoại Apple', 'iphone.jpg', 1, '2024-01-01'),
(2, 'Samsung S23', 18000000.00, 'Điện thoại Samsung', 'samsung.jpg', 1, '2024-01-02'),
(3, 'MacBook Air', 25000000.00, 'Laptop Apple', 'macbook.jpg', 2, '2024-01-03'),
(4, 'Dell XPS', 23000000.00, 'Laptop Dell', 'dell.jpg', 2, '2024-01-04'),
(5, 'iPad Pro', 19000000.00, 'Tablet Apple', 'ipad.jpg', 3, '2024-01-05'),
(6, 'Tai nghe Bluetooth', 500000.00, 'Phụ kiện', 'tainghe.jpg', 4, '2024-01-06'),
(7, 'Apple Watch', 9000000.00, 'Đồng hồ thông minh', 'watch.jpg', 5, '2024-01-07'),
(8, 'Smart TV LG', 15000000.00, 'TV LG', 'tv.jpg', 6, '2024-01-08'),
(9, 'Máy lạnh Daikin', 12000000.00, 'Máy lạnh', 'ml.jpg', 7, '2024-01-09'),
(10, 'Loa JBL', 3000000.00, 'Loa Bluetooth', 'loa.jpg', 10, '2024-01-10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangthai`
--

CREATE TABLE `trangthai` (
  `matrangthai` int(11) NOT NULL,
  `tentrangthai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `trangthai`
--

INSERT INTO `trangthai` (`matrangthai`, `tentrangthai`) VALUES
(1, 'Chờ xác nhận'),
(2, 'Đã xác nhận'),
(3, 'Đang giao hàng'),
(4, 'Hoàn thành'),
(5, 'Đã hủy');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietddh`
--
ALTER TABLE `chitietddh`
  ADD PRIMARY KEY (`madon`,`msp`),
  ADD KEY `fk_chitietddh_sanpham` (`msp`);

--
-- Chỉ mục cho bảng `chitiettrangthai`
--
ALTER TABLE `chitiettrangthai`
  ADD PRIMARY KEY (`madon`,`matrangthai`,`ngaytao`),
  ADD KEY `fk_cttt_nhanvien` (`manv`),
  ADD KEY `fk_cttt_trangthai` (`matrangthai`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`madon`),
  ADD KEY `fk_dondathang_khachhang` (`makhach`),
  ADD KEY `fk_dondathang_nhanvien` (`manv`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhach`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`maloai`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`msp`),
  ADD KEY `fk_sanpham_loaisp` (`maloai`);

--
-- Chỉ mục cho bảng `trangthai`
--
ALTER TABLE `trangthai`
  ADD PRIMARY KEY (`matrangthai`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietddh`
--
ALTER TABLE `chitietddh`
  ADD CONSTRAINT `fk_chitietddh_dondathang` FOREIGN KEY (`madon`) REFERENCES `dondathang` (`madon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_chitietddh_sanpham` FOREIGN KEY (`msp`) REFERENCES `sanpham` (`msp`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitiettrangthai`
--
ALTER TABLE `chitiettrangthai`
  ADD CONSTRAINT `fk_cttt_dondathang` FOREIGN KEY (`madon`) REFERENCES `dondathang` (`madon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cttt_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cttt_trangthai` FOREIGN KEY (`matrangthai`) REFERENCES `trangthai` (`matrangthai`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `fk_dondathang_khachhang` FOREIGN KEY (`makhach`) REFERENCES `khachhang` (`makhach`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_dondathang_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sanpham_loaisp` FOREIGN KEY (`maloai`) REFERENCES `loaisp` (`maloai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
