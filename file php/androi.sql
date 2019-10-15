-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 15, 2019 lúc 04:06 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `androi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhoi`
--

CREATE TABLE `cauhoi` (
  `id` int(11) NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `a` text COLLATE utf8_unicode_ci NOT NULL,
  `b` text COLLATE utf8_unicode_ci NOT NULL,
  `c` text COLLATE utf8_unicode_ci NOT NULL,
  `d` text COLLATE utf8_unicode_ci NOT NULL,
  `dapan_dung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cauhoi`
--

INSERT INTO `cauhoi` (`id`, `noidung`, `a`, `b`, `c`, `d`, `dapan_dung`) VALUES
(1, 'Ai đi thuyền nhiều nhất', 'Người có tiền', 'Dân chài', 'Người hay du lịch', 'Ai thích thì người ta đi hoy', 'Dân chài'),
(2, 'Con gì 3 măt 1 chân, không tai không miệng là con gì', 'Con ma', 'Cột đèn giao thông', 'Con yêu quái', 'Củ nhân sâm', 'Cột đèn giao thông'),
(3, 'Tại sao nước sôi mới cho rau vào nồi', 'Chưa sôi sao chín', 'Rau mềm hơn', 'Rau tưoi hơn', 'Thíc thế', 'Chưa sôi sao chín'),
(4, 'Tôi có lại bảo là không, Không ngon, không đẹp, nhưng ai cũng cần - Là gì?', 'Chân không', 'KHông trung', 'Không khí', 'Không gian', 'Không khí'),
(5, 'Đàn bà thích cầm gì nhất của đàn ông', 'Tiền', 'Quần', 'Tay', 'Cái dài dài ý', 'Tiền'),
(6, 'Người nào thường xuyên cảm thấy gió to?', 'Phi công', 'Người làm đồng', 'Người đứng ở tâm bão', 'Người đi xe máy', 'Người đi xe máy'),
(7, 'Con chó tè thường dơ chân nào lên?', 'Chân trái', 'Chân phải', 'Hai chân', 'Chân nào cũng được', 'Chân nào cũng được'),
(8, 'Cây gì 3 cành 7 rễ?', 'Cây nhân sâm', ' Cây trầu', 'Cây tam thất', 'Cây đa', 'Cây tam thất'),
(9, 'Điền vào chỗ còn thiếu: \"Một con ngựa đau cả tàu ...\"?', 'Được ăn thêm cỏ', 'Kệ nó', 'An ủi', 'Bỏ cỏ', 'Bỏ cỏ'),
(10, 'Bạn có chiêu nào để thức trắng 7 ngày mà vẫn không thiếu ngủ?', 'Ăn mù tạt', 'Uống cafe', 'Làm ứ gì có nhỉ!', 'Ngủ đêm', 'Ngủ đêm'),
(11, '1 + 1 nhân 2 bằng mấy ?', '1', '3', '4', '5', '3'),
(12, 'Đồng là đơn vị tiền tệ lưu thông trên quốc gia nào', 'Trung Quốc', 'Lào', 'Cả 3 nươc trên', 'Việt Nam', 'Việt Nam'),
(13, 'Ở VN, Rồng bay ở đâu', 'Dragon Park', 'Thăng Long', 'Hạ Long', 'Bến cảng nhà Rồng', 'Thăng Long'),
(14, 'Con gì nói được tiếng người nhưng lại không làm việc được như người', 'Con chó', 'Con Vẹt', 'Con Tinh Tinh', 'Con ngu :)))', 'Con Vẹt'),
(15, 'Cái gì càng đẩy càng căng', 'Bơm xe', 'Hổng biết', 'Nghĩ bậy', 'Chống đẩy', 'Bơm xe'),
(16, 'Chữ số gì để xuôi để ngược vẫnkhông thay đổi', '4', '0', '6', '9', '0'),
(17, '1kg bông với 1kg sắt cái nào nặng hơn', 'Bông', 'Sắt', 'Bằng nhau', 'Cả 3 đáp án đều sai', 'Bằng nhau'),
(18, 'Cái gì càng chơi càng ra nước', 'Chơi người lớn', 'Chơi bài', 'Chuyện ấy', 'Chơi cờ', 'Chơi cờ'),
(19, 'Con của con trâu là nghé, con của con bò là bê. Vậy con lừa mẹ là con gì?', 'Con lừa', 'Con hư', 'Next đi...', 'Con lừa con', 'Con hư'),
(20, 'Vì sao mơ thấy hụt chân ta thường tỉnh giấc', 'Sợ u đầu', 'Đau chân', 'Vì không ngủ được nữa', 'Giật mình', 'Giật mình'),
(21, 'Vì sao con chó sủa mà con mèo không sủa ?', 'Vì con mèo sợ con chó', 'Tại con mèo không biết sủa', 'Tại con mèo kêu meo meo', 'Tại con mèo ngu', 'Tại con mèo không biết sủa'),
(22, 'Con gì biết đi nhưng người ta lại bảo là không biết đi', 'con người', 'con thú', 'Con bò', 'làm gì có ta', 'Con bò');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diem`
--

CREATE TABLE `diem` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scores` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diem`
--

INSERT INTO `diem` (`id`, `name`, `scores`) VALUES
(1, '0', 3),
(2, '0', 5),
(3, 'ten', 5),
(4, 'gsf', 0),
(5, 'hihi', 10),
(6, 'sg', 0),
(7, 'con meo', 5),
(8, 'sdf', 0),
(9, 'ducdangiu', 5),
(10, 'duchienlanh', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email`
--

CREATE TABLE `email` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `email`
--

INSERT INTO `email` (`email`, `password`) VALUES
('mail1@gmail.com', '123456'),
('email3@gmail.com', '1234566');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ghichu`
--

CREATE TABLE `ghichu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noidung` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `ghichu`
--

INSERT INTO `ghichu` (`id`, `name`, `noidung`) VALUES
(1, 'hoctap', 'Hoc tu vung, tu moi, program'),
(2, 'congviec', 'Báo cáo lúc 7h15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi`
--

CREATE TABLE `nguoi` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi`
--

INSERT INTO `nguoi` (`id`, `name`, `phone`) VALUES
(1, 'nguyen van a', '012345678'),
(46, 'con mei', '234'),
(47, 'nguyen van b', '12349233'),
(48, 'df', '45'),
(49, 'df', '465'),
(50, 'sdf', 'sdf'),
(51, 'sdf', 'f'),
(52, 'sdf', 'f'),
(53, 'sdf', 'f');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhatki`
--

CREATE TABLE `nhatki` (
  `id` int(11) NOT NULL,
  `ngay` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhatki`
--

INSERT INTO `nhatki` (`id`, `ngay`, `noidung`) VALUES
(15, '01/10/2019', 'đi học'),
(16, '02/10/2019', 'đi làm'),
(17, '03/10/2019', 'đi mua sắm');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ghichu`
--
ALTER TABLE `ghichu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoi`
--
ALTER TABLE `nguoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhatki`
--
ALTER TABLE `nhatki`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `diem`
--
ALTER TABLE `diem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `ghichu`
--
ALTER TABLE `ghichu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nguoi`
--
ALTER TABLE `nguoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `nhatki`
--
ALTER TABLE `nhatki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
