-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 04:18 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyecto`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `created_at`, `updated_at`) VALUES
(1, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(2, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(3, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(4, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(5, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(6, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(7, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(8, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(9, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(10, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(11, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(12, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(13, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(14, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(15, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(16, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(17, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(18, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(19, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(20, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(21, '2022-01-04 12:35:03', '2022-01-04 12:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `path`, `created_at`, `updated_at`, `imageable_type`, `imageable_id`) VALUES
(1, 'img/users/2.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 1),
(2, 'img/users/4.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 2),
(3, 'img/users/4.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 3),
(4, 'img/users/2.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 4),
(5, 'img/users/3.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 5),
(6, 'img/users/2.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 6),
(7, 'img/users/1.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 7),
(8, 'img/users/6.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 8),
(9, 'img/users/2.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 9),
(10, 'img/users/3.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 10),
(11, 'img/users/5.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 11),
(12, 'img/users/4.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 12),
(13, 'img/users/3.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 13),
(14, 'img/users/4.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 14),
(15, 'img/users/4.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 15),
(16, 'img/users/5.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 16),
(17, 'img/users/5.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 17),
(18, 'img/users/5.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 18),
(19, 'img/users/5.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 19),
(20, 'img/users/6.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\User', 20),
(21, 'img/products/16.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 1),
(22, 'img/products/2.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 1),
(23, 'img/products/7.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 1),
(24, 'img/products/12.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 2),
(25, 'img/products/7.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 2),
(26, 'img/products/4.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 3),
(27, 'img/products/15.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 3),
(28, 'img/products/13.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 3),
(29, 'img/products/8.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 3),
(30, 'img/products/9.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 4),
(31, 'img/products/17.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 4),
(32, 'img/products/2.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 5),
(33, 'img/products/2.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 5),
(34, 'img/products/10.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 5),
(35, 'img/products/2.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 5),
(36, 'img/products/9.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 6),
(37, 'img/products/12.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 6),
(38, 'img/products/11.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 6),
(39, 'img/products/4.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 6),
(40, 'img/products/2.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 7),
(41, 'img/products/5.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 7),
(42, 'img/products/8.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 7),
(43, 'img/products/12.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 8),
(44, 'img/products/3.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 8),
(45, 'img/products/12.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 8),
(46, 'img/products/2.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 8),
(47, 'img/products/8.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 9),
(48, 'img/products/5.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 9),
(49, 'img/products/2.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 9),
(50, 'img/products/17.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 10),
(51, 'img/products/5.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 10),
(52, 'img/products/9.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 10),
(53, 'img/products/15.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 11),
(54, 'img/products/13.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 11),
(55, 'img/products/4.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 11),
(56, 'img/products/7.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 11),
(57, 'img/products/10.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 12),
(58, 'img/products/3.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 12),
(59, 'img/products/14.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 12),
(60, 'img/products/13.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 12),
(61, 'img/products/4.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 13),
(62, 'img/products/10.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 13),
(63, 'img/products/13.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 13),
(64, 'img/products/9.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 13),
(65, 'img/products/8.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 14),
(66, 'img/products/14.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 14),
(67, 'img/products/3.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 15),
(68, 'img/products/1.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 15),
(69, 'img/products/4.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 16),
(70, 'img/products/17.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 16),
(71, 'img/products/12.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 16),
(72, 'img/products/12.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 17),
(73, 'img/products/12.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 17),
(74, 'img/products/7.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 17),
(75, 'img/products/2.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 17),
(76, 'img/products/7.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 18),
(77, 'img/products/8.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 18),
(78, 'img/products/4.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 19),
(79, 'img/products/11.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 19),
(80, 'img/products/14.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 20),
(81, 'img/products/13.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 20),
(82, 'img/products/15.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 21),
(83, 'img/products/11.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 21),
(84, 'img/products/15.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 21),
(85, 'img/products/3.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 21),
(86, 'img/products/7.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 22),
(87, 'img/products/3.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 22),
(88, 'img/products/7.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 23),
(89, 'img/products/7.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 23),
(90, 'img/products/1.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 23),
(91, 'img/products/1.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 24),
(92, 'img/products/10.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 24),
(93, 'img/products/8.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 24),
(94, 'img/products/8.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 25),
(95, 'img/products/11.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 25),
(96, 'img/products/5.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 25),
(97, 'img/products/5.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 26),
(98, 'img/products/14.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 26),
(99, 'img/products/10.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 26),
(100, 'img/products/1.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 27),
(101, 'img/products/13.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 27),
(102, 'img/products/12.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 28),
(103, 'img/products/12.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 28),
(104, 'img/products/5.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 28),
(105, 'img/products/14.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 28),
(106, 'img/products/14.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 29),
(107, 'img/products/3.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 29),
(108, 'img/products/2.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 29),
(109, 'img/products/3.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 29),
(110, 'img/products/11.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 30),
(111, 'img/products/1.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 30),
(112, 'img/products/4.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 30),
(113, 'img/products/2.jpg', '2022-01-04 10:01:01', '2022-01-04 10:01:01', 'App\\Models\\Product', 30);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_11_22_181858_create_products_table', 1),
(5, '2021_11_23_221225_create_images_table', 1),
(6, '2021_11_23_221351_create_carts_table', 1),
(7, '2021_11_23_221420_create_orders_table', 1),
(8, '2021_11_23_221421_create_payments_table', 1),
(9, '2021_11_25_140940_create_productables_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `customer_id`, `created_at`, `updated_at`, `delivery_date`) VALUES
(1, 'paid', 16, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(2, 'pending', 19, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(3, 'paid', 3, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(4, 'shipped', 20, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(5, 'shipped', 14, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(6, 'paid', 12, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(7, 'paid', 15, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(8, 'pending', 8, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(9, 'shipped', 7, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(10, 'shipped', 17, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) UNSIGNED NOT NULL,
  `payed_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `amount`, `payed_at`, `order_id`, `created_at`, `updated_at`, `address`) VALUES
(1, 242.22, '2021-12-24 10:03:55', 1, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(2, 241.31, '2021-11-15 21:34:46', 2, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(3, 323.44, '2021-02-21 09:48:18', 3, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(4, 443.65, '2021-10-31 09:46:09', 4, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(5, 488.85, '2021-11-14 19:41:00', 5, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(6, 105.08, '2021-08-28 22:04:33', 6, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(7, 90.54, '2021-02-25 18:33:33', 7, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(8, 403.21, '2021-11-21 19:56:52', 8, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(9, 94.12, '2021-05-17 19:04:15', 9, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL),
(10, 165.19, '2021-02-22 14:03:07', 10, '2022-01-04 10:01:01', '2022-01-04 10:01:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productables`
--

CREATE TABLE `productables` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `productable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productables`
--

INSERT INTO `productables` (`product_id`, `quantity`, `productable_type`, `productable_id`) VALUES
(1, 1, 'App\\Models\\Order', 6),
(1, 2, 'App\\Models\\Cart', 17),
(2, 2, 'App\\Models\\Order', 3),
(2, 2, 'App\\Models\\Cart', 9),
(3, 2, 'App\\Models\\Order', 5),
(3, 1, 'App\\Models\\Cart', 19),
(4, 1, 'App\\Models\\Order', 6),
(4, 2, 'App\\Models\\Cart', 16),
(5, 1, 'App\\Models\\Order', 2),
(5, 1, 'App\\Models\\Cart', 7),
(6, 1, 'App\\Models\\Order', 1),
(6, 2, 'App\\Models\\Cart', 2),
(7, 2, 'App\\Models\\Order', 6),
(7, 2, 'App\\Models\\Cart', 18),
(8, 1, 'App\\Models\\Order', 10),
(8, 3, 'App\\Models\\Cart', 12),
(9, 1, 'App\\Models\\Order', 6),
(9, 3, 'App\\Models\\Cart', 14),
(10, 1, 'App\\Models\\Order', 1),
(10, 2, 'App\\Models\\Cart', 15),
(11, 2, 'App\\Models\\Order', 2),
(11, 2, 'App\\Models\\Cart', 6),
(12, 1, 'App\\Models\\Order', 6),
(12, 3, 'App\\Models\\Cart', 17),
(13, 3, 'App\\Models\\Order', 7),
(13, 3, 'App\\Models\\Cart', 4),
(14, 2, 'App\\Models\\Order', 3),
(14, 1, 'App\\Models\\Cart', 11),
(15, 3, 'App\\Models\\Order', 5),
(15, 3, 'App\\Models\\Cart', 18),
(16, 3, 'App\\Models\\Order', 1),
(16, 2, 'App\\Models\\Cart', 9),
(17, 3, 'App\\Models\\Order', 5),
(17, 1, 'App\\Models\\Cart', 12),
(18, 2, 'App\\Models\\Order', 1),
(18, 1, 'App\\Models\\Cart', 7),
(19, 2, 'App\\Models\\Order', 5),
(19, 2, 'App\\Models\\Cart', 10),
(20, 1, 'App\\Models\\Order', 6),
(20, 1, 'App\\Models\\Cart', 14),
(21, 3, 'App\\Models\\Order', 10),
(21, 1, 'App\\Models\\Cart', 20),
(22, 3, 'App\\Models\\Order', 9),
(22, 1, 'App\\Models\\Cart', 17),
(23, 3, 'App\\Models\\Order', 9),
(23, 2, 'App\\Models\\Cart', 5),
(24, 3, 'App\\Models\\Order', 2),
(24, 1, 'App\\Models\\Cart', 7),
(25, 3, 'App\\Models\\Order', 7),
(25, 3, 'App\\Models\\Cart', 3),
(26, 1, 'App\\Models\\Order', 4),
(26, 2, 'App\\Models\\Cart', 2),
(27, 3, 'App\\Models\\Order', 7),
(27, 3, 'App\\Models\\Cart', 5),
(28, 1, 'App\\Models\\Order', 7),
(28, 2, 'App\\Models\\Cart', 1),
(29, 1, 'App\\Models\\Order', 9),
(29, 3, 'App\\Models\\Cart', 9),
(30, 1, 'App\\Models\\Order', 8),
(30, 2, 'App\\Models\\Cart', 14),
(3, 1, 'App\\Models\\Cart', 21);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unavailable',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `stock`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Assumenda aut repellendus aspernatur.', 'Minima amet deleniti magni id.', 6630.00, 24, 'unavailable', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(2, 'Non aliquid explicabo.', 'Quis voluptatem dolorem similique excepturi quos voluptatem.', 4217.00, 11, 'unavailable', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(3, 'At consequatur et.', 'Pariatur omnis veritatis et.', 5064.00, 16, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(4, 'Voluptates maiores sunt.', 'Incidunt corrupti error pariatur modi cumque. Sunt voluptatibus rem veritatis.', 2926.00, 14, 'unavailable', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(5, 'Quo consequatur ullam.', 'Et et mollitia aut ea. Et rerum at minima enim accusantium.', 7636.00, 9, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(6, 'Unde est ullam.', 'Neque numquam odio et qui tenetur in.', 7677.00, 41, 'unavailable', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(7, 'Sint magnam quisquam quam cum.', 'A commodi consectetur et saepe et sit. Laudantium laudantium adipisci vel repudiandae nihil.', 6005.00, 14, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(8, 'Vel itaque.', 'Architecto adipisci et voluptate.', 6895.00, 52, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(9, 'Rerum et alias.', 'Omnis veritatis ad nisi consequatur. Nobis et suscipit odit similique.', 5984.00, 90, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(10, 'Delectus odio ut asperiores.', 'Mollitia dolorem dignissimos eum perspiciatis. Sed ipsa nostrum dolores quia et cupiditate.', 7067.00, 29, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(11, 'Cum autem nisi eum.', 'Enim omnis dolores tempore dolorem qui. Ullam atque temporibus omnis sapiente corrupti numquam.', 5314.00, 48, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(12, 'Est nobis sit nemo.', 'Id quos rem qui eius eum dolorem et. Sed sit velit qui architecto minima.', 7633.00, 96, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(13, 'Velit odit ex reprehenderit.', 'Consequatur inventore corrupti enim provident ullam. Nobis quo molestiae libero ut accusamus pariatur.', 3687.00, 50, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(14, 'Modi perspiciatis ea provident.', 'Culpa porro sint quo nulla vero. Non doloremque numquam sint.', 7455.00, 41, 'unavailable', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(15, 'Ut voluptatibus eveniet.', 'Omnis facere aut nihil quas assumenda.', 6731.00, 42, 'unavailable', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(16, 'Nulla qui ut.', 'Error error omnis omnis ad soluta architecto eaque.', 3953.00, 92, 'unavailable', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(17, 'Illum numquam molestiae aliquid.', 'Pariatur et vero eveniet voluptatem amet. Dolorum corporis aut voluptatem non laudantium laboriosam.', 4249.00, 6, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(18, 'Debitis rem et similique.', 'Veritatis a fugiat laborum in explicabo nobis.', 2962.00, 58, 'unavailable', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(19, 'Nihil provident ut perspiciatis.', 'Sint ea voluptatem praesentium deserunt nobis quos vitae.', 6613.00, 16, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(20, 'Reiciendis aliquam nemo animi.', 'Et eveniet rerum aut nemo dolores illo. Maiores qui reiciendis esse quia deleniti dolorem.', 5664.00, 26, 'unavailable', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(21, 'Quam officiis impedit.', 'Non molestias reiciendis nesciunt maiores quis doloribus pariatur.', 5152.00, 85, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(22, 'Velit itaque perferendis consequatur.', 'Voluptas reiciendis est eum maiores quis. Qui inventore est qui eum.', 3209.00, 2, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(23, 'Omnis neque vitae officiis.', 'Sint eligendi laboriosam consequatur dignissimos quo.', 2058.00, 41, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(24, 'Aut a ab non.', 'Voluptate debitis ut ad quam. Iusto et adipisci recusandae nesciunt.', 7756.00, 52, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(25, 'Magnam quia est officia tempora.', 'Repudiandae enim dolorem ducimus vel voluptatum molestiae. Nulla laboriosam modi ut explicabo.', 6367.00, 49, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(26, 'Dolor voluptas.', 'Saepe sit ut similique consequatur accusamus ut.', 5686.00, 53, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(27, 'Voluptatem esse id itaque ut.', 'Praesentium occaecati consequuntur et perspiciatis velit qui ut enim. Maxime impedit eius qui fugiat quo magni.', 7140.00, 34, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(28, 'Saepe illo sit.', 'Omnis sint sapiente illo saepe.', 7826.00, 59, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(29, 'Non nobis sapiente.', 'Iste aut eligendi omnis itaque error iste.', 4823.00, 38, 'available', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01'),
(30, 'Est aut repellat quo.', 'Voluptas aperiam perferendis dicta. Quam atque in rem quo accusantium reiciendis alias.', 9196.00, 68, 'unavailable', NULL, '2022-01-04 10:01:01', '2022-01-04 10:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_since` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin_since`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Zack Kuhlman', 'alexandrine29@example.org', '2022-01-04 10:00:59', '$2y$10$l3PN.fIshwKLVjDl/3XI.uOcDIm22c8wXE4j1DWVKSVgqyJ1EQsPe', '2022-01-04 10:00:59', '28L7FiBC5J', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(2, 'Brigitte Haley', 'mcclure.nicholaus@example.net', '2022-01-04 10:00:59', '$2y$10$1QorfVTn3H01RY.lq36xJ.sMYEX/J3mS1wX.S0rCwzbUBwZYPBoKm', NULL, '6PLN0KGft3', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(3, 'Mr. Tremaine Waelchi V', 'shayne.russel@example.com', '2022-01-04 10:00:59', '$2y$10$wkkN1nkg8POFTjdi1DHf2eTzScH2Stdh6ZvRgMZA5LjQ8DcBV1.9O', '2022-01-04 10:00:59', 'qeieQebTZY', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(4, 'Annabel Klocko', 'qswaniawski@example.net', '2022-01-04 10:00:59', '$2y$10$0K32JtwKn/jiwBrSVVB5OeYKZOy4dT9fMX5TDTVAPehHFC4MLT3jy', NULL, 'WBYD1PRCC5', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(5, 'Naomi Stokes', 'nerdman@example.com', '2022-01-04 10:00:59', '$2y$10$LLqyTPeT2EndDQFtadjuJeXZXRFgAYl54pTHUVJdQQgyMpWT1QlgS', '2022-01-04 10:00:59', 'RQvQIf46JZ', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(6, 'Adele Ernser', 'abbey.jacobson@example.net', '2022-01-04 10:00:59', '$2y$10$Wm64mNzMoVL54pkA9nuGBOTobQP5cuIMpeuyDAYQuo48STOXxjuKi', '2022-01-04 10:00:59', '32R39uXAMl', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(7, 'Shaina McCullough', 'cchristiansen@example.com', '2022-01-04 10:00:59', '$2y$10$kMtqfSgLZ3ussElsuUrEguDgLgcesmfJSvBiHUO7uHMXm3b96k5v.', '2022-01-04 10:00:59', 'HJDDvOPNbq', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(8, 'Jamaal Crooks', 'jaskolski.mack@example.com', '2022-01-04 10:00:59', '$2y$10$0lrQgBQibdcFL.q90A1vNOnJbm8.17Em2Y0Nk1hWnMJM0xKmFJNeW', '2022-01-04 10:00:59', 'eKRPImB9Ia', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(9, 'Shania Haag DDS', 'nrippin@example.com', '2022-01-04 10:00:59', '$2y$10$9z1W0RT7QTyPq7mo9n3l0eo.VXIQ8nQXw0WnlYDKrKnfrLxbr9VBe', NULL, '2lzrYvUaZc', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(10, 'Mr. Brendon Mosciski V', 'kurt.torphy@example.net', '2022-01-04 10:01:00', '$2y$10$sDovElzUdcTsZsv1jbX2Euo9vfUBEGtUDLzhXiL2iszfbFvihYiR.', NULL, 'Hbcja9WEiT', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(11, 'Mr. Daron Carter DVM', 'hobart41@example.com', '2022-01-04 10:01:00', '$2y$10$DEI9LGNW.a4AxAsQN5QA7eYzLu4YrLYD67clR/55bSuhthGXGjCa2', '2022-01-04 10:01:00', 'pGMhG8ZetW', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(12, 'Whitney Gulgowski', 'denesik.sylvan@example.org', '2022-01-04 10:01:00', '$2y$10$30I6CzntwN1.sVLlA4yyiOKaQ87dVZXbd5zK.aNKgocoCbe8DD7iq', '2022-01-04 10:01:00', 'dUah8cTu1r', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(13, 'Ms. Willa Renner', 'roberto.effertz@example.org', '2022-01-04 10:01:00', '$2y$10$APUt3ERWqEZ46tHP7jQpu.Gl5qHHDLw5beHl2mWQwT6Adhsrv7LXK', NULL, 'LaIIyYiedD', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(14, 'Caitlyn Marks', 'rwalsh@example.com', '2022-01-04 10:01:00', '$2y$10$.vilXK5NSqoICHlCigzO0.tnifnI1HqsE9DrLJKtKYm4OjuOP3Qj2', NULL, 'RDa9lbSttK', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(15, 'Dr. Ciara Bradtke DDS', 'ihackett@example.org', '2022-01-04 10:01:00', '$2y$10$B.U4Ze46mp4Xb8BdB4/couyFIjsQQJQAxttO0oJMIMmGiNhJ4isfC', NULL, '1vmhIOvMbX', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(16, 'Kallie Wisozk', 'sigrid71@example.com', '2022-01-04 10:01:00', '$2y$10$OoyvvrPGE/oQH/OMex1IJ.rfmDYy2jXJBp.A1/0FyONWYptnwdTe.', '2022-01-04 10:01:00', 'q9XKvxT9gH', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(17, 'Gust Yost DDS', 'imelda72@example.net', '2022-01-04 10:01:00', '$2y$10$4p1HiwJ9HkB7C7.tKMMTZObGTPg0fyx7LMHUasQmwRWInWzWChU0e', NULL, 'JT8LB2DxYG', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(18, 'Prof. Kathleen Langworth DDS', 'corrine.gleason@example.net', '2022-01-04 10:01:00', '$2y$10$fVAsHglhqQ.ZxeVdUDS.BevqzxninaHtMhaKRabKeoak6KTJWkzGu', '2022-01-04 10:01:00', 'z16JVh0vbJ', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(19, 'Edmond Cremin III', 'parker.verner@example.org', '2022-01-04 10:01:00', '$2y$10$LXfh.BQ9Ql8NCSUpBiO3JujxGX7tJ5t.pcD56Wb7jTI7INaqIxeOy', NULL, 'U0dsZQFw3M', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(20, 'Vivian Senger Sr.', 'claudine.brown@example.com', '2022-01-04 10:01:00', '$2y$10$wUxkn.4MKtgI5p0Ut9aHGOy.jRJAyunMDUznH4LwIaunPSzxU4LeS', '2022-01-04 10:01:00', 'S4kmwOGOpK', '2022-01-04 10:01:00', '2022-01-04 10:01:00'),
(21, 'shahrukh', 'shahrukh@gmail.com', NULL, '$2y$10$ZRTJwBRwINjtNcvmn.RgeOxjob8Dl2UtvOYWFlkLDO76iUyzEwQf.', NULL, NULL, '2022-01-04 12:34:55', '2022-01-04 12:34:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_imageable_type_imageable_id_index` (`imageable_type`,`imageable_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

--
-- Indexes for table `productables`
--
ALTER TABLE `productables`
  ADD KEY `productables_productable_type_productable_id_index` (`productable_type`,`productable_id`),
  ADD KEY `productables_product_id_foreign` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `productables`
--
ALTER TABLE `productables`
  ADD CONSTRAINT `productables_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
