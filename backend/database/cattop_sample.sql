-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th1 03, 2024 lúc 11:53 AM
-- Phiên bản máy phục vụ: 8.0.24
-- Phiên bản PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `theuntidycat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address_books`
--

CREATE TABLE `address_books` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` int UNSIGNED NOT NULL,
  `district` int UNSIGNED NOT NULL,
  `province` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `address_books`
--

INSERT INTO `address_books` (`id`, `customer_id`, `name`, `phone`, `address_line`, `ward`, `district`, `province`, `created_at`, `updated_at`) VALUES
(1, 5, 'Nguyễn Tuấn Anh', '0326523222', 'Tân Phú', 27604, 785, 79, '2023-12-11 14:22:35', '2023-12-11 14:22:35'),
(2, 15, 'Phương Anh', '0886904961', 'KTX Khu A', 25942, 724, 74, '2023-12-24 16:43:07', '2023-12-24 16:43:07'),
(3, 15, 'Tran Anh', '0886904961', 'abc', 26737, 760, 79, '2023-12-25 08:54:09', '2023-12-25 08:54:09'),
(4, 5, 'chung trịnh', '0984797117', 'test', 46, 2, 1, '2023-12-26 23:35:22', '2023-12-26 23:35:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` enum('draft','active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `description`, `image`, `state`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'a', NULL, NULL, 'https://lh5.googleusercontent.com/-m5B5SyBYOtA/AAAAAAAAAAI/AAAAAAAAAAA/__nMOh8X0_4/s900-c-k-no/photo.jpg', 'active', NULL, '2023-12-11 13:40:57', '2023-12-31 01:21:53'),
(2, 'Dell', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Dell_logo.svg/2560px-Dell_logo.svg.png', 'active', NULL, '2023-12-11 13:41:36', '2023-12-11 13:41:36'),
(3, 'HP', NULL, NULL, 'https://1000logos.net/wp-content/uploads/2017/02/HP-Log%D0%BE.png', 'active', NULL, '2023-12-11 13:42:17', '2023-12-11 13:42:17'),
(4, 'Acer', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Acer_2011.svg/4151px-Acer_2011.svg.png', 'active', NULL, '2023-12-11 13:43:00', '2023-12-11 13:43:00'),
(5, 'Lenovo', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Lenovo_logo_2015.svg/1280px-Lenovo_logo_2015.svg.png', 'active', NULL, '2023-12-11 13:43:43', '2023-12-11 13:43:43'),
(7, 'Microsoft', NULL, NULL, 'https://cdn.pixabay.com/photo/2021/08/10/15/36/microsoft-6536268_1280.png', 'active', NULL, '2023-12-11 14:37:31', '2023-12-12 15:46:33'),
(8, 'LG', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/LG_symbol.svg/1200px-LG_symbol.svg.png', 'active', NULL, '2023-12-11 14:38:24', '2023-12-12 15:47:21'),
(9, 'Samsung', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Samsung_wordmark.svg/7051px-Samsung_wordmark.svg.png', 'active', NULL, '2023-12-11 14:38:57', '2023-12-12 15:48:25'),
(10, 'Apple', NULL, NULL, 'https://www.freepnglogos.com/uploads/apple-logo-png/apple-logo-png-dallas-shootings-don-add-are-speech-zones-used-4.png', 'active', NULL, '2023-12-11 14:39:59', '2023-12-12 15:50:27'),
(11, 'MSI', NULL, NULL, 'https://storage-asset.msi.com/event/msi-logos/images/msi-logo_b.png', 'active', NULL, '2023-12-11 14:40:31', '2023-12-12 15:53:46'),
(12, 'GIGABYTE', NULL, NULL, 'https://images.thinkgroup.vn/unsafe/136x136/filters:quality(100)/https://media-api-beta.thinkpro.vn/media/core/brands/2023/3/17/logo-gigabyte-thinkpro-01.png', 'active', NULL, '2023-12-24 16:25:04', '2023-12-27 03:11:57'),
(13, 'UIT', NULL, NULL, 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2022/9/27/dell-alienware-m15-r6-thinkpro-1.png', 'active', NULL, '2023-12-30 07:51:42', '2023-12-30 07:51:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `variant_id` bigint UNSIGNED NOT NULL,
  `amount` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `variant_id`, `amount`, `created_at`, `updated_at`) VALUES
(28, 15, 4, 1, '2023-12-30 00:04:06', '2023-12-30 00:06:45'),
(29, 15, 1, 2, '2023-12-30 00:06:29', '2023-12-30 00:14:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `state` enum('draft','active','inactive','banned') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `user_id` bigint UNSIGNED NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `date_of_birth`, `gender`, `state`, `user_id`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(1, 'hehe', 'hehehehe', 'whitie017@gmail.com', '0912345678', '2023-12-04 00:00:00', 0, 'active', 2, NULL, '2023-12-11 13:57:10', '2023-12-11 13:57:10'),
(3, 'anh', 'tran', 'tpa05403@gmail.com', '0886904961', '2023-12-13 00:00:00', 1, 'active', 4, NULL, '2023-12-11 14:04:23', '2023-12-11 14:04:23'),
(4, 'A', 'a', 'ttmc031809@gmail.com', '0984797117', '2023-12-08 00:00:00', 0, 'active', 5, NULL, '2023-12-11 14:09:09', '2023-12-31 22:10:59'),
(5, 'Nguyễn', 'Anh', 'anhnguyentuan8@gmail.com', '0326523222', NULL, NULL, 'active', 6, NULL, '2023-12-11 14:18:28', '2023-12-11 14:18:28'),
(6, 'Bảo', 'Trần', 't@gmail.com', '0911111111', '2023-12-11 00:00:00', 1, 'active', 7, NULL, '2023-12-11 14:25:11', '2023-12-24 15:40:32'),
(7, 'test', 'test', 'test@gmail.com', '0912345679', '2023-12-04 00:00:00', 0, 'active', 8, NULL, '2023-12-11 14:28:50', '2023-12-11 14:28:50'),
(8, 'tran', 'grace', 'anhpt543@gmail.com', '0354717463', '2023-12-06 00:00:00', 1, 'active', 9, NULL, '2023-12-11 14:30:15', '2023-12-11 14:30:15'),
(9, 'xyz', 'abc', 'abcxyz@gmail.com', '0964523785', '2023-12-04 00:00:00', 0, 'active', 10, NULL, '2023-12-11 14:31:29', '2023-12-11 14:31:29'),
(10, 'Tuan Anh', 'Nguyen', '21520581@gm.uit.edu.vn', '0987654321', '2023-12-11 00:00:00', 0, 'active', 11, NULL, '2023-12-11 15:06:01', '2023-12-11 15:06:01'),
(11, 'test', 'test', 'test123@gmail.com', '0912345600', '2023-12-04 00:00:00', 0, 'active', 12, NULL, '2023-12-12 03:25:33', '2023-12-12 03:25:33'),
(12, 'test', 'test', 'test156@gmail.com', '0912340000', '2023-12-04 00:00:00', 0, 'active', 13, NULL, '2023-12-12 03:26:52', '2023-12-12 03:26:52'),
(13, 'test', 'test', 'test157@gmail.com', '0912340001', '2023-12-06 00:00:00', 1, 'active', 14, NULL, '2023-12-12 03:27:23', '2023-12-12 03:27:23'),
(14, 'Lê', 'Dung', 'lt.ngocdung2002@gmail.com', '0862711576', NULL, NULL, 'active', 15, NULL, '2023-12-14 12:52:00', '2023-12-14 12:52:00'),
(15, 'Anh', 'Tran', '21520595@gm.uit.edu.vn', '0909940811', NULL, NULL, 'active', 16, NULL, '2023-12-24 12:06:40', '2023-12-24 12:06:40'),
(16, 'thị mỹ chung', 'trịnh', 'ttmc0318@gmail.com', '0984797118', '2003-09-18 00:00:00', 1, 'active', 17, NULL, '2023-12-24 15:39:24', '2023-12-24 16:07:12'),
(17, 'chung', 'trịnh', 'ttmc03180@gmail.com', '0984797119', '2023-12-15 00:00:00', 1, 'active', 18, NULL, '2023-12-24 15:39:54', '2023-12-24 15:39:54'),
(18, 'chung', 'trịnh', 'ttmc031801@gmail.com', '0984797111', '2023-12-28 00:00:00', 1, 'active', 19, NULL, '2023-12-31 03:21:42', '2023-12-31 03:21:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employees`
--

CREATE TABLE `employees` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `department` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` enum('draft','active','inactive','banned') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `display_name`, `email`, `phone_number`, `date_of_birth`, `gender`, `department`, `job_title`, `state`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '', 'admin', 'admin@theuntidycat.tech', '0999999999', NULL, NULL, NULL, NULL, 'active', 1, '2023-12-11 05:39:59', '2023-12-11 05:39:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_03_144325_create_user_roles_table', 1),
(6, '2023_10_03_144700_create_employees_table', 1),
(7, '2023_10_03_145229_create_customers_table', 1),
(8, '2023_10_11_135240_create_brands_table', 1),
(9, '2023_10_14_122816_create_products_table', 1),
(10, '2023_10_15_031818_create_product_variants_table', 1),
(11, '2023_11_10_080119_create_address_books_table', 1),
(12, '2023_11_14_065316_create_orders_table', 1),
(13, '2023_11_14_084217_create_order_items_table', 1),
(14, '2023_11_15_074844_create_order_histories_table', 1),
(15, '2023_11_16_011541_create_carts_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED DEFAULT NULL,
  `shopping_method` enum('online','offline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'offline',
  `payment_method` enum('cash','banking') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `payment_state` enum('unpaid','partially_paid','paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `state` enum('draft','pending','confirmed','delivering','delivered','cancelled','refunded','failed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `tracking_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` bigint UNSIGNED DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `employee_id`, `shopping_method`, `payment_method`, `payment_state`, `state`, `tracking_no`, `address_id`, `note`, `created_at`, `updated_at`) VALUES
(1000, 1, 1, 'offline', 'cash', 'unpaid', 'cancelled', NULL, NULL, NULL, '2023-12-11 14:05:13', '2023-12-11 14:05:56'),
(1001, 1, 1, 'offline', 'cash', 'unpaid', 'cancelled', NULL, NULL, NULL, '2023-12-11 14:05:34', '2023-12-11 14:13:30'),
(1002, 3, 1, 'offline', 'cash', 'unpaid', 'draft', NULL, NULL, NULL, '2023-12-11 14:20:42', '2023-12-11 14:20:42'),
(1003, 3, 1, 'offline', 'cash', 'paid', 'refunded', NULL, NULL, NULL, '2023-12-11 14:21:04', '2023-12-12 08:43:25'),
(1004, 5, NULL, 'online', 'cash', 'paid', 'failed', '123456', 1, 'Đã đổi trả đơn hàng #1008', '2023-12-11 14:22:44', '2023-12-17 14:24:50'),
(1005, 5, NULL, 'online', 'banking', 'unpaid', 'cancelled', NULL, 1, NULL, '2023-12-11 16:21:08', '2023-12-12 08:42:06'),
(1006, 5, NULL, 'online', 'cash', 'paid', 'failed', NULL, NULL, 'Đã đổi trả đơn hàng #1010', '2023-12-13 08:34:50', '2023-12-17 14:51:39'),
(1007, 5, NULL, 'online', 'cash', 'paid', 'refunded', '123456', 1, 'Đổi trả đơn hàng #1004', '2023-12-17 14:24:38', '2023-12-26 14:34:53'),
(1008, 5, NULL, 'online', 'cash', 'paid', 'failed', '123456', 1, 'Đã đổi trả đơn hàng #1009', '2023-12-17 14:24:50', '2023-12-17 14:40:31'),
(1009, 5, NULL, 'online', 'cash', 'unpaid', 'cancelled', '123456', 1, 'Đổi trả đơn hàng #1008', '2023-12-17 14:40:31', '2023-12-26 14:18:56'),
(1010, 5, NULL, 'online', 'cash', 'paid', 'failed', NULL, NULL, 'Đã đổi trả đơn hàng #1011', '2023-12-17 14:51:39', '2023-12-17 14:57:18'),
(1011, 5, NULL, 'online', 'cash', 'unpaid', 'failed', NULL, NULL, 'Đã đổi trả đơn hàng #1024', '2023-12-17 14:57:18', '2023-12-26 14:53:07'),
(1012, 5, NULL, 'online', 'banking', 'unpaid', 'failed', NULL, NULL, 'Đã đổi trả đơn hàng #1025', '2023-12-21 06:27:22', '2023-12-26 15:12:38'),
(1013, 5, NULL, 'online', 'banking', 'paid', 'failed', NULL, NULL, 'Đã đổi trả đơn hàng #1016', '2023-12-21 06:27:26', '2023-12-24 17:12:17'),
(1014, 15, NULL, 'online', 'cash', 'paid', 'failed', NULL, NULL, 'Đã đổi trả đơn hàng #1015', '2023-12-24 16:39:32', '2023-12-24 17:10:16'),
(1015, 15, NULL, 'online', 'cash', 'paid', 'failed', NULL, NULL, 'Đã đổi trả đơn hàng #1034', '2023-12-24 17:10:16', '2023-12-26 22:55:38'),
(1016, 5, NULL, 'online', 'banking', 'paid', 'failed', NULL, NULL, 'Đã đổi trả đơn hàng #1023', '2023-12-24 17:12:17', '2023-12-26 14:42:59'),
(1017, 15, NULL, 'online', 'cash', 'paid', 'pending', 'test', NULL, 'test', '2023-12-25 09:30:20', '2023-12-28 21:09:14'),
(1018, 15, NULL, 'online', 'cash', 'unpaid', 'delivering', NULL, NULL, NULL, '2023-12-25 09:33:13', '2023-12-26 23:14:19'),
(1019, 15, NULL, 'online', 'banking', 'paid', 'refunded', NULL, NULL, NULL, '2023-12-25 15:22:50', '2023-12-26 23:49:19'),
(1020, 15, NULL, 'online', 'cash', 'paid', 'refunded', NULL, NULL, NULL, '2023-12-25 15:45:07', '2023-12-28 21:17:10'),
(1021, 15, NULL, 'online', 'cash', 'unpaid', 'failed', NULL, 2, 'Đã đổi trả đơn hàng #1035', '2023-12-26 06:09:26', '2023-12-26 23:09:08'),
(1022, 15, NULL, 'online', 'cash', 'paid', 'delivered', NULL, NULL, NULL, '2023-12-26 14:27:40', '2023-12-27 01:42:04'),
(1023, 5, NULL, 'online', 'banking', 'paid', 'delivered', NULL, NULL, 'Đổi trả đơn hàng #1016', '2023-12-26 14:42:59', '2023-12-27 01:27:07'),
(1024, 5, NULL, 'online', 'cash', 'unpaid', 'confirmed', NULL, NULL, 'Đổi trả đơn hàng #1011', '2023-12-26 14:53:07', '2023-12-28 21:30:32'),
(1025, 5, NULL, 'online', 'banking', 'unpaid', 'pending', NULL, NULL, 'Đổi trả đơn hàng #1012', '2023-12-26 15:12:38', '2023-12-26 15:12:38'),
(1026, 5, NULL, 'online', 'banking', 'unpaid', 'pending', NULL, NULL, NULL, '2023-12-26 17:20:18', '2023-12-26 17:20:18'),
(1027, 5, NULL, 'online', 'cash', 'paid', 'confirmed', NULL, NULL, NULL, '2023-12-26 17:26:00', '2023-12-28 21:28:24'),
(1028, 5, NULL, 'online', 'banking', 'paid', 'delivered', NULL, NULL, NULL, '2023-12-26 18:30:56', '2023-12-27 02:57:47'),
(1029, 10, 1, 'offline', 'cash', 'unpaid', 'draft', NULL, NULL, NULL, '2023-12-27 01:15:53', '2023-12-27 01:15:53'),
(1030, 15, NULL, 'online', 'cash', 'paid', 'pending', NULL, 2, NULL, '2023-12-27 01:39:46', '2023-12-28 21:30:42'),
(1031, 5, NULL, 'online', 'cash', 'paid', 'failed', NULL, NULL, 'Đã đổi trả đơn hàng #1032', '2023-12-27 03:15:49', '2023-12-27 03:25:10'),
(1032, 5, NULL, 'online', 'cash', 'unpaid', 'pending', NULL, NULL, 'Đổi trả đơn hàng #1031', '2023-12-27 03:25:10', '2023-12-27 03:25:10'),
(1033, 15, NULL, 'online', 'cash', 'paid', 'refunded', NULL, NULL, NULL, '2023-12-26 22:39:00', '2023-12-26 22:45:42'),
(1034, 15, NULL, 'online', 'cash', 'paid', 'delivered', NULL, NULL, 'Đổi trả đơn hàng #1015', '2023-12-26 22:55:38', '2023-12-26 23:03:16'),
(1035, 15, NULL, 'online', 'cash', 'paid', 'failed', NULL, 2, 'Đã đổi trả đơn hàng #1038', '2023-12-26 23:09:08', '2023-12-26 23:50:18'),
(1036, 5, NULL, 'online', 'cash', 'paid', 'failed', NULL, 4, 'Đã đổi trả đơn hàng #1039', '2023-12-26 23:35:59', '2023-12-26 23:52:19'),
(1037, 5, NULL, 'online', 'banking', 'paid', 'delivering', 'Không có', NULL, 'Không có', '2023-12-26 23:37:03', '2023-12-26 23:42:46'),
(1038, 15, NULL, 'online', 'cash', 'unpaid', 'pending', NULL, 2, 'Đổi trả đơn hàng #1035', '2023-12-26 23:50:18', '2023-12-26 23:50:18'),
(1039, 5, NULL, 'online', 'cash', 'paid', 'confirmed', NULL, 4, 'Đổi trả đơn hàng #1036', '2023-12-26 23:52:19', '2023-12-26 23:53:34'),
(1040, 5, NULL, 'online', 'cash', 'paid', 'failed', NULL, 1, 'Đã đổi trả đơn hàng #1041', '2023-12-26 23:54:53', '2023-12-26 23:55:51'),
(1041, 5, NULL, 'online', 'cash', 'paid', 'delivered', NULL, 1, 'Đổi trả đơn hàng #1040', '2023-12-26 23:55:51', '2023-12-26 23:57:28'),
(1042, 3, 1, 'offline', 'cash', 'unpaid', 'draft', NULL, NULL, NULL, '2023-12-28 02:30:34', '2023-12-28 02:30:34'),
(1043, 5, NULL, 'online', 'cash', 'unpaid', 'pending', NULL, NULL, NULL, '2023-12-28 02:38:33', '2023-12-28 02:38:33'),
(1044, 5, NULL, 'online', 'cash', 'unpaid', 'pending', NULL, NULL, NULL, '2023-12-28 03:46:26', '2023-12-28 03:46:26'),
(1045, 5, NULL, 'online', 'cash', 'unpaid', 'pending', NULL, 1, 'test', '2023-12-28 03:47:32', '2023-12-28 03:47:32'),
(1046, 3, 1, 'offline', 'banking', 'unpaid', 'draft', NULL, NULL, NULL, '2023-12-28 03:49:51', '2023-12-28 03:49:51'),
(1047, 5, NULL, 'online', 'cash', 'unpaid', 'pending', NULL, NULL, NULL, '2023-12-28 06:42:52', '2023-12-28 06:42:52'),
(1048, 5, NULL, 'online', 'cash', 'unpaid', 'pending', NULL, NULL, NULL, '2023-12-28 07:54:54', '2023-12-28 07:54:54'),
(1049, 3, 1, 'offline', 'cash', 'unpaid', 'draft', NULL, NULL, NULL, '2023-12-28 22:39:06', '2023-12-28 22:39:06'),
(1050, 6, 1, 'offline', 'cash', 'paid', 'delivered', NULL, NULL, NULL, '2023-12-29 01:48:56', '2024-01-02 01:45:02'),
(1051, 4, 1, 'offline', 'banking', 'unpaid', 'cancelled', NULL, NULL, NULL, '2024-01-02 01:45:41', '2024-01-02 01:45:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_histories`
--

CREATE TABLE `order_histories` (
  `order_id` bigint UNSIGNED NOT NULL,
  `state` enum('draft','pending','confirmed','delivering','delivered','cancelled','refunded','failed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_histories`
--

INSERT INTO `order_histories` (`order_id`, `state`, `created_at`, `updated_at`) VALUES
(1000, 'draft', '2023-12-11 14:05:13', '2023-12-11 14:05:13'),
(1001, 'draft', '2023-12-11 14:05:34', '2023-12-11 14:05:34'),
(1000, 'cancelled', '2023-12-11 14:05:56', '2023-12-11 14:05:56'),
(1001, 'cancelled', '2023-12-11 14:13:30', '2023-12-11 14:13:30'),
(1002, 'draft', '2023-12-11 14:20:42', '2023-12-11 14:20:42'),
(1003, 'draft', '2023-12-11 14:21:04', '2023-12-11 14:21:04'),
(1004, 'pending', '2023-12-11 14:22:44', '2023-12-11 14:22:44'),
(1004, 'confirmed', '2023-12-11 15:29:43', '2023-12-11 15:29:43'),
(1004, 'confirmed', '2023-12-11 15:29:46', '2023-12-11 15:29:46'),
(1003, 'confirmed', '2023-12-11 15:57:11', '2023-12-11 15:57:11'),
(1003, 'delivering', '2023-12-11 15:57:47', '2023-12-11 15:57:47'),
(1004, 'confirmed', '2023-12-11 16:03:58', '2023-12-11 16:03:58'),
(1004, 'delivering', '2023-12-11 16:04:05', '2023-12-11 16:04:05'),
(1004, 'delivered', '2023-12-11 16:08:35', '2023-12-11 16:08:35'),
(1005, 'pending', '2023-12-11 16:21:08', '2023-12-11 16:21:08'),
(1005, 'cancelled', '2023-12-12 08:42:06', '2023-12-12 08:42:06'),
(1003, 'delivering', '2023-12-12 08:43:15', '2023-12-12 08:43:15'),
(1003, 'refunded', '2023-12-12 08:43:25', '2023-12-12 08:43:25'),
(1006, 'pending', '2023-12-13 08:34:50', '2023-12-13 08:34:50'),
(1007, 'pending', '2023-12-17 14:24:38', '2023-12-17 14:24:38'),
(1004, 'failed', '2023-12-17 14:24:38', '2023-12-17 14:24:38'),
(1008, 'pending', '2023-12-17 14:24:50', '2023-12-17 14:24:50'),
(1004, 'failed', '2023-12-17 14:24:50', '2023-12-17 14:24:50'),
(1008, 'pending', '2023-12-17 14:40:13', '2023-12-17 14:40:13'),
(1008, 'confirmed', '2023-12-17 14:40:16', '2023-12-17 14:40:16'),
(1008, 'delivering', '2023-12-17 14:40:20', '2023-12-17 14:40:20'),
(1008, 'delivered', '2023-12-17 14:40:27', '2023-12-17 14:40:27'),
(1009, 'pending', '2023-12-17 14:40:31', '2023-12-17 14:40:31'),
(1008, 'failed', '2023-12-17 14:40:31', '2023-12-17 14:40:31'),
(1006, 'pending', '2023-12-17 14:51:07', '2023-12-17 14:51:07'),
(1006, 'confirmed', '2023-12-17 14:51:10', '2023-12-17 14:51:10'),
(1006, 'delivering', '2023-12-17 14:51:13', '2023-12-17 14:51:13'),
(1006, 'delivered', '2023-12-17 14:51:33', '2023-12-17 14:51:33'),
(1010, 'pending', '2023-12-17 14:51:39', '2023-12-17 14:51:39'),
(1006, 'failed', '2023-12-17 14:51:39', '2023-12-17 14:51:39'),
(1010, 'confirmed', '2023-12-17 14:57:07', '2023-12-17 14:57:07'),
(1010, 'confirmed', '2023-12-17 14:57:09', '2023-12-17 14:57:09'),
(1010, 'delivering', '2023-12-17 14:57:12', '2023-12-17 14:57:12'),
(1010, 'delivered', '2023-12-17 14:57:15', '2023-12-17 14:57:15'),
(1011, 'pending', '2023-12-17 14:57:18', '2023-12-17 14:57:18'),
(1010, 'failed', '2023-12-17 14:57:18', '2023-12-17 14:57:18'),
(1012, 'pending', '2023-12-21 06:27:23', '2023-12-21 06:27:23'),
(1013, 'pending', '2023-12-21 06:27:26', '2023-12-21 06:27:26'),
(1013, 'pending', '2023-12-21 06:29:49', '2023-12-21 06:29:49'),
(1013, 'confirmed', '2023-12-21 06:32:03', '2023-12-21 06:32:03'),
(1013, 'delivering', '2023-12-21 06:38:41', '2023-12-21 06:38:41'),
(1013, 'delivered', '2023-12-21 06:38:48', '2023-12-21 06:38:48'),
(1014, 'pending', '2023-12-24 16:39:32', '2023-12-24 16:39:32'),
(1014, 'confirmed', '2023-12-24 17:09:15', '2023-12-24 17:09:15'),
(1014, 'confirmed', '2023-12-24 17:09:22', '2023-12-24 17:09:22'),
(1014, 'delivering', '2023-12-24 17:09:27', '2023-12-24 17:09:27'),
(1014, 'delivered', '2023-12-24 17:09:30', '2023-12-24 17:09:30'),
(1015, 'pending', '2023-12-24 17:10:16', '2023-12-24 17:10:16'),
(1014, 'failed', '2023-12-24 17:10:16', '2023-12-24 17:10:16'),
(1016, 'pending', '2023-12-24 17:12:17', '2023-12-24 17:12:17'),
(1013, 'failed', '2023-12-24 17:12:17', '2023-12-24 17:12:17'),
(1016, 'pending', '2023-12-24 17:12:39', '2023-12-24 17:12:39'),
(1016, 'confirmed', '2023-12-24 17:12:46', '2023-12-24 17:12:46'),
(1016, 'delivering', '2023-12-24 17:12:51', '2023-12-24 17:12:51'),
(1016, 'delivered', '2023-12-24 17:12:54', '2023-12-24 17:12:54'),
(1017, 'pending', '2023-12-25 09:30:20', '2023-12-25 09:30:20'),
(1018, 'pending', '2023-12-25 09:33:13', '2023-12-25 09:33:13'),
(1019, 'pending', '2023-12-25 15:22:50', '2023-12-25 15:22:50'),
(1020, 'pending', '2023-12-25 15:45:07', '2023-12-25 15:45:07'),
(1021, 'pending', '2023-12-26 06:09:26', '2023-12-26 06:09:26'),
(1007, 'pending', '2023-12-26 14:16:07', '2023-12-26 14:16:07'),
(1007, 'confirmed', '2023-12-26 14:16:46', '2023-12-26 14:16:46'),
(1009, 'cancelled', '2023-12-26 14:18:56', '2023-12-26 14:18:56'),
(1007, 'delivering', '2023-12-26 14:22:52', '2023-12-26 14:22:52'),
(1022, 'pending', '2023-12-26 14:27:40', '2023-12-26 14:27:40'),
(1007, 'delivered', '2023-12-26 14:31:36', '2023-12-26 14:31:36'),
(1007, 'refunded', '2023-12-26 14:34:53', '2023-12-26 14:34:53'),
(1023, 'pending', '2023-12-26 14:42:59', '2023-12-26 14:42:59'),
(1016, 'failed', '2023-12-26 14:42:59', '2023-12-26 14:42:59'),
(1011, 'confirmed', '2023-12-26 14:52:24', '2023-12-26 14:52:24'),
(1011, 'delivering', '2023-12-26 14:52:31', '2023-12-26 14:52:31'),
(1011, 'delivered', '2023-12-26 14:52:34', '2023-12-26 14:52:34'),
(1024, 'pending', '2023-12-26 14:53:07', '2023-12-26 14:53:07'),
(1011, 'failed', '2023-12-26 14:53:07', '2023-12-26 14:53:07'),
(1012, 'confirmed', '2023-12-26 15:10:06', '2023-12-26 15:10:06'),
(1012, 'delivering', '2023-12-26 15:10:24', '2023-12-26 15:10:24'),
(1012, 'delivered', '2023-12-26 15:10:31', '2023-12-26 15:10:31'),
(1025, 'pending', '2023-12-26 15:12:38', '2023-12-26 15:12:38'),
(1012, 'failed', '2023-12-26 15:12:38', '2023-12-26 15:12:38'),
(1026, 'pending', '2023-12-26 17:20:18', '2023-12-26 17:20:18'),
(1027, 'pending', '2023-12-26 17:26:00', '2023-12-26 17:26:00'),
(1028, 'pending', '2023-12-26 18:30:56', '2023-12-26 18:30:56'),
(1029, 'draft', '2023-12-27 01:15:53', '2023-12-27 01:15:53'),
(1019, 'pending', '2023-12-27 01:20:35', '2023-12-27 01:20:35'),
(1019, 'confirmed', '2023-12-27 01:20:42', '2023-12-27 01:20:42'),
(1019, 'delivering', '2023-12-27 01:20:48', '2023-12-27 01:20:48'),
(1019, 'delivered', '2023-12-27 01:20:52', '2023-12-27 01:20:52'),
(1023, 'confirmed', '2023-12-27 01:27:00', '2023-12-27 01:27:00'),
(1023, 'delivering', '2023-12-27 01:27:02', '2023-12-27 01:27:02'),
(1023, 'delivered', '2023-12-27 01:27:04', '2023-12-27 01:27:04'),
(1023, 'delivered', '2023-12-27 01:27:07', '2023-12-27 01:27:07'),
(1030, 'pending', '2023-12-27 01:39:47', '2023-12-27 01:39:47'),
(1022, 'confirmed', '2023-12-27 01:41:58', '2023-12-27 01:41:58'),
(1022, 'delivering', '2023-12-27 01:42:00', '2023-12-27 01:42:00'),
(1022, 'delivered', '2023-12-27 01:42:02', '2023-12-27 01:42:02'),
(1022, 'delivered', '2023-12-27 01:42:04', '2023-12-27 01:42:04'),
(1028, 'confirmed', '2023-12-27 02:57:38', '2023-12-27 02:57:38'),
(1028, 'confirmed', '2023-12-27 02:57:41', '2023-12-27 02:57:41'),
(1028, 'delivering', '2023-12-27 02:57:44', '2023-12-27 02:57:44'),
(1028, 'delivered', '2023-12-27 02:57:47', '2023-12-27 02:57:47'),
(1031, 'pending', '2023-12-27 03:15:49', '2023-12-27 03:15:49'),
(1031, 'confirmed', '2023-12-27 03:16:42', '2023-12-27 03:16:42'),
(1031, 'confirmed', '2023-12-27 03:18:56', '2023-12-27 03:18:56'),
(1031, 'delivering', '2023-12-27 03:19:32', '2023-12-27 03:19:32'),
(1031, 'delivered', '2023-12-27 03:23:46', '2023-12-27 03:23:46'),
(1032, 'pending', '2023-12-27 03:25:10', '2023-12-27 03:25:10'),
(1031, 'failed', '2023-12-27 03:25:10', '2023-12-27 03:25:10'),
(1033, 'pending', '2023-12-26 22:39:00', '2023-12-26 22:39:00'),
(1033, 'pending', '2023-12-26 22:40:48', '2023-12-26 22:40:48'),
(1033, 'confirmed', '2023-12-26 22:42:50', '2023-12-26 22:42:50'),
(1033, 'delivering', '2023-12-26 22:42:57', '2023-12-26 22:42:57'),
(1033, 'delivered', '2023-12-26 22:45:30', '2023-12-26 22:45:30'),
(1033, 'refunded', '2023-12-26 22:45:42', '2023-12-26 22:45:42'),
(1015, 'confirmed', '2023-12-26 22:47:52', '2023-12-26 22:47:52'),
(1015, 'delivering', '2023-12-26 22:47:58', '2023-12-26 22:47:58'),
(1015, 'delivered', '2023-12-26 22:48:03', '2023-12-26 22:48:03'),
(1015, 'delivered', '2023-12-26 22:48:35', '2023-12-26 22:48:35'),
(1034, 'pending', '2023-12-26 22:55:38', '2023-12-26 22:55:38'),
(1015, 'failed', '2023-12-26 22:55:38', '2023-12-26 22:55:38'),
(1034, 'confirmed', '2023-12-26 23:02:39', '2023-12-26 23:02:39'),
(1034, 'delivering', '2023-12-26 23:02:46', '2023-12-26 23:02:46'),
(1034, 'delivered', '2023-12-26 23:02:59', '2023-12-26 23:02:59'),
(1034, 'delivered', '2023-12-26 23:03:16', '2023-12-26 23:03:16'),
(1021, 'confirmed', '2023-12-26 23:08:24', '2023-12-26 23:08:24'),
(1021, 'delivering', '2023-12-26 23:08:27', '2023-12-26 23:08:27'),
(1021, 'delivered', '2023-12-26 23:08:34', '2023-12-26 23:08:34'),
(1035, 'pending', '2023-12-26 23:09:08', '2023-12-26 23:09:08'),
(1021, 'failed', '2023-12-26 23:09:08', '2023-12-26 23:09:08'),
(1035, 'confirmed', '2023-12-26 23:10:36', '2023-12-26 23:10:36'),
(1035, 'delivering', '2023-12-26 23:13:37', '2023-12-26 23:13:37'),
(1035, 'delivered', '2023-12-26 23:13:42', '2023-12-26 23:13:42'),
(1018, 'confirmed', '2023-12-26 23:14:13', '2023-12-26 23:14:13'),
(1018, 'delivering', '2023-12-26 23:14:19', '2023-12-26 23:14:19'),
(1036, 'pending', '2023-12-26 23:35:59', '2023-12-26 23:35:59'),
(1037, 'pending', '2023-12-26 23:37:03', '2023-12-26 23:37:03'),
(1037, 'pending', '2023-12-26 23:38:55', '2023-12-26 23:38:55'),
(1036, 'pending', '2023-12-26 23:40:13', '2023-12-26 23:40:13'),
(1036, 'confirmed', '2023-12-26 23:40:31', '2023-12-26 23:40:31'),
(1037, 'confirmed', '2023-12-26 23:41:11', '2023-12-26 23:41:11'),
(1037, 'confirmed', '2023-12-26 23:42:03', '2023-12-26 23:42:03'),
(1037, 'delivering', '2023-12-26 23:42:46', '2023-12-26 23:42:46'),
(1036, 'delivering', '2023-12-26 23:44:37', '2023-12-26 23:44:37'),
(1019, 'refunded', '2023-12-26 23:49:19', '2023-12-26 23:49:19'),
(1035, 'delivered', '2023-12-26 23:50:10', '2023-12-26 23:50:10'),
(1038, 'pending', '2023-12-26 23:50:18', '2023-12-26 23:50:18'),
(1035, 'failed', '2023-12-26 23:50:18', '2023-12-26 23:50:18'),
(1036, 'delivered', '2023-12-26 23:52:00', '2023-12-26 23:52:00'),
(1039, 'pending', '2023-12-26 23:52:19', '2023-12-26 23:52:19'),
(1036, 'failed', '2023-12-26 23:52:19', '2023-12-26 23:52:19'),
(1039, 'pending', '2023-12-26 23:53:05', '2023-12-26 23:53:05'),
(1039, 'confirmed', '2023-12-26 23:53:34', '2023-12-26 23:53:34'),
(1040, 'pending', '2023-12-26 23:54:53', '2023-12-26 23:54:53'),
(1040, 'pending', '2023-12-26 23:55:23', '2023-12-26 23:55:23'),
(1040, 'confirmed', '2023-12-26 23:55:26', '2023-12-26 23:55:26'),
(1040, 'delivering', '2023-12-26 23:55:29', '2023-12-26 23:55:29'),
(1040, 'delivered', '2023-12-26 23:55:31', '2023-12-26 23:55:31'),
(1041, 'pending', '2023-12-26 23:55:51', '2023-12-26 23:55:51'),
(1040, 'failed', '2023-12-26 23:55:51', '2023-12-26 23:55:51'),
(1041, 'pending', '2023-12-26 23:56:55', '2023-12-26 23:56:55'),
(1041, 'confirmed', '2023-12-26 23:57:01', '2023-12-26 23:57:01'),
(1041, 'delivering', '2023-12-26 23:57:04', '2023-12-26 23:57:04'),
(1041, 'delivered', '2023-12-26 23:57:28', '2023-12-26 23:57:28'),
(1042, 'draft', '2023-12-28 02:30:35', '2023-12-28 02:30:35'),
(1043, 'pending', '2023-12-28 02:38:33', '2023-12-28 02:38:33'),
(1044, 'pending', '2023-12-28 03:46:26', '2023-12-28 03:46:26'),
(1045, 'pending', '2023-12-28 03:47:32', '2023-12-28 03:47:32'),
(1046, 'draft', '2023-12-28 03:49:51', '2023-12-28 03:49:51'),
(1047, 'pending', '2023-12-28 06:42:52', '2023-12-28 06:42:52'),
(1048, 'pending', '2023-12-28 07:54:54', '2023-12-28 07:54:54'),
(1017, 'pending', '2023-12-28 21:00:27', '2023-12-28 21:00:27'),
(1017, 'pending', '2023-12-28 21:09:14', '2023-12-28 21:09:14'),
(1020, 'confirmed', '2023-12-28 21:13:31', '2023-12-28 21:13:31'),
(1020, 'confirmed', '2023-12-28 21:15:58', '2023-12-28 21:15:58'),
(1020, 'delivering', '2023-12-28 21:16:02', '2023-12-28 21:16:02'),
(1020, 'delivered', '2023-12-28 21:16:40', '2023-12-28 21:16:40'),
(1020, 'refunded', '2023-12-28 21:17:10', '2023-12-28 21:17:10'),
(1027, 'pending', '2023-12-28 21:28:21', '2023-12-28 21:28:21'),
(1027, 'confirmed', '2023-12-28 21:28:24', '2023-12-28 21:28:24'),
(1024, 'confirmed', '2023-12-28 21:30:32', '2023-12-28 21:30:32'),
(1030, 'pending', '2023-12-28 21:30:42', '2023-12-28 21:30:42'),
(1049, 'draft', '2023-12-28 22:39:06', '2023-12-28 22:39:06'),
(1050, 'draft', '2023-12-29 01:48:56', '2023-12-29 01:48:56'),
(1050, 'draft', '2024-01-02 01:44:56', '2024-01-02 01:44:56'),
(1050, 'confirmed', '2024-01-02 01:44:58', '2024-01-02 01:44:58'),
(1050, 'delivering', '2024-01-02 01:45:00', '2024-01-02 01:45:00'),
(1050, 'delivered', '2024-01-02 01:45:03', '2024-01-02 01:45:03'),
(1051, 'draft', '2024-01-02 01:45:41', '2024-01-02 01:45:41'),
(1051, 'cancelled', '2024-01-02 01:45:57', '2024-01-02 01:45:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `variant_id` bigint UNSIGNED NOT NULL,
  `amount` int UNSIGNED NOT NULL DEFAULT '1',
  `standard_price` bigint UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` bigint UNSIGNED NOT NULL DEFAULT '0',
  `total` bigint UNSIGNED NOT NULL DEFAULT '0',
  `is_refunded` tinyint(1) NOT NULL DEFAULT '0',
  `rating` enum('1','2','3','4','5') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `serial_number` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `variant_id`, `amount`, `standard_price`, `sale_price`, `total`, `is_refunded`, `rating`, `review`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1000, 1, 1, 10000000, 0, 0, 0, NULL, NULL, NULL, '2023-12-11 14:05:13', '2023-12-11 14:05:13'),
(2, 1001, 1, 1, 10000000, 0, 0, 0, NULL, NULL, NULL, '2023-12-11 14:05:34', '2023-12-11 14:05:34'),
(3, 1002, 2, 10, 20000000, 0, 0, 0, NULL, NULL, NULL, '2023-12-11 14:20:42', '2023-12-11 16:11:38'),
(4, 1003, 2, 1, 20000000, 0, 0, 0, NULL, NULL, NULL, '2023-12-11 14:21:04', '2023-12-11 14:21:04'),
(5, 1004, 2, 1, 20000000, 0, 0, 0, NULL, NULL, NULL, '2023-12-11 14:22:44', '2023-12-11 14:22:44'),
(6, 1003, 3, 1, 78000000, 85800000, 85800000, 0, NULL, NULL, NULL, '2023-12-11 15:55:25', '2023-12-11 15:55:25'),
(7, 1005, 1, 2, 10000000, 9900000, 19800000, 0, NULL, NULL, NULL, '2023-12-11 16:21:08', '2023-12-11 16:23:33'),
(8, 1006, 7, 1, 27000000, 22275000, 22275000, 0, NULL, NULL, NULL, '2023-12-13 08:34:50', '2023-12-13 08:34:50'),
(9, 1007, 2, 1, 20000000, 0, 0, 0, NULL, NULL, 'abc1234', '2023-12-17 14:24:38', '2023-12-21 04:33:12'),
(10, 1008, 2, 1, 20000000, 0, 0, 0, NULL, NULL, NULL, '2023-12-17 14:24:50', '2023-12-17 14:24:50'),
(11, 1009, 2, 1, 20000000, 0, 0, 0, NULL, NULL, NULL, '2023-12-17 14:40:31', '2023-12-17 14:40:31'),
(12, 1010, 7, 1, 27000000, 22275000, 22275000, 0, NULL, NULL, NULL, '2023-12-17 14:51:39', '2023-12-17 14:51:39'),
(13, 1011, 7, 1, 27000000, 22275000, 22275000, 0, NULL, NULL, NULL, '2023-12-17 14:57:18', '2023-12-17 14:57:18'),
(14, 1012, 8, 1, 31990000, 26391750, 26391750, 0, NULL, NULL, NULL, '2023-12-21 06:27:23', '2023-12-21 06:27:23'),
(15, 1013, 8, 1, 31990000, 26391750, 26391750, 0, NULL, NULL, NULL, '2023-12-21 06:27:26', '2023-12-21 06:27:26'),
(16, 1014, 8, 1, 31990000, 26391750, 26391750, 0, NULL, NULL, NULL, '2023-12-24 16:39:32', '2023-12-24 16:39:32'),
(17, 1015, 8, 1, 31990000, 26391750, 26391750, 0, NULL, NULL, NULL, '2023-12-24 17:10:16', '2023-12-24 17:10:16'),
(18, 1016, 8, 1, 31990000, 26391750, 26391750, 0, NULL, NULL, NULL, '2023-12-24 17:12:17', '2023-12-24 17:12:17'),
(20, 1018, 3, 1, 78000000, 85800000, 85800000, 0, NULL, NULL, NULL, '2023-12-25 09:33:13', '2023-12-25 09:33:13'),
(21, 1019, 1, 2, 10000000, 9900000, 19800000, 0, NULL, NULL, NULL, '2023-12-25 15:22:50', '2023-12-25 15:22:50'),
(22, 1019, 3, 1, 78000000, 85800000, 85800000, 0, NULL, NULL, NULL, '2023-12-25 15:22:50', '2023-12-25 15:22:50'),
(23, 1020, 1, 1, 10000000, 9900000, 9900000, 0, NULL, NULL, NULL, '2023-12-25 15:45:07', '2023-12-25 15:45:07'),
(24, 1021, 1, 1, 10000000, 9900000, 9900000, 0, NULL, NULL, '123', '2023-12-26 06:09:26', '2023-12-26 23:08:12'),
(25, 1022, 6, 1, 36990000, 32551200, 32551200, 0, NULL, NULL, NULL, '2023-12-26 14:27:40', '2023-12-26 14:27:40'),
(26, 1023, 8, 1, 31990000, 26391750, 26391750, 0, NULL, NULL, NULL, '2023-12-26 14:42:59', '2023-12-26 14:42:59'),
(27, 1024, 7, 1, 27000000, 22275000, 22275000, 0, NULL, NULL, NULL, '2023-12-26 14:53:07', '2023-12-26 14:53:07'),
(28, 1025, 8, 1, 31990000, 26391750, 26391750, 0, NULL, NULL, NULL, '2023-12-26 15:12:38', '2023-12-26 15:12:38'),
(29, 1026, 1, 1, 10000000, 9900000, 9900000, 0, NULL, NULL, NULL, '2023-12-26 17:20:18', '2023-12-26 17:20:18'),
(30, 1027, 8, 1, 31990000, 26391750, 26391750, 0, NULL, NULL, NULL, '2023-12-26 17:26:00', '2023-12-26 17:26:00'),
(31, 1028, 7, 1, 27000000, 22275000, 22275000, 0, NULL, NULL, NULL, '2023-12-26 18:30:56', '2023-12-26 18:30:56'),
(32, 1029, 1, 2, 10000000, 9900000, 19800000, 0, NULL, NULL, NULL, '2023-12-27 01:15:53', '2023-12-27 01:15:53'),
(33, 1030, 6, 1, 36990000, 32551200, 32551200, 0, NULL, NULL, NULL, '2023-12-27 01:39:47', '2023-12-27 01:39:47'),
(34, 1031, 7, 1, 27000000, 22275000, 22275000, 0, NULL, NULL, NULL, '2023-12-27 03:15:49', '2023-12-27 03:15:49'),
(35, 1032, 7, 1, 27000000, 22275000, 22275000, 0, NULL, NULL, NULL, '2023-12-27 03:25:10', '2023-12-27 03:25:10'),
(36, 1033, 1, 1, 10000000, 9900000, 9900000, 0, NULL, NULL, NULL, '2023-12-26 22:39:00', '2023-12-26 22:39:00'),
(37, 1033, 8, 2, 31990000, 26391750, 52783500, 0, NULL, NULL, NULL, '2023-12-26 22:39:00', '2023-12-26 22:39:00'),
(38, 1034, 8, 1, 31990000, 26391750, 26391750, 0, NULL, NULL, NULL, '2023-12-26 22:55:38', '2023-12-26 22:55:38'),
(39, 1035, 1, 1, 10000000, 9900000, 9900000, 0, NULL, NULL, '128', '2023-12-26 23:09:08', '2023-12-26 23:10:27'),
(40, 1036, 3, 1, 78000000, 85800000, 85800000, 0, NULL, NULL, NULL, '2023-12-26 23:35:59', '2023-12-26 23:35:59'),
(41, 1036, 8, 1, 31990000, 26391750, 26391750, 0, NULL, NULL, NULL, '2023-12-26 23:35:59', '2023-12-26 23:35:59'),
(42, 1037, 4, 1, 28990000, 21046740, 21046740, 0, NULL, NULL, NULL, '2023-12-26 23:37:03', '2023-12-26 23:37:03'),
(43, 1038, 1, 1, 10000000, 9900000, 9900000, 0, NULL, NULL, 'ád', '2023-12-26 23:50:18', '2023-12-28 22:32:22'),
(44, 1039, 3, 1, 78000000, 85800000, 85800000, 0, NULL, NULL, NULL, '2023-12-26 23:52:19', '2023-12-26 23:52:19'),
(46, 1040, 1, 1, 10000000, 9900000, 9900000, 0, NULL, NULL, NULL, '2023-12-26 23:54:53', '2023-12-26 23:54:53'),
(47, 1040, 3, 1, 78000000, 85800000, 85800000, 0, NULL, NULL, NULL, '2023-12-26 23:54:53', '2023-12-26 23:54:53'),
(48, 1041, 1, 1, 10000000, 9900000, 9900000, 0, NULL, NULL, NULL, '2023-12-26 23:55:51', '2023-12-26 23:55:51'),
(50, 1042, 2, 2, 20000000, 0, 0, 0, NULL, NULL, NULL, '2023-12-28 02:30:35', '2023-12-28 02:30:35'),
(51, 1043, 8, 1, 31990000, 26391750, 26391750, 0, NULL, NULL, NULL, '2023-12-28 02:38:33', '2023-12-28 02:38:33'),
(52, 1044, 3, 1, 78000000, 85800000, 85800000, 0, NULL, NULL, NULL, '2023-12-28 03:46:26', '2023-12-28 03:46:26'),
(53, 1045, 8, 1, 31990000, 26391750, 26391750, 0, NULL, NULL, NULL, '2023-12-28 03:47:32', '2023-12-28 03:47:32'),
(54, 1047, 7, 1, 27000000, 22275000, 22275000, 0, NULL, NULL, 'sdf', '2023-12-28 06:42:52', '2023-12-28 07:26:59'),
(55, 1047, 8, 1, 31990000, 26391750, 26391750, 0, NULL, NULL, NULL, '2023-12-28 06:42:52', '2023-12-28 06:42:52'),
(58, 1047, 2, 1, 20000000, 0, 0, 0, NULL, NULL, NULL, '2023-12-28 07:44:26', '2023-12-28 07:44:26'),
(59, 1048, 13, 1, 30000000, 26400000, 26400000, 0, NULL, NULL, NULL, '2023-12-28 07:54:54', '2023-12-28 07:54:54'),
(62, 1038, 2, 1, 20000000, 0, 0, 0, NULL, NULL, NULL, '2023-12-28 22:22:52', '2023-12-28 22:22:52'),
(63, 1049, 2, 1, 20000000, 0, 0, 0, NULL, NULL, NULL, '2023-12-28 22:39:06', '2023-12-28 22:39:06'),
(64, 1050, 2, 1, 20000000, 0, 0, 0, NULL, NULL, NULL, '2023-12-29 01:48:56', '2023-12-29 01:48:56'),
(65, 1017, 2, 1, 20000000, 0, 0, 0, NULL, NULL, NULL, '2023-12-30 20:47:19', '2023-12-30 20:47:19'),
(67, 1051, 3, 1, 78000000, 85800000, 85800000, 0, NULL, NULL, NULL, '2024-01-02 01:45:48', '2024-01-02 01:45:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('whitie017@gmail.com', '190510', '2023-12-25 04:49:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', '9303eff7afd1f70de1e11c0bbd42df7bd4d3b5cca15bdb5fb6bda54d899c60b1', '[\"*\"]', NULL, NULL, '2023-12-11 13:01:59', '2023-12-11 13:01:59'),
(2, 'App\\Models\\User', 1, 'authToken', 'b50edfae2be34f088278dff528c28c949fa17c8c21a310a6bab10af82017bd0f', '[\"*\"]', '2023-12-24 16:25:19', NULL, '2023-12-11 13:08:44', '2023-12-24 16:25:19'),
(3, 'App\\Models\\User', 1, 'authToken', '8875b1e93921d33ea0124f25f3352a10b47578c615f95adf9fa94ac353dd2fe5', '[\"*\"]', NULL, NULL, '2023-12-11 13:12:32', '2023-12-11 13:12:32'),
(4, 'App\\Models\\User', 1, 'authToken', 'eaad81f01baab508c09a8aa9abe73494bb49c179bb839839c2e1e25b78160f58', '[\"*\"]', NULL, NULL, '2023-12-11 13:14:15', '2023-12-11 13:14:15'),
(5, 'App\\Models\\User', 1, 'authToken', '813ae3bba94d5b785b14955c32a46c41cb5debcf733b201280430b5d277b67a9', '[\"*\"]', NULL, NULL, '2023-12-11 13:40:02', '2023-12-11 13:40:02'),
(6, 'App\\Models\\User', 1, 'authToken', '5b1413de0cbfcea623b605e86f0e60b0bd839b013573fa6de7f8a62b9af8626d', '[\"*\"]', '2023-12-21 06:25:16', NULL, '2023-12-11 13:49:21', '2023-12-21 06:25:16'),
(7, 'App\\Models\\User', 1, 'authToken', 'd20a580f62708d9927ee454c62e5137c4a9979bccaa74cc771efae77263e2d3c', '[\"*\"]', NULL, NULL, '2023-12-11 14:14:30', '2023-12-11 14:14:30'),
(8, 'App\\Models\\User', 6, 'authToken', '48930c3bc22a32570582252b468363f4029d8ceb9ba6d98638c9ab218c4c3708', '[\"*\"]', NULL, NULL, '2023-12-11 14:18:29', '2023-12-11 14:18:29'),
(9, 'App\\Models\\User', 1, 'authToken', '152ce94d09d40945b5eb83c0fe978d145aa85cb227d2c54de05c7d65997431f6', '[\"*\"]', '2023-12-26 22:36:59', NULL, '2023-12-11 14:23:27', '2023-12-26 22:36:59'),
(10, 'App\\Models\\User', 6, 'authToken', '5e20d9b8c44f5f318a1725e3eccf3e8ab51f9c93f04fb897c3f2aaf02e7e2d39', '[\"*\"]', NULL, NULL, '2023-12-11 15:30:03', '2023-12-11 15:30:03'),
(11, 'App\\Models\\User', 1, 'authToken', 'bc81e05fca45965813820b8d8f6f127dcfd9e7a71ad8d7ef8f0ec0b28991b8c6', '[\"*\"]', '2023-12-12 16:34:25', NULL, '2023-12-11 15:43:30', '2023-12-12 16:34:25'),
(12, 'App\\Models\\User', 1, 'authToken', 'cfb5a3ef0075d9ccf2cef04f2db3e47ce41f760afddeee5e91bbcbb614d0ef71', '[\"*\"]', '2023-12-12 13:13:44', NULL, '2023-12-11 16:22:45', '2023-12-12 13:13:44'),
(13, 'App\\Models\\User', 6, 'authToken', '414ca9c3cbd117be7e158c94e583cf47ecc63498964f984ffa025a620a63b5de', '[\"*\"]', NULL, NULL, '2023-12-13 08:33:46', '2023-12-13 08:33:46'),
(14, 'App\\Models\\User', 6, 'authToken', '08fa18342bbd18cb87c1ca6a81c7d91d4ee9eaad5b732ea507f72a08f8d86946', '[\"*\"]', NULL, NULL, '2023-12-13 08:41:25', '2023-12-13 08:41:25'),
(15, 'App\\Models\\User', 15, 'authToken', '81bcab7c627c38da07d87ab23cc9a2d8ab887db97b601b062c162289c0bc932d', '[\"*\"]', NULL, NULL, '2023-12-14 12:52:00', '2023-12-14 12:52:00'),
(16, 'App\\Models\\User', 1, 'authToken', '9d80cb7fc00429199878bc9dcfc42e73804b6e9325508cfa5b1a48afb5524bbf', '[\"*\"]', '2023-12-26 17:17:18', NULL, '2023-12-17 14:21:59', '2023-12-26 17:17:18'),
(17, 'App\\Models\\User', 6, 'authToken', 'd0b318be5124edba9b7c6ce0b146c4d5c583ba1b5d4f3eaa3fd3ba374ef1dcbd', '[\"*\"]', NULL, NULL, '2023-12-21 06:26:53', '2023-12-21 06:26:53'),
(18, 'App\\Models\\User', 1, 'authToken', '2b3b307a3b6fabeaff5d7e97d0f2a8460515321ba0ac72c932590e20e5489a15', '[\"*\"]', NULL, NULL, '2023-12-21 06:29:33', '2023-12-21 06:29:33'),
(19, 'App\\Models\\User', 6, 'authToken', 'fb49424153c1bb9a89460bf6a384016997ae3d6a390507435f5a83688848a89d', '[\"*\"]', NULL, NULL, '2023-12-21 06:30:02', '2023-12-21 06:30:02'),
(20, 'App\\Models\\User', 6, 'authToken', '77d4729ed7a9bfa8afadd14efad3536c45e6f5644751d70e46b6823270f2bffb', '[\"*\"]', NULL, NULL, '2023-12-21 06:31:24', '2023-12-21 06:31:24'),
(21, 'App\\Models\\User', 1, 'authToken', '0df95b692e3a5a0ea520940233fc7bedf016b03d6a611f0289ea6bf052e84723', '[\"*\"]', '2023-12-23 03:03:28', NULL, '2023-12-21 06:31:56', '2023-12-23 03:03:28'),
(22, 'App\\Models\\User', 6, 'authToken', '66525b4377cf78e9ea2ab00c71ce11575df8177c4a4e131611b0b5545bccdc5b', '[\"*\"]', NULL, NULL, '2023-12-23 03:08:56', '2023-12-23 03:08:56'),
(23, 'App\\Models\\User', 1, 'authToken', '05787a3891a783771bf1cc07dd391a351786ac60c184ff33649a6cc77138719b', '[\"*\"]', '2023-12-27 02:56:21', NULL, '2023-12-23 10:43:00', '2023-12-27 02:56:21'),
(24, 'App\\Models\\User', 1, 'authToken', '20fd380ac7b87072358e460e2e98c14959a88de40f9b158f752e6ab7c5a7d32a', '[\"*\"]', NULL, NULL, '2023-12-24 09:41:34', '2023-12-24 09:41:34'),
(25, 'App\\Models\\User', 16, 'authToken', '641e5f8090a13aa755ff8d4bf8062486674dcd8bf2d3f975f4aee3597613a1c5', '[\"*\"]', NULL, NULL, '2023-12-24 12:06:42', '2023-12-24 12:06:42'),
(26, 'App\\Models\\User', 16, 'authToken', '8d94e53f108301a736bbe9b45c4d27c9531d450d5aba4eb6f8d28392a51c9744', '[\"*\"]', '2023-12-26 15:00:41', NULL, '2023-12-24 12:15:10', '2023-12-26 15:00:41'),
(27, 'App\\Models\\User', 16, 'authToken', '17a6a4aa7afaa5780922939ebfcab1f8f272c0f60a89a253e9bf03ff0bafd0fd', '[\"*\"]', '2023-12-26 14:32:49', NULL, '2023-12-24 16:25:33', '2023-12-26 14:32:49'),
(28, 'App\\Models\\User', 1, 'authToken', '52051dd99a5667ce4f7b18dd7b7779ddfe1870f2965aab0ac67d2cc35cf5c252', '[\"*\"]', NULL, NULL, '2023-12-26 15:00:49', '2023-12-26 15:00:49'),
(29, 'App\\Models\\User', 1, 'authToken', '58dc318118de06e5a42a1789ff568f206ab11fc7f70f233e504f59a5cf3acf24', '[\"*\"]', '2023-12-27 01:21:51', NULL, '2023-12-26 15:05:29', '2023-12-27 01:21:51'),
(30, 'App\\Models\\User', 6, 'authToken', 'b558c7b38086aa38f48054cc0bb20822792bdc965807805aae4ee180fda0894e', '[\"*\"]', NULL, NULL, '2023-12-26 17:17:34', '2023-12-26 17:17:34'),
(31, 'App\\Models\\User', 6, 'authToken', '7b609797b599d82bf3f471aa47a7ef4788508dd37e59c4005dfd511c400f3f14', '[\"*\"]', '2023-12-27 01:36:03', NULL, '2023-12-26 18:30:11', '2023-12-27 01:36:03'),
(32, 'App\\Models\\User', 6, 'authToken', '23698c7166eef5ad58a28484e1ed50da9ffd5fbf61f7b9d4554fe03650b65400', '[\"*\"]', NULL, NULL, '2023-12-27 01:23:29', '2023-12-27 01:23:29'),
(33, 'App\\Models\\User', 1, 'authToken', 'a71b5e5c60b434d8f9fdf2d04935601b3977fba92d9073268aaf21485156fdaa', '[\"*\"]', NULL, NULL, '2023-12-27 01:26:23', '2023-12-27 01:26:23'),
(34, 'App\\Models\\User', 6, 'authToken', 'd0d0b2db4c3922ec861864a84b97038904ba0cca33494129f358cddc6ebf21c4', '[\"*\"]', NULL, NULL, '2023-12-27 01:28:21', '2023-12-27 01:28:21'),
(35, 'App\\Models\\User', 6, 'authToken', '1327af103a03205d918f136fc6144491223d28aaa9203b0e84943695b8e11e6c', '[\"*\"]', NULL, NULL, '2023-12-27 01:31:42', '2023-12-27 01:31:42'),
(36, 'App\\Models\\User', 16, 'authToken', 'dc78476763eeb7415eb282d2a1e19e0a3572686894a8df2bc2a7169903f0d586', '[\"*\"]', NULL, NULL, '2023-12-27 01:37:54', '2023-12-27 01:37:54'),
(37, 'App\\Models\\User', 1, 'authToken', '45b25a19737ed3f9fc6d572b9779065f32636fdc4337d9d4236ac4f2f9737255', '[\"*\"]', NULL, NULL, '2023-12-27 01:41:38', '2023-12-27 01:41:38'),
(38, 'App\\Models\\User', 16, 'authToken', '677fb0beb2d56bbab70329512c562ff03ffe607d32ef9ec5bc93a3ef37fb30c7', '[\"*\"]', '2023-12-27 19:35:04', NULL, '2023-12-27 01:43:09', '2023-12-27 19:35:04'),
(39, 'App\\Models\\User', 6, 'authToken', '414adab62ecbc856517b18a2f298e4de685d193ea69c877628e394dec648923b', '[\"*\"]', NULL, NULL, '2023-12-27 02:58:03', '2023-12-27 02:58:03'),
(40, 'App\\Models\\User', 1, 'authToken', '4dd81ed7d8849b5f8f9384361591024951b983214c9f72a17fcbd9b0c98a4ac0', '[\"*\"]', NULL, NULL, '2023-12-27 03:16:08', '2023-12-27 03:16:08'),
(41, 'App\\Models\\User', 6, 'authToken', 'abcca168e5986f977696a7bbb5e97b4d99d8d8f773de28f9cd8fe368f833b87a', '[\"*\"]', NULL, NULL, '2023-12-27 03:17:00', '2023-12-27 03:17:00'),
(42, 'App\\Models\\User', 1, 'authToken', 'f40715a17ff0814dbdf1ab7b86e0d725ed4ee2b800c5b9b2a61b3e06553aec7f', '[\"*\"]', NULL, NULL, '2023-12-27 03:18:50', '2023-12-27 03:18:50'),
(43, 'App\\Models\\User', 6, 'authToken', 'bfb1d307ee6dca239fd2d4da02296a58118d80a4a92e76ecda9fbe418709fd7b', '[\"*\"]', NULL, NULL, '2023-12-27 03:19:15', '2023-12-27 03:19:15'),
(44, 'App\\Models\\User', 1, 'authToken', 'a7c0fdf20650a4c1dc5aaef96d181ccd773e58bb2ae79826e3de3b2a4923b280', '[\"*\"]', NULL, NULL, '2023-12-27 03:19:29', '2023-12-27 03:19:29'),
(45, 'App\\Models\\User', 6, 'authToken', 'cf0ec35dadb1f12e2e40f7a159ab0ae9b04ebc171675756488eb1fe07317cac2', '[\"*\"]', NULL, NULL, '2023-12-27 03:23:32', '2023-12-27 03:23:32'),
(46, 'App\\Models\\User', 1, 'authToken', '3bce12849ebb8ab248a58ecacd808e5cdc16ecb27790e6d11f4bb4a96771d319', '[\"*\"]', NULL, NULL, '2023-12-27 03:23:41', '2023-12-27 03:23:41'),
(47, 'App\\Models\\User', 6, 'authToken', '57591186cfd51880780bc49dc25151262ceac02ad1bedd4c513d599e31b7cbcb', '[\"*\"]', NULL, NULL, '2023-12-27 03:24:52', '2023-12-27 03:24:52'),
(48, 'App\\Models\\User', 1, 'authToken', 'd85667be15e7d11ec9ce6580682187f9eac766904e5509f2c8e0ee4ab3b9ed21', '[\"*\"]', NULL, NULL, '2023-12-27 03:25:05', '2023-12-27 03:25:05'),
(49, 'App\\Models\\User', 6, 'authToken', '0fe4fb9b7ccb29a02006bda55873e22c5406dabebc167efeb555195403d0197c', '[\"*\"]', NULL, NULL, '2023-12-27 03:28:07', '2023-12-27 03:28:07'),
(50, 'App\\Models\\User', 1, 'authToken', '59d7fe4c02e07cf41ef48bf38d1b9e402f16f2c6c82a455374aaf3e99f4d187e', '[\"*\"]', NULL, NULL, '2023-12-26 20:45:19', '2023-12-26 20:45:19'),
(51, 'App\\Models\\User', 6, 'authToken', '636d56f4de84110623703981d7b7c55785f6bb7301df612731e3cdb892b7d5a1', '[\"*\"]', NULL, NULL, '2023-12-26 20:46:39', '2023-12-26 20:46:39'),
(52, 'App\\Models\\User', 1, 'authToken', 'bb71a44a64408aefa8577dfa500f0ccac28ecf6eb91ab213b2482985da34e524', '[\"*\"]', NULL, NULL, '2023-12-26 22:35:55', '2023-12-26 22:35:55'),
(53, 'App\\Models\\User', 16, 'authToken', '053470d47792bb514654df494b1215b71af1c4d2af7608a9c8097adb899f9993', '[\"*\"]', NULL, NULL, '2023-12-26 22:38:08', '2023-12-26 22:38:08'),
(54, 'App\\Models\\User', 1, 'authToken', '91271bbb9d574ae8cc003ad05c03a08f74fc512db6798569e230318d93239b68', '[\"*\"]', NULL, NULL, '2023-12-26 22:39:33', '2023-12-26 22:39:33'),
(55, 'App\\Models\\User', 16, 'authToken', 'a319fba12ecc2bb905190ea6dbbddd7e181a2a8f3346bfe827ba060a4f4064f8', '[\"*\"]', NULL, NULL, '2023-12-26 22:41:41', '2023-12-26 22:41:41'),
(56, 'App\\Models\\User', 1, 'authToken', 'c26d9a8adf37d43b8c19c56780cdc3c9be5cb4bf415d68ef75d9cdc8a050d90c', '[\"*\"]', NULL, NULL, '2023-12-26 22:42:30', '2023-12-26 22:42:30'),
(57, 'App\\Models\\User', 16, 'authToken', 'cb10ce52939de5e83c2d2acd94eebca4b6a10c0208ddfd1dc2e7c28a8a5331fa', '[\"*\"]', NULL, NULL, '2023-12-26 22:43:19', '2023-12-26 22:43:19'),
(58, 'App\\Models\\User', 1, 'authToken', '84aea18021a67d39bad5d475660d61912df0595e856668edcb5613f7c7e6a4d9', '[\"*\"]', NULL, NULL, '2023-12-26 22:43:43', '2023-12-26 22:43:43'),
(59, 'App\\Models\\User', 1, 'authToken', 'b22e3ff1d7468b0c0bb921432b84d5dfb9d68259d4d5281d28fa513585455184', '[\"*\"]', NULL, NULL, '2023-12-26 22:51:25', '2023-12-26 22:51:25'),
(60, 'App\\Models\\User', 16, 'authToken', '3ce450a82cbbd5cdcd745066288c057b4af24a3a580ab884558143a98980894f', '[\"*\"]', NULL, NULL, '2023-12-26 22:52:02', '2023-12-26 22:52:02'),
(61, 'App\\Models\\User', 6, 'authToken', 'a4c314e80bbb4eeedba951e703aecd468ac05acd42e74724d6d8b390c8a6685e', '[\"*\"]', '2023-12-27 20:39:53', NULL, '2023-12-26 23:27:26', '2023-12-27 20:39:53'),
(62, 'App\\Models\\User', 1, 'authToken', '55f942c6410a7d98ee3a849bafde1edcd8c1cc08517485c9eddcf96a3adb303f', '[\"*\"]', NULL, NULL, '2023-12-26 23:31:25', '2023-12-26 23:31:25'),
(63, 'App\\Models\\User', 6, 'authToken', 'ac2c272c311d78ebda8344ba3dab38823cfe2aa9bdb3eed75e35758da72d2401', '[\"*\"]', NULL, NULL, '2023-12-26 23:33:31', '2023-12-26 23:33:31'),
(64, 'App\\Models\\User', 1, 'authToken', 'd11b2b08f2db6f8392edf4aec75d086e3f71d8a515acac90edce16fb7f59ec4d', '[\"*\"]', '2023-12-31 22:10:59', NULL, '2023-12-27 00:42:55', '2023-12-31 22:10:59'),
(65, 'App\\Models\\User', 1, 'authToken', '713c600f45e4b8ec60ba443367c1f30bdedfee528ded3d234dbfc773b16aedb4', '[\"*\"]', '2023-12-28 00:37:57', NULL, '2023-12-27 19:35:12', '2023-12-28 00:37:57'),
(66, 'App\\Models\\User', 1, 'authToken', '223dbc0270fdd5a8f375662b2be0c7fbe4809ead8f640b6aef080ed7170bdbae', '[\"*\"]', '2023-12-28 02:30:35', NULL, '2023-12-27 20:40:00', '2023-12-28 02:30:35'),
(67, 'App\\Models\\User', 16, 'authToken', '5cd814b658fac2bca9d9d08bf40fbc556fcff04a452df9337bb3c8d01e986949', '[\"*\"]', NULL, NULL, '2023-12-28 00:38:03', '2023-12-28 00:38:03'),
(68, 'App\\Models\\User', 1, 'authToken', 'e5ca4628e4ed9b519b90369b86fee648366b9a39027e4182d0c0a645b4796349', '[\"*\"]', '2023-12-30 00:01:29', NULL, '2023-12-28 02:23:03', '2023-12-30 00:01:29'),
(69, 'App\\Models\\User', 6, 'authToken', 'b92f02cac0396ed87ad15bac56eca8122c067f5beead74a518765149660c03eb', '[\"*\"]', NULL, NULL, '2023-12-28 02:37:55', '2023-12-28 02:37:55'),
(70, 'App\\Models\\User', 1, 'authToken', '4f3d8319e5476647e4ccbdf298b4e6bd42ccdcf3edfda2e638689b1fe071d975', '[\"*\"]', '2023-12-28 06:41:48', NULL, '2023-12-28 03:49:39', '2023-12-28 06:41:48'),
(71, 'App\\Models\\User', 6, 'authToken', '922b2dd5c0909369f013308409fcfba4d15f097af091f0f7998cd95a93ac769a', '[\"*\"]', NULL, NULL, '2023-12-28 06:42:29', '2023-12-28 06:42:29'),
(72, 'App\\Models\\User', 1, 'authToken', '207fe63eac883c6aad7a017f5efc29b4e16839a2730862b7fd5d71b8d011184e', '[\"*\"]', NULL, NULL, '2023-12-28 07:10:54', '2023-12-28 07:10:54'),
(73, 'App\\Models\\User', 6, 'authToken', 'a42edf76d2a2a1388736008d4bd09a75b8559402c84a47dc973889276c3f4c95', '[\"*\"]', NULL, NULL, '2023-12-28 07:54:14', '2023-12-28 07:54:14'),
(74, 'App\\Models\\User', 1, 'authToken', '61cc0a86ae6bb607a6b56f181d6c2d9050e3c2af1a9ac4bf6fe7fec01ab35b9a', '[\"*\"]', '2024-01-02 02:04:32', NULL, '2023-12-28 20:59:49', '2024-01-02 02:04:32'),
(75, 'App\\Models\\User', 16, 'authToken', '3ed3033f04590e4dc1a8018bb5da747cb1573ae78be0f320a3abb50e08c6b38a', '[\"*\"]', NULL, NULL, '2023-12-30 00:02:24', '2023-12-30 00:02:24'),
(76, 'App\\Models\\User', 1, 'authToken', '3a6b719d5abcc5aa8a9c30b2fcc8982fc23d14bcb47de7bb84d3634d1db389b7', '[\"*\"]', '2024-01-02 09:35:04', NULL, '2023-12-30 06:33:17', '2024-01-02 09:35:04'),
(77, 'App\\Models\\User', 6, 'authToken', 'abf84d2a1c075733f0279b0920d8c66b78ca1f3d60b487c1d7464ee4c285bf9f', '[\"*\"]', NULL, NULL, '2024-01-02 10:03:08', '2024-01-02 10:03:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` bigint UNSIGNED NOT NULL,
  `state` enum('draft','published','archived','out_of_stock') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `image`, `brand_id`, `state`, `created_at`, `updated_at`) VALUES
(1, 'Asus Vivobook Flip 14 TP470 (Update product name)', 'asus-vivobook-flip-14-tp470-intel', 'Không có thông tin', 'https://images.thinkgroup.vn/unsafe/460x460/https://media-api-beta.thinkpro.vn/media/core/products/2023/11/6/asus-vivobook-flip-14-tp470-intel-thinkpro.png', 8, 'published', '2023-12-11 13:47:36', '2023-12-29 04:17:40'),
(2, 'Dell Precision 5550', 'dell-precision-5550-i7-10850h-t2000-4gb-32gb-512gb-fhd', 'gege', 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/filters:quality(100)/https://media-api-beta.thinkpro.vn/media/core/products/2022/10/4/dell-precision-5550-thinkpro-11.jpg', 2, 'published', '2023-12-11 14:14:44', '2023-12-27 03:26:37'),
(3, 'Asus ROG Strix Scar 15 (2022) G533', 'asus-rog-strix-scar-15-2022-g533', 'Không có thông tin', 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2022/7/30/ASUS-ROG-Strix-SCAR-15-2022-ThinkPro-01.jpg', 1, 'published', '2023-12-11 14:30:13', '2023-12-11 15:26:23'),
(4, 'Test', 'dell-inspiron-14-5430-i7-1360p-16gb-1tb-10', 'mô tả', 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2023/3/9/980932B0EC-SP-13170602.jpg', 2, 'published', '2023-12-11 14:42:48', '2024-01-01 02:52:26'),
(5, 'HP 1234', '1', 'mô tả về Dell 1234', 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2023/3/14/in5630nt-cnb-00055rf110-sl.jpg', 3, 'published', '2023-12-11 14:53:32', '2023-12-11 16:12:42'),
(6, 'Dell XPS 13 9315 (2022)', 'dell-xps-13-9315-2022-i7-1250u-16gb-512gb-fhd-touch', NULL, 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2023/1/16/dell-xps-13-9315-thinkpro-01.png', 2, 'published', '2023-12-11 16:06:02', '2023-12-11 16:34:01'),
(7, 'Dell Latitude 7320 Detachable', 'dell-latitude-7320-detachable-i5-1140g7-8gb-256gb-fhd-touch', NULL, 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2022/9/30/dell-latitude-7320-detachable-thinkpro-2.png', 2, 'published', '2023-12-11 16:36:02', '2023-12-11 16:56:22'),
(8, 'Dell Precision 15 5560', 'dell-precision-15-5560-i7-11800h-t1200m-4gb-32gb-1024gb-fhd', NULL, 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2022/9/30/dell-precision-5560-thinkpro-1.png', 2, 'published', '2023-12-11 16:50:28', '2023-12-11 16:54:33'),
(9, 'Dell Alienware M15 R6 (Chính hãng)', 'dell-alienware-mm5-r6-chinh-hang-i7-11800h-rtx-3060-6gb-32gb-1024gb-25k-240hz', NULL, 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2022/9/27/dell-alienware-m15-r6-thinkpro-1.png', 2, 'draft', '2023-12-11 16:56:00', '2023-12-11 16:56:00'),
(10, 'MacBook Air 2022 (Apple M2)', 'macbook-air-2022-m2-8gb-ssd-256gb', NULL, 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2022/6/7/macbook-air-silver-gallery1-20220606.jpeg', 10, 'draft', '2023-12-11 16:58:12', '2023-12-11 17:04:55'),
(11, 'MacBook Pro 13 (Apple M2)', 'macbook-pro-13-apple-m2-apple-m2-8gb-256gb', NULL, 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2023/10/27/macbook-pro-13-apple-m2-thinkpro-Nab.png', 10, 'published', '2023-12-11 17:06:05', '2023-12-12 08:22:58'),
(12, 'Dell XPS 13 Plus 9320', 'dell-xps-13-plus-i5-1240p-16gb-512gb-fhd-touch', NULL, 'https://images.thinkgroup.vn/unsafe/460x460/https://media-api-beta.thinkpro.vn/media/core/products/2023/11/2/dell-xps-13-plus-9320-thinkpro-zC3.png', 2, 'published', '2023-12-12 08:25:20', '2023-12-27 03:13:18'),
(13, 'test', 'test', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Acer_2011.svg/4151px-Acer_2011.svg.png', 1, 'draft', '2023-12-30 19:16:14', '2023-12-30 19:16:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `product_id` bigint UNSIGNED NOT NULL,
  `standard_price` bigint UNSIGNED DEFAULT '0',
  `tax_rate` double UNSIGNED DEFAULT '0.1',
  `discount` double DEFAULT '0',
  `extra_fee` double DEFAULT '0',
  `cost_price` bigint UNSIGNED DEFAULT '0',
  `sale_price` bigint UNSIGNED DEFAULT '0',
  `specifications` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `state` enum('draft','published','archived','out_of_stock') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Đang đổ dữ liệu cho bảng `product_variants`
--

INSERT INTO `product_variants` (`id`, `SKU`, `name`, `image`, `description`, `product_id`, `standard_price`, `tax_rate`, `discount`, `extra_fee`, `cost_price`, `sale_price`, `specifications`, `state`, `created_at`, `updated_at`) VALUES
(1, 'asus-vivobook-flip-14-tp470-intel-4O2Q', 'i3 1115G4, 4GB, 512Gb, FHD Touch - Silver', 'https://images.thinkgroup.vn/unsafe/460x460/https://media-api-beta.thinkpro.vn/media/core/products/2023/11/6/asus-vivobook-flip-14-tp470-intel-thinkpro.png', 'Không có thông tin', 1, 20000000, 0, 0.1, 2, 9000000, 18000002, '{\"cpu\":{\"name\":\"Intel Core i3 1135G\",\"cores\":7,\"threads\":7,\"base_clock\":7,\"turbo_clock\":7,\"cache\":7},\"ram\":{\"capacity\":16384,\"type\":\"LPDDR4\",\"frequency\":3200},\"storage\":{\"drive\":\"SSD\",\"capacity\":\"514\",\"type\":\"M.2 SATA\"},\"display\":{\"size\":\"UHD\",\"resolution\":\"7680x4320\",\"technology\":\"LCD\",\"refresh_rate\":240,\"touch\":false},\"gpu\":{\"name\":\"Intel UHD Graphicss\",\"memory\":10,\"type\":\"Integrated\",\"frequency\":1150},\"ports\":\"1 x USB Type C 2 x USB Type A, HDMI, Jack tai nghe 3.5mm,\",\"keyboard\":\"Kh\\u00f4ng c\\u00f3 info\",\"touchpad\":true,\"webcam\":true,\"battery\":100,\"weight\":1.9,\"os\":\"linux\",\"warranty\":10,\"color\":\"Tr\\u1eafng\"}', 'published', '2023-12-11 13:47:36', '2024-01-02 09:18:30'),
(2, 'test-95yt', 'test', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/LEGO_logo.svg/1200px-LEGO_logo.svg.png', 'Không có thông tin', 2, 20000000, 0.1, 0, 0, 10000000, 0, '{\"cpu\":{\"name\":\"test\",\"cores\":1,\"threads\":2,\"base_clock\":1,\"turbo_clock\":1,\"cache\":1},\"ram\":{\"capacity\":12288,\"type\":\"DDR6\",\"frequency\":1333},\"storage\":{\"drive\":\"SSD\",\"capacity\":\"100\",\"type\":\"M.2 SATA\"},\"display\":{\"size\":\"Full HD\",\"resolution\":\"1920x1080\",\"technology\":\"OLED\",\"refresh_rate\":120,\"touch\":true},\"gpu\":{\"name\":\"test\",\"memory\":4,\"type\":\"Integrated\",\"frequency\":950},\"ports\":\"test\",\"keyboard\":\"test\",\"touchpad\":false,\"webcam\":true,\"battery\":60,\"weight\":2,\"os\":\"chrome_os\",\"warranty\":12,\"color\":\"V\\u00e0ng\"}', 'published', '2023-12-11 14:14:44', '2023-12-11 14:16:04'),
(3, 'asus-rog-strix-scar-15-2022-g533-IG1e', 'Black (G533ZW-LN134W)', 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2022/7/30/ASUS-ROG-Strix-SCAR-15-2022-ThinkPro-01.jpg', 'Không có thông tin', 3, 78000000, 0.1, 0, 0, 70000000, 85800000, '{\"cpu\":{\"name\":\"Intel Core i9 12900H\",\"cores\":14,\"threads\":20,\"base_clock\":3,\"turbo_clock\":5,\"cache\":24},\"ram\":{\"capacity\":32768,\"type\":\"DDR5\",\"frequency\":4800},\"storage\":{\"drive\":\"SSD\",\"capacity\":\"1024\",\"type\":\"M.2 NVMe\"},\"display\":{\"size\":\"QHD\",\"resolution\":\"2560x1440\",\"technology\":\"LCD\",\"refresh_rate\":240,\"touch\":false},\"gpu\":{\"name\":\"NVIDIA\\u00ae GeForce RTX\\u2122 3070 Ti\",\"memory\":8,\"type\":\"Dedicated\",\"frequency\":1000},\"ports\":\"2, 2, 1, 1, 1\",\"keyboard\":\"Kh\\u00f4ng c\\u00f3 th\\u00f4ng tin\",\"touchpad\":true,\"webcam\":true,\"battery\":90,\"weight\":2.3,\"os\":\"windows\",\"warranty\":12,\"color\":\"\\u0110en\"}', 'published', '2023-12-11 14:30:13', '2023-12-11 14:48:55'),
(4, 'dell-inspiron-14-5430-i5-1340p-16gb-512gb-25k', 'i5 1340P, 16GB, 512GB, 2.5K', 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2023/3/9/980932B0EC-SP-13170602.jpg', 'Không có thông tin', 4, 28990000, 0.1, 0.34, 0, 27000000, 21046740, '{\"cpu\":{\"name\":\"Intel Core i5 1340P, 12C\\/16T\",\"cores\":12,\"threads\":16,\"base_clock\":1,\"turbo_clock\":4.6,\"cache\":12},\"ram\":{\"capacity\":16384,\"type\":\"LPDDR5\",\"frequency\":4800},\"storage\":{\"drive\":\"SSD\",\"capacity\":\"512\",\"type\":\"M.2 NVMe\"},\"display\":{\"size\":\"QHD\",\"resolution\":\"2560x1440\",\"technology\":\"LCD\",\"refresh_rate\":60,\"touch\":false},\"gpu\":{\"name\":\"Intel Iris Xe Graphics\",\"memory\":2,\"type\":\"Integrated\",\"frequency\":1000},\"ports\":\"1 x USB Type C, 2 x USB Type A, 1 x HDMI, Jack tai nghe 3.5mm\",\"keyboard\":\"QWERTY\",\"touchpad\":true,\"webcam\":true,\"battery\":54,\"weight\":1.55,\"os\":\"windows\",\"warranty\":12,\"color\":\"X\\u00e1m\"}', 'published', '2023-12-11 14:42:48', '2023-12-11 15:35:51'),
(5, 'HP-1234-XAm3', 'HP 1234', 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2023/3/14/in5630nt-cnb-00055rf110-sl.jpg', 'Không có thông tin', 5, 10000000, 0.1, 0, 0, 15000000, 11000000, '{\"cpu\":{\"name\":\"Intel Core i5 1335U\",\"cores\":10,\"threads\":15,\"base_clock\":1,\"turbo_clock\":4.6,\"cache\":12},\"ram\":{\"capacity\":8192,\"type\":\"DDR6\",\"frequency\":2400},\"storage\":{\"drive\":\"SSD\",\"capacity\":\"128\",\"type\":\"M.2 NVMe\"},\"display\":{\"size\":\"4K\",\"resolution\":\"3840x2160\",\"technology\":\"OLED\",\"refresh_rate\":240,\"touch\":false},\"gpu\":{\"name\":\"Intel Iris Xe Graphics\",\"memory\":4,\"type\":\"Integrated\",\"frequency\":1150},\"ports\":\"TAI NGHE\",\"keyboard\":\"ERTY\",\"touchpad\":false,\"webcam\":true,\"battery\":2400,\"weight\":1.12,\"os\":\"chrome_os\",\"warranty\":12,\"color\":\"\\u0110\\u1ecf\"}', 'draft', '2023-12-11 14:53:32', '2023-12-26 23:13:54'),
(6, 'dell-xps-13-9315-2022-inZT', 'i7 1250U, 16GB, 512GB, FHD+ Touch, sky', 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2023/1/16/dell-xps-13-9315-thinkpro-01.png', 'Không có thông tin', 6, 36990000, 0.1, 0.2, 0, 35000000, 32551200, '{\"cpu\":{\"name\":\"Intel Core i7 1250U\",\"cores\":10,\"threads\":12,\"base_clock\":1,\"turbo_clock\":4.7,\"cache\":12},\"ram\":{\"capacity\":16384,\"type\":\"LPDDR5\",\"frequency\":5000},\"storage\":{\"drive\":\"SSD\",\"capacity\":\"512\",\"type\":\"M.2 NVMe\"},\"display\":{\"size\":\"4K\",\"resolution\":\"3840x2160\",\"technology\":\"QLED\",\"refresh_rate\":60,\"touch\":true},\"gpu\":{\"name\":\"Intel Iris Xe Graphics\",\"memory\":4,\"type\":\"Integrated\",\"frequency\":950},\"ports\":\"2 x USB Type C, Jack tai nghe 3.5mm\",\"keyboard\":\"QWERTY\",\"touchpad\":true,\"webcam\":true,\"battery\":51,\"weight\":1.17,\"os\":\"windows\",\"warranty\":24,\"color\":\"Xanh da tr\\u1eddi\"}', 'published', '2023-12-11 16:06:02', '2023-12-11 16:18:45'),
(7, 'dell-latitude-7320-detachable-poqW', 'i7 1180G7, 16GB, 512GB, FHD+ Touch - Đen - Outlet, Nhập khẩu', 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2022/9/30/dell-latitude-7320-detachable-thinkpro-2.png', 'Không có thông tin', 7, 27000000, 0.1, 0.25, 0, 25000000, 22275000, '{\"cpu\":{\"name\":\"Intel Core i7 1180G7\",\"cores\":4,\"threads\":8,\"base_clock\":1,\"turbo_clock\":4.6,\"cache\":12},\"ram\":{\"capacity\":16384,\"type\":\"LPDDR3\",\"frequency\":4800},\"storage\":{\"drive\":\"SSD\",\"capacity\":\"512\",\"type\":\"M.2 NVMe\"},\"display\":{\"size\":\"4K\",\"resolution\":\"3840x2160\",\"technology\":\"OLED\",\"refresh_rate\":100,\"touch\":false},\"gpu\":{\"name\":\"Intel Iris Xe Graphics\",\"memory\":4,\"type\":\"Integrated\",\"frequency\":1000},\"ports\":\"2 x USB Type C, Jack tai nghe 3.5mm\",\"keyboard\":\"QWERTY\",\"touchpad\":true,\"webcam\":true,\"battery\":40,\"weight\":1.18,\"os\":\"windows\",\"warranty\":12,\"color\":\"\\u0110en\"}', 'published', '2023-12-11 16:36:02', '2023-12-11 16:43:40'),
(8, 'dell-precision-15-5560-G31Y', 'i7 11800H, T1200M 4GB, 32GB, 1024GB, FHD+ - Mineral Gray - Used, Nhập khẩu', 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2022/9/30/dell-precision-5560-thinkpro-1.png', 'Không có thông tin', 8, 31990000, 0.1, 0.25, 0, 30000000, 26391750, '{\"cpu\":{\"name\":\"Intel Core i7 11800H\",\"cores\":8,\"threads\":16,\"base_clock\":1.9,\"turbo_clock\":4.6,\"cache\":24},\"ram\":{\"capacity\":16384,\"type\":\"DDR4\",\"frequency\":3200},\"storage\":{\"drive\":\"SSD\",\"capacity\":\"512\",\"type\":\"M.2 NVMe\"},\"display\":{\"size\":\"Full HD\",\"resolution\":\"1920x1080\",\"technology\":\"OLED\",\"refresh_rate\":60,\"touch\":false},\"gpu\":{\"name\":\"Quadro\",\"memory\":4,\"type\":\"Dedicated\",\"frequency\":1200},\"ports\":\"3 x USB Type C, Jack tai nghe 3.5mm\",\"keyboard\":\"QWERTY\",\"touchpad\":true,\"webcam\":true,\"battery\":86,\"weight\":2.04,\"os\":\"windows\",\"warranty\":24,\"color\":\"X\\u00e1m\"}', 'published', '2023-12-11 16:50:28', '2023-12-11 16:54:21'),
(9, 'dell-alienware-m15-r6-chinh-hang-PDSz', 'Dell Alienware M15 R6 (Chính hãng)', 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2022/9/27/dell-alienware-m15-r6-thinkpro-1.png', NULL, 9, 0, 0.1, 0, 0, 0, 0, '{\"cpu\":{\"name\":\"\",\"cores\":\"\",\"threads\":\"\",\"base_clock\":\"\",\"turbo_clock\":\"\",\"cache\":\"\"},\"ram\":{\"capacity\":\"\",\"type\":\"\",\"frequency\":\"\"},\"storage\":{\"drive\":\"\",\"capacity\":\"\",\"type\":\"\"},\"display\":{\"size\":\"\",\"resolution\":\"\",\"technology\":\"\",\"refresh_rate\":\"\",\"touch\":\"\"},\"gpu\":{\"name\":\"\",\"memory\":\"\",\"type\":\"\",\"frequency\":\"\"},\"ports\":\"\",\"keyboard\":\"\",\"touchpad\":\"\",\"webcam\":\"\",\"battery\":\"\",\"weight\":\"\",\"os\":\"\",\"warranty\":\"\",\"color\":\"\"}', 'draft', '2023-12-11 16:56:00', '2023-12-11 16:56:00'),
(10, 'macbook-air-2022-apple-m2-dG5r', 'M2, 8GB, SSD 256GB - Silver - Used, Nhập khẩu', 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2022/6/7/macbook-air-silver-gallery1-20220606.jpeg', 'Không có thông tin', 10, 31990000, 0.1, 0.3, 0, 30000000, 24632300, '{\"cpu\":{\"name\":\"Apple M2\",\"cores\":8,\"threads\":1,\"base_clock\":1,\"turbo_clock\":0,\"cache\":0},\"ram\":{\"capacity\":8192,\"type\":\"LPDDR5\",\"frequency\":5000},\"storage\":{\"drive\":\"SSD\",\"capacity\":\"256\",\"type\":\"M.2 NVMe\"},\"display\":{\"size\":\"QHD\",\"resolution\":\"2560x1440\",\"technology\":\"QLED\",\"refresh_rate\":240,\"touch\":true},\"gpu\":{\"name\":\"Apple GPU\",\"memory\":4,\"type\":\"Integrated\",\"frequency\":1000},\"ports\":\"2, 1\",\"keyboard\":\"QWERTY\",\"touchpad\":false,\"webcam\":true,\"battery\":52.6,\"weight\":1.24,\"os\":\"macos\",\"warranty\":36,\"color\":\"B\\u1ea1c\"}', 'draft', '2023-12-11 16:58:12', '2023-12-11 17:04:33'),
(11, 'macbook-pro-13-apple-m2-q6XO', 'MacBook Pro 13 (Apple M2)', 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2023/10/27/macbook-pro-13-apple-m2-thinkpro-Nab.png', NULL, 11, 0, 0.1, 0, 0, 0, 0, '{\"cpu\":{\"name\":\"\",\"cores\":\"\",\"threads\":\"\",\"base_clock\":\"\",\"turbo_clock\":\"\",\"cache\":\"\"},\"ram\":{\"capacity\":\"\",\"type\":\"\",\"frequency\":\"\"},\"storage\":{\"drive\":\"\",\"capacity\":\"\",\"type\":\"\"},\"display\":{\"size\":\"\",\"resolution\":\"\",\"technology\":\"\",\"refresh_rate\":\"\",\"touch\":\"\"},\"gpu\":{\"name\":\"\",\"memory\":\"\",\"type\":\"\",\"frequency\":\"\"},\"ports\":\"\",\"keyboard\":\"\",\"touchpad\":\"\",\"webcam\":\"\",\"battery\":\"\",\"weight\":\"\",\"os\":\"\",\"warranty\":\"\",\"color\":\"\"}', 'draft', '2023-12-11 17:06:05', '2023-12-11 17:06:05'),
(12, 'dell-xps-13-plus-9320-tb6U', 'Dell XPS 13 Plus 9320', 'https://images.thinkgroup.vn/unsafe/460x460/https://media-api-beta.thinkpro.vn/media/core/products/2023/11/2/dell-xps-13-plus-9320-thinkpro-zC3.png', NULL, 12, 0, 0.1, 0, 0, 0, 0, '{\"cpu\":{\"name\":\"\",\"cores\":\"\",\"threads\":\"\",\"base_clock\":\"\",\"turbo_clock\":\"\",\"cache\":\"\"},\"ram\":{\"capacity\":\"\",\"type\":\"\",\"frequency\":\"\"},\"storage\":{\"drive\":\"\",\"capacity\":\"\",\"type\":\"\"},\"display\":{\"size\":\"\",\"resolution\":\"\",\"technology\":\"\",\"refresh_rate\":\"\",\"touch\":\"\"},\"gpu\":{\"name\":\"\",\"memory\":\"\",\"type\":\"\",\"frequency\":\"\"},\"ports\":\"\",\"keyboard\":\"\",\"touchpad\":\"\",\"webcam\":\"\",\"battery\":\"\",\"weight\":\"\",\"os\":\"\",\"warranty\":\"\",\"color\":\"\"}', 'draft', '2023-12-12 08:25:20', '2023-12-12 08:25:20'),
(13, 'XPS932004NO', 'i7 1260P, FHD+ Touch 16GB, 512GB', 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2023/5/8/dell-xps-13-plus-9320-thinkpro-SuI.jpg', 'Không có thông tin', 12, 30000000, 0.1, 0.2, 0, 25000000, 26400000, '{\"cpu\":{\"name\":\"Intel Core i7 1260P\",\"cores\":12,\"threads\":16,\"base_clock\":1,\"turbo_clock\":3,\"cache\":18},\"ram\":{\"capacity\":16384,\"type\":\"LPDDR5\",\"frequency\":5000},\"storage\":{\"drive\":\"SSD\",\"capacity\":\"512\",\"type\":\"M.2 NVMe\"},\"display\":{\"size\":\"Full HD\",\"resolution\":\"1920x1080\",\"technology\":\"LCD\",\"refresh_rate\":60,\"touch\":true},\"gpu\":{\"name\":\"Intel Iris Xe Graphics\",\"memory\":1,\"type\":\"Integrated\",\"frequency\":800},\"ports\":\"2 x USB Type C,khe th\\u1ebb SD, khe micro SD\",\"keyboard\":\"Kh\\u00f4ng c\\u00f3 th\\u00f4ng tin\",\"touchpad\":true,\"webcam\":true,\"battery\":55,\"weight\":1.26,\"os\":\"windows\",\"warranty\":12,\"color\":\"X\\u00e1m\"}', 'published', '2023-12-12 08:29:50', '2023-12-12 08:29:50'),
(14, 'test-1tjH', 'test', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Acer_2011.svg/4151px-Acer_2011.svg.png', NULL, 13, 0, 0.1, 0, 0, 0, 0, '{\"cpu\":{\"name\":\"\",\"cores\":\"\",\"threads\":\"\",\"base_clock\":\"\",\"turbo_clock\":\"\",\"cache\":\"\"},\"ram\":{\"capacity\":\"\",\"type\":\"\",\"frequency\":\"\"},\"storage\":{\"drive\":\"\",\"capacity\":\"\",\"type\":\"\"},\"display\":{\"size\":\"\",\"resolution\":\"\",\"technology\":\"\",\"refresh_rate\":\"\",\"touch\":\"\"},\"gpu\":{\"name\":\"\",\"memory\":\"\",\"type\":\"\",\"frequency\":\"\"},\"ports\":\"\",\"keyboard\":\"\",\"touchpad\":\"\",\"webcam\":\"\",\"battery\":\"\",\"weight\":\"\",\"os\":\"\",\"warranty\":\"\",\"color\":\"\"}', 'draft', '2023-12-30 19:16:14', '2023-12-30 19:16:14'),
(15, 'asus-vivobook-flip-14-tp404-intel-4O2Q', 'i3 1115G4, 4GB, 512Gb, FHD Touch - Silver', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Acer_2011.svg/4151px-Acer_2011.svg.png', 'Không có thông tin', 1, 25000000, 0.1, 0.1, 0, 20000000, 24750000, '{\"cpu\":{\"name\":\"cpu_name\",\"cores\":1,\"threads\":2,\"base_clock\":3,\"turbo_clock\":4,\"cache\":5},\"ram\":{\"capacity\":8192,\"type\":\"DDR4\",\"frequency\":800},\"storage\":{\"drive\":\"SSD\",\"capacity\":\"8\",\"type\":\"M.2 SATA\"},\"display\":{\"size\":\"Full HD\",\"resolution\":\"1600x900\",\"technology\":\"OLED\",\"refresh_rate\":120,\"touch\":false},\"gpu\":{\"name\":\"gpu_name\",\"memory\":4,\"type\":\"Integrated\",\"frequency\":850},\"ports\":\"connection\",\"keyboard\":\"keyboard\",\"touchpad\":false,\"webcam\":true,\"battery\":2,\"weight\":2,\"os\":\"windows\",\"warranty\":2,\"color\":\"Xanh da tr\\u1eddi\"}', 'published', '2023-12-31 05:40:58', '2023-12-31 05:40:58'),
(16, 'some-sku', 'variant name', 'https://images.thinkgroup.vn/unsafe/fit-in/1000x1000/https://media-api-beta.thinkpro.vn/media/core/products/2022/6/7/macbook-air-silver-gallery1-20220606.jpeg', 'Không có thông tin', 1, 25000000, 0.1, 1, 1, 20000000, 1, '{\"cpu\":{\"name\":\"cpuname\",\"cores\":1,\"threads\":1,\"base_clock\":1,\"turbo_clock\":1,\"cache\":1},\"ram\":{\"capacity\":8192,\"type\":\"DDR4\",\"frequency\":1333},\"storage\":{\"drive\":\"SSD\",\"capacity\":\"12\",\"type\":\"M.2 SATA\"},\"display\":{\"size\":\"QHD\",\"resolution\":\"2560x1440\",\"technology\":\"OLED\",\"refresh_rate\":120,\"touch\":true},\"gpu\":{\"name\":\"gpuname\",\"memory\":6,\"type\":\"Integrated\",\"frequency\":1200},\"ports\":\"port\",\"keyboard\":\"keyboard\",\"touchpad\":true,\"webcam\":false,\"battery\":2,\"weight\":2,\"os\":\"chrome_os\",\"warranty\":6,\"color\":\"Xanh da tr\\u1eddi\"}', 'published', '2024-01-02 05:34:26', '2024-01-02 05:34:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` enum('draft','active','inactive','banned') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `state`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'theuntidycat', '$2y$10$CTgNYIlewStrmB4VrbdHYer0Jt3PQhgRii/KmpWWXl3HgX9vMOY0W', 'active', NULL, '2023-12-11 05:39:59', '2023-12-11 05:39:59'),
(2, '0912345678', '$2y$10$l13gnJT8k9ZsEZrpQksGTOFQ.lAkcrZ4raltYJvGSlZsjWjQG9aGO', 'active', NULL, '2023-12-11 13:57:10', '2023-12-11 13:57:10'),
(3, '0912345677', '$2y$10$0Y.6iAO3CcNOYWk70ObFY.udjnV3gmi3.xdkmq6IPJOJQt.yE1Gmy', 'active', NULL, '2023-12-11 14:03:56', '2023-12-11 14:03:56'),
(4, '0886904961', '$2y$10$6koHSfEl6r.k/vFAyrNe/.w1u4V83YSVYvTuNQ4B.Q/eefIgPrvV2', 'active', NULL, '2023-12-11 14:04:23', '2023-12-11 14:04:23'),
(5, '0984797117', '$2y$10$.nBKCgaChKBqpOEAqGMJteoa7v1j4h13hMq9EFIYtn355VKn6wxei', 'active', NULL, '2023-12-11 14:09:09', '2023-12-11 14:09:09'),
(6, 'account', '$2y$10$KVNL6wD62Qmqf1uoklMbPediPxeZRFTYlOLiAThML8Wm00CLFMyAm', 'active', NULL, '2023-12-11 14:18:28', '2023-12-11 14:18:28'),
(7, '0911111111', '$2y$10$YXPms8/Q7cninTtNxfPFsOZu4joOjYmbDS0vjlEVdKY1e3AWQcNqK', 'active', NULL, '2023-12-11 14:25:11', '2023-12-11 14:25:11'),
(8, '0912345679', '$2y$10$RsUSfwQyD4/NfNyD0Aj/S.n.aY4GCLA6ImjDEs8SwsPALpp7PcWCS', 'active', NULL, '2023-12-11 14:28:50', '2023-12-11 14:28:50'),
(9, '0354717463', '$2y$10$AraFI/PcaOT6Re.oCYfBCufTLIATCImlX6Sj/32gX9Xrt.Ha.RPsm', 'active', NULL, '2023-12-11 14:30:15', '2023-12-11 14:30:15'),
(10, '0964523785', '$2y$10$ZnHHFcr51MSGs/CzjmkYtOXQh1NDLOx16FRe6iEsxwS2XgNa0mTNG', 'active', NULL, '2023-12-11 14:31:29', '2023-12-11 14:31:29'),
(11, '0987654321', '$2y$10$LxKEXK9vvNZurWCwd425bOuyS4lyj8avbzFkxkoTCF.G9gi1gJUM6', 'active', NULL, '2023-12-11 15:06:01', '2023-12-11 15:06:01'),
(12, '0912345600', '$2y$10$h1M4dMoWH6lq2UFMHixiCO5SfGs9Bf67UUa28HqgQ3g9QG0diX1SW', 'active', NULL, '2023-12-12 03:25:33', '2023-12-12 03:25:33'),
(13, '0912340000', '$2y$10$V5g2dsfRr57fmIUZx3kym./trWiGfPdtK0apIhR1k/3BfBH4oGP4a', 'active', NULL, '2023-12-12 03:26:52', '2023-12-12 03:26:52'),
(14, '0912340001', '$2y$10$LmMz9MV4x.3e6KDlLJ/sdeK4w/b.7ieSrjSH.qDhWEgLmOeo.xTTq', 'active', NULL, '2023-12-12 03:27:23', '2023-12-12 03:27:23'),
(15, 'meomeoiuem', '$2y$10$CetjQNuIqWboECzhsDcBMuG.DY6YKiolLDTocnNAlQngzA4XtHdS2', 'active', NULL, '2023-12-14 12:52:00', '2023-12-14 12:52:00'),
(16, 'anhtran123', '$2y$10$3Jio/sMcqL0aGqm/xQjdJuqqgdJi1naQoAICVReP1fc/Dbd6nmDdu', 'active', NULL, '2023-12-24 12:06:40', '2023-12-27 01:37:49'),
(17, '0984797118', '$2y$10$TssZPy2WTjW2GGiNoKoj6uf7pW7JoDMe5djejYHBZ8g9jvNva.Nim', 'active', NULL, '2023-12-24 15:39:24', '2023-12-24 15:39:24'),
(18, '0984797119', '$2y$10$K6KMnZ0L6ueG5f9hsNtUP.DC9A9eBWs0oz5LtnB9N0J79NTU1maX6', 'active', NULL, '2023-12-24 15:39:54', '2023-12-24 15:39:54'),
(19, '0984797111', '$2y$10$/UuwgHfXWSSFWoXXDw6GHOdvfyKnhoj017S0rzRyvgjTJ9DWrki5S', 'active', NULL, '2023-12-31 03:21:42', '2023-12-31 03:21:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` enum('admin','customer','seller') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-12-11 05:39:59', '2023-12-11 05:39:59'),
(2, 'customer', '2023-12-11 13:57:10', '2023-12-11 13:57:10'),
(3, 'customer', '2023-12-11 14:03:56', '2023-12-11 14:03:56'),
(4, 'customer', '2023-12-11 14:04:23', '2023-12-11 14:04:23'),
(5, 'customer', '2023-12-11 14:09:09', '2023-12-11 14:09:09'),
(6, 'customer', '2023-12-11 14:18:28', '2023-12-11 14:18:28'),
(7, 'customer', '2023-12-11 14:25:11', '2023-12-11 14:25:11'),
(9, 'customer', '2023-12-11 14:30:15', '2023-12-11 14:30:15'),
(10, 'customer', '2023-12-11 14:31:29', '2023-12-11 14:31:29'),
(11, 'customer', '2023-12-11 15:06:01', '2023-12-11 15:06:01'),
(12, 'customer', '2023-12-12 03:25:33', '2023-12-12 03:25:33'),
(13, 'customer', '2023-12-12 03:26:52', '2023-12-12 03:26:52'),
(14, 'customer', '2023-12-12 03:27:23', '2023-12-12 03:27:23'),
(15, 'customer', '2023-12-14 12:52:00', '2023-12-14 12:52:00'),
(16, 'customer', '2023-12-24 12:06:40', '2023-12-24 12:06:40'),
(17, 'customer', '2023-12-24 15:39:24', '2023-12-24 15:39:24'),
(18, 'customer', '2023-12-24 15:39:54', '2023-12-24 15:39:54'),
(19, 'customer', '2023-12-31 03:21:42', '2023-12-31 03:21:42');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address_books`
--
ALTER TABLE `address_books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_address_book` (`name`,`phone`,`address_line`,`ward`,`district`,`province`),
  ADD KEY `address_books_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carts_customer_id_variant_id_unique` (`customer_id`,`variant_id`),
  ADD KEY `carts_variant_id_foreign` (`variant_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_number_unique` (`phone_number`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_employee_id_foreign` (`employee_id`),
  ADD KEY `orders_address_id_foreign` (`address_id`);

--
-- Chỉ mục cho bảng `order_histories`
--
ALTER TABLE `order_histories`
  ADD KEY `order_histories_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_items_order_id_variant_id_unique` (`order_id`,`variant_id`),
  ADD KEY `order_items_variant_id_foreign` (`variant_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_variants_sku_unique` (`SKU`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address_books`
--
ALTER TABLE `address_books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1052;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `address_books`
--
ALTER TABLE `address_books`
  ADD CONSTRAINT `address_books_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Các ràng buộc cho bảng `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `carts_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`id`);

--
-- Các ràng buộc cho bảng `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `address_books` (`id`),
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `orders_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Các ràng buộc cho bảng `order_histories`
--
ALTER TABLE `order_histories`
  ADD CONSTRAINT `order_histories_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
