-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2022 at 10:54 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phonezone`
--
CREATE DATABASE IF NOT EXISTS `phonezone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `phonezone`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'Samsung', 'samsung', '2022-09-14 11:15:47', '2022-09-14 11:15:47'),
(4, 'OnePlus', 'oneplus', '2022-09-15 02:31:36', '2022-09-15 02:31:36'),
(5, 'Google ', 'google', '2022-09-15 02:31:51', '2022-09-15 02:31:51'),
(6, 'Huawei ', 'huawei', '2022-09-15 02:32:03', '2022-09-15 02:32:03'),
(7, 'Apple ', 'apple', '2022-09-15 02:32:52', '2022-09-15 02:32:52'),
(8, 'Sony ', 'sony', '2022-09-15 02:33:06', '2022-09-15 02:33:06'),
(9, 'Lenova', 'lenova', '2022-09-15 04:41:31', '2022-09-15 04:41:31'),
(10, 'Vivo', 'vivo', '2022-09-15 04:43:31', '2022-09-15 04:43:31'),
(11, 'Dell', 'dell', '2022-09-15 04:43:39', '2022-09-15 04:43:39'),
(12, 'Acer', 'acer', '2022-09-15 04:43:46', '2022-09-15 04:43:46'),
(14, 'Redmi', 'redmi', '2022-09-21 22:31:25', '2022-09-21 22:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mobile Phones', 'mobile-phones', '2022-06-13 10:54:09', '2022-09-11 03:11:07'),
(2, 'Tablets', 'tablets', '2022-06-13 10:54:09', '2022-09-11 03:11:44'),
(3, 'Laptops', 'laptops', '2022-06-13 10:54:09', '2022-09-11 03:12:10'),
(4, 'Televisions', 'televisions', '2022-06-13 10:54:09', '2022-09-11 03:12:35'),
(5, 'Audios', 'audios', '2022-06-13 10:54:09', '2022-09-11 03:12:56'),
(6, 'Cameras', 'cameras', '2022-06-13 10:54:09', '2022-09-11 03:13:34'),
(7, 'Games', 'games', '2022-06-13 10:56:34', '2022-09-11 03:14:01'),
(8, 'Other Accessories', 'other-accessories', '2022-06-13 10:56:34', '2022-09-11 03:14:29'),
(26, 'Smart Watches', 'smart-watches', '2022-09-11 04:25:14', '2022-09-11 04:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Raj', 'admi@gmail.com', '0779634562', 'Test message', '2022-08-03 10:39:35', '2022-08-03 10:39:35');

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
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3', 8, '2022-09-22 12:38:48', NULL);

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_06_153425_create_sessions_table', 1),
(7, '2022_06_11_151903_create_categories_table', 2),
(8, '2022_06_11_152116_create_products_table', 2),
(9, '2022_07_14_125428_create_orders_table', 3),
(10, '2022_07_14_125601_create_order_items_table', 3),
(11, '2022_07_14_125631_create_shippings_table', 3),
(12, '2022_07_14_125734_create_transactions_table', 3),
(13, '2022_07_27_151305_add_delivered_canceled_date_to_orders_table', 4),
(14, '2022_07_30_145356_create_reviews_table', 5),
(15, '2022_07_30_150738_add_rstatus_to_order_items_table', 5),
(16, '2022_08_03_131108_create_contacts_table', 6),
(17, '2022_08_04_123601_create_settings_table', 7),
(18, '2022_08_12_160651_create_shoppingcart_table', 7),
(19, '2022_08_15_150115_create_profiles_table', 8),
(20, '2022_09_07_143040_create_product_requests_table', 9),
(21, '2022_09_07_154101_create_product_requests_table', 10),
(22, '2022_09_07_160709_create_product_requests_table', 11),
(23, '2022_09_10_123046_create_home_categories_table', 12),
(24, '2022_09_12_101321_change_subtotal_total_tax_orders_table', 13),
(25, '2022_09_14_145142_create_brands_table', 14),
(26, '2022_09_15_082459_change_shortdescription_type_products_table', 15),
(27, '2022_09_15_083529_add_brandid_products_table', 16),
(28, '2022_09_15_084000_add_brand_id_to_products_table', 17),
(29, '2022_09_16_084507_alter_orders_table_status_column', 18),
(30, '2022_09_16_091559_add_processing_shipped_date_to_orders_table', 19),
(31, '2022_09_16_151038_add_reply_message_to_product_requests_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','canceled','processing','shipped','delivered') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL,
  `processing_date` date DEFAULT NULL,
  `shipped_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`, `processing_date`, `shipped_date`) VALUES
(6, 2, '272.00', '0.00', '57.12', '329.12', 'Nusrath', 'Ahamed', '0779634562', 'user@gmail.com', 'Sample 1', 'Sample 1', 'Batti', 'Eastern', 'Sri Lanka', '30100', 'delivered', 1, '2022-07-26 03:46:20', '2022-07-27 10:58:57', '2022-07-27', NULL, NULL, NULL),
(7, 2, '272.00', '0.00', '57.12', '329.12', 'Fathima', 'Nuha', '0779634562', 'user@gmail.com', 'Sample 1', 'Sample 1', 'Batti', 'Eastern', 'Sri Lanka', '90400', 'ordered', 0, '2022-08-08 10:53:16', '2022-08-08 10:53:16', NULL, NULL, NULL, NULL),
(8, 2, '272.00', '0.00', '57.12', '329.12', 'Fathima', 'Roy', '0779634562', 'nuharazzak65@gmail.com', 'Sample 1', 'Sample 1', 'Batti', 'Eastern', 'Sri Lanka', '89099', 'ordered', 1, '2022-08-08 10:55:48', '2022-08-08 10:55:48', NULL, NULL, NULL, NULL),
(9, 2, '311.00', '0.00', '65.31', '376.31', 'Tintu', 'Jam', '0779634562', 'go@gmail.com', 'Sample 1', 'Sample 1', 'Batti', 'Eastern', 'Sri Lanka', '45500', 'delivered', 1, '2022-08-08 11:02:01', '2022-09-11 11:05:13', '2022-09-11', NULL, NULL, NULL),
(11, 2, '443.00', '0.00', '93.03', '536.03', 'Yaash', 'Ola', '0779634562', 'go@gmail.com', 'Sample 1', 'Sample 1', 'Florida', 'Eastern', 'UK', '89000', 'ordered', 1, '2022-08-10 09:56:00', '2022-08-10 09:56:00', NULL, NULL, NULL, NULL),
(12, 2, '150.00', '0.00', '31.50', '181.50', 'Yaash', 'Ola', '0779634562', 'user@gmail.com', 'Sample 1', 'Sample 1', 'Florida', 'Eastern', 'Sri Lanka', '78900', 'ordered', 1, '2022-08-10 10:24:31', '2022-08-10 10:24:31', NULL, NULL, NULL, NULL),
(14, 2, '311.00', '0.00', '65.31', '376.31', 'Ram', 'Roy', '0779634562', 'go@gmail.com', 'Sample 1', 'Sample 1', 'Florida', 'Eastern', 'Sri Lanka', '45678', 'ordered', 1, '2022-09-08 10:06:50', '2022-09-08 10:06:50', NULL, NULL, NULL, NULL),
(15, 2, '272.00', '0.00', '57.12', '329.12', 'Nusrath', 'Ahamed', '0779634562', 'user@gmail.com', 'Sample 1', 'Sample 1', 'Batti', 'Eastern', 'Sri Lanka', '354525', 'ordered', 1, '2022-09-09 00:16:39', '2022-09-09 00:16:39', NULL, NULL, NULL, NULL),
(17, 2, '494.00', '0.00', '103.74', '597.74', 'Tintu', 'Jam', '0779634', 'admi@gmail.com', 'Sample 1', 'Sample 1', 'Florida', 'Eastern', 'UK', '54354', 'ordered', 1, '2022-09-09 00:57:01', '2022-09-09 00:57:01', NULL, NULL, NULL, NULL),
(22, 4, '120,000.00', '0.00', '25,200.00', '145,200.00', 'Kala', 'Roy', '0779634562', 'nuharazzak65@gmail.com', 'Hill Street', 'Hill Street', 'Colombo', 'Eastern', 'Sri Lanka', '34567', 'ordered', 1, '2022-09-12 04:50:04', '2022-09-12 04:50:04', NULL, NULL, NULL, NULL),
(24, 4, '50,713.00', '0.00', '10,649.73', '61,362.73', 'Fathima', 'Ola', '0779634562', 'nuharazzak@gmail.com', 'Sample 1', 'Sample 1', 'Batti', 'Eastern', 'Sri Lanka', '5435345', 'ordered', 1, '2022-09-12 04:53:34', '2022-09-12 04:53:34', NULL, NULL, NULL, NULL),
(28, 2, '494.00', '0.00', '103.74', '597.74', 'Ram', 'Roy', '0779634562', 'user@gmail.com', 'Sample 1', 'Sample 1', 'Florida', 'Eastern', 'Sri Lanka', '678686', 'processing', 0, '2022-09-13 04:47:48', '2022-09-21 09:22:41', '2022-09-16', NULL, '2022-09-21', '2022-09-16'),
(29, 4, '170,402.00', '0.00', '35,784.42', '206,186.42', 'Nuha', 'Rifky', '0779634562', 'Rif@gmail.com', 'Hostel Road', 'KKY', 'Kandy', 'Eastern', 'Sri Lanka', '302999', 'shipped', 0, '2022-09-13 04:53:28', '2022-09-16 04:34:34', '2022-09-13', NULL, '2022-09-16', '2022-09-16'),
(30, 4, '431,000.00', '0.00', '90,510.00', '521,510.00', 'Nazeem', 'Haq', '0779634562', 'Nazee@gmail.com', 'Hill Street', 'Hill Street', 'Florida', 'Eastern', 'UK', '54644', 'ordered', 0, '2022-09-18 12:19:38', '2022-09-18 12:19:38', NULL, NULL, NULL, NULL),
(31, 4, '7,000.00', '0.00', '1,470.00', '8,470.00', 'Yaash', 'Rajmohan', '0779634562', 'nuharazzak65@gmail.com', 'Sample 1', 'Sample 1', 'Colombo', 'Eastern', 'Sri Lanka', '45443', 'delivered', 0, '2022-09-18 12:21:42', '2022-09-21 09:22:31', '2022-09-21', NULL, '2022-09-21', NULL),
(32, 4, '3,290.00', '0.00', '690.90', '3,980.90', 'Nusrath', 'Ahamed', '0779634562', 'nusrath@gmail.com', 'Hostel Road', 'Hostel Road', 'Colombo', 'Eastern', 'Sri Lanka', '435435', 'delivered', 0, '2022-09-18 12:35:01', '2022-09-21 04:30:43', '2022-09-21', NULL, NULL, NULL),
(33, 4, '3,404.00', '0.00', '714.84', '4,118.84', 'Ram', 'Ola', '0779634562', 'ram@gmail.com', 'Hill Street', 'Hill Street', 'Kandy', 'Eastern', 'Sri Lanka', '54', 'delivered', 0, '2022-09-18 12:38:37', '2022-09-19 11:52:24', '2022-09-19', NULL, '2022-09-19', NULL),
(34, 5, '351,200.00', '0.00', '73,752.00', '424,952.00', 'Rifky', 'Mohamed', '0756890321', 'go@gmail.com', 'Beach Road', 'KKY', 'Colombo', 'Western', 'Sri Lanka', '67890', 'delivered', 0, '2022-09-21 04:32:47', '2022-09-21 04:35:04', '2022-09-21', NULL, NULL, NULL),
(35, 4, '276,700.00', '0.00', '58,107.00', '334,807.00', 'Fathima', 'Nuha', '0769086532', 'nuharazzak65@gmail.com', 'Beach Road', 'KKY', 'Florida', 'Eastern', 'Sri Lanka', '56890', 'delivered', 0, '2022-09-21 04:46:11', '2022-09-21 04:47:54', '2022-09-21', NULL, NULL, NULL),
(36, 5, '203,940.00', '0.00', '42,827.40', '246,767.40', 'Nuha', 'Fathima', '0779634562', 'nuharazzak65@gmail.com', 'Hill Street', 'Kattankudy', 'Kandy', 'Eastern', 'Sri Lanka', '45453', 'ordered', 0, '2022-09-21 09:54:31', '2022-09-21 09:54:31', NULL, NULL, NULL, NULL),
(37, 5, '203,940.00', '0.00', '42,827.40', '246,767.40', 'Ram', 'Roy', '0779634562', 'user@gmail.com', 'Sample 1', 'Sample 1', 'Kandy', 'Eastern', 'Sri Lanka', '6655', 'ordered', 0, '2022-09-21 09:55:35', '2022-09-21 09:55:35', NULL, NULL, NULL, NULL),
(38, 4, '276,700.00', '0.00', '58,107.00', '334,807.00', 'Tintu', 'Jam', '0779634562', 'user@gmail.com', 'Sample 1', 'Sample 1', 'Florida', 'Eastern', 'Sri Lanka', '43422', 'ordered', 0, '2022-09-21 09:59:48', '2022-09-21 09:59:48', NULL, NULL, NULL, NULL),
(39, 6, '15,000.00', '0.00', '3,150.00', '18,150.00', 'Nazeem', 'Haq', '0779634562', 'nazee@gmail.com', 'Hill Street', 'Hill Street', 'Batti', 'Eastern', 'Sri Lanka', '453', 'delivered', 0, '2022-09-21 10:02:22', '2022-09-21 10:06:15', '2022-09-21', NULL, NULL, NULL),
(40, 6, '1,000.00', '0.00', '210.00', '1,210.00', 'Yaash', 'Ola', '0779634562', 'go@gmail.com', 'Hostel Road', 'Beach Road', 'Florida', 'Eastern', 'Sri Lanka', '43432', 'canceled', 0, '2022-09-21 10:20:47', '2022-09-21 22:36:09', '2022-09-21', NULL, '2022-09-22', NULL),
(41, 6, '199,000.00', '0.00', '41,790.00', '240,790.00', 'Kala', 'Roy', '0779634562', 'nuharazzak@gmail.com', 'Hill Street', 'Hill Street', 'Florida', '34534', 'Sri Lanka', '54354', 'delivered', 0, '2022-09-21 10:30:49', '2022-09-21 10:32:18', '2022-09-21', NULL, NULL, NULL),
(42, 7, '656,000.00', '0.00', '137,760.00', '793,760.00', 'Fathima', 'Nooka', '0779634562', 'nooka@gmail.com', 'Hostel Road', 'Beach Road', 'Colombo', 'Western', 'Sri Lanka', '45678', 'delivered', 0, '2022-09-21 22:46:46', '2022-09-21 22:49:10', '2022-09-22', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`) VALUES
(3, 2, 6, '272.00', 1, '2022-07-26 03:46:20', '2022-07-31 10:03:32', 1),
(4, 2, 7, '272.00', 1, '2022-08-08 10:53:16', '2022-08-08 10:53:16', 0),
(5, 2, 8, '272.00', 1, '2022-08-08 10:55:48', '2022-08-08 10:55:48', 0),
(6, 4, 9, '311.00', 1, '2022-08-08 11:02:01', '2022-08-08 11:02:01', 0),
(8, 9, 11, '443.00', 1, '2022-08-10 09:56:00', '2022-08-10 09:56:00', 0),
(9, 12, 12, '150.00', 1, '2022-08-10 10:24:31', '2022-08-10 10:24:31', 0),
(11, 4, 14, '311.00', 1, '2022-09-08 10:06:50', '2022-09-08 10:06:50', 0),
(12, 2, 15, '272.00', 1, '2022-09-09 00:16:39', '2022-09-09 00:16:39', 0),
(14, 3, 17, '494.00', 1, '2022-09-09 00:57:01', '2022-09-09 00:57:01', 0),
(19, 26, 22, '120000.00', 1, '2022-09-12 04:50:04', '2022-09-12 04:50:04', 0),
(23, 4, 24, '311.00', 1, '2022-09-12 04:53:34', '2022-09-12 04:53:34', 0),
(25, 27, 24, '50000.00', 1, '2022-09-12 04:53:34', '2022-09-12 04:53:34', 0),
(29, 3, 28, '494.00', 1, '2022-09-13 04:47:48', '2022-09-13 04:47:48', 0),
(31, 27, 29, '50000.00', 1, '2022-09-13 04:53:28', '2022-09-13 05:55:36', 1),
(32, 26, 29, '120000.00', 1, '2022-09-13 04:53:28', '2022-09-13 04:53:28', 0),
(33, 26, 30, '120000.00', 1, '2022-09-18 12:19:38', '2022-09-18 12:19:38', 0),
(34, 4, 30, '311000.00', 1, '2022-09-18 12:19:38', '2022-09-18 12:19:38', 0),
(35, 36, 31, '7000.00', 1, '2022-09-18 12:21:42', '2022-09-18 12:21:42', 0),
(36, 2, 32, '3290.00', 1, '2022-09-18 12:35:01', '2022-09-18 12:35:01', 0),
(37, 2, 33, '3290.00', 1, '2022-09-18 12:38:37', '2022-09-19 11:54:31', 1),
(38, 19, 33, '114.00', 1, '2022-09-18 12:38:37', '2022-09-18 12:38:37', 0),
(40, 4, 34, '311000.00', 1, '2022-09-21 04:32:47', '2022-09-21 04:32:47', 0),
(41, 35, 35, '6700.00', 1, '2022-09-21 04:46:12', '2022-09-21 04:48:58', 1),
(42, 17, 35, '270000.00', 1, '2022-09-21 04:46:12', '2022-09-21 04:46:12', 0),
(43, 3, 36, '4940.00', 1, '2022-09-21 09:54:31', '2022-09-21 09:54:31', 0),
(44, 29, 36, '199000.00', 1, '2022-09-21 09:54:31', '2022-09-21 09:54:31', 0),
(46, 3, 37, '4940.00', 1, '2022-09-21 09:55:35', '2022-09-21 09:55:35', 0),
(47, 29, 37, '199000.00', 1, '2022-09-21 09:55:35', '2022-09-21 09:55:35', 0),
(49, 35, 38, '6700.00', 1, '2022-09-21 09:59:48', '2022-09-21 09:59:48', 0),
(50, 17, 38, '270000.00', 1, '2022-09-21 09:59:48', '2022-09-21 09:59:48', 0),
(51, 12, 39, '15000.00', 1, '2022-09-21 10:02:22', '2022-09-21 10:07:24', 1),
(52, 37, 40, '1000.00', 1, '2022-09-21 10:20:47', '2022-09-21 10:23:45', 1),
(53, 29, 41, '199000.00', 1, '2022-09-21 10:30:49', '2022-09-21 10:33:38', 1),
(54, 14, 42, '457000.00', 1, '2022-09-21 22:46:46', '2022-09-21 22:50:48', 1),
(55, 29, 42, '199000.00', 1, '2022-09-21 22:46:46', '2022-09-21 22:50:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$FB6Dr7SmoAjnM5YToMYMUeBOaqkyA45DL3lmIfi7JmW3lygHNuj1G', '2022-09-19 10:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reguler_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `reguler_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `brand_id`) VALUES
(2, 'ALCATEL 1066 DUAL SIM', 'alcatel-1066-dual-sim', 'Aut natus vel accusantium doloribus delectus. Aperiam omnis accusamus eum quos deleniti. Architecto totam sit id autem est voluptas.', 'Et ut adipisci officiis eius accusantium. Qui ea fugit minima. Dignissimos animi sunt eos quibusdam enim omnis qui fugit. Ipsa ex accusamus quis eum officiis. Architecto quia repellat ullam dicta sit eveniet. Sed dicta voluptatem possimus voluptates quisquam qui. Expedita tempore consequatur cum optio. Laboriosam fugit fuga doloribus minima ratione qui. Sunt deserunt illum eveniet a.', '3290.00', '3000.00', 'DIGI322', 'outofstock', 0, 17, '1663431062.jpg', NULL, 1, '2022-06-14 02:36:13', '2022-09-19 09:47:24', 3),
(3, 'Microsoft shoots for the moon with the new Lunar controller', 'microsoft-shoots-for-the-moon-with-the-new-lunar-controller', '<table class=\"a-normal a-spacing-none a-spacing-top-base\">\n<tbody>\n<tr class=\"a-spacing-none a-spacing-top-small po-brand\">\n<td class=\"a-span4\"><span class=\"a-size-small a-text-bold\">Brand</span></td>\n<td class=\"a-span6\"><span class=\"a-size-base a-color-tertiary\">Microsoft</span></td>\n</tr>\n<tr class=\"a-spacing-none a-spacing-top-small po-compatible_devices\">\n<td class=\"a-span4\"><span class=\"a-size-small a-text-bold\">Compatible Devices</span></td>\n<td class=\"a-span6\"><span class=\"a-size-base a-color-tertiary\">Xbox One, Xbox Series X, Windows</span></td>\n</tr>\n<tr class=\"a-spacing-none a-spacing-top-small po-controller_type\">\n<td class=\"a-span4\"><span class=\"a-size-small a-text-bold\">Controller Type</span></td>\n<td class=\"a-span6\"><span class=\"a-size-base a-color-tertiary\">Windows</span></td>\n</tr>\n<tr class=\"a-spacing-none a-spacing-top-small po-connectivity_technology\">\n<td class=\"a-span4\"><span class=\"a-size-small a-text-bold\">Connectivity Technology</span></td>\n<td class=\"a-span6\"><span class=\"a-size-base a-color-tertiary\">Wireless,3 . 5mm Jack</span></td>\n</tr>\n<tr class=\"a-spacing-none a-spacing-top-small po-color\">\n<td class=\"a-span4\"><span class=\"a-size-small a-text-bold\">Color</span></td>\n<td class=\"a-span6\"><span class=\"a-size-base a-color-tertiary\">White</span></td>\n</tr>\n</tbody>\n</table>', 'Sed voluptates nisi assumenda. Dolore non asperiores aliquam id earum ut. Provident voluptas autem est delectus laudantium. Eos recusandae soluta consequatur. Consectetur ducimus doloremque facere et suscipit. Autem sed enim vero nostrum. Nemo nihil qui blanditiis iure omnis. Voluptas minus doloremque harum magnam ab optio. Illum unde sit ut molestiae ipsam. Sapiente inventore impedit sapiente consectetur voluptatem non.', '4940.00', '4840.00', 'DIGI390', 'instock', 0, 17, 'digital_18.jpg', NULL, 7, '2022-06-14 02:36:13', '2022-09-18 11:02:06', 5),
(4, 'Sony XBR Televisions', 'sony-xbr-televisions', 'Perferendis fugiat molestiae rerum qui necessitatibus. Dolores nostrum laboriosam sunt ab quo. Explicabo nulla velit et earum.', 'Consequatur omnis voluptatem ipsam quaerat. Unde in omnis vel explicabo assumenda qui voluptates. Explicabo voluptas enim doloremque sit qui. Sapiente est dignissimos praesentium quam molestiae et voluptatibus. Sunt explicabo eius dolorem aliquam. Rem assumenda sint voluptas voluptatibus excepturi. Et et quia saepe qui. Ipsa quia nobis temporibus voluptatem nisi. Neque a et at dolorem vitae error deserunt ut.', '311000.00', '310000.00', 'DIGI114', 'instock', 0, 19, 'digital_8.jpg', NULL, 4, '2022-06-14 02:36:13', '2022-09-18 11:05:53', 8),
(5, 'Samsung Galaxy Tab S7 FE SM-T735 ', 'samsung-galaxy-tab-s7-fe-sm-t735', 'Omnis ut aut sed dignissimos odio. Praesentium soluta nostrum commodi. Dicta ut vero reprehenderit. Distinctio et optio pariatur itaque.', 'Voluptatem ut nesciunt vel voluptatum alias aliquid dolores. Quae repudiandae ea cum velit. Quam dolorem ad sed ducimus voluptas laudantium aliquam. Veritatis qui alias aut eos necessitatibus quo. Quaerat et error quo quibusdam. Et odit maiores minus praesentium tempora.', '49000.00', '48000.00', 'DIGI451', 'outofstock', 0, 11, '1663489540.jpg', ',16634896060.jpg,16634896061.jpg', 2, '2022-06-14 02:36:13', '2022-09-19 09:29:18', 3),
(9, 'Lenovo\'s Moto G Plus', 'lenovos-moto-g-plus', '6\" FHD+ OLED 21:9 display\n\n5G Mobile Data Connectivity\n\nTriple rear camera 12MP + wide 8MP ultrawide + 8MP telephoto\n\n8MP front-facing camera F2.0 lens 84° wide-angle', 'Exceed your expectations with the Sony Xperia 10 III. It has a 6-inch FHD+ OLED wide display and triple rear cameras, including a wide, ultra-wide and telephoto, enabling you to capture incredible photos. A Qualcomm Snapdragon 690 5G processor and 6GB RAM gives you the ability to jump between apps and be more efficient in your work and social interactions.\n\nThe addition of 5G support ensures you are ready for a future with high-speed downloads and provides the ability to stream content.', '44300.00', '0.00', 'DIGI196', 'instock', 0, 1, 'digital_2.jpg', ',16635195410.jpg,16635195411.jpg', 1, '2022-06-14 02:36:13', '2022-09-18 11:15:41', 9),
(12, 'Realme Watch RMA161', 'realme-watch-rma161', 'Brand : Apple\nAvailable. Released 2021, September 24\n256GB 3GB RAM', 'Saepe aliquid non voluptatem sed et similique maxime. Et unde aliquam saepe corrupti et expedita. Ea id sint minus et quod laboriosam minus. Doloribus eos atque cumque labore qui. Inventore porro in saepe sapiente iste aliquid. Sequi minima cumque tempore in ducimus fuga. Quia odio autem quis alias. Qui dolorem dolor unde dolor. Alias necessitatibus illo perspiciatis. Dolorum deserunt voluptas incidunt molestiae. Fugiat beatae vel ut quas suscipit qui id.', '15000.00', '14000.00', 'DIGI470', 'instock', 0, 19, '1659886151.png', ',16635191800.jpg,16635191801.jpg', 26, '2022-06-14 02:36:13', '2022-09-18 11:09:40', 4),
(14, 'Vivobook Pro 15 N552', 'vivobook-pro-15-n552', 'Charging\nDisplayPort\nThunderbolt 3 (up to 40Gb/s)\nUSB 4 (up to 40Gb/s)\nUSB 3.1 Gen 2 (up to 10Gb/s)\nHeadphone', 'Quisquam ab maxime blanditiis commodi vitae totam id. Sed eum ab quia saepe maxime quaerat. Nulla suscipit libero consequatur excepturi aut quod rem omnis. Magnam laboriosam facilis a. Cumque distinctio esse doloribus omnis hic. Consequatur ut est dolorem temporibus vel molestiae optio. Quis sequi et aut accusamus quis. Magni quo aliquam omnis qui et. Id dicta sunt eveniet. Dolore numquam velit sequi ducimus eligendi.', '457000.00', '450000.00', 'DIGI476', 'instock', 0, 1, 'digital_4.jpg', ',16635208150.jpg,16635208151.jpg', 3, '2022-06-14 02:36:13', '2022-09-18 11:36:55', 10),
(15, 'Samsung Galaxy Tab 4 White 7.0', 'samsung-galaxy-tab-4-white-70', 'Quia rem molestiae sunt et perferendis ex. Culpa iure asperiores dignissimos illum harum quod et. Vitae corrupti soluta dicta.', 'Deleniti itaque neque aspernatur sit aut doloremque velit. Ut rerum ut itaque beatae iusto beatae excepturi. Ipsa recusandae numquam nulla nulla odit beatae ea. Vel est qui iusto pariatur ipsam. Quasi vero atque quaerat quia. Ut et error optio maiores. Error expedita consequatur minus ut fugiat. Qui delectus id aut nesciunt rerum. Facere vel magnam quibusdam ut quis sit.', '329.00', '200.00', 'DIGI142', 'instock', 0, 170, 'digital_1.jpg', NULL, 2, '2022-06-14 02:36:13', '2022-09-15 04:44:41', 3),
(16, 'Micromax 32T8361HD 32 inch HD ready LED TV', 'micromax-32t8361hd-32-inch-hd-ready-led-tv', 'Nihil aliquam est nesciunt in. Aut enim et tenetur dolorum voluptas velit velit numquam.', 'Eius quibusdam et ut eos. Voluptas consequuntur non ea. Adipisci rerum est odit corrupti architecto dolor. Eius illo nihil maxime. Consequatur accusamus dolorem consequatur itaque adipisci voluptatem saepe. Iure ea fugiat a voluptates veniam. Quaerat illum dolores hic architecto. Tenetur et laborum sint corrupti. Maiores sed et tempora voluptate commodi repudiandae omnis. Nesciunt officia consequatur fuga quis maxime. Minus quaerat vitae mollitia neque esse suscipit voluptas.', '216.00', '400.00', 'DIGI254', 'instock', 0, 173, 'digital_9.jpg', NULL, 4, '2022-06-14 02:36:13', '2022-09-15 04:45:32', 8),
(17, 'Apple Watch Series 1', 'apple-watch-series-1', '<ul>\n<li>Five all-new aluminum colors.</li>\n<li>Most advanced display yet.</li>\n<li class=\"key-feature key-feature-3 fade-in\" tabindex=\"-1\" data-text-zoom-max=\"1.25\" data-focus-method=\"mouse\">Up to 33% faster&nbsp;charging.</li>\n<li tabindex=\"-1\" data-text-zoom-max=\"1.25\" data-focus-method=\"mouse\">Crack Resistant.</li>\n<li tabindex=\"-1\" data-text-zoom-max=\"1.25\" data-focus-method=\"mouse\">Dust Resistant.</li>\n<li tabindex=\"-1\" data-text-zoom-max=\"1.25\" data-focus-method=\"mouse\">Water Resistant.</li>\n</ul>', 'Corporis ut quaerat eum et fuga amet voluptas. Consectetur ut nihil voluptate aut quo. Quidem ut tempora cum illo at dolores pariatur. A fugit labore a quam voluptate ab delectus. Et soluta nisi esse quia eos. Autem quia quaerat sit repellendus est. Voluptate exercitationem omnis aut ipsum velit fugiat consequatur. Fugiat enim exercitationem omnis.', '270000.00', '270000.00', 'DIGI336', 'instock', 0, 15, 'digital_11.jpg', ',16635211750.jpg,16635211751.jpg', 26, '2022-06-14 02:36:13', '2022-09-18 11:42:55', 7),
(19, 'Dell UltraSharp U2415 24\" LED LCD Monitor', 'dell-ultrasharp-u2415-24-led-lcd-monitor', 'Eveniet nobis voluptatum maiores nisi fuga. Rem ipsum perspiciatis impedit doloribus dolore qui. Natus enim nulla magni et non minima sit voluptatibus.', 'Explicabo suscipit perspiciatis perspiciatis. Quidem iusto ut blanditiis ut quia aliquam omnis. Sit expedita amet quia animi et. Qui sunt maiores illo nostrum quia consequatur quo assumenda. Tenetur illo sed eos beatae doloremque accusantium. Veritatis laborum in est expedita nisi reiciendis error. Autem dolores maxime eaque suscipit. Qui quo vel atque animi reprehenderit vitae exercitationem. Quia non illo voluptas dolores.', '114.00', '899.00', 'DIGI160', 'instock', 0, 117, 'digital_19.jpg', NULL, 4, '2022-06-14 02:36:13', '2022-09-15 04:46:20', 11),
(20, 'consequatur facilis', 'consequatur-facilis', 'Ut autem vel occaecati repellat. Repellendus voluptatem laboriosam est aut in iure. Laudantium doloremque eos labore quis id soluta.', 'Officia quod atque facere amet et molestiae. Incidunt consequatur voluptas iusto. Iusto quo quis laudantium. Placeat explicabo unde iure optio. Iste rerum et quod cum. Ab consectetur dolorem voluptatum vel quis modi commodi perferendis. Molestiae ratione nisi exercitationem. Est recusandae ea eaque fuga consequatur. Expedita tempore fugiat consectetur ut vero nihil. Id velit qui atque libero corporis. Natus maiores necessitatibus facere.', '143.00', '54353.00', 'DIGI252', 'instock', 0, 200, 'digital_20.jpg', NULL, 4, '2022-06-14 02:36:13', '2022-09-15 04:47:01', 8),
(21, 'Acer Aspire S7 UltraBook', 'acer-aspire-s7-ultrabook', '<ul>\n<li>Up to 15 hours wireless web</li>\n<li>Up to 18 hours Apple TV app movie playback</li>\n<li>Built-in 49.9‑watt‑hour lithium‑polymer battery</li>\n<li>30W USB-C Power Adapter</li>\n</ul>', 'Similique sed dignissimos necessitatibus corporis ratione similique illum. Id et architecto voluptatem temporibus sunt aperiam ratione. Est qui quis veniam molestias autem quas et vero. Dolorem accusantium necessitatibus omnis fuga ad. Voluptas dolorem dolorum molestias et. Voluptas ab suscipit sequi similique animi exercitationem perspiciatis. Dolores quam vero unde doloribus.', '350000.00', '340000.00', 'DIGI294', 'instock', 0, 144, 'digital_14.jpg', ',16635208950.jpg,16635208951.jpg', 3, '2022-06-14 02:36:13', '2022-09-18 11:38:15', 12),
(22, 'Galaxy Camera (WiFi)', 'galaxy-camera-wifi', 'Iure ratione recusandae soluta nesciunt voluptatem distinctio culpa recusandae. Vel molestiae similique voluptatem non dicta quaerat dolorem. Beatae itaque impedit quia eveniet.', 'Omnis eius vitae error quia error. Adipisci minus perspiciatis maxime minus. Omnis quia ut quo impedit. Sed quia in aliquid tempora atque in ipsum est. Dolore incidunt molestias error qui sequi aperiam. Voluptatem alias omnis quia optio dolor. Rerum labore expedita dolorem aut rerum recusandae architecto voluptas. Ipsa natus iste eum sed cumque dolorem ad.', '386.00', '455.00', 'DIGI301', 'instock', 0, 142, 'digital_6.jpg', NULL, 6, '2022-06-14 02:36:13', '2022-09-15 04:47:45', 3),
(26, 'OnePlus Nord 2T 8GB RAM 128GB', 'oneplus-nord-2t-8gb-ram-128gb', '<ul>\n<li class=\"text-before ml-303rpx text-20m2 text-50 inline-block mo:ls-20-2 pc:ls-50-1\">80W SUPERVOOC Fast Charging</li>\n</ul>', '<ul>\n<li class=\"text-before ml-303rpx text-20m2 text-50 inline-block mo:ls-20-2 pc:ls-50-1\">80W SUPERVOOC Fast Charging</li>\n<li class=\"text-before ml-303rpx text-20m2 text-50 inline-block mo:ls-20-2 pc:ls-50-1\">50 MP Sony IMX766 Flagship Camera + OIS</li>\n<li class=\"text-before ml-303rpx text-20m2 text-50 inline-block mo:ls-20-2 pc:ls-50-1\">Selfishly clear AI selfies</li>\n<li class=\"text-before ml-303rpx text-20m2 text-50 inline-block mo:ls-20-2 pc:ls-50-1\">Ultra-clear 32 MP Front Camera</li>\n<li class=\"text-before ml-303rpx text-20m2 text-50 inline-block mo:ls-20-2 pc:ls-50-1\">16.33cm (6.43&rdquo;) 90 Hz FHD+ AMOLED Display</li>\n<li class=\"text-before ml-303rpx text-20m2 text-50 inline-block mo:ls-20-2 pc:ls-50-1\"><strong>1 Year Warranty</strong></li>\n</ul>', '120000.00', '100000.00', 'DIGI90', 'instock', 0, 12, '1662892213.png', NULL, 1, '2022-09-11 05:00:13', '2022-09-15 04:48:03', 4),
(27, 'Huawei Nova 9 SE 8GB RAM 128GB', 'huawei-nova-9-se-8gb-ram-128gb', '<ul>\n<li>Processor: Qualcomm SDM665</li>\n<li>Snapdragon 665</li>\n</ul>', '<ul>\n<li>Display: 6.78 inches</li>\n<li>Camera: Triple Camera</li>\n<li>Battery: Li-Po 4000mAh</li>\n<li><strong>1 Year Warranty</strong></li>\n</ul>', '50000.00', '47000.00', 'EST45', 'instock', 0, 5, '1662901279.png', NULL, 1, '2022-09-11 07:31:19', '2022-09-15 04:38:17', 6),
(28, 'Apple iPhone 11 128GB', 'apple-iphone-11-128gb', '<p>NETWORK Technology<br>GSM / CDMA / HSPA / EVDO / LTE<br>LAUNCH Announced 2019, September<br>Status Coming soon. Exp. release 2019, September<br>BODY Dimensions 150.9 x 75.7 x 8.3 mm (5.94 x 2.98 x 0.33 in)<br>Weight 194 g (6.84 oz)</p>', '<p>USB 2.0, proprietary reversible connector<br>FEATURES Sensors Face ID, accelerometer, gyro, proximity, compass, barometer<br>Siri natural language commands and dictation<br>BATTERY Non-removable Li-Ion 3110 mAh battery<br>Charging Fast battery charging 18W<br>Qi wireless charging</p>', '244990.00', '240000.00', 'HJK89', 'instock', 0, 2, '1663235701.jpg', NULL, 1, '2022-09-15 04:25:01', '2022-09-15 04:32:50', 7),
(29, 'Asus ROG Phone', 'asus-rog-phone', '<p><span class=\"specs-brief-accent\"><span data-spec=\"released-hl\">Exp. release 2021, Q4</span></span><br><span class=\"specs-brief-accent\"><span data-spec=\"body-hl\">238g, 9.9mm thickness</span></span><br><span class=\"specs-brief-accent\"><span data-spec=\"os-hl\">Android 11, ROG UI</span></span><br><span class=\"specs-brief-accent\"><span data-spec=\"storage-hl\">16GB+256GB storage, no card slot</span></span></p>', '<p>&nbsp;</p>\n<p>RGB light panel (on the back)<br>Pressure sensitive zones (Gaming triggers)<br>DISPLAY Type AMOLED, 1B colors, 144Hz, HDR10+, 800 nits (typ), 1200 nits (peak)<br>Size 6.78 inches, 109.5 cm2&nbsp;(~82.0% screen-to-body ratio)<br>Resolution 1080 x 2448 pixels (~395 ppi density)<br>Protection Corning Gorilla Glass Victus<br>PLATFORM OS Android 11, ROG UI<br>Chipset Qualcomm SM8350 Snapdragon 888+ 5G (5 nm)<br>CPU Octa-core (1&times;2.99 GHz Kryo 680 &amp; 3&times;2.42 GHz Kryo 680 &amp; 4&times;1.80 GHz Kryo 680)<br>GPU Adreno 660<br>MEMORY Card slot No<br>Internal 128GB 8GB RAM, 128GB 12GB RAM, 256GB 12GB RAM, 256GB 16GB RAM, 512GB 18GB RAM</p>', '199000.00', '190000.00', 'FGJ89', 'instock', 0, 3, '1663487019.jpg', ',16634870190.jpg,16634870191.jpg,16634870192.jpg', 1, '2022-09-18 02:13:39', '2022-09-18 02:16:25', 12),
(33, 'Realme 9 Pro+ Plus 256GB 8GB RAM RMX3393', 'realme-9-pro-plus-256gb-8gb-ram-rmx3393', '<p class=\"product_highlight_value \">Android 12</p>\n<p class=\"product_highlight_value \">50MP Triple Camera System</p>\n<p class=\"product_highlight_value \">6.4\" Super AMOLED display | 90Hz Refresh</p>\n<p class=\"product_highlight_value \">MediaTek Dimensity 920 5G Processor</p>', '<h3><strong>Overview</strong></h3>\n<p>With the Realme 9 Pro+, you can capture the light with its all-new light shift design, adjusting colour when exposed to sunlight. In addition, for 2022, it offers cutting-edge performance with the MediaTek Dimensity 920 platform. The 6.4\" Super AMOLED provides smooth and clear visuals, which benefits from a 90Hz refresh rate. And the 50MP Triple Camera System can capture stunning high definition images.</p>\n<p>Next-level low-light performance means you will no longer have problems capturing incredible images at night. As the flagship Sony IMX766 imaging sensor can capture more light, features like optical image stabilization and AI noise reduction give your photos a professional look.</p>\n<p>Fit more into your photographs with an 8MP Super-Wide Camera, or get close to your subject and capture incredible detail using the macro camera.</p>\n<p>Street Photography 2.0 makes it possible to obtain long exposures, typically only possible on SLR cameras. Produce images with neon trails at night, or be the centre of attention during rush hour in busy crowds. All of these features are possible and more.</p>\n<p>Benefitting from the powerful Qualcomm Snapdragon 695 5G platform, which uses advanced 6nm manufacturing processes and up to 128GB of internal storage, the Real 9 Pro+ has plenty of space for all your favourite movies, and games and apps.</p>\n<p>Navigate through menus easily and enjoy smooth visuals with the 6.4\" Super AMOLED display featuring a 90Hz refresh rate. At the same time, Dolby Atmos Dual speakers complete the immersion with incredible audio.</p>', '70000.00', '50000.00', 'GHJ89', 'instock', 0, 3, '1663520501.jpg', ',16635205010.jpg,16635205011.jpg', 1, '2022-09-18 11:31:41', '2022-09-18 11:31:41', 10),
(34, 'Google - Pixel Buds A-Series True Wireless In-Ear Headphones', 'google-pixel-buds-a-series-true-wireless-in-ear-headphones', '<ul>\n<li>1 Year Apple Care Warranty</li>\n<li>Brand: Apple</li>\n<li>Gen : 3rd Gen</li>\n</ul>', '<h5 class=\"product_highlight_title\">PRODUCT HIGHLIGHTS</h5>\n<p class=\"product_highlight_value \">Custom-designed 12 mm dynamic speaker drivers, deliver rich, high-quality audio</p>\n<p class=\"product_highlight_value \">Adaptive Sound adjusts the volume as users move between quiet and noisy environments, so they don&rsquo;t have to</p>\n<p class=\"product_highlight_value \">Beamforming mics help make calls crystal clear, even in noisy conditions</p>\n<p class=\"product_highlight_value \">Get up to 5 hours of listening time or up to 2.5 hours of talk time on a single charge</p>\n<p class=\"product_highlight_value show_more\">Up to 24 hours with the charging case, and charge for 15 minutes and get up to 3 hours listening time</p>\n<p class=\"product_highlight_value show_more\">Touch controls to skip a track, play, and pause easily</p>\n<p class=\"product_highlight_value show_more\">Just say &ldquo;Hey Google,&rdquo; or press and hold the earbud to talk to Google</p>\n<p class=\"product_highlight_value show_more\">Get real-time translation while using a Pixel or Android 6.0+ phone</p>\n<p class=\"product_highlight_value show_more\">Sweat and water resistant, with an IPx4 water resistance rating</p>\n<p class=\"product_highlight_value show_more\">Flush-to-ear design, 3 eartip sizes, and a stabilizer arc, they stay in place and create a gentle seal for amazing sound</p>', '65000.00', '65000.00', 'DJI89', 'instock', 0, 2, '1663522269.jpg', ',16635222690.jpg,16635222691.jpg', 5, '2022-09-18 12:01:09', '2022-09-18 12:01:09', 5),
(35, 'McDodo 3-In-1 Charging Cable', 'mcdodo-3-in-1-charging-cable', '<ul>\n<li>1: Lightning Chargers + 1: Micro USB&nbsp; + 1: USB-C</li>\n<li>Charge Simultaneously</li>\n<li>1.2m (4ft)</li>\n<li>Max 2.4A current</li>\n<li>Superior Aluminum Alloy Shel</li>\n</ul>', '<h5 class=\"product_highlight_title\">PRODUCT HIGHLIGHTS</h5>\n<p class=\"product_highlight_value \">Custom-designed 12 mm dynamic speaker drivers, deliver rich, high-quality audio</p>\n<p class=\"product_highlight_value \">Adaptive Sound adjusts the volume as users move between quiet and noisy environments, so they don&rsquo;t have to</p>\n<p class=\"product_highlight_value \">Beamforming mics help make calls crystal clear, even in noisy conditions</p>\n<p class=\"product_highlight_value \">Get up to 5 hours of listening time or up to 2.5 hours of talk time on a single charge</p>\n<p class=\"product_highlight_value show_more\">Up to 24 hours with the charging case, and charge for 15 minutes and get up to 3 hours listening time</p>\n<p class=\"product_highlight_value show_more\">Touch controls to skip a track, play, and pause easily</p>\n<p class=\"product_highlight_value show_more\">Just say &ldquo;Hey Google,&rdquo; or press and hold the earbud to talk to Google</p>\n<p class=\"product_highlight_value show_more\">Get real-time translation while using a Pixel or Android 6.0+ phone</p>\n<p class=\"product_highlight_value show_more\">Sweat and water resistant, with an IPx4 water resistance rating</p>\n<p class=\"product_highlight_value show_more\">Flush-to-ear design, 3 eartip sizes, and a stabilizer arc, they stay in place and create a gentle seal for amazing sound</p>', '6700.00', '6000.00', 'KLO86', 'instock', 0, 2, '1663522496.jpg', NULL, 8, '2022-09-18 12:04:56', '2022-09-18 12:04:56', 3),
(36, 'Lexar Multi-Card 2-in-1 USB 3.1 Reader (LRW450UB)', 'lexar-multi-card-2-in-1-usb-31-reader-lrw450ub', '<div class=\"woocommerce-product-details__short-description\">\n<ul class=\"list_dkf_HqcGmV\">\n<li class=\"listItem_dkf_HqcGmV\" data-selenium=\"sellingPointsListItem\">1 x UHS-II SDXC Card Slot</li>\n<li class=\"listItem_dkf_HqcGmV\" data-selenium=\"sellingPointsListItem\">1 x UHS-II microSDXC Card Slot</li>\n<li class=\"listItem_dkf_HqcGmV\" data-selenium=\"sellingPointsListItem\">USB 3.0 Type-A Interface</li>\n<li class=\"listItem_dkf_HqcGmV\" data-selenium=\"sellingPointsListItem\">Supports Transfers up to 312 MB/s</li>\n<li class=\"listItem_dkf_HqcGmV\" data-selenium=\"sellingPointsListItem\">Card Slots Can Be Used Simultaneously</li>\n<li class=\"listItem_dkf_HqcGmV\" data-selenium=\"sellingPointsListItem\">Transfer Data Between Cards</li>\n<li class=\"listItem_dkf_HqcGmV\" data-selenium=\"sellingPointsListItem\">Compatible with USB 2.0</li>\n</ul>\n</div>\n<div class=\"product_meta\">&nbsp;</div>', '<p>The&nbsp;<strong>Multi-Card 2-in-1 USB 3.0 Reader</strong>&nbsp;from&nbsp;<strong>Lexar</strong>&nbsp;enables high-speed transfers from card to computer or between two cards. Built with dedicated UHS-II SDXC and UHS-II microSDXC card slots, this reader supports transfers of up to 312 MB/s. If you&rsquo;re working with UHS-I media, transfers max out around 170 MB/s. Both card slots may be used simultaneously, and this reader connects to your host system using an integrated USB 3.0 Type-A port that is backward compatible with USB 2.0.</p>', '7000.00', '6500.00', 'DFG67', 'instock', 0, 5, '1663522669.jpg', NULL, 8, '2022-09-18 12:07:49', '2022-09-18 12:07:49', 6),
(37, 'BELKIN - BOOSTCHARGE 25W PPS WALL CHARGER ', 'belkin-boostcharge-25w-pps-wall-charger', '<p>UPC:0745883825011</p>\n<p>Condition:New</p>\n<p>Availability:Ship within 3 business days</p>', '<h5 class=\"product_highlight_title\">PRODUCT HIGHLIGHTS</h5>\n<p class=\"product_highlight_value \">Safely recharge your phone faster than ever with the intelligence of Programmable Power Standard</p>\n<p class=\"product_highlight_value \">Our PPS Wall Charger is also USB-C PD 3.0 certified, which means it&rsquo;s safe, compliant, and meets required specifications for your compatible device.</p>\n<p class=\"product_highlight_value \">All the power and speed you&rsquo;ll need in a compact, travel-ready design.</p>\n<p class=\"product_highlight_value \">Everything you need to get going. Includes a 3.3 ft / 1m USB-C to USB-C cable for out of box charging.</p>\n<p class=\"product_highlight_value show_more\">Fast charge your iPhone, Samsung, or other smartphone with PPS and USB-C PD 3.0 technologies</p>', '1000.00', '900.00', 'GHI90', 'instock', 1, 12, '1663576406.jpg', ',16635765570.jpg,16635765571.jpg', 8, '2022-09-19 03:03:26', '2022-09-19 03:05:57', 3),
(38, 'Samsung Galaxy SmartTag, 1-Pack, Black', 'samsung-galaxy-smarttag-1-pack-black', '<p>UPC:887276520216</p>\n<p>Condition:New</p>\n<p>Availability:3 Day Handling</p>', '<h5 class=\"product_highlight_title\">PRODUCT HIGHLIGHTS</h5>\n<p class=\"product_highlight_value \">Track Objects/Pets with a Galaxy Phone</p>\n<p class=\"product_highlight_value \">Galaxy Find Network When Out of Range</p>\n<p class=\"product_highlight_value \">Requires the SmartThings App</p>\n<p class=\"product_highlight_value \">Control IoT Devices with SmartTag</p>\n<p class=\"product_highlight_value show_more\">Audible Tone Helps to Track Item</p>\n<p class=\"product_highlight_value show_more\">Replaceable Watch Battery Lasts Months</p>', '3500.00', '0.00', 'DFG89', 'instock', 0, 3, '1663592387.jpg', NULL, 8, '2022-09-19 07:29:47', '2022-09-19 07:29:47', 3),
(41, 'Remax RPP-166 Lango Series 20000mAh Power Bank', 'remax-rpp-166-lango-series-20000mah-power-bank', '<ul type=\"disc\">\n<li class=\"MsoNormal\" style=\"color: #7d7d7d; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Open Sans\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; letter-spacing: -.1pt;\">Dual USB Charging Ports</span></li>\n<li class=\"MsoNormal\" style=\"color: #7d7d7d; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Open Sans\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; letter-spacing: -.1pt;\">MicroUSB + Type-C Input</span></li>\n<li class=\"MsoNormal\" style=\"color: #7d7d7d; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Open Sans\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; letter-spacing: -.1pt;\">Can charge 2 devices at the same time</span></li>\n<li class=\"MsoNormal\" style=\"color: #7d7d7d; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Open Sans\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; letter-spacing: -.1pt;\">3 Months Warranty</span></strong></li>\n</ul>', '<p class=\"MsoNormal\"><strong><span style=\"font-size: 14.0pt; line-height: 107%;\">Overview</span></strong></p>\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 10.5pt; line-height: 107%; font-family: \'Open Sans\',sans-serif; color: #919090; letter-spacing: -.1pt; background: white;\">For Smartphones, Tablets &amp; more</span></strong><span style=\"font-size: 10.5pt; line-height: 107%; font-family: \'Open Sans\',sans-serif; color: #919090; letter-spacing: -.1pt;\"><br><span style=\"background: white;\">Energizer UE20012PQ is an ultimate power bank with 20,000mAh high capacity. Featuring with 22.5W ultira high output and fast charge technologies, UE20012PQ gives you the extensive battery life for all your charging needs. The triple output includes 2 USB-A and 1 USB-C that can charge more than one device at a time. The 20W USB-C Power Delivery and 22.5W Smart USB-A output supports QC/PD/VOOC/SCP fast charge for Apple, Huawei, Samsung, Google, LG, and other compatible devices wherever you go!</span></span></p>', '5000.00', '3000.00', 'GHI89', 'outofstock', 0, 2, '1663819458.jpg', ',16638194580.jpg,16638194581.jpg', 2, '2022-09-21 22:34:18', '2022-09-21 22:34:56', 11);

-- --------------------------------------------------------

--
-- Table structure for table `product_requests`
--

CREATE TABLE `product_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reply_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_requests`
--

INSERT INTO `product_requests` (`id`, `product_name`, `email`, `type`, `description`, `image`, `created_at`, `updated_at`, `reply_message`) VALUES
(1, 'Mobile Charger', 'user@gmail.com', ' Charger', 'SAMSUNG A3 power charger with cable', '1662625722.jpg', '2022-09-08 02:58:42', '2022-09-08 02:58:42', NULL),
(2, 'Charger Cable for SamsungA5', 'user@gmail.com', 'Charger Cable', 'Fast Charging', '1663776627.jpg', '2022-09-21 10:40:27', '2022-09-21 10:40:27', NULL),
(3, 'Ibywind Screen Protector for POCO F3', 'user@gmail.com', 'SCreen protector', 'POCO F3 5G, Xiaomi Mi 11i 5G Material:Metal Item:Hardness	9H', '1663820810.jpg', '2022-09-21 22:56:50', '2022-09-21 22:56:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 2, '1662540635.png', '0775690356', 'No,90, Flower Street', 'Hilton Place', 'Kandy', 'Western', 'Sri Lanka', '40900', '2022-08-17 01:45:26', '2022-09-07 03:20:35'),
(2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 10:42:15', '2022-09-11 10:42:15'),
(3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-16 08:49:29', '2022-09-16 08:49:29'),
(4, 6, '1663775180.png', '0774569032', 'Flower Street', 'Second Cross', 'Gall', 'Eastern', 'Eastern', '45678', '2022-09-21 10:12:11', '2022-09-21 10:16:20'),
(5, 7, NULL, '0764893256', 'Flower Street', 'Second Cross', 'Colombo', 'Eastren', 'Sri Lanka', '46778', '2022-09-21 22:52:38', '2022-09-21 22:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(1, 4, 'Nice product', 3, '2022-07-31 10:03:32', '2022-07-31 10:03:32'),
(2, 3, 'I got this product 5 days after ordering.\nI am very satisfying for this product.', 31, '2022-09-13 05:55:36', '2022-09-13 05:55:36'),
(3, 3, 'I got these Product. Very Useful.', 37, '2022-09-19 11:54:31', '2022-09-19 11:54:31'),
(5, 3, 'Nice Product. Fast Delivery...', 41, '2022-09-21 04:48:58', '2022-09-21 04:48:58'),
(6, 2, 'Nice Product', 51, '2022-09-21 10:07:24', '2022-09-21 10:07:24'),
(7, 3, 'Nice Product', 52, '2022-09-21 10:23:45', '2022-09-21 10:23:45'),
(8, 3, 'The product has shipped in 3 days...', 53, '2022-09-21 10:33:38', '2022-09-21 10:33:38'),
(9, 3, 'Nice Product', 55, '2022-09-21 22:50:09', '2022-09-21 22:50:09'),
(10, 2, 'hdfgfvds', 54, '2022-09-21 22:50:48', '2022-09-21 22:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0zGUQJIsKJxqdcozIC62nZ1FXGlyAPYWvOcbhKoe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3NSZkNrTzVnckNoZG1ROTZpMWlseHZzb2NNRXhWY0dCRDZuUlAwcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1666601396),
('iaSph9Xfe6NNU271y6sAQ4x0I1TJ5LqqZEWO6PdH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYTZneU1GMkRCVVBBaWNEczd5U1F0VHd6UmZtOVAza1FwcHpHZmhEUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0Ijt9czo0OiJjYXJ0IjthOjE6e3M6NDoiY2FydCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiMzcwZDA4NTg1MzYwZjVjNTY4YjE4ZDFmMmU0Y2ExZGYiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiIzNzBkMDg1ODUzNjBmNWM1NjhiMThkMWYyZTRjYTFkZiI7czoyOiJpZCI7aToyO3M6MzoicXR5IjtpOjI7czo0OiJuYW1lIjtzOjIxOiJBTENBVEVMIDEwNjYgRFVBTCBTSU0iO3M6NToicHJpY2UiO2Q6MzI5MDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX1zOjg6ImNoZWNrb3V0IjthOjQ6e3M6ODoiZGlzY291bnQiO2k6MDtzOjg6InN1YnRvdGFsIjtzOjg6IjYsNTgwLjAwIjtzOjM6InRheCI7czo4OiIxLDM4MS44MCI7czo1OiJ0b3RhbCI7czo4OiI3LDk2MS44MCI7fX0=', 1663822761);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(2, 6, 'Sam', 'Roy', '0779634562', 'admin@gmail.com', 'Sample 1', 'Sample 1', 'Batti', 'Eastern', 'Sri Lanka', '45900', '2022-07-26 03:46:20', '2022-07-26 03:46:20'),
(3, 8, 'Ram', 'Nuha', '0779634562', 'user@gmail.com', 'Sample 1', 'Sample 1', 'Batti', 'Eastern', 'Sri Lanka', '65845', '2022-08-08 10:55:48', '2022-08-08 10:55:48'),
(4, 9, 'Sam', 'Sfjdsn', '0779634562', 'go@gmail.com', 'Sample 1', 'Sample 1', 'Batti', 'Eastern', 'Sri Lanka', '78978', '2022-08-08 11:02:01', '2022-08-08 11:02:01'),
(5, 11, 'Tintu', 'Roy', '0779634562', 'user@gmail.com', 'Sample 1', 'Sample 1', 'Batti', 'Eastern', 'Sri Lanka', '69300', '2022-08-10 09:56:00', '2022-08-10 09:56:00'),
(6, 12, 'Ram', 'Ahamed', '0779634562', 'go@gmail.com', 'Sample 1', 'Sample 1', 'Florida', 'Eastern', 'UK', '78000', '2022-08-10 10:24:31', '2022-08-10 10:24:31'),
(7, 14, 'Nusrath', 'Nuha', '0779634562', 'user@gmail.com', 'Sample 1', 'Sample 1', 'Batti', 'Eastern', 'Sri Lanka', '65353', '2022-09-08 10:06:50', '2022-09-08 10:06:50'),
(8, 15, 'Ram', 'Ola', '0779634562', 'admin@gmail.com', 'Sample 1', 'Sample 1', 'Batti', 'Eastern', 'Sri Lanka', '53453', '2022-09-09 00:16:39', '2022-09-09 00:16:39'),
(9, 17, 'Fathima', 'Roy', '0779634562', 'admin@gmail.com', 'Sample 1', 'Sample 1', 'Batti', 'Eastern', 'Sri Lanka', '423424', '2022-09-09 00:57:01', '2022-09-09 00:57:01'),
(14, 22, 'Kala', 'Roy', '0779634562', 'nuharazzak65@gmail.com', 'Hill Street', 'Hill Street', 'Colombo', 'Eastern', 'Sri Lanka', '56789', '2022-09-12 04:50:04', '2022-09-12 04:50:04'),
(15, 24, 'Tintu', 'Jam', '0779634562', 'nuharazzak@gmail.com', 'Sample 1', 'Sample 1', 'Florida', 'Eastern', 'Sri Lanka', '54222', '2022-09-12 04:53:34', '2022-09-12 04:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('admin@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-09-21 22:52:13', NULL),
('admin@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-09-21 22:52:13', NULL),
('go@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:4:{s:32:\"8a48aa7c8e5202841ddaf767bb4d10da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"8a48aa7c8e5202841ddaf767bb4d10da\";s:2:\"id\";i:6;s:3:\"qty\";i:1;s:4:\"name\";s:40:\"Apple iPad 9th Generation 10.2-inch 2021\";s:5:\"price\";d:40200;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"efb26e2c6ab6bd4d1323288923522d4e\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"efb26e2c6ab6bd4d1323288923522d4e\";s:2:\"id\";i:4;s:3:\"qty\";i:1;s:4:\"name\";s:20:\"Sony XBR Televisions\";s:5:\"price\";d:311000;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"efd03aa5a47152330a89eadb9b09fe52\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"efd03aa5a47152330a89eadb9b09fe52\";s:2:\"id\";i:29;s:3:\"qty\";i:2;s:4:\"name\";s:14:\"Asus ROG Phone\";s:5:\"price\";d:199000;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"a775bac9cff7dec2b984e023b95206aa\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"a775bac9cff7dec2b984e023b95206aa\";s:2:\"id\";i:3;s:3:\"qty\";i:1;s:4:\"name\";s:59:\"Microsoft shoots for the moon with the new Lunar controller\";s:5:\"price\";d:4940;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-09-21 10:29:06', NULL),
('go@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-09-21 10:28:56', NULL),
('nazee@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"efd03aa5a47152330a89eadb9b09fe52\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"efd03aa5a47152330a89eadb9b09fe52\";s:2:\"id\";i:29;s:3:\"qty\";i:1;s:4:\"name\";s:14:\"Asus ROG Phone\";s:5:\"price\";d:199000;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-09-21 23:13:16', NULL),
('nazee@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-09-21 11:32:39', NULL),
('nooka@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-09-21 22:51:04', NULL),
('nooka@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-09-21 22:51:04', NULL),
('nuharazzak@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:2:{s:32:\"bd33e4e24a9444d831df8285f4c15e30\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"bd33e4e24a9444d831df8285f4c15e30\";s:2:\"id\";i:35;s:3:\"qty\";i:1;s:4:\"name\";s:28:\"McDodo 3-In-1 Charging Cable\";s:5:\"price\";d:6700;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"a4e935a75812667a849f3dfef1c5940b\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"a4e935a75812667a849f3dfef1c5940b\";s:2:\"id\";i:17;s:3:\"qty\";i:1;s:4:\"name\";s:20:\"Apple Watch Series 1\";s:5:\"price\";d:270000;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-09-21 09:59:01', NULL),
('nuharazzak@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-09-21 04:49:05', NULL),
('nuharazzak65@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"eef12573176125ce53e333e13d747a17\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"eef12573176125ce53e333e13d747a17\";s:2:\"id\";i:12;s:3:\"qty\";i:1;s:4:\"name\";s:10:\"facilis at\";s:5:\"price\";d:150;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-08-12 11:11:20', NULL),
('user@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-09-13 04:50:21', NULL),
('user@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:3:{s:32:\"620d670d95f0419e35f9182695918c68\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"620d670d95f0419e35f9182695918c68\";s:2:\"id\";i:11;s:3:\"qty\";i:1;s:4:\"name\";s:13:\"quia voluptas\";s:5:\"price\";d:468;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"c42f6beec9c93fd6afea6eb0684aa99a\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"c42f6beec9c93fd6afea6eb0684aa99a\";s:2:\"id\";i:9;s:3:\"qty\";i:1;s:4:\"name\";s:10:\"enim optio\";s:5:\"price\";d:443;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"a775bac9cff7dec2b984e023b95206aa\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"a775bac9cff7dec2b984e023b95206aa\";s:2:\"id\";i:3;s:3:\"qty\";i:1;s:4:\"name\";s:8:\"qui fuga\";s:5:\"price\";d:494;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-09-13 04:50:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 6, 'cod', 'pending', '2022-07-26 03:46:20', '2022-07-26 03:46:20'),
(3, 2, 8, 'cod', 'pending', '2022-08-08 10:55:48', '2022-08-08 10:55:48'),
(4, 2, 9, 'cod', 'pending', '2022-08-08 11:02:01', '2022-08-08 11:02:01'),
(5, 2, 11, 'cod', 'pending', '2022-08-10 09:56:00', '2022-08-10 09:56:00'),
(6, 2, 12, 'cod', 'pending', '2022-08-10 10:24:31', '2022-08-10 10:24:31'),
(7, 2, 14, 'cod', 'pending', '2022-09-08 10:06:50', '2022-09-08 10:06:50'),
(8, 2, 15, 'cod', 'pending', '2022-09-09 00:16:39', '2022-09-09 00:16:39'),
(9, 2, 17, 'cod', 'pending', '2022-09-09 00:57:01', '2022-09-09 00:57:01'),
(10, 4, 22, 'cod', 'pending', '2022-09-12 04:50:04', '2022-09-12 04:50:04'),
(11, 4, 24, 'cod', 'pending', '2022-09-12 04:53:34', '2022-09-12 04:53:34'),
(12, 2, 28, 'cod', 'pending', '2022-09-13 04:47:48', '2022-09-13 04:47:48'),
(13, 4, 29, 'cod', 'pending', '2022-09-13 04:53:28', '2022-09-13 04:53:28'),
(14, 4, 30, 'cod', 'pending', '2022-09-18 12:19:38', '2022-09-18 12:19:38'),
(15, 4, 31, 'cod', 'pending', '2022-09-18 12:21:42', '2022-09-18 12:21:42'),
(16, 4, 32, 'cod', 'pending', '2022-09-18 12:35:01', '2022-09-18 12:35:01'),
(17, 4, 33, 'cod', 'pending', '2022-09-18 12:38:37', '2022-09-18 12:38:37'),
(18, 5, 34, 'cod', 'pending', '2022-09-21 04:32:47', '2022-09-21 04:32:47'),
(19, 4, 35, 'cod', 'pending', '2022-09-21 04:46:12', '2022-09-21 04:46:12'),
(20, 4, 38, 'cod', 'pending', '2022-09-21 09:59:48', '2022-09-21 09:59:48'),
(21, 6, 39, 'cod', 'pending', '2022-09-21 10:02:22', '2022-09-21 10:02:22'),
(22, 6, 40, 'cod', 'pending', '2022-09-21 10:20:47', '2022-09-21 10:20:47'),
(23, 6, 41, 'cod', 'pending', '2022-09-21 10:30:49', '2022-09-21 10:30:49'),
(24, 7, 42, 'cod', 'pending', '2022-09-21 22:46:46', '2022-09-21 22:46:46');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for admin and USR for user or customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$AESbdcWqTo4lzvZPt7b.aesP0MExUItD4CmASSe53OuRehNqUrRQe', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-06-08 10:11:58', '2022-06-08 10:11:58'),
(2, 'user', 'user@gmail.com', NULL, '$2y$10$8hMjPovBjunF7pJS/0m28OapxApI1KzHA0Dog968s791JX0mK8Wpe', NULL, NULL, NULL, 'Z3dziBkwtIKIUFPWpo2fFkVrvDrNqKI4FqWyy4mdAxtPQXdBz0XH7ozM19sF', NULL, NULL, 'USR', '2022-06-08 10:14:26', '2022-09-10 00:17:06'),
(3, 'Nuha', 'nuharazzak65@gmail.com', NULL, '$2y$10$NytoAozYhNITNPwPha973.vU9fjBW0WuyDk57TIbli/YRX96PWbh6', NULL, NULL, NULL, '2QWU792AWTJ4J1REJjkBD3vJMU31iBxbLXue8odk4zO2tABNbuHOhE9BgfND', NULL, NULL, 'USR', '2022-08-05 09:39:13', '2022-09-20 00:43:52'),
(4, 'Nuha', 'nuharazzak@gmail.com', NULL, '$2y$10$J/ucqmLdK2VyGXrSzjcrSePSRnrMH8UeXpHz6jIviHqxDXwSBIkkS', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-09-11 10:41:58', '2022-09-11 10:41:58'),
(5, 'Rifky', 'go@gmail.com', NULL, '$2y$10$MxmsoWlb1mvBf0JB1pzyXumAFoLqCQcD03Tp./762Btf0QKmccXGu', NULL, NULL, NULL, 'iBeV4aRB3eRuZC7vW8kBAhBwrvfIuGkwpSuhWUQpbWACWnMkOpT2r1bVlIni', NULL, NULL, 'USR', '2022-09-20 00:14:46', '2022-09-20 00:46:45'),
(6, 'Nazeem', 'nazee@gmail.com', NULL, '$2y$10$DppAIFChgdobtVGnYI82l.tgX0P04FPb0IMj.XCBQ2ssnLfh.jnVa', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-09-21 10:01:36', '2022-09-21 10:18:26'),
(7, 'Fathima', 'nooka@gmail.com', NULL, '$2y$10$n50ITKNbrznQmv2Kawe0BOZd0xUt8RXN9qLrPZ3DUuFm2vFYoGFVO', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-09-21 22:45:43', '2022-09-21 22:54:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_requests`
--
ALTER TABLE `product_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `product_requests`
--
ALTER TABLE `product_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"phonezone\",\"table\":\"users\"},{\"db\":\"phonezone\",\"table\":\"product_requests\"},{\"db\":\"phonezone\",\"table\":\"order_items\"},{\"db\":\"phonezone\",\"table\":\"orders\"},{\"db\":\"phonezone\",\"table\":\"transactions\"},{\"db\":\"phonezone\",\"table\":\"shippings\"},{\"db\":\"phonezone\",\"table\":\"products\"},{\"db\":\"phonezone\",\"table\":\"brands\"},{\"db\":\"testing_database\",\"table\":\"testings\"},{\"db\":\"phonezone\",\"table\":\"home_categories\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-10-24 08:36:23', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `testing_database`
--
CREATE DATABASE IF NOT EXISTS `testing_database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `testing_database`;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_12_053826_create_testings_table', 1),
(6, '2022_09_12_095521_change_user_id_type_testings_table', 2),
(7, '2022_09_12_100145_change_user_id_type_testings_table', 3);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testings`
--

CREATE TABLE `testings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testings`
--

INSERT INTO `testings` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `created_at`, `updated_at`) VALUES
(1, 1, '12.00', '23.00', '12.00', '12.00', 'nuha', 'fghhh', '23213', '22211', '2022-09-12 03:11:59', '2022-09-12 03:11:59');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `testings`
--
ALTER TABLE `testings`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testings`
--
ALTER TABLE `testings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
