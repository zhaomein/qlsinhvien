-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2019 at 03:41 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_qlsinhvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `diems`
--

CREATE TABLE `diems` (
  `id` int(10) UNSIGNED NOT NULL,
  `diemcc` float DEFAULT NULL,
  `diemtx` float DEFAULT NULL,
  `diemgk` float DEFAULT NULL,
  `diemck` float DEFAULT NULL,
  `diemthilai` float DEFAULT NULL,
  `monhoc_id` int(10) UNSIGNED DEFAULT NULL,
  `sinhvien_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diems`
--

INSERT INTO `diems` (`id`, `diemcc`, `diemtx`, `diemgk`, `diemck`, `diemthilai`, `monhoc_id`, `sinhvien_id`, `created_at`, `updated_at`) VALUES
(1, 5, 5, 1, 5, NULL, 1, 1, NULL, '2018-01-23 21:57:20'),
(2, 10, 10, 10, 10, NULL, 2, 1, NULL, '2018-01-11 18:34:01'),
(3, 10, 10, 10, 10, NULL, 4, 1, NULL, '2018-01-11 18:34:18'),
(4, 10, 10, 10, 10, NULL, 5, 1, NULL, '2018-01-11 18:34:33'),
(5, 10, 10, 10, 10, NULL, 6, 1, NULL, '2018-01-11 18:34:47'),
(6, 10, 10, 10, 10, NULL, 7, 1, NULL, '2018-01-11 18:35:01'),
(7, 10, 10, 10, 10, NULL, 8, 1, NULL, '2018-01-11 18:35:18'),
(8, 10, 10, 10, 10, NULL, 10, 1, NULL, '2018-01-11 18:35:33'),
(9, 10, 10, 10, 10, NULL, 11, 1, NULL, '2018-01-11 18:35:50'),
(10, 4, 10, 10, NULL, 0, 12, 1, NULL, '2018-01-11 20:31:43'),
(11, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL, 4, 2, NULL, NULL),
(14, NULL, NULL, NULL, NULL, NULL, 5, 2, NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, 6, 2, NULL, NULL),
(16, NULL, NULL, NULL, NULL, NULL, 7, 2, NULL, NULL),
(17, NULL, NULL, NULL, NULL, NULL, 8, 2, NULL, NULL),
(18, NULL, NULL, NULL, NULL, NULL, 10, 2, NULL, NULL),
(19, NULL, NULL, NULL, NULL, NULL, 11, 2, NULL, NULL),
(20, NULL, NULL, NULL, NULL, NULL, 12, 2, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL, 1, 3, NULL, NULL),
(22, NULL, NULL, NULL, NULL, NULL, 2, 3, NULL, NULL),
(23, NULL, NULL, NULL, NULL, NULL, 4, 3, NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL, 5, 3, NULL, NULL),
(25, NULL, NULL, NULL, NULL, NULL, 6, 3, NULL, NULL),
(26, NULL, NULL, NULL, NULL, NULL, 7, 3, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL, 8, 3, NULL, NULL),
(28, NULL, NULL, NULL, NULL, NULL, 10, 3, NULL, NULL),
(29, NULL, NULL, NULL, NULL, NULL, 11, 3, NULL, NULL),
(30, NULL, NULL, NULL, NULL, NULL, 12, 3, NULL, NULL),
(49, 9, 9, 9, 9, NULL, 1, 7, NULL, '2018-01-11 18:33:34'),
(50, 9, 9, 9, 9, NULL, 2, 7, NULL, '2018-01-11 18:34:05'),
(51, 9, 9, 9, 9, NULL, 4, 7, NULL, '2018-01-11 18:34:20'),
(52, 10, 10, 10, 10, NULL, 5, 7, NULL, '2018-01-11 18:34:35'),
(53, 9, 9, 9, 9, NULL, 6, 7, NULL, '2018-01-11 18:34:49'),
(54, 9, 9, 9, 9, NULL, 7, 7, NULL, '2018-01-11 18:35:03'),
(55, 9, 9, 9, 9, NULL, 8, 7, NULL, '2018-01-11 18:35:23'),
(56, 9, 9, 9, 9, NULL, 10, 7, NULL, '2018-01-11 18:35:35'),
(57, 9, 9, 9, 9, NULL, 11, 7, NULL, '2018-01-11 18:35:53'),
(58, 5, 4, 4, 4, NULL, 12, 7, NULL, '2018-01-11 18:36:25'),
(79, NULL, NULL, NULL, NULL, NULL, 3, 10, NULL, NULL),
(80, NULL, NULL, NULL, NULL, NULL, 4, 10, NULL, NULL),
(81, NULL, NULL, NULL, NULL, NULL, 6, 10, NULL, NULL),
(82, NULL, NULL, NULL, NULL, NULL, 8, 10, NULL, NULL),
(83, NULL, NULL, NULL, NULL, NULL, 10, 10, NULL, NULL),
(84, NULL, NULL, NULL, NULL, NULL, 12, 10, NULL, NULL),
(85, NULL, NULL, NULL, NULL, NULL, 3, 11, NULL, NULL),
(86, NULL, NULL, NULL, NULL, NULL, 4, 11, NULL, NULL),
(87, NULL, NULL, NULL, NULL, NULL, 6, 11, NULL, NULL),
(88, NULL, NULL, NULL, NULL, NULL, 8, 11, NULL, NULL),
(89, NULL, NULL, NULL, NULL, NULL, 10, 11, NULL, NULL),
(90, NULL, NULL, NULL, NULL, NULL, 12, 11, NULL, NULL),
(91, NULL, NULL, NULL, NULL, NULL, 3, 12, NULL, NULL),
(92, NULL, NULL, NULL, NULL, NULL, 4, 12, NULL, NULL),
(93, NULL, NULL, NULL, NULL, NULL, 6, 12, NULL, NULL),
(94, NULL, NULL, NULL, NULL, NULL, 8, 12, NULL, NULL),
(95, NULL, NULL, NULL, NULL, NULL, 10, 12, NULL, NULL),
(96, NULL, NULL, NULL, NULL, NULL, 12, 12, NULL, NULL),
(97, NULL, NULL, NULL, NULL, NULL, 1, 13, NULL, NULL),
(98, NULL, NULL, NULL, NULL, NULL, 2, 13, NULL, NULL),
(99, NULL, NULL, NULL, NULL, NULL, 4, 13, NULL, NULL),
(100, NULL, NULL, NULL, NULL, NULL, 5, 13, NULL, NULL),
(101, NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, NULL),
(102, NULL, NULL, NULL, NULL, NULL, 7, 13, NULL, NULL),
(103, NULL, NULL, NULL, NULL, NULL, 8, 13, NULL, NULL),
(104, NULL, NULL, NULL, NULL, NULL, 10, 13, NULL, NULL),
(105, NULL, NULL, NULL, NULL, NULL, 11, 13, NULL, NULL),
(106, NULL, NULL, NULL, NULL, NULL, 12, 13, NULL, NULL),
(107, NULL, NULL, NULL, NULL, NULL, 1, 14, NULL, NULL),
(108, NULL, NULL, NULL, NULL, NULL, 2, 14, NULL, NULL),
(109, NULL, NULL, NULL, NULL, NULL, 4, 14, NULL, NULL),
(110, NULL, NULL, NULL, NULL, NULL, 5, 14, NULL, NULL),
(111, NULL, NULL, NULL, NULL, NULL, 6, 14, NULL, NULL),
(112, NULL, NULL, NULL, NULL, NULL, 7, 14, NULL, NULL),
(113, NULL, NULL, NULL, NULL, NULL, 8, 14, NULL, NULL),
(114, NULL, NULL, NULL, NULL, NULL, 10, 14, NULL, NULL),
(115, NULL, NULL, NULL, NULL, NULL, 11, 14, NULL, NULL),
(116, NULL, NULL, NULL, NULL, NULL, 12, 14, NULL, NULL),
(117, 8, 8, 8, 8, NULL, 1, 15, NULL, '2018-01-11 18:33:42'),
(118, 8, 8, 8, 8, NULL, 2, 15, NULL, '2018-01-11 18:34:07'),
(119, 9, 9, 9, 9, NULL, 4, 15, NULL, '2018-01-11 18:34:24'),
(120, 10, 10, 10, 10, NULL, 5, 15, NULL, '2018-01-11 18:34:37'),
(121, 8, 8, 8, 8, NULL, 6, 15, NULL, '2018-01-11 18:34:53'),
(122, 8, 8, 8, 8, NULL, 7, 15, NULL, '2018-01-11 18:35:07'),
(123, 8, 8, 8, 8, NULL, 8, 15, NULL, '2018-01-11 18:35:25'),
(124, 8, 8, 8, 8, NULL, 10, 15, NULL, '2018-01-11 18:35:38'),
(125, 8, 8, 8, 8, NULL, 11, 15, NULL, '2018-01-11 18:35:59'),
(126, 8, 2, 2, 8, NULL, 12, 15, NULL, '2018-01-11 18:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `giangviens`
--

CREATE TABLE `giangviens` (
  `id` int(10) UNSIGNED NOT NULL,
  `magv` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hogv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tengv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` tinyint(1) NOT NULL,
  `hocham` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hocvi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giangviens`
--

INSERT INTO `giangviens` (`id`, `magv`, `hogv`, `tengv`, `ngaysinh`, `gioitinh`, `hocham`, `hocvi`, `created_at`, `updated_at`) VALUES
(1, 'GV01', 'Trần', 'Thị Mỹ Hiền', '2018-01-12', 0, NULL, NULL, '2018-01-11 08:00:26', '2018-01-11 08:00:26'),
(15, 'GV02', 'Đỗ', 'Văn Tuấn', '2018-01-09', 1, NULL, NULL, '2018-01-11 08:03:35', '2018-01-11 08:03:35'),
(16, 'GV03', 'Bùi', 'Chí Thành', '2018-01-05', 1, NULL, NULL, '2018-01-11 08:04:39', '2018-01-11 08:04:39'),
(17, 'GV04', 'Lê', 'Thị Giang', '2018-01-02', 0, NULL, NULL, '2018-01-11 08:05:10', '2018-01-11 08:05:10'),
(18, 'GV05', 'Cao', 'Mạnh Hùng', '2018-01-26', 1, NULL, NULL, '2018-01-11 08:06:27', '2018-01-11 08:06:27'),
(19, 'GV06', 'Hà', 'Văn Muôn', '2018-01-08', 1, NULL, NULL, '2018-01-11 08:07:21', '2018-01-11 08:07:21'),
(20, 'GV07', 'Đào', 'Văn Tôn', '2018-01-03', 1, NULL, NULL, '2018-01-11 08:08:27', '2018-01-11 08:08:27'),
(21, 'GV08', 'Phan', 'Thanh Sơn', '2018-01-03', 1, NULL, NULL, '2018-01-11 08:10:22', '2018-01-11 08:10:22'),
(22, 'GV09', 'Nguyễn', 'Thanh Hải', '2018-01-03', 1, NULL, NULL, '2018-01-11 08:10:45', '2018-01-11 08:10:45'),
(23, 'GV10', 'Đinh', 'Văn Thế', '2018-01-03', 1, NULL, NULL, '2018-01-11 08:11:07', '2018-01-11 08:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `hockys`
--

CREATE TABLE `hockys` (
  `id` int(10) UNSIGNED NOT NULL,
  `hocky` int(11) NOT NULL,
  `namhoc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hockys`
--

INSERT INTO `hockys` (`id`, `hocky`, `namhoc`) VALUES
(1, 1, '2017-2018'),
(2, 2, '2017-2018');

-- --------------------------------------------------------

--
-- Table structure for table `khoas`
--

CREATE TABLE `khoas` (
  `id` int(10) UNSIGNED NOT NULL,
  `makhoa` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenkhoa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khoas`
--

INSERT INTO `khoas` (`id`, `makhoa`, `tenkhoa`, `created_at`, `updated_at`) VALUES
(1, 'ĐC', 'Công nghệ thông tin', NULL, NULL),
(2, 'ĐV', 'Đại học viễn thông', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lops`
--

CREATE TABLE `lops` (
  `id` int(10) UNSIGNED NOT NULL,
  `malop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenlop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `khoa_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lops`
--

INSERT INTO `lops` (`id`, `malop`, `tenlop`, `khoa_id`, `created_at`, `updated_at`) VALUES
(1, 'ĐHCN3A', 'Đại học công nghệ 3A', 1, '2018-01-11 07:52:07', '2018-01-11 07:52:07'),
(2, 'ĐHCN3B', 'Đại học công nghệ 3B', 1, '2018-01-11 07:52:42', '2018-01-11 07:52:42'),
(3, 'ĐHCN3C', 'Đại học công nghệ 3C', 1, '2018-01-11 07:53:08', '2018-01-11 07:53:08'),
(4, 'ĐHVT13', 'Đại học viễn thông 13', 2, '2018-01-11 07:54:03', '2018-01-11 07:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_15_134153_add_checkcodeemail_to_users_table', 1),
(4, '2017_12_09_143449_create_khoas_table', 1),
(5, '2017_12_10_033502_create_lops_table', 2),
(8, '2017_12_10_042847_create_sinhviens_table', 3),
(9, '2017_12_10_064613_create_diems_table', 4),
(10, '2017_12_10_065359_create_monhocs_table', 5),
(11, '2017_12_10_065807_add_monhocid_to_diems_table', 6),
(12, '2017_12_10_070622_create_monhoc_lop_table', 7),
(13, '2017_12_13_043759_create_sinhvien_monhoc_table', 8),
(14, '2017_12_27_033758_create_giangviens_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `monhocs`
--

CREATE TABLE `monhocs` (
  `id` int(10) UNSIGNED NOT NULL,
  `mamon` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenmon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'tên môn học',
  `sotinchi` int(11) NOT NULL,
  `sotiet` int(11) NOT NULL,
  `hocky_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monhocs`
--

INSERT INTO `monhocs` (`id`, `mamon`, `tenmon`, `sotinchi`, `sotiet`, `hocky_id`, `created_at`, `updated_at`) VALUES
(1, '4204', 'Cơ sở dữ liệu', 3, 75, 1, NULL, NULL),
(2, '4208', 'Lập trình Java', 4, 75, 1, NULL, NULL),
(3, '3306', 'Cấu kiện điện tử', 3, 65, 1, NULL, NULL),
(4, '2206', 'Giáo dục thể chất', 1, 75, 1, NULL, NULL),
(5, '4225', 'Nhập môn lập trình', 4, 70, 1, NULL, NULL),
(6, '2208', 'Toán rời rạc', 2, 65, 1, NULL, NULL),
(7, '3308', 'Công nghệ phần mềm', 4, 75, 1, NULL, NULL),
(8, '2216', 'Giải tích 1', 2, 65, 1, NULL, NULL),
(10, '4306', 'Kỹ năng mềm', 2, 45, 1, NULL, NULL),
(11, '4221', 'Lập trình web', 4, 75, 2, NULL, NULL),
(12, '1107', 'Bóng chuyền', 1, 45, 2, NULL, NULL),
(13, '09181', 'Thể thao điện tử', 4, 45, 1, '2019-12-04 09:14:21', '2019-12-04 09:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phancong`
--

CREATE TABLE `phancong` (
  `monhoc_id` int(10) UNSIGNED NOT NULL,
  `lop_id` int(10) UNSIGNED NOT NULL,
  `giangvien_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phancong`
--

INSERT INTO `phancong` (`monhoc_id`, `lop_id`, `giangvien_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(1, 2, 1, NULL, NULL),
(1, 3, 1, NULL, NULL),
(2, 1, 17, NULL, NULL),
(2, 2, 17, NULL, NULL),
(2, 3, 17, NULL, NULL),
(3, 4, 15, NULL, NULL),
(4, 1, 20, NULL, NULL),
(4, 2, 20, NULL, NULL),
(4, 3, 20, NULL, NULL),
(4, 4, 20, NULL, NULL),
(5, 1, 19, NULL, NULL),
(5, 2, 19, NULL, NULL),
(5, 3, 19, NULL, NULL),
(6, 1, 18, NULL, NULL),
(6, 2, 18, NULL, NULL),
(6, 3, 18, NULL, NULL),
(6, 4, 18, NULL, NULL),
(7, 1, 15, NULL, NULL),
(7, 2, 15, NULL, NULL),
(7, 3, 15, NULL, NULL),
(8, 1, 21, NULL, NULL),
(8, 2, 21, NULL, NULL),
(8, 3, 21, NULL, NULL),
(8, 4, 21, NULL, NULL),
(10, 1, 22, NULL, NULL),
(10, 2, 22, NULL, NULL),
(10, 3, 22, NULL, NULL),
(10, 4, 22, NULL, NULL),
(11, 1, 16, NULL, NULL),
(11, 2, 16, NULL, NULL),
(11, 3, 16, NULL, NULL),
(12, 1, 20, NULL, NULL),
(12, 2, 20, NULL, NULL),
(12, 3, 20, NULL, NULL),
(12, 4, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sinhviens`
--

CREATE TABLE `sinhviens` (
  `id` int(10) UNSIGNED NOT NULL,
  `masv` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hosv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tensv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` tinyint(1) NOT NULL,
  `ngaysinh` date NOT NULL,
  `quequan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lop_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sinhviens`
--

INSERT INTO `sinhviens` (`id`, `masv`, `hosv`, `tensv`, `gioitinh`, `ngaysinh`, `quequan`, `lop_id`, `created_at`, `updated_at`) VALUES
(1, '18ĐC001', 'Nguyễn', 'Trọng Lâm', 0, '2018-01-04', 'Đăk Nông', 1, NULL, NULL),
(2, '18ĐC002', 'Dương', 'Trung Kiên', 0, '2018-01-04', 'Khánh Hòa', 2, NULL, NULL),
(3, '18ĐC003', 'Lê', 'Thị Khang', 0, '2018-01-04', 'Quảng Bình', 3, NULL, NULL),
(7, '18ĐC007', 'Nguyễn', 'Văn Thắng', 1, '2018-01-04', 'Bắc ninh', 1, NULL, NULL),
(10, '18ĐC0010', 'Ngô', 'Thừa Ân', 1, '2018-01-04', 'Bình Định', 4, NULL, NULL),
(11, '18ĐC011', 'Nguyễn', 'Thị Mỹ Linh', 0, '2018-01-04', 'Quảng Ngãi', 4, NULL, NULL),
(12, '18ĐV012', 'Trần', 'Minh Cường', 1, '2018-01-04', 'Khánh Hòa', 4, NULL, NULL),
(13, '18ĐC013', 'Trần', 'Minh Thắng', 1, '2018-01-04', 'Khánh Hòa', 2, NULL, NULL),
(14, '18ĐC014', 'Nguyễn', 'Đăng Khoa', 1, '2018-01-04', 'Khánh Hòa', 3, NULL, NULL),
(15, '18ĐC015', 'Nguyễn trọng', 'Quân', 1, '2018-01-12', '....', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thongkes`
--

CREATE TABLE `thongkes` (
  `id` int(10) UNSIGNED NOT NULL,
  `sinhvien_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `diemrl` float DEFAULT 0,
  `hocbong` varchar(15) DEFAULT NULL,
  `thongke_hocky_id` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thongkes`
--

INSERT INTO `thongkes` (`id`, `sinhvien_id`, `diemrl`, `hocbong`, `thongke_hocky_id`) VALUES
(1, 14, NULL, '0', 1),
(2, 1, 10, '0', 1),
(3, 15, NULL, '1', 1),
(4, 7, 0, '0', 1),
(5, 2, 0, '0', 1),
(6, 13, 0, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checkcodeemail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `picture`, `level`, `remember_token`, `created_at`, `updated_at`, `checkcodeemail`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$t4g0QEk/kQvnPFQlRQWISeo8JIP2FkCo/Gb7LEvkmKe5d/n4b/JKi', 'user.png', 0, NULL, NULL, NULL, NULL),
(2, 'user', 'user@gmail.com', '$2y$10$xRFsfZBnRzl8sqiTREW7.ezlVb/Dd9DbcuQGxPjebMRgQKCZbbhv.', 'user.png', 1, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diems`
--
ALTER TABLE `diems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diems_sinhvien_id_foreign` (`sinhvien_id`),
  ADD KEY `diems_monhoc_id_foreign` (`monhoc_id`);

--
-- Indexes for table `giangviens`
--
ALTER TABLE `giangviens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `giangviens_magv_unique` (`magv`);

--
-- Indexes for table `hockys`
--
ALTER TABLE `hockys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khoas`
--
ALTER TABLE `khoas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lops`
--
ALTER TABLE `lops`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lops_malop_unique` (`malop`),
  ADD KEY `lops_khoa_id_foreign` (`khoa_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monhocs`
--
ALTER TABLE `monhocs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `monhocs_mamon_unique` (`mamon`),
  ADD KEY `monhocs_hocky_id_foreign` (`hocky_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `phancong`
--
ALTER TABLE `phancong`
  ADD KEY `monhoc_lop_monhoc_id_foreign` (`monhoc_id`),
  ADD KEY `monhoc_lop_lop_id_foreign` (`lop_id`),
  ADD KEY `giangvien_id` (`giangvien_id`);

--
-- Indexes for table `sinhviens`
--
ALTER TABLE `sinhviens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sinhviens_masv_unique` (`masv`),
  ADD KEY `sinhviens_lop_id_foreign` (`lop_id`);

--
-- Indexes for table `thongkes`
--
ALTER TABLE `thongkes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sinhvien_id` (`sinhvien_id`),
  ADD KEY `thongke_hocky_id` (`thongke_hocky_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diems`
--
ALTER TABLE `diems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `giangviens`
--
ALTER TABLE `giangviens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `hockys`
--
ALTER TABLE `hockys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `khoas`
--
ALTER TABLE `khoas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lops`
--
ALTER TABLE `lops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `monhocs`
--
ALTER TABLE `monhocs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sinhviens`
--
ALTER TABLE `sinhviens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `thongkes`
--
ALTER TABLE `thongkes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diems`
--
ALTER TABLE `diems`
  ADD CONSTRAINT `diems_monhoc_id_foreign` FOREIGN KEY (`monhoc_id`) REFERENCES `monhocs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `diems_sinhvien_id_foreign` FOREIGN KEY (`sinhvien_id`) REFERENCES `sinhviens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lops`
--
ALTER TABLE `lops`
  ADD CONSTRAINT `lops_khoa_id_foreign` FOREIGN KEY (`khoa_id`) REFERENCES `khoas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `monhocs`
--
ALTER TABLE `monhocs`
  ADD CONSTRAINT `monhocs_hocky_id_foreign` FOREIGN KEY (`hocky_id`) REFERENCES `hockys` (`id`);

--
-- Constraints for table `phancong`
--
ALTER TABLE `phancong`
  ADD CONSTRAINT `giangvien_id` FOREIGN KEY (`giangvien_id`) REFERENCES `giangviens` (`id`),
  ADD CONSTRAINT `monhoc_lop_lop_id_foreign` FOREIGN KEY (`lop_id`) REFERENCES `lops` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `monhoc_lop_monhoc_id_foreign` FOREIGN KEY (`monhoc_id`) REFERENCES `monhocs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sinhviens`
--
ALTER TABLE `sinhviens`
  ADD CONSTRAINT `sinhviens_lop_id_foreign` FOREIGN KEY (`lop_id`) REFERENCES `lops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `thongkes`
--
ALTER TABLE `thongkes`
  ADD CONSTRAINT `sinhvien_id` FOREIGN KEY (`sinhvien_id`) REFERENCES `sinhviens` (`id`),
  ADD CONSTRAINT `thongke_hocky_id` FOREIGN KEY (`thongke_hocky_id`) REFERENCES `hockys` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
