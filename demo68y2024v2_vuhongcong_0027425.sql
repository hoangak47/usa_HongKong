-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 14, 2025 lúc 03:25 PM
-- Phiên bản máy phục vụ: 10.6.18-MariaDB
-- Phiên bản PHP: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demo68y2024v2_vuhongcong_0027425`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_city`
--

CREATE TABLE `table_city` (
  `id` int(11) NOT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `slugvi` varchar(250) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `code` varchar(2) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_color`
--

CREATE TABLE `table_color` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `color` varchar(15) DEFAULT NULL,
  `type_show` tinyint(1) DEFAULT 0,
  `type` varchar(30) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_comment`
--

CREATE TABLE `table_comment` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) DEFAULT 0,
  `id_variant` int(11) DEFAULT 0,
  `star` int(11) DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_posted` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_contact`
--

CREATE TABLE `table_contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `file_attach` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `numb` int(11) DEFAULT 0,
  `type` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_counter`
--

CREATE TABLE `table_counter` (
  `id` int(11) NOT NULL,
  `tm` int(11) DEFAULT 0,
  `ip` varchar(39) DEFAULT '0.0.0.0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_district`
--

CREATE TABLE `table_district` (
  `id` int(11) NOT NULL,
  `id_city` int(11) DEFAULT 0,
  `namevi` varchar(255) DEFAULT NULL,
  `slugvi` varchar(250) DEFAULT NULL,
  `code` varchar(3) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_excel`
--

CREATE TABLE `table_excel` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `numb` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_extensions`
--

CREATE TABLE `table_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `contentvi` text DEFAULT NULL,
  `contenten` text DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `hotlinevi` varchar(255) DEFAULT NULL,
  `hotlineen` varchar(255) DEFAULT NULL,
  `linkvi` varchar(255) DEFAULT NULL,
  `linken` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `table_extensions`
--

INSERT INTO `table_extensions` (`id`, `contentvi`, `contenten`, `namevi`, `nameen`, `hotlinevi`, `hotlineen`, `linkvi`, `linken`, `photo`, `options`, `type`, `status`, `updated_at`, `created_at`) VALUES
(1, '', 'Khuyến mãi tháng 5', '', 'Khuyến mãi tháng 5', NULL, NULL, '', '', '1077013962698836842793546355515181052857476o-1726209060.jpg', '{\"type\":\"1\",\"popup\":\"popup1\",\"fullname\":\"fullname\",\"hotline\":\"hotline\",\"address\":\"address\",\"email\":\"email\",\"content\":\"content\",\"background\":\"9ACD32\",\"color-title\":\"FFFFFF\",\"color-send\":\"FFFFFF\",\"background-send\":\"FF0000\"}', 'popup', '', '2025-01-14 07:34:09', NULL),
(2, NULL, NULL, 'Hotline', 'Hotline', '0946093989', '0399413032', NULL, NULL, 'callphone-1726214231-1726447808.png', '{\"hotline\":\"hotline1\",\"background\":\"FF0000\",\"background-text\":\"FFAB34\",\"color\":\"FFFFFF\",\"destop\":{\"device\":\"on\",\"left\":\"30\",\"right\":\"0\",\"bottom\":\"50\"},\"mobile\":{\"left\":\"30\",\"right\":\"0\",\"bottom\":\"50\"}}', 'hotline', 'hienthi', '2025-01-14 08:05:38', '2024-05-03 01:50:01'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"social1\":{\"status\":\"on\",\"background\":\"FFDD26\",\"color\":\"FF4480\",\"destop\":{\"device\":\"on\",\"left\":\"0\",\"right\":\"15\",\"bottom\":\"130\"},\"mobile\":{\"left\":\"0\",\"right\":\"20\",\"bottom\":\"100\"}},\"social2\":{\"background\":\"3DFF99\",\"color\":\"FFE3F2\",\"destop\":{\"left\":\"0\",\"right\":\"0\",\"bottom\":\"10\"},\"mobile\":{\"device\":\"on\",\"left\":\"0\",\"right\":\"0\",\"bottom\":\"10\"}},\"social3\":{\"status\":\"on\",\"background\":\"0043ac\",\"color\":\"ffffff\",\"destop\":{\"left\":\"0\",\"right\":\"0\",\"bottom\":\"10\"},\"mobile\":{\"device\":\"on\",\"left\":\"0\",\"right\":\"0\",\"bottom\":\"10\"}}}', 'social', 'hienthi', '2025-01-14 08:05:54', '2024-05-06 08:25:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_gallery`
--

CREATE TABLE `table_gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_parent` int(11) DEFAULT 0,
  `id_properties` varchar(250) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `hash` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `id_color` int(11) DEFAULT 0,
  `file_attach` varchar(255) DEFAULT NULL,
  `link_video` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `type` varchar(30) DEFAULT NULL,
  `type_parent` varchar(255) DEFAULT NULL,
  `com` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_lang`
--

CREATE TABLE `table_lang` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang_define` mediumtext DEFAULT NULL,
  `langvi` mediumtext DEFAULT NULL,
  `langen` mediumtext DEFAULT NULL,
  `numb` int(10) UNSIGNED DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_link`
--

CREATE TABLE `table_link` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_parent` int(11) DEFAULT 0,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `type_parent` text DEFAULT NULL,
  `type_link` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `numb` int(11) DEFAULT 0,
  `table` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_member`
--

CREATE TABLE `table_member` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_social` tinyint(1) DEFAULT 0,
  `username` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `confirm_code` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `fullname` varchar(225) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT 0,
  `login_session` varchar(255) DEFAULT NULL,
  `lastlogin` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `birthday` int(11) DEFAULT 0,
  `numb` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_news`
--

CREATE TABLE `table_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_list` int(11) DEFAULT 0,
  `id_item` int(11) DEFAULT 0,
  `id_cat` int(11) DEFAULT 0,
  `id_sub` int(11) DEFAULT 0,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `officevi` varchar(255) DEFAULT NULL,
  `officeen` varchar(255) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `date_publish` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `positionen` varchar(255) DEFAULT NULL,
  `positionvi` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_newsletter`
--

CREATE TABLE `table_newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `file_attach` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `emailto` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `confirm_status` varchar(255) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `starred` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_news_cat`
--

CREATE TABLE `table_news_cat` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_list` int(11) DEFAULT 0,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `date_publish` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_news_item`
--

CREATE TABLE `table_news_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_list` int(11) DEFAULT 0,
  `id_cat` int(11) DEFAULT 0,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `date_publish` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_news_list`
--

CREATE TABLE `table_news_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `date_publish` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_news_sub`
--

CREATE TABLE `table_news_sub` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_list` int(11) DEFAULT 0,
  `id_cat` int(11) DEFAULT 0,
  `id_item` int(11) DEFAULT 0,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `date_publish` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_news_tags`
--

CREATE TABLE `table_news_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_parent` int(11) DEFAULT 0,
  `id_tags` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_orders`
--

CREATE TABLE `table_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `info_user` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `id_user` varchar(250) DEFAULT NULL,
  `order_payment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_price` float DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` int(11) DEFAULT 1,
  `requirements` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `order_detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_order_history`
--

CREATE TABLE `table_order_history` (
  `id` int(11) NOT NULL,
  `id_order` int(11) DEFAULT 0,
  `notes` text DEFAULT NULL,
  `order_status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_order_status`
--

CREATE TABLE `table_order_status` (
  `id` int(11) NOT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `class_order` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_permissions`
--

CREATE TABLE `table_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_permissions`
--

INSERT INTO `table_permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(24, 'products.san-pham.categories.list.man', '2024-05-13 02:30:50', '2024-05-13 02:30:50'),
(25, 'products.san-pham.categories.cat.add', '2024-05-13 02:30:50', '2024-05-13 02:30:50'),
(26, 'products.san-pham.categories.item.add', '2024-05-13 02:30:50', '2024-05-13 02:30:50'),
(27, 'products.san-pham.categories.sub.man', '2024-05-13 02:30:50', '2024-05-13 02:30:50'),
(28, 'products.san-pham.brand.add', '2024-05-13 02:30:50', '2024-05-13 02:30:50'),
(29, 'products.san-pham.edit', '2024-05-13 02:30:50', '2024-05-13 02:30:50'),
(30, 'products.san-pham.san-pham.gallery.edit', '2024-05-13 02:30:50', '2024-05-13 02:30:50'),
(31, 'products.thuc-don.add', '2024-05-13 02:30:50', '2024-05-13 02:30:50'),
(32, 'products.thuc-don.hinh-anh.gallery.man', '2024-05-13 02:30:50', '2024-05-13 02:30:50'),
(33, 'products.san-pham.categories.cat.man', '2024-05-13 03:03:47', '2024-05-13 03:03:47'),
(34, 'products.san-pham.categories.item.man', '2024-05-13 03:03:47', '2024-05-13 03:03:47'),
(35, 'products.san-pham.brand.man', '2024-05-13 03:03:47', '2024-05-13 03:03:47'),
(36, 'products.san-pham.man', '2024-05-13 03:03:47', '2024-05-13 03:03:47'),
(37, 'products.san-pham.san-pham.gallery.man', '2024-05-13 03:03:47', '2024-05-13 03:03:47'),
(38, 'products.thuc-don.brand.man', '2024-05-13 03:07:48', '2024-05-13 03:07:48'),
(39, 'products.thuc-don.man', '2024-05-13 03:07:48', '2024-05-13 03:07:48'),
(40, 'products.thuc-don.hinh-anh.gallery.add', '2024-05-13 03:07:48', '2024-05-13 03:07:48'),
(41, 'products.san-pham.categories.list.add', '2024-05-13 03:15:03', '2024-05-13 03:15:03'),
(42, 'products.san-pham.categories.sub.add', '2024-05-13 03:15:03', '2024-05-13 03:15:03'),
(43, 'products.san-pham.add', '2024-05-13 03:15:03', '2024-05-13 03:15:03'),
(44, 'products.san-pham.san-pham.gallery.add', '2024-05-13 03:15:03', '2024-05-13 03:15:03'),
(45, 'product.list.san-pham.man', '2024-08-19 06:40:33', '2024-08-19 06:40:33'),
(46, 'product.list.san-pham.add', '2024-08-19 06:40:33', '2024-08-19 06:40:33'),
(47, 'product.list.san-pham.edit', '2024-08-19 06:40:33', '2024-08-19 06:40:33'),
(48, 'product.san-pham.man', '2024-08-19 06:40:33', '2024-08-19 06:40:33'),
(49, 'product.san-pham.edit', '2024-08-19 06:40:33', '2024-08-19 06:40:33'),
(50, 'product.san-pham.delete', '2024-08-19 06:40:33', '2024-08-19 06:40:33'),
(51, 'product.san-pham.san-pham.gallery.man', '2024-08-19 06:40:33', '2024-08-19 06:40:33'),
(52, 'product.san-pham.san-pham.gallery.add', '2024-08-19 06:40:33', '2024-08-19 06:40:33'),
(53, 'product.brand.san-pham.man', '2024-08-19 08:00:31', '2024-08-19 08:00:31'),
(54, 'product.brand.san-pham.add', '2024-08-19 08:00:31', '2024-08-19 08:00:31'),
(55, 'product.brand.san-pham.edit', '2024-08-19 08:00:31', '2024-08-19 08:00:31'),
(56, 'product.cat.san-pham.man', '2024-08-19 08:06:33', '2024-08-19 08:06:33'),
(57, 'product.item.san-pham.man', '2024-08-19 08:06:33', '2024-08-19 08:06:33'),
(58, 'news.dich-vu-tien-ich.man', '2024-08-19 08:08:38', '2024-08-19 08:08:38'),
(59, 'news.dich-vu-tien-ich.add', '2024-08-19 08:08:38', '2024-08-19 08:08:38'),
(60, 'news.dich-vu-tien-ich.edit', '2024-08-19 08:08:38', '2024-08-19 08:08:38'),
(61, 'news.dich-vu-tien-ich.delete', '2024-08-19 08:08:38', '2024-08-19 08:08:38'),
(62, 'order.don-hang.man', '2024-08-19 08:20:49', '2024-08-19 08:20:49'),
(63, 'order.don-hang.edit', '2024-08-19 08:20:49', '2024-08-19 08:20:49'),
(64, 'order.don-hang.delete', '2024-08-19 08:20:49', '2024-08-19 08:20:49'),
(65, 'order.excel.don-hang.man', '2024-08-19 08:20:49', '2024-08-19 08:20:49'),
(66, 'properties.list.san-pham.man', '2024-08-19 08:58:51', '2024-08-19 08:58:51'),
(67, 'properties.san-pham.man', '2024-08-19 08:58:51', '2024-08-19 08:58:51'),
(68, 'static.gioi-thieu.man', '2024-08-19 09:06:46', '2024-08-19 09:06:46'),
(69, 'tags.san-pham.man', '2024-08-19 09:08:37', '2024-08-19 09:08:37'),
(70, 'comment.binh-luan.man', '2024-08-19 09:13:28', '2024-08-19 09:13:28'),
(71, 'photo.static.logo.man', '2024-08-19 09:15:17', '2024-08-19 09:15:17'),
(72, 'photo-album.slide.man', '2024-08-19 09:15:17', '2024-08-19 09:15:17'),
(73, 'photo.album.slide.man', '2024-08-19 09:27:01', '2024-08-19 09:27:01'),
(74, 'photo.album.slide.add', '2024-08-19 09:28:03', '2024-08-19 09:28:03'),
(75, 'photo.album.slide.edit', '2024-08-19 09:28:03', '2024-08-19 09:28:03'),
(76, 'photo.album.slide.delete', '2024-08-19 09:28:03', '2024-08-19 09:28:03'),
(77, 'photo.album.social.man', '2024-08-19 09:28:51', '2024-08-19 09:28:51'),
(78, 'photo.album.social.add', '2024-08-19 09:32:18', '2024-08-19 09:32:18'),
(79, 'photo.album.social.edit', '2024-08-19 09:32:18', '2024-08-19 09:32:18'),
(80, 'photo.album.social.delete', '2024-08-19 09:32:18', '2024-08-19 09:32:18'),
(81, 'newsletters.lien-he.man', '2024-08-19 09:36:00', '2024-08-19 09:36:00'),
(82, 'seopage.trang-chu.man', '2024-08-19 09:39:29', '2024-08-19 09:39:29'),
(83, 'seopage.san-pham.man', '2024-08-19 09:39:29', '2024-08-19 09:39:29'),
(84, 'setting.cau-hinh.man', '2024-08-19 09:44:18', '2024-08-19 09:44:18'),
(85, 'setting.dieu-huong.man', '2024-08-19 09:44:18', '2024-08-19 09:44:18'),
(86, 'product.list.san-pham.delete', '2024-08-19 09:47:11', '2024-08-19 09:47:11'),
(87, 'product.san-pham.add', '2024-08-20 03:57:51', '2024-08-20 03:57:51'),
(88, 'product.import.san-pham.man', '2024-08-20 04:06:15', '2024-08-20 04:06:15'),
(89, 'product.export.san-pham.man', '2024-08-20 04:06:15', '2024-08-20 04:06:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_photo`
--

CREATE TABLE `table_photo` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `link` mediumtext DEFAULT NULL,
  `link_video` mediumtext DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `com` varchar(255) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `link_redirect` text DEFAULT NULL,
  `redirect` int(11) DEFAULT 301
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_product`
--

CREATE TABLE `table_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_list` varchar(255) DEFAULT NULL,
  `id_item` varchar(255) DEFAULT NULL,
  `id_cat` varchar(255) DEFAULT NULL,
  `id_sub` varchar(255) DEFAULT NULL,
  `id_brand` int(11) DEFAULT 0,
  `photo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `list_properties` varchar(255) DEFAULT NULL,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `parametervi` text DEFAULT NULL,
  `parameteren` text DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `incentivesvi` text DEFAULT NULL,
  `incentivesen` text DEFAULT NULL,
  `promotionvi` text DEFAULT NULL,
  `promotionen` text DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `regular_price` double DEFAULT 0,
  `discount` double DEFAULT 0,
  `sale_price` double DEFAULT 0,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `photo2` varchar(255) DEFAULT NULL,
  `date_publish` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_product_brand`
--

CREATE TABLE `table_product_brand` (
  `id` int(11) NOT NULL,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_product_cat`
--

CREATE TABLE `table_product_cat` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_list` int(11) DEFAULT 0,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `date_publish` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_product_item`
--

CREATE TABLE `table_product_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_list` int(11) DEFAULT 0,
  `id_cat` int(11) DEFAULT 0,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `date_publish` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_product_list`
--

CREATE TABLE `table_product_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `date_publish` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `id_brand` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_product_properties`
--

CREATE TABLE `table_product_properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_parent` int(11) DEFAULT 0,
  `id_properties` varchar(250) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `regular_price` int(11) DEFAULT 0,
  `sale_price` int(11) DEFAULT 0,
  `number` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_product_sale`
--

CREATE TABLE `table_product_sale` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_parent` int(11) DEFAULT 0,
  `id_color` int(11) DEFAULT 0,
  `id_size` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_product_sub`
--

CREATE TABLE `table_product_sub` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_list` int(11) DEFAULT 0,
  `id_cat` int(11) DEFAULT 0,
  `id_item` int(11) DEFAULT 0,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `date_publish` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_product_tags`
--

CREATE TABLE `table_product_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_parent` int(11) DEFAULT 0,
  `id_tags` int(11) DEFAULT 0,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_properties`
--

CREATE TABLE `table_properties` (
  `id` int(11) NOT NULL,
  `id_list` int(11) DEFAULT 0,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_properties_list`
--

CREATE TABLE `table_properties_list` (
  `id` int(11) NOT NULL,
  `id_list` varchar(250) DEFAULT NULL,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_pushonesignal`
--

CREATE TABLE `table_pushonesignal` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `numb` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_roles`
--

CREATE TABLE `table_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `numb` int(11) DEFAULT 1,
  `root` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_roles`
--

INSERT INTO `table_roles` (`id`, `name`, `created_at`, `updated_at`, `status`, `numb`, `root`) VALUES
(1, 'Quyền quản trị ', '2024-05-10 08:07:30', '2024-05-13 03:07:47', 'hienthi', 1, 0),
(4, 'Quyền Sản Phẩm', '2024-05-13 03:24:05', '2024-08-20 04:30:02', 'hienthi', 1, 0),
(5, 'Admin', '2024-05-13 03:24:05', '2024-05-13 03:24:05', 'hienthi', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_role_has_permissions`
--

CREATE TABLE `table_role_has_permissions` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_role_has_permissions`
--

INSERT INTO `table_role_has_permissions` (`role_id`, `permission_id`) VALUES
(1, 24),
(1, 27),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(4, 45),
(4, 46),
(4, 47),
(4, 48),
(4, 49),
(4, 50),
(4, 58),
(4, 59),
(4, 60),
(4, 61),
(4, 62),
(4, 68),
(4, 69),
(4, 70),
(4, 71),
(4, 77),
(4, 78),
(4, 79),
(4, 80),
(4, 82),
(4, 83),
(4, 84),
(4, 85),
(4, 86),
(4, 87);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_seo`
--

CREATE TABLE `table_seo` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_parent` int(11) DEFAULT 0,
  `com` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `act` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titlevi` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywordsvi` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptionvi` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleen` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywordsen` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptionen` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schemavi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schemaen` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_focusvi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_focusen` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_seopage`
--

CREATE TABLE `table_seopage` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `titlevi` mediumtext DEFAULT NULL,
  `keywordsvi` mediumtext DEFAULT NULL,
  `descriptionvi` mediumtext DEFAULT NULL,
  `titleen` mediumtext DEFAULT NULL,
  `keywordsen` mediumtext DEFAULT NULL,
  `descriptionen` mediumtext DEFAULT NULL,
  `date_created` varchar(255) DEFAULT NULL,
  `date_updated` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_setting`
--

CREATE TABLE `table_setting` (
  `id` int(11) NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `mastertool` mediumtext DEFAULT NULL,
  `headjs` mediumtext DEFAULT NULL,
  `bodyjs` mediumtext DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `addressvi` text DEFAULT NULL,
  `addressen` text DEFAULT NULL,
  `analytics` mediumtext DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_setting`
--

INSERT INTO `table_setting` (`id`, `options`, `mastertool`, `headjs`, `bodyjs`, `namevi`, `nameen`, `addressvi`, `addressen`, `analytics`, `type`, `updated_at`, `created_at`) VALUES
(1, '{\"mailertype\":\"1\",\"ip_host\":\"120.72.119.29\",\"port_host\":\"25\",\"secure_host\":\"tls\",\"email_host\":\"no-replay@lucphat.com\",\"password_host\":\"KUV2GqzF\",\"host_gmail\":\"smtp.gmail.com\",\"port_gmail\":\"587\",\"secure_gmail\":\"tls\",\"email_gmail\":\"noreply28102001@gmail.com\",\"password_gmail\":\"abjyfvitmusulbhi\",\"lang_default\":\"vi\",\"email\":\"hongcongusa.japan.website@gmail.com\",\"hotline\":\"\\u00a00946 093 989\",\"phone\":\"\\u00a00946 093 989\",\"zalo\":\"\\u00a00946 093 989\",\"oaidzalo\":\"\",\"website\":\"https:\\/\\/usajapanbio.com\\/\",\"fanpage\":\"https:\\/\\/www.facebook.com\\/profile.php?id=61571610597803\",\"coords\":\"11.295864030096105, 106.12718663094094\",\"link_googlemaps\":\"https:\\/\\/maps.app.goo.gl\\/VCjPxBYm1pJWCNNL7\",\"worktime\":\"\",\"coords_iframe\":\"\",\"admin_url\":\"admin\"}', '', '', '', 'Công Ty TNHH Hóa Sinh Usa - Japan', 'EN', '22 Đường 5, KDC City Land Park Hills, P. 10, Quận Gò Vấp, Tp. HCM', 'address', '', 'cau-hinh', '2025-01-14 08:11:26', '2024-04-22 04:33:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_size`
--

CREATE TABLE `table_size` (
  `id` int(10) UNSIGNED NOT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_slug`
--

CREATE TABLE `table_slug` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_parent` int(11) DEFAULT 0,
  `namevi` varchar(255) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `com` varchar(30) DEFAULT NULL,
  `act` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_static`
--

CREATE TABLE `table_static` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `file_attach` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_tags`
--

CREATE TABLE `table_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `slugvi` varchar(250) DEFAULT NULL,
  `slugen` varchar(250) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_user`
--

CREATE TABLE `table_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_permission` int(11) DEFAULT 0,
  `username` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `confirm_code` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `fullname` varchar(225) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT 0,
  `login_session` varchar(255) DEFAULT NULL,
  `user_token` varchar(255) DEFAULT NULL,
  `lastlogin` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role` tinyint(1) DEFAULT 1,
  `secret_key` varchar(255) DEFAULT NULL,
  `birthday` int(11) DEFAULT 0,
  `numb` int(11) DEFAULT 0,
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_user`
--

INSERT INTO `table_user` (`id`, `id_permission`, `username`, `password`, `confirm_code`, `avatar`, `fullname`, `phone`, `email`, `address`, `gender`, `login_session`, `user_token`, `lastlogin`, `status`, `role`, `secret_key`, `birthday`, `numb`, `remember_token`) VALUES
(1, 0, 'admin', '$2y$10$XyqGBumKAcgW6mdcqSeZa.CvLPTlhbTh/a6I78kteeR1GpTRk9OgC', '', NULL, 'Administrator', '0939513667', 'admin@gmail.com', '222 huỳnh thị na', 1, 'f6b1a428c0c8e6918814cb7bcffce593', '6574da95cd0ed64b2f394b1bcb85dfb3', '1736841841', 'hienthi', 3, NULL, 1607619600, 1, '$2y$10$MAbt/Wnwktgg57WXZepiyeifryRkttUxAZrUL/.h.cLyRX/JqrtL6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_user_has_permissions`
--

CREATE TABLE `table_user_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_user_has_roles`
--

CREATE TABLE `table_user_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_user_has_roles`
--

INSERT INTO `table_user_has_roles` (`role_id`, `user_id`) VALUES
(1, 5),
(1, 143),
(4, 142),
(4, 144),
(4, 146),
(4, 147),
(5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_user_limit`
--

CREATE TABLE `table_user_limit` (
  `id` int(11) NOT NULL,
  `login_ip` varchar(50) NOT NULL,
  `login_attempts` int(11) NOT NULL,
  `attempt_time` int(11) NOT NULL,
  `locked_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_user_limit`
--

INSERT INTO `table_user_limit` (`id`, `login_ip`, `login_attempts`, `attempt_time`, `locked_time`) VALUES
(1, '::1', 0, 1629013204, 0),
(2, '113.161.89.144', 0, 1720488002, 0),
(3, '113.161.88.45', 0, 1723687362, 0),
(4, '14.161.46.203', 0, 1726110711, 0),
(5, '171.239.93.254', 0, 1726118811, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_user_log`
--

CREATE TABLE `table_user_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) DEFAULT 0,
  `ip` varchar(50) DEFAULT '0.0.0.0',
  `timelog` int(11) DEFAULT 0,
  `user_agent` mediumtext DEFAULT NULL,
  `login_session` varchar(255) DEFAULT NULL,
  `lastlogin` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_user_log`
--

INSERT INTO `table_user_log` (`id`, `id_user`, `ip`, `timelog`, `user_agent`, `login_session`, `lastlogin`, `operation`, `device`, `updated_at`, `created_at`) VALUES
(1, 1, '113.161.88.45', 1717124757, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'f6b1a428c0c8e6918814cb7bcffce593', '1736841841', 'login', 'desktop', '2025-01-14 08:04:01', '2024-05-31 03:05:57'),
(2, 1, '113.161.89.144', 1717129089, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-05-31 04:18:09', '2024-05-31 04:18:09'),
(3, 1, '113.161.88.45', 1717129216, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-05-31 04:20:16', '2024-05-31 04:20:16'),
(4, 1, '113.161.88.45', 1717207140, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'Login', 'desktop', '2024-06-01 01:59:00', '2024-06-01 01:59:00'),
(5, 1, '113.161.89.144', 1717211839, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'Login', 'desktop', '2024-06-01 03:17:19', '2024-06-01 03:17:19'),
(6, 1, '222.254.201.204', 1717233724, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'Login', 'desktop', '2024-06-01 09:22:04', '2024-06-01 09:22:04'),
(7, 1, '113.161.89.144', 1717388974, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'Login', 'desktop', '2024-06-03 04:29:34', '2024-06-03 04:29:34'),
(8, 1, '113.161.89.144', 1717389113, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', NULL, NULL, 'Login', 'desktop', '2024-06-03 04:31:53', '2024-06-03 04:31:53'),
(9, 1, '113.161.89.144', 1717399937, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-03 07:32:17', '2024-06-03 07:32:17'),
(10, 1, '113.161.89.144', 1717400598, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-03 07:43:18', '2024-06-03 07:43:18'),
(11, 1, '113.161.89.144', 1717401304, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-03 07:55:04', '2024-06-03 07:55:04'),
(12, 1, '113.161.84.147', 1717402676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-03 08:17:56', '2024-06-03 08:17:56'),
(13, 1, '113.161.88.45', 1717406216, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-03 09:16:56', '2024-06-03 09:16:56'),
(14, 1, '113.161.88.45', 1717465825, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-04 01:50:25', '2024-06-04 01:50:25'),
(15, 1, '113.161.89.144', 1717467370, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-04 02:16:10', '2024-06-04 02:16:10'),
(16, 1, '113.161.89.144', 1717488857, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', NULL, NULL, 'login', 'desktop', '2024-06-04 08:14:17', '2024-06-04 08:14:17'),
(17, 1, '113.161.89.144', 1717490493, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-04 08:41:33', '2024-06-04 08:41:33'),
(18, 1, '113.161.89.144', 1717490783, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-04 08:46:23', '2024-06-04 08:46:23'),
(19, 1, '113.161.89.144', 1717490818, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', NULL, NULL, 'login', 'desktop', '2024-06-04 08:46:58', '2024-06-04 08:46:58'),
(20, 1, '113.161.88.45', 1717491790, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:126.0) Gecko/20100101 Firefox/126.0', NULL, NULL, 'login', 'desktop', '2024-06-04 09:03:10', '2024-06-04 09:03:10'),
(21, 1, '113.161.88.45', 1717492675, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:126.0) Gecko/20100101 Firefox/126.0', NULL, NULL, 'login', 'desktop', '2024-06-04 09:17:55', '2024-06-04 09:17:55'),
(22, 1, '113.161.88.45', 1717495190, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:126.0) Gecko/20100101 Firefox/126.0', NULL, NULL, 'login', 'desktop', '2024-06-04 09:59:50', '2024-06-04 09:59:50'),
(23, 1, '113.161.88.45', 1717549704, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:126.0) Gecko/20100101 Firefox/126.0', NULL, NULL, 'login', 'desktop', '2024-06-05 01:08:24', '2024-06-05 01:08:24'),
(24, 1, '113.161.89.144', 1717550192, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-05 01:16:32', '2024-06-05 01:16:32'),
(25, 1, '113.161.88.45', 1717551043, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-05 01:30:43', '2024-06-05 01:30:43'),
(26, 1, '113.161.88.45', 1717552684, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-05 01:58:04', '2024-06-05 01:58:04'),
(27, 1, '113.161.88.45', 1717556193, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-05 02:56:33', '2024-06-05 02:56:33'),
(28, 1, '113.161.88.45', 1717560019, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-05 04:00:19', '2024-06-05 04:00:19'),
(29, 1, '127.0.0.1', 1717568660, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-05 06:24:20', '2024-06-05 06:24:20'),
(30, 1, '127.0.0.1', 1718001022, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-10 06:30:22', '2024-06-10 06:30:22'),
(31, 1, '127.0.0.1', 1718071391, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-11 02:03:11', '2024-06-11 02:03:11'),
(32, 1, '127.0.0.1', 1718098776, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', NULL, NULL, 'login', 'desktop', '2024-06-11 09:39:36', '2024-06-11 09:39:36'),
(33, 1, '127.0.0.1', 1718101132, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', NULL, NULL, 'login', 'desktop', '2024-06-11 10:18:52', '2024-06-11 10:18:52'),
(34, 1, '127.0.0.1', 1718159576, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', NULL, NULL, 'login', 'desktop', '2024-06-12 02:32:56', '2024-06-12 02:32:56'),
(35, 1, '127.0.0.1', 1718167684, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', NULL, NULL, 'login', 'desktop', '2024-06-12 04:48:04', '2024-06-12 04:48:04'),
(36, 1, '127.0.0.1', 1718173056, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', NULL, NULL, 'login', 'desktop', '2024-06-12 06:17:36', '2024-06-12 06:17:36'),
(37, 1, '127.0.0.1', 1718173901, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', NULL, NULL, 'login', 'desktop', '2024-06-12 06:31:41', '2024-06-12 06:31:41'),
(38, 1, '127.0.0.1', 1718173974, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', NULL, NULL, 'login', 'desktop', '2024-06-12 06:32:54', '2024-06-12 06:32:54'),
(39, 1, '127.0.0.1', 1718331259, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-14 02:14:19', '2024-06-14 02:14:19'),
(40, 1, '127.0.0.1', 1718589869, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-17 02:04:29', '2024-06-17 02:04:29'),
(41, 1, '127.0.0.1', 1718682064, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-18 03:41:04', '2024-06-18 03:41:04'),
(42, 1, '113.161.89.144', 1718700366, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-18 08:46:06', '2024-06-18 08:46:06'),
(43, 1, '113.161.88.45', 1718701648, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-18 09:07:28', '2024-06-18 09:07:28'),
(44, 1, '113.161.88.45', 1719023954, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-22 02:39:14', '2024-06-22 02:39:14'),
(45, 1, '113.161.89.144', 1719278985, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-25 01:29:45', '2024-06-25 01:29:45'),
(46, 1, '113.161.88.45', 1719305435, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-25 08:50:35', '2024-06-25 08:50:35'),
(47, 1, '113.161.84.147', 1719361408, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-26 00:23:28', '2024-06-26 00:23:28'),
(48, 1, '103.199.33.30', 1719361782, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/126.0.6478.54 Mobile/15E148 Safari/604.1', NULL, NULL, 'login', 'phone', '2024-06-26 00:29:42', '2024-06-26 00:29:42'),
(49, 1, '113.161.89.144', 1719364568, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-26 01:16:08', '2024-06-26 01:16:08'),
(50, 1, '113.161.89.144', 1719366174, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-26 01:42:54', '2024-06-26 01:42:54'),
(51, 1, '113.161.89.144', 1719366198, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-06-26 01:43:18', '2024-06-26 01:43:18'),
(52, 1, '113.161.88.45', 1719370240, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-26 02:50:40', '2024-06-26 02:50:40'),
(53, 1, '113.161.89.144', 1719469222, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-27 06:20:22', '2024-06-27 06:20:22'),
(54, 1, '113.161.89.144', 1719556396, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-06-28 06:33:16', '2024-06-28 06:33:16'),
(55, 1, '113.161.89.144', 1719556746, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-06-28 06:39:06', '2024-06-28 06:39:06'),
(56, 1, '113.161.89.144', 1719556961, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-06-28 06:42:41', '2024-06-28 06:42:41'),
(57, 1, '113.161.88.45', 1719561442, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-06-28 07:57:22', '2024-06-28 07:57:22'),
(58, 1, '113.161.89.144', 1719819229, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-07-01 07:33:49', '2024-07-01 07:33:49'),
(59, 1, '113.161.88.45', 1719820055, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-01 07:47:35', '2024-07-01 07:47:35'),
(60, 1, '113.161.88.45', 1719820504, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-01 07:55:04', '2024-07-01 07:55:04'),
(61, 1, '113.161.88.45', 1719823334, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-07-01 08:42:14', '2024-07-01 08:42:14'),
(62, 1, '113.161.88.45', 1719823557, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-01 08:45:57', '2024-07-01 08:45:57'),
(63, 1, '113.161.89.144', 1719827405, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-01 09:50:05', '2024-07-01 09:50:05'),
(64, 1, '113.161.88.45', 1719886619, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-02 02:16:59', '2024-07-02 02:16:59'),
(65, 1, '113.161.88.45', 1719969306, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-03 01:15:06', '2024-07-03 01:15:06'),
(66, 1, '113.161.89.144', 1719970516, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-03 01:35:16', '2024-07-03 01:35:16'),
(67, 1, '113.161.89.144', 1719970743, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-03 01:39:03', '2024-07-03 01:39:03'),
(68, 1, '113.161.88.45', 1720401744, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-07-08 01:22:24', '2024-07-08 01:22:24'),
(69, 1, '113.161.88.45', 1720408303, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-07-08 03:11:43', '2024-07-08 03:11:43'),
(70, 1, '113.161.88.45', 1720411133, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-07-08 03:58:53', '2024-07-08 03:58:53'),
(71, 1, '113.161.88.45', 1720411481, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-08 04:04:41', '2024-07-08 04:04:41'),
(72, 1, '113.161.88.45', 1720412095, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-08 04:14:55', '2024-07-08 04:14:55'),
(73, 1, '113.161.88.45', 1720420322, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-08 06:32:02', '2024-07-08 06:32:02'),
(74, 1, '113.161.88.45', 1720429217, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-08 09:00:17', '2024-07-08 09:00:17'),
(75, 1, '113.161.88.45', 1720431793, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-08 09:43:13', '2024-07-08 09:43:13'),
(76, 1, '113.161.89.144', 1720488002, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-09 01:20:02', '2024-07-09 01:20:02'),
(77, 1, '113.161.88.45', 1720499623, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-09 04:33:43', '2024-07-09 04:33:43'),
(78, 1, '113.161.88.45', 1720580289, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-07-10 02:58:09', '2024-07-10 02:58:09'),
(79, 1, '113.161.88.45', 1720581544, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-07-10 03:19:04', '2024-07-10 03:19:04'),
(80, 1, '113.161.88.45', 1720583792, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-07-10 03:56:32', '2024-07-10 03:56:32'),
(81, 1, '113.161.88.45', 1720584749, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-07-10 04:12:29', '2024-07-10 04:12:29'),
(82, 1, '113.161.89.144', 1720584999, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-10 04:16:39', '2024-07-10 04:16:39'),
(83, 1, '113.161.88.45', 1720585031, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-10 04:17:11', '2024-07-10 04:17:11'),
(84, 1, '113.161.88.45', 1720585962, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-10 04:32:42', '2024-07-10 04:32:42'),
(85, 1, '113.161.88.45', 1720585967, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-07-10 04:32:47', '2024-07-10 04:32:47'),
(86, 1, '113.161.88.45', 1720591691, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-07-10 06:08:11', '2024-07-10 06:08:11'),
(87, 1, '113.161.88.45', 1720595300, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-07-10 07:08:20', '2024-07-10 07:08:20'),
(88, 1, '113.161.88.45', 1720596754, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-07-10 07:32:34', '2024-07-10 07:32:34'),
(89, 1, '113.161.88.45', 1720660076, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-11 01:07:56', '2024-07-11 01:07:56'),
(90, 1, '113.161.88.45', 1720687376, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-07-11 08:42:56', '2024-07-11 08:42:56'),
(91, 1, '113.161.88.45', 1720752683, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', NULL, NULL, 'login', 'desktop', '2024-07-12 02:51:23', '2024-07-12 02:51:23'),
(92, 1, '113.161.88.45', 1721023882, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-15 06:11:22', '2024-07-15 06:11:22'),
(93, 1, '113.161.88.45', 1721185398, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-17 03:03:18', '2024-07-17 03:03:18'),
(94, 1, '113.161.89.144', 1721197530, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-17 06:25:30', '2024-07-17 06:25:30'),
(95, 1, '113.161.88.45', 1721198135, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, NULL, 'login', 'desktop', '2024-07-17 06:35:35', '2024-07-17 06:35:35'),
(96, 1, '113.161.88.45', 1721198161, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, NULL, 'login', 'desktop', '2024-07-17 06:36:01', '2024-07-17 06:36:01'),
(97, 1, '113.161.88.45', 1721198428, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, NULL, 'login', 'desktop', '2024-07-17 06:40:28', '2024-07-17 06:40:28'),
(98, 1, '113.161.88.45', 1721201035, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, NULL, 'login', 'desktop', '2024-07-17 07:23:55', '2024-07-17 07:23:55'),
(99, 1, '113.161.88.45', 1721268926, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-18 02:15:26', '2024-07-18 02:15:26'),
(100, 1, '113.161.88.45', 1721355240, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, NULL, 'login', 'desktop', '2024-07-19 02:14:00', '2024-07-19 02:14:00'),
(101, 1, '113.161.88.45', 1721376421, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-19 08:07:01', '2024-07-19 08:07:01'),
(102, 1, '113.161.88.45', 1721617041, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-22 02:57:21', '2024-07-22 02:57:21'),
(103, 1, '113.161.88.45', 1721703978, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-23 03:06:18', '2024-07-23 03:06:18'),
(104, 1, '113.161.88.45', 1721786310, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-24 01:58:30', '2024-07-24 01:58:30'),
(105, 1, '113.161.88.45', 1721805280, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, NULL, 'login', 'desktop', '2024-07-24 07:14:40', '2024-07-24 07:14:40'),
(106, 1, '113.161.88.45', 1721875127, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-07-25 02:38:47', '2024-07-25 02:38:47'),
(107, 1, '113.161.88.45', 1722042979, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, NULL, 'login', 'desktop', '2024-07-27 01:16:19', '2024-07-27 01:16:19'),
(108, 1, '113.161.88.45', 1722051364, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, NULL, 'login', 'desktop', '2024-07-27 03:36:04', '2024-07-27 03:36:04'),
(109, 1, '113.161.88.45', 1722409028, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, NULL, 'login', 'desktop', '2024-07-31 06:57:08', '2024-07-31 06:57:08'),
(110, 1, '::1', 1722477699, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-01 02:01:40', '2024-08-01 02:01:40'),
(111, 1, '::1', 1722561524, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-02 01:18:44', '2024-08-02 01:18:44'),
(112, 1, '::1', 1722561595, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-02 01:19:55', '2024-08-02 01:19:55'),
(113, 1, '::1', 1722820857, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-05 01:20:57', '2024-08-05 01:20:57'),
(114, 1, '::1', 1722911791, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-06 02:36:32', '2024-08-06 02:36:32'),
(115, 1, '::1', 1722994102, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-07 01:28:22', '2024-08-07 01:28:22'),
(116, 1, '::1', 1723079554, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-08 01:12:34', '2024-08-08 01:12:34'),
(117, 1, '::1', 1723167717, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-09 01:41:57', '2024-08-09 01:41:57'),
(118, 1, '::1', 1723169883, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-09 02:18:03', '2024-08-09 02:18:03'),
(119, 1, '::1', 1723253007, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-10 01:23:27', '2024-08-10 01:23:27'),
(120, 1, '::1', 1723520111, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-13 03:35:11', '2024-08-13 03:35:11'),
(121, 1, '113.161.88.45', 1723541759, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-13 09:35:59', '2024-08-13 09:35:59'),
(122, 1, '113.161.88.45', 1723685871, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-15 01:37:51', '2024-08-15 01:37:51'),
(123, 1, '113.161.88.45', 1723692631, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-15 03:30:31', '2024-08-15 03:30:31'),
(124, 1, '113.161.88.45', 1723717387, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-15 10:23:07', '2024-08-15 10:23:07'),
(125, 1, '14.187.109.125', 1723724761, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-15 12:26:01', '2024-08-15 12:26:01'),
(126, 1, '113.161.88.45', 1723774376, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-16 02:12:56', '2024-08-16 02:12:56'),
(127, 1, '113.173.193.183', 1723785790, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Safari/605.1.15', NULL, NULL, 'login', 'desktop', '2024-08-16 05:23:10', '2024-08-16 05:23:10'),
(128, 1, '113.173.105.246', 1723790256, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-16 06:37:36', '2024-08-16 06:37:36'),
(129, 1, '113.161.88.45', 1723857275, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-17 01:14:35', '2024-08-17 01:14:35'),
(130, 1, '::1', 1723864400, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-17 03:13:20', '2024-08-17 03:13:20'),
(131, 1, '::1', 1724040606, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-19 04:10:06', '2024-08-19 04:10:06'),
(132, 1, '::1', 1724049327, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-19 06:35:27', '2024-08-19 06:35:27'),
(133, 1, '::1', 1724049712, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-19 06:41:52', '2024-08-19 06:41:52'),
(134, 1, '::1', 1724050222, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-19 06:50:22', '2024-08-19 06:50:22'),
(135, 142, '::1', 1724050252, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-19 06:50:52', '2024-08-19 06:50:52'),
(136, 1, '::1', 1724125597, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-20 03:46:37', '2024-08-20 03:46:37'),
(137, 142, '::1', 1724125644, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-20 03:47:24', '2024-08-20 03:47:24'),
(138, 1, '::1', 1724212089, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-21 03:48:09', '2024-08-21 03:48:09'),
(139, 1, '::1', 1724293493, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-22 02:24:53', '2024-08-22 02:24:53'),
(140, 1, '::1', 1724380637, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-23 02:37:17', '2024-08-23 02:37:17'),
(141, 1, '::1', 1724682283, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-26 14:24:43', '2024-08-26 14:24:43'),
(142, 1, '::1', 1724722219, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-27 01:30:19', '2024-08-27 01:30:19'),
(143, 144, '::1', 1724751018, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-27 09:30:18', '2024-08-27 09:30:18'),
(144, 1, '::1', 1724808989, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-28 01:36:29', '2024-08-28 01:36:29'),
(145, 1, '::1', 1724813624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'af2fd982623b448010e49744057b002d', '1724831387', 'login', 'desktop', '2024-08-28 07:49:47', '2024-08-28 02:53:44'),
(146, 145, '::1', 1724831264, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '50f6b52fbb8d831b1ca2593c07a83943', '1725500852', 'login', 'desktop', '2024-09-05 01:47:32', '2024-08-28 07:47:44'),
(147, 145, '::1', 1724831387, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-28 07:49:47', '2024-08-28 07:49:47'),
(148, 1, '::1', 1725013342, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-30 10:22:22', '2024-08-30 10:22:22'),
(149, 146, '::1', 1725043214, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-30 18:40:14', '2024-08-30 18:40:14'),
(150, 146, '::1', 1725043507, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-08-30 18:45:07', '2024-08-30 18:45:07'),
(151, 1, '::1', 1725413979, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-04 01:39:39', '2024-09-04 01:39:39'),
(152, 1, '::1', 1725498466, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-05 01:07:46', '2024-09-05 01:07:46'),
(153, 146, '::1', 1725500852, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-05 01:47:32', '2024-09-05 01:47:32'),
(154, 1, '::1', 1725585751, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-06 01:22:31', '2024-09-06 01:22:31'),
(155, 1, '113.161.88.45', 1725607012, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-06 07:16:52', '2024-09-06 07:16:52'),
(156, 1, '113.161.88.45', 1725607191, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-06 07:19:51', '2024-09-06 07:19:51'),
(157, 1, '113.161.88.45', 1725607284, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:130.0) Gecko/20100101 Firefox/130.0', NULL, NULL, 'login', 'desktop', '2024-09-06 07:21:24', '2024-09-06 07:21:24'),
(158, 1, '116.111.185.252', 1725625518, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-06 12:25:18', '2024-09-06 12:25:18'),
(159, 1, '14.161.46.203', 1725685511, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-07 05:05:11', '2024-09-07 05:05:11'),
(160, 1, '123.21.117.91', 1725708949, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-07 11:35:49', '2024-09-07 11:35:49'),
(161, 1, '14.241.226.14', 1725849945, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-09 02:45:45', '2024-09-09 02:45:45'),
(162, 1, '113.161.88.45', 1725855216, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:130.0) Gecko/20100101 Firefox/130.0', NULL, NULL, 'login', 'desktop', '2024-09-09 04:13:36', '2024-09-09 04:13:36'),
(163, 1, '113.173.113.123', 1725856831, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-09 04:40:31', '2024-09-09 04:40:31'),
(164, 1, '113.161.88.45', 1725856926, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-09 04:42:06', '2024-09-09 04:42:06'),
(165, 1, '113.173.113.123', 1725878710, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-09 10:45:10', '2024-09-09 10:45:10'),
(166, 1, '14.161.46.203', 1725937609, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', NULL, NULL, 'login', 'desktop', '2024-09-10 03:06:49', '2024-09-10 03:06:49'),
(167, 1, '113.161.88.45', 1725940607, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-10 03:56:47', '2024-09-10 03:56:47'),
(168, 1, '113.161.88.45', 1725941327, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-10 04:08:47', '2024-09-10 04:08:47'),
(169, 1, '113.161.88.45', 1725948044, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-10 06:00:44', '2024-09-10 06:00:44'),
(170, 1, '125.235.237.69', 1725948303, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-10 06:05:03', '2024-09-10 06:05:03'),
(171, 1, '103.199.57.38', 1725948962, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-10 06:16:02', '2024-09-10 06:16:02'),
(172, 1, '113.173.113.123', 1725953906, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-10 07:38:26', '2024-09-10 07:38:26'),
(173, 1, '113.161.88.45', 1725956100, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-10 08:15:00', '2024-09-10 08:15:00'),
(174, 1, '113.161.88.45', 1725956292, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:130.0) Gecko/20100101 Firefox/130.0', NULL, NULL, 'login', 'desktop', '2024-09-10 08:18:12', '2024-09-10 08:18:12'),
(175, 1, '113.161.89.144', 1725957335, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', NULL, NULL, 'login', 'desktop', '2024-09-10 08:35:35', '2024-09-10 08:35:35'),
(176, 1, '171.243.48.47', 1725979375, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-10 14:42:55', '2024-09-10 14:42:55'),
(177, 1, '171.250.40.216', 1725979883, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-10 14:51:23', '2024-09-10 14:51:23'),
(178, 1, '59.153.233.10', 1725981478, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-10 15:17:58', '2024-09-10 15:17:58'),
(179, 1, '59.153.233.10', 1725981561, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-10 15:19:21', '2024-09-10 15:19:21'),
(180, 1, '113.161.88.45', 1726017683, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-11 01:21:23', '2024-09-11 01:21:23'),
(181, 1, '113.185.74.229', 1726019584, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/128.0.6613.98 Mobile/15E148 Safari/604.1', NULL, NULL, 'login', 'phone', '2024-09-11 01:53:04', '2024-09-11 01:53:04'),
(182, 1, '113.161.88.45', 1726025369, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-11 03:29:29', '2024-09-11 03:29:29'),
(183, 1, '113.161.88.45', 1726026462, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-11 03:47:42', '2024-09-11 03:47:42'),
(184, 1, '14.161.46.203', 1726027281, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-11 04:01:21', '2024-09-11 04:01:21'),
(185, 1, '116.106.5.89', 1726046389, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-11 09:19:50', '2024-09-11 09:19:50'),
(186, 1, '113.161.88.45', 1726046390, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:130.0) Gecko/20100101 Firefox/130.0', NULL, NULL, 'login', 'desktop', '2024-09-11 09:19:50', '2024-09-11 09:19:50'),
(187, 1, '116.111.185.234', 1726046475, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-11 09:21:15', '2024-09-11 09:21:15'),
(188, 1, '113.161.88.45', 1726049607, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-11 10:13:27', '2024-09-11 10:13:27'),
(189, 1, '171.243.48.47', 1726070060, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-11 15:54:20', '2024-09-11 15:54:20'),
(190, 1, '113.161.84.147', 1726101097, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 00:31:37', '2024-09-12 00:31:37'),
(191, 1, '103.199.32.200', 1726101671, 'Mozilla/5.0 (Linux; Android 13; M2101K9AG) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', NULL, NULL, 'login', 'phone', '2024-09-12 00:41:11', '2024-09-12 00:41:11'),
(192, 1, '103.199.56.205', 1726101830, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', NULL, NULL, 'login', 'phone', '2024-09-12 00:43:50', '2024-09-12 00:43:50'),
(193, 1, '42.119.148.113', 1726105045, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 01:37:25', '2024-09-12 01:37:25'),
(194, 1, '42.119.148.113', 1726105205, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 01:40:05', '2024-09-12 01:40:05'),
(195, 1, '113.161.88.45', 1726105304, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 01:41:44', '2024-09-12 01:41:44'),
(196, 1, '104.28.237.72', 1726105457, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 01:44:17', '2024-09-12 01:44:17'),
(197, 1, '104.28.205.70', 1726105559, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 01:45:59', '2024-09-12 01:45:59'),
(198, 1, '113.172.241.182', 1726107523, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 02:18:43', '2024-09-12 02:18:43'),
(199, 1, '113.161.88.45', 1726107610, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 02:20:10', '2024-09-12 02:20:10'),
(200, 1, '14.161.46.203', 1726109808, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 02:56:48', '2024-09-12 02:56:48'),
(201, 1, '14.161.46.203', 1726110737, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 03:12:17', '2024-09-12 03:12:17'),
(202, 1, '14.161.46.203', 1726110964, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 03:16:04', '2024-09-12 03:16:04'),
(203, 1, '14.161.46.203', 1726111090, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 03:18:10', '2024-09-12 03:18:10'),
(204, 1, '14.161.46.203', 1726111291, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 03:21:31', '2024-09-12 03:21:31'),
(205, 1, '14.161.46.203', 1726112171, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 03:36:11', '2024-09-12 03:36:11'),
(206, 1, '14.161.46.203', 1726112892, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 03:48:12', '2024-09-12 03:48:12'),
(207, 1, '171.227.124.73', 1726113287, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', NULL, NULL, 'login', 'phone', '2024-09-12 03:54:47', '2024-09-12 03:54:47'),
(208, 1, '103.199.56.24', 1726114165, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/128.0.6613.98 Mobile/15E148 Safari/604.1', NULL, NULL, 'login', 'phone', '2024-09-12 04:09:25', '2024-09-12 04:09:25'),
(209, 1, '171.239.93.254', 1726118834, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 05:27:14', '2024-09-12 05:27:14'),
(210, 1, '14.161.46.203', 1726121122, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 06:05:22', '2024-09-12 06:05:22'),
(211, 1, '14.161.46.203', 1726121759, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', NULL, NULL, 'login', 'desktop', '2024-09-12 06:15:59', '2024-09-12 06:15:59'),
(212, 1, '14.161.46.203', 1726122075, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', NULL, NULL, 'login', 'desktop', '2024-09-12 06:21:15', '2024-09-12 06:21:15'),
(213, 1, '14.161.46.203', 1726122531, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 06:28:51', '2024-09-12 06:28:51'),
(214, 1, '103.199.33.187', 1726128043, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/128.0.6613.98 Mobile/15E148 Safari/604.1', NULL, NULL, 'login', 'phone', '2024-09-12 08:00:43', '2024-09-12 08:00:43'),
(215, 1, '103.199.56.56', 1726128175, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/128.0.6613.98 Mobile/15E148 Safari/604.1', NULL, NULL, 'login', 'phone', '2024-09-12 08:02:55', '2024-09-12 08:02:55'),
(216, 1, '171.243.48.229', 1726128345, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 08:05:45', '2024-09-12 08:05:45'),
(217, 1, '14.161.46.203', 1726128377, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 08:06:17', '2024-09-12 08:06:17'),
(218, 1, '113.161.88.45', 1726128518, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', NULL, NULL, 'login', 'desktop', '2024-09-12 08:08:38', '2024-09-12 08:08:38'),
(219, 1, '113.161.88.45', 1726130494, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 08:41:34', '2024-09-12 08:41:34'),
(220, 1, '14.161.46.203', 1726133935, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 09:38:55', '2024-09-12 09:38:55'),
(221, 1, '14.161.46.203', 1726136144, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 10:15:44', '2024-09-12 10:15:44'),
(222, 1, '42.118.187.99', 1726147144, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-12 13:19:04', '2024-09-12 13:19:04');
INSERT INTO `table_user_log` (`id`, `id_user`, `ip`, `timelog`, `user_agent`, `login_session`, `lastlogin`, `operation`, `device`, `updated_at`, `created_at`) VALUES
(223, 1, '171.252.155.248', 1726148869, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Safari/605.1.15', NULL, NULL, 'login', 'desktop', '2024-09-12 13:47:49', '2024-09-12 13:47:49'),
(224, 1, '14.161.46.203', 1726190695, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-13 01:24:55', '2024-09-13 01:24:55'),
(225, 1, '113.161.88.45', 1726192715, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-13 01:58:35', '2024-09-13 01:58:35'),
(226, 1, '14.161.46.203', 1726196965, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-13 03:09:25', '2024-09-13 03:09:25'),
(227, 1, '113.161.88.45', 1726200744, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:130.0) Gecko/20100101 Firefox/130.0', NULL, NULL, 'login', 'desktop', '2024-09-13 04:12:24', '2024-09-13 04:12:24'),
(228, 1, '113.161.88.45', 1726202778, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-13 04:46:18', '2024-09-13 04:46:18'),
(229, 1, '113.161.88.45', 1726203500, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-13 04:58:20', '2024-09-13 04:58:20'),
(230, 1, '14.161.46.203', 1726208799, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-13 06:26:39', '2024-09-13 06:26:39'),
(231, 1, '14.161.46.203', 1726208919, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-13 06:28:39', '2024-09-13 06:28:39'),
(232, 1, '14.161.46.203', 1726211322, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-13 07:08:42', '2024-09-13 07:08:42'),
(233, 1, '113.161.88.45', 1726213490, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-13 07:44:50', '2024-09-13 07:44:50'),
(234, 1, '113.161.88.45', 1726213625, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-13 07:47:05', '2024-09-13 07:47:05'),
(235, 1, '14.161.46.203', 1726215818, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-13 08:23:38', '2024-09-13 08:23:38'),
(236, 1, '113.161.88.45', 1726218041, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:130.0) Gecko/20100101 Firefox/130.0', NULL, NULL, 'login', 'desktop', '2024-09-13 09:00:41', '2024-09-13 09:00:41'),
(237, 1, '113.161.88.45', 1726284186, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-14 03:23:06', '2024-09-14 03:23:06'),
(238, 1, '113.161.88.45', 1726284887, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-14 03:34:47', '2024-09-14 03:34:47'),
(239, 1, '14.161.46.203', 1726289225, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', NULL, NULL, 'login', 'desktop', '2024-09-14 04:47:05', '2024-09-14 04:47:05'),
(240, 1, '171.224.240.179', 1726291921, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-14 05:32:01', '2024-09-14 05:32:01'),
(241, 1, '116.108.91.150', 1726326983, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-14 15:16:23', '2024-09-14 15:16:23'),
(242, 1, '116.106.5.89', 1726392796, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-15 09:33:16', '2024-09-15 09:33:16'),
(243, 1, '113.173.180.150', 1726397578, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-15 10:52:58', '2024-09-15 10:52:58'),
(244, 1, '171.252.154.235', 1726407755, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-15 13:42:35', '2024-09-15 13:42:35'),
(245, 1, '113.161.84.147', 1726447189, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 00:39:49', '2024-09-16 00:39:49'),
(246, 1, '113.161.88.45', 1726451001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 01:43:21', '2024-09-16 01:43:21'),
(247, 1, '27.66.20.103', 1726451665, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', NULL, NULL, 'login', 'phone', '2024-09-16 01:54:25', '2024-09-16 01:54:25'),
(248, 1, '14.161.46.203', 1726454064, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 02:34:24', '2024-09-16 02:34:24'),
(249, 1, '113.173.113.123', 1726454254, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 02:37:34', '2024-09-16 02:37:34'),
(250, 1, '113.173.113.123', 1726455683, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 03:01:23', '2024-09-16 03:01:23'),
(251, 1, '113.173.113.123', 1726456066, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 03:07:46', '2024-09-16 03:07:46'),
(252, 1, '113.161.88.45', 1726457026, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:130.0) Gecko/20100101 Firefox/130.0', NULL, NULL, 'login', 'desktop', '2024-09-16 03:23:46', '2024-09-16 03:23:46'),
(253, 1, '14.161.46.203', 1726459012, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 03:56:52', '2024-09-16 03:56:52'),
(254, 1, '113.161.88.45', 1726460267, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 04:17:47', '2024-09-16 04:17:47'),
(255, 1, '113.161.88.45', 1726461899, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 04:44:59', '2024-09-16 04:44:59'),
(256, 1, '14.161.46.203', 1726462235, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 04:50:35', '2024-09-16 04:50:35'),
(257, 1, '116.193.68.242', 1726466027, 'Mozilla/5.0 (Linux; Android 14; SM-S928B Build/UP1A.231005.007;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/128.0.6613.128 Mobile Safari/537.36 Zalo android/12100752 ZaloTheme/light ZaloLanguage/vi', NULL, NULL, 'login', 'phone', '2024-09-16 05:53:47', '2024-09-16 05:53:47'),
(258, 1, '14.161.46.203', 1726466701, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 06:05:01', '2024-09-16 06:05:01'),
(259, 1, '116.111.185.184', 1726468040, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 06:27:20', '2024-09-16 06:27:20'),
(260, 1, '113.161.88.45', 1726470567, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 07:09:27', '2024-09-16 07:09:27'),
(261, 1, '171.233.140.147', 1726473542, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 07:59:02', '2024-09-16 07:59:02'),
(262, 1, '14.161.46.203', 1726476311, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 08:45:11', '2024-09-16 08:45:11'),
(263, 1, '14.161.46.203', 1726476673, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 08:51:13', '2024-09-16 08:51:13'),
(264, 1, '116.110.41.228', 1726492525, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 13:15:25', '2024-09-16 13:15:25'),
(265, 1, '116.110.43.254', 1726495142, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-16 13:59:02', '2024-09-16 13:59:02'),
(266, 1, '123.20.236.245', 1726496388, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Zalo iOS/616 ZaloTheme/dark ZaloLanguage/vn', NULL, NULL, 'login', 'phone', '2024-09-16 14:19:48', '2024-09-16 14:19:48'),
(267, 1, '115.76.49.122', 1726502123, 'Mozilla/5.0 (iPad; CPU OS 17_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/128.0.6613.98 Mobile/15E148 Safari/604.1', NULL, NULL, 'login', 'tablet', '2024-09-16 15:55:23', '2024-09-16 15:55:23'),
(268, 1, '123.20.236.245', 1726528988, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, NULL, 'login', 'phone', '2024-09-16 23:23:08', '2024-09-16 23:23:08'),
(269, 1, '103.199.57.228', 1726532993, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Mobile/15E148 Safari/604.1', NULL, NULL, 'login', 'phone', '2024-09-17 00:29:53', '2024-09-17 00:29:53'),
(270, 1, '103.199.32.62', 1726533726, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/127.0.6533.107 Mobile/15E148 Safari/604.1', NULL, NULL, 'login', 'phone', '2024-09-17 00:42:06', '2024-09-17 00:42:06'),
(271, 1, '104.28.119.133', 1726533745, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Mobile/15E148 Safari/604.1', NULL, NULL, 'login', 'phone', '2024-09-17 00:42:25', '2024-09-17 00:42:25'),
(272, 1, '171.253.128.217', 1726534100, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-17 00:48:20', '2024-09-17 00:48:20'),
(273, 1, '14.161.46.203', 1726537697, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-17 01:48:17', '2024-09-17 01:48:17'),
(274, 1, '14.161.46.203', 1726538053, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-17 01:54:13', '2024-09-17 01:54:13'),
(275, 1, '14.161.46.203', 1726538381, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-17 01:59:41', '2024-09-17 01:59:41'),
(276, 1, '113.161.88.45', 1726539732, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:130.0) Gecko/20100101 Firefox/130.0', NULL, NULL, 'login', 'desktop', '2024-09-17 02:22:12', '2024-09-17 02:22:12'),
(277, 1, '113.161.88.45', 1726540199, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-17 02:29:59', '2024-09-17 02:29:59'),
(278, 1, '113.161.88.45', 1726540642, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-17 02:37:22', '2024-09-17 02:37:22'),
(279, 1, '14.161.46.203', 1726542285, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Safari/605.1.15', NULL, NULL, 'login', 'desktop', '2024-09-17 03:04:45', '2024-09-17 03:04:45'),
(280, 1, '103.199.33.10', 1726546784, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-17 04:19:44', '2024-09-17 04:19:44'),
(281, 1, '14.161.23.79', 1726557363, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', NULL, NULL, 'login', 'desktop', '2024-09-17 07:16:03', '2024-09-17 07:16:03'),
(282, 1, '42.115.176.194', 1726558498, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-17 07:34:58', '2024-09-17 07:34:58'),
(283, 1, '14.161.46.203', 1726558697, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-17 07:38:17', '2024-09-17 07:38:17'),
(284, 1, '113.173.126.242', 1726566156, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Safari/605.1.15', NULL, NULL, 'login', 'desktop', '2024-09-17 09:42:36', '2024-09-17 09:42:36'),
(285, 1, '113.173.126.242', 1726566339, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-17 09:45:39', '2024-09-17 09:45:39'),
(286, 1, '113.173.126.242', 1726566357, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-17 09:45:57', '2024-09-17 09:45:57'),
(287, 1, '118.70.191.182', 1726566598, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', NULL, NULL, 'login', 'phone', '2024-09-17 09:49:58', '2024-09-17 09:49:58'),
(288, 1, '113.173.126.242', 1726566836, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-17 09:53:56', '2024-09-17 09:53:56'),
(289, 1, '::1', 1726669112, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-18 14:18:32', '2024-09-18 14:18:32'),
(290, 1, '::1', 1726748520, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-19 12:22:00', '2024-09-19 12:22:00'),
(291, 1, '::1', 1726990496, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-22 07:34:56', '2024-09-22 07:34:56'),
(292, 1, '::1', 1726992310, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-22 08:05:10', '2024-09-22 08:05:10'),
(293, 1, '::1', 1727139378, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-09-24 00:56:18', '2024-09-24 00:56:18'),
(294, 1, '::1', 1727774450, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-10-01 09:20:50', '2024-10-01 09:20:50'),
(295, 1, '::1', 1727793018, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-10-01 14:30:18', '2024-10-01 14:30:18'),
(296, 1, '::1', 1728795802, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-10-13 05:03:22', '2024-10-13 05:03:22'),
(297, 1, '::1', 1728915678, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-10-14 14:21:18', '2024-10-14 14:21:18'),
(298, 1, '::1', 1728915725, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-10-14 14:22:05', '2024-10-14 14:22:05'),
(299, 1, '::1', 1730033979, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2024-10-27 12:59:39', '2024-10-27 12:59:39'),
(300, 1, '::1', 1736742743, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2025-01-13 04:32:23', '2025-01-13 04:32:23'),
(301, 1, '::1', 1736816517, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2025-01-14 01:01:57', '2025-01-14 01:01:57'),
(302, 1, '113.161.89.144', 1736841054, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, NULL, 'login', 'desktop', '2025-01-14 07:50:54', '2025-01-14 07:50:54'),
(303, 1, '123.20.109.151', 1736841841, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', NULL, NULL, 'login', 'desktop', '2025-01-14 08:04:01', '2025-01-14 08:04:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_user_online`
--

CREATE TABLE `table_user_online` (
  `session` char(100) DEFAULT NULL,
  `time` int(11) DEFAULT 0,
  `ip` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_user_online`
--

INSERT INTO `table_user_online` (`session`, `time`, `ip`) VALUES
('1npho95l42dhj51bvrig99v7g7', 1736841960, '123.20.109.151');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_ward`
--

CREATE TABLE `table_ward` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_city` int(11) DEFAULT 0,
  `id_district` int(11) DEFAULT 0,
  `namevi` varchar(255) DEFAULT NULL,
  `slugvi` varchar(250) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `date_created` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ship_price` double DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `table_city`
--
ALTER TABLE `table_city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slugvi`);
ALTER TABLE `table_city` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_color`
--
ALTER TABLE `table_color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_comment`
--
ALTER TABLE `table_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `id_variant` (`id_variant`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_comment` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_contact`
--
ALTER TABLE `table_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_contact` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_counter`
--
ALTER TABLE `table_counter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_district`
--
ALTER TABLE `table_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_city` (`id_city`),
  ADD KEY `slug` (`slugvi`);
ALTER TABLE `table_district` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_excel`
--
ALTER TABLE `table_excel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `table_extensions`
--
ALTER TABLE `table_extensions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_extensions` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_gallery`
--
ALTER TABLE `table_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `id_properties` (`id_properties`),
  ADD KEY `id_color` (`id_color`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_gallery` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_lang`
--
ALTER TABLE `table_lang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_link`
--
ALTER TABLE `table_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_link` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_member`
--
ALTER TABLE `table_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_social` (`id_social`);
ALTER TABLE `table_member` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_news`
--
ALTER TABLE `table_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_list` (`id_list`),
  ADD KEY `id_item` (`id_item`),
  ADD KEY `id_cat` (`id_cat`),
  ADD KEY `id_sub` (`id_sub`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `date_publish` (`date_publish`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_news` ADD FULLTEXT KEY `status` (`status`);
ALTER TABLE `table_news` ADD FULLTEXT KEY `namevi` (`namevi`);

--
-- Chỉ mục cho bảng `table_newsletter`
--
ALTER TABLE `table_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `table_news_cat`
--
ALTER TABLE `table_news_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_list` (`id_list`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `date_publish` (`date_publish`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_news_cat` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_news_item`
--
ALTER TABLE `table_news_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_list` (`id_list`),
  ADD KEY `id_cat` (`id_cat`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `date_publish` (`date_publish`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_news_item` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_news_list`
--
ALTER TABLE `table_news_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `date_publish` (`date_publish`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_news_list` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_news_sub`
--
ALTER TABLE `table_news_sub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_list` (`id_list`),
  ADD KEY `id_cat` (`id_cat`),
  ADD KEY `id_item` (`id_item`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `date_publish` (`date_publish`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_news_sub` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_news_tags`
--
ALTER TABLE `table_news_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `id_tags` (`id_tags`);

--
-- Chỉ mục cho bảng `table_orders`
--
ALTER TABLE `table_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `table_order_history`
--
ALTER TABLE `table_order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`);

--
-- Chỉ mục cho bảng `table_order_status`
--
ALTER TABLE `table_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_permissions`
--
ALTER TABLE `table_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Chỉ mục cho bảng `table_photo`
--
ALTER TABLE `table_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_photo` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_product`
--
ALTER TABLE `table_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_list` (`id_list`(250)),
  ADD KEY `id_item` (`id_item`(250)),
  ADD KEY `id_cat` (`id_cat`(250)),
  ADD KEY `id_sub` (`id_sub`(250)),
  ADD KEY `id_brand` (`id_brand`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `type` (`type`),
  ADD KEY `date_publish` (`date_publish`);
ALTER TABLE `table_product` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_product_brand`
--
ALTER TABLE `table_product_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_product_brand` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_product_cat`
--
ALTER TABLE `table_product_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_list` (`id_list`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `date_publish` (`date_publish`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_product_cat` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_product_item`
--
ALTER TABLE `table_product_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_list` (`id_list`),
  ADD KEY `id_cat` (`id_cat`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `date_publish` (`date_publish`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_product_item` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_product_list`
--
ALTER TABLE `table_product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `date_publish` (`date_publish`),
  ADD KEY `type` (`type`),
  ADD KEY `id_brand` (`id_brand`);
ALTER TABLE `table_product_list` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_product_properties`
--
ALTER TABLE `table_product_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `id_properties` (`id_properties`);
ALTER TABLE `table_product_properties` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_product_sale`
--
ALTER TABLE `table_product_sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `id_color` (`id_color`),
  ADD KEY `id_size` (`id_size`);

--
-- Chỉ mục cho bảng `table_product_sub`
--
ALTER TABLE `table_product_sub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_list` (`id_list`),
  ADD KEY `id_cat` (`id_cat`),
  ADD KEY `id_item` (`id_item`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `date_publish` (`date_publish`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_product_sub` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_product_tags`
--
ALTER TABLE `table_product_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `id_tags` (`id_tags`);

--
-- Chỉ mục cho bảng `table_properties`
--
ALTER TABLE `table_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_list` (`id_list`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_properties` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_properties_list`
--
ALTER TABLE `table_properties_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_list` (`id_list`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_properties_list` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_pushonesignal`
--
ALTER TABLE `table_pushonesignal`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_roles`
--
ALTER TABLE `table_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `table_role_has_permissions`
--
ALTER TABLE `table_role_has_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `role_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Chỉ mục cho bảng `table_seo`
--
ALTER TABLE `table_seo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `table_seopage`
--
ALTER TABLE `table_seopage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `table_setting`
--
ALTER TABLE `table_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `table_size`
--
ALTER TABLE `table_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_slug`
--
ALTER TABLE `table_slug`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `table_static`
--
ALTER TABLE `table_static`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_static` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_tags`
--
ALTER TABLE `table_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugvi` (`slugvi`),
  ADD KEY `slugen` (`slugen`),
  ADD KEY `type` (`type`);
ALTER TABLE `table_tags` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_permission` (`id_permission`);
ALTER TABLE `table_user` ADD FULLTEXT KEY `status` (`status`);

--
-- Chỉ mục cho bảng `table_user_has_permissions`
--
ALTER TABLE `table_user_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`user_id`);

--
-- Chỉ mục cho bảng `table_user_has_roles`
--
ALTER TABLE `table_user_has_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`);

--
-- Chỉ mục cho bảng `table_user_limit`
--
ALTER TABLE `table_user_limit`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_user_log`
--
ALTER TABLE `table_user_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `table_ward`
--
ALTER TABLE `table_ward`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_city` (`id_city`),
  ADD KEY `id_district` (`id_district`),
  ADD KEY `slug` (`slugvi`);
ALTER TABLE `table_ward` ADD FULLTEXT KEY `status` (`status`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `table_city`
--
ALTER TABLE `table_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_color`
--
ALTER TABLE `table_color`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_comment`
--
ALTER TABLE `table_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_contact`
--
ALTER TABLE `table_contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_counter`
--
ALTER TABLE `table_counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_district`
--
ALTER TABLE `table_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_excel`
--
ALTER TABLE `table_excel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_extensions`
--
ALTER TABLE `table_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `table_gallery`
--
ALTER TABLE `table_gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_lang`
--
ALTER TABLE `table_lang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_link`
--
ALTER TABLE `table_link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_member`
--
ALTER TABLE `table_member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_news`
--
ALTER TABLE `table_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_newsletter`
--
ALTER TABLE `table_newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_news_cat`
--
ALTER TABLE `table_news_cat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_news_item`
--
ALTER TABLE `table_news_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_news_list`
--
ALTER TABLE `table_news_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_news_sub`
--
ALTER TABLE `table_news_sub`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_news_tags`
--
ALTER TABLE `table_news_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_orders`
--
ALTER TABLE `table_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_order_history`
--
ALTER TABLE `table_order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_order_status`
--
ALTER TABLE `table_order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_permissions`
--
ALTER TABLE `table_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `table_photo`
--
ALTER TABLE `table_photo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_product`
--
ALTER TABLE `table_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_product_brand`
--
ALTER TABLE `table_product_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_product_cat`
--
ALTER TABLE `table_product_cat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_product_item`
--
ALTER TABLE `table_product_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_product_list`
--
ALTER TABLE `table_product_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_product_properties`
--
ALTER TABLE `table_product_properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_product_sale`
--
ALTER TABLE `table_product_sale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_product_sub`
--
ALTER TABLE `table_product_sub`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_product_tags`
--
ALTER TABLE `table_product_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_properties`
--
ALTER TABLE `table_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_properties_list`
--
ALTER TABLE `table_properties_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_pushonesignal`
--
ALTER TABLE `table_pushonesignal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_roles`
--
ALTER TABLE `table_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `table_seo`
--
ALTER TABLE `table_seo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_seopage`
--
ALTER TABLE `table_seopage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_setting`
--
ALTER TABLE `table_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `table_size`
--
ALTER TABLE `table_size`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_slug`
--
ALTER TABLE `table_slug`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_static`
--
ALTER TABLE `table_static`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_tags`
--
ALTER TABLE `table_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_user`
--
ALTER TABLE `table_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT cho bảng `table_user_limit`
--
ALTER TABLE `table_user_limit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `table_user_log`
--
ALTER TABLE `table_user_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT cho bảng `table_ward`
--
ALTER TABLE `table_ward`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `table_role_has_permissions`
--
ALTER TABLE `table_role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `table_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `table_roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `table_user_has_permissions`
--
ALTER TABLE `table_user_has_permissions`
  ADD CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `table_permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `table_user_has_roles`
--
ALTER TABLE `table_user_has_roles`
  ADD CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `table_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
