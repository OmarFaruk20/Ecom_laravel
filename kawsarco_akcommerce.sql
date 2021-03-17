-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 17, 2021 at 02:12 AM
-- Server version: 10.3.27-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kawsarco_akcommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Indian', '2', '2020-08-15 14:46:57', '2020-08-15 14:47:19'),
(2, 'Chaines', '2', '2020-08-15 14:47:01', '2020-08-15 14:47:20'),
(3, 'Thilands', '2', '2020-08-15 14:47:06', '2020-08-15 14:47:23'),
(4, 'Bangladeshi', '2', '2020-08-15 14:47:10', '2020-08-15 14:47:22'),
(5, 'U.S.A', '2', '2020-08-15 14:47:18', '2020-08-15 14:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `category_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Men', '2', '2020-08-15 14:46:06', '2020-08-15 14:46:42'),
(2, 'Bag', '2', '2020-08-15 14:46:18', '2020-08-15 14:46:43'),
(3, 'Women', '2', '2020-08-15 14:46:23', '2020-08-15 14:46:48'),
(4, 'Watches', '2', '2020-08-15 14:46:31', '2020-08-15 14:46:45'),
(5, 'Jents', '2', '2020-08-15 14:46:37', '2020-08-15 14:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Black', '2', '2020-08-15 14:47:33', '2020-08-15 14:47:52'),
(2, 'White', '2', '2020-08-15 14:47:37', '2020-08-15 14:47:53'),
(3, 'Gray', '1', '2020-08-15 14:47:40', '2020-08-15 14:47:40'),
(4, 'Green', '2', '2020-08-15 14:47:44', '2020-08-15 14:47:55'),
(5, 'Red', '1', '2020-08-15 14:47:50', '2020-08-15 14:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kawsar Ahmed', 'abulkalam360360@gmail.com', '01858979247', 'A paragraph is a series of related sentences developing a central idea, called the topic. Try to think about paragraphs in terms of thematic unity: a paragraph is a sentence or a group of sentences that supports one central, unified idea. Paragraphs add one idea at a time to your broader argument.A paragraph is a series of related sentences developing a central idea, called the topic. Try to think about paragraphs in terms of thematic unity: a paragraph is a sentence or a group of sentences that supports one central, unified idea. Paragraphs add one idea at a time to your broader argument.', '2', '2020-08-13 05:30:15', '2020-11-01 22:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(3, '2019_05_03_000001_create_customer_columns', 1),
(4, '2019_05_03_000002_create_subscriptions_table', 1),
(5, '2019_05_03_000003_create_subscription_items_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_08_05_090928_create_categorys_table', 1),
(8, '2020_08_05_122738_create_brands_table', 1),
(9, '2020_08_05_154905_create_colors_table', 1),
(10, '2020_08_05_164946_create_sizes_table', 1),
(11, '2020_08_06_020421_create_products_table', 1),
(12, '2020_08_06_025513_create_product_gallerys_table', 1),
(13, '2020_08_06_025911_create_product_colors_table', 1),
(14, '2020_08_06_025955_create_product_sizes_table', 1),
(15, '2020_08_07_130205_create_shippings_table', 1),
(16, '2020_08_07_130403_create_payments_table', 1),
(17, '2020_08_07_130453_create_orders_table', 1),
(18, '2020_08_07_130654_create_order_details_table', 1),
(19, '2020_08_09_025317_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_ammount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `shipping_id`, `user_id`, `payment_id`, `total_ammount`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '5', '1', '349.00', '0', '1', '2020-11-01 22:08:43', '2020-11-01 22:08:43'),
(2, '2', '5', '2', '45.00', '0', '1', '2020-11-01 22:16:49', '2020-11-01 22:16:49'),
(3, '4', '7', '4', '304.00', '0', '1', '2021-03-16 14:09:35', '2021-03-16 14:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `shipping_id`, `user_id`, `payment_id`, `order_id`, `product_id`, `size_id`, `color_id`, `subtotal`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '5', '1', '1', '2', '1', '2', '45', '1', '2020-11-01 22:08:43', '2020-11-01 22:08:43'),
(2, '1', '5', '1', '1', '7', '1', '1', '304', '1', '2020-11-01 22:08:43', '2020-11-01 22:08:43'),
(3, '2', '5', '2', '2', '4', '2', '1', '45', '1', '2020-11-01 22:16:49', '2020-11-01 22:16:49'),
(4, '4', '7', '4', '3', '7', '1', '2', '304', '1', '2021-03-16 14:09:35', '2021-03-16 14:09:35');

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
  `shipping_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `shipping_id`, `user_id`, `payment`, `transaction`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '5', 'Delivary', NULL, '1', '2020-11-01 22:08:43', '2020-11-01 22:08:43'),
(2, '2', '5', 'CashonDelivery', NULL, '1', '2020-11-01 22:16:49', '2020-11-01 22:16:49'),
(3, '3', '7', 'paypal', NULL, '1', '2021-03-16 14:08:22', '2021-03-16 14:08:22'),
(4, '4', '7', 'CashonDelivery', NULL, '1', '2021-03-16 14:09:35', '2021-03-16 14:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `cat_id`, `brand_id`, `product_summary`, `product_description`, `product_price`, `image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lightweight Jacket', '1', '1', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '454', '1597477861.jpg', 'Lightweight-Jacket', '2', '2020-08-15 14:51:02', '2020-08-15 14:56:59'),
(2, 'Lightweight Jacket to now', '1', '1', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '45', '1597477920.jpg', 'Lightweight-Jacket-to-now', '2', '2020-08-15 14:52:00', '2020-08-15 14:57:04'),
(3, 'Herschel supply', '3', '5', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '454', '1597477967.jpg', 'Herschel-supply', '2', '2020-08-15 14:52:48', '2020-08-15 14:57:08'),
(4, 'Esprit Ruffle Shirt', '1', '4', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '45', '1597478007.jpg', 'Esprit-Ruffle-Shirt', '2', '2020-08-15 14:53:28', '2020-08-15 14:57:12'),
(5, 'Esprit Ruffle Shirt', '4', '3', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '654', '1597478054.jpg', '1597478054.Esprit-Ruffle-Shirt', '2', '2020-08-15 14:54:14', '2020-08-15 14:57:18'),
(6, 'Herschel supply', '3', '2', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '200', '1597478097.jpg', '1597478097.Herschel-supply', '2', '2020-08-15 14:54:58', '2020-08-15 14:57:34'),
(7, 'Pieces Metallic Printed', '3', '5', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '304', '1597478137.jpg', 'Pieces-Metallic-Printed', '2', '2020-08-15 14:55:38', '2020-08-15 14:57:41'),
(8, 'Esprit Ruffle Shirt', '1', '1', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '498', '1597478198.jpg', '1597478198.Esprit-Ruffle-Shirt', '2', '2020-08-15 14:56:38', '2020-08-15 14:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '2', '2020-08-15 14:51:03', '2020-08-15 14:56:59'),
(2, '1', '2', '2', '2020-08-15 14:51:03', '2020-08-15 14:56:59'),
(3, '1', '4', '2', '2020-08-15 14:51:03', '2020-08-15 14:56:59'),
(4, '2', '1', '2', '2020-08-15 14:52:02', '2020-08-15 14:57:04'),
(5, '2', '2', '2', '2020-08-15 14:52:02', '2020-08-15 14:57:04'),
(6, '2', '4', '2', '2020-08-15 14:52:02', '2020-08-15 14:57:04'),
(7, '3', '1', '2', '2020-08-15 14:52:49', '2020-08-15 14:57:08'),
(8, '3', '2', '2', '2020-08-15 14:52:49', '2020-08-15 14:57:08'),
(9, '3', '4', '2', '2020-08-15 14:52:49', '2020-08-15 14:57:08'),
(10, '4', '1', '2', '2020-08-15 14:53:29', '2020-08-15 14:57:12'),
(11, '4', '2', '2', '2020-08-15 14:53:29', '2020-08-15 14:57:12'),
(12, '4', '4', '2', '2020-08-15 14:53:29', '2020-08-15 14:57:12'),
(13, '5', '1', '2', '2020-08-15 14:54:16', '2020-08-15 14:57:18'),
(14, '5', '2', '2', '2020-08-15 14:54:16', '2020-08-15 14:57:18'),
(15, '5', '4', '2', '2020-08-15 14:54:16', '2020-08-15 14:57:18'),
(16, '6', '1', '2', '2020-08-15 14:55:00', '2020-08-15 14:57:34'),
(17, '6', '2', '2', '2020-08-15 14:55:00', '2020-08-15 14:57:34'),
(18, '6', '4', '2', '2020-08-15 14:55:00', '2020-08-15 14:57:34'),
(19, '7', '1', '2', '2020-08-15 14:55:40', '2020-08-15 14:57:41'),
(20, '7', '2', '2', '2020-08-15 14:55:40', '2020-08-15 14:57:41'),
(21, '7', '4', '2', '2020-08-15 14:55:40', '2020-08-15 14:57:41'),
(22, '8', '1', '2', '2020-08-15 14:56:40', '2020-08-15 14:58:25'),
(23, '8', '2', '2', '2020-08-15 14:56:40', '2020-08-15 14:58:25'),
(24, '8', '4', '2', '2020-08-15 14:56:40', '2020-08-15 14:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_gallerys`
--

CREATE TABLE `product_gallerys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_gallery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_gallerys`
--

INSERT INTO `product_gallerys` (`id`, `product_id`, `product_gallery`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '5f3793e65863a.01597477862.jpg', '2', '2020-08-15 14:51:02', '2020-08-15 14:56:59'),
(2, '1', '5f3793e6d352f.11597477862.jpg', '2', '2020-08-15 14:51:03', '2020-08-15 14:56:59'),
(3, '1', '5f3793e7442e4.21597477863.jpg', '2', '2020-08-15 14:51:03', '2020-08-15 14:56:59'),
(4, '2', '5f3794209086c.01597477920.jpg', '2', '2020-08-15 14:52:01', '2020-08-15 14:57:04'),
(5, '2', '5f379421208dc.11597477921.jpg', '2', '2020-08-15 14:52:01', '2020-08-15 14:57:04'),
(6, '2', '5f3794219f998.21597477921.jpg', '2', '2020-08-15 14:52:02', '2020-08-15 14:57:04'),
(7, '3', '5f3794503fb3d.01597477968.jpg', '2', '2020-08-15 14:52:48', '2020-08-15 14:57:08'),
(8, '3', '5f379450c7d03.11597477968.jpg', '2', '2020-08-15 14:52:49', '2020-08-15 14:57:08'),
(9, '3', '5f3794515c190.21597477969.jpg', '2', '2020-08-15 14:52:49', '2020-08-15 14:57:08'),
(10, '4', '5f3794783e44f.01597478008.jpg', '2', '2020-08-15 14:53:28', '2020-08-15 14:57:12'),
(11, '4', '5f379478b2405.11597478008.jpg', '2', '2020-08-15 14:53:29', '2020-08-15 14:57:12'),
(12, '4', '5f379479316b7.21597478009.jpg', '2', '2020-08-15 14:53:29', '2020-08-15 14:57:12'),
(13, '5', '5f3794a6be567.01597478054.jpg', '2', '2020-08-15 14:54:15', '2020-08-15 14:57:18'),
(14, '5', '5f3794a70f63d.11597478055.jpg', '2', '2020-08-15 14:54:15', '2020-08-15 14:57:18'),
(15, '5', '5f3794a7a1748.21597478055.jpg', '2', '2020-08-15 14:54:16', '2020-08-15 14:57:18'),
(16, '6', '5f3794d23841d.01597478098.jpg', '2', '2020-08-15 14:54:58', '2020-08-15 14:57:34'),
(17, '6', '5f3794d2cf3c7.11597478098.jpg', '2', '2020-08-15 14:54:59', '2020-08-15 14:57:34'),
(18, '6', '5f3794d36f7d5.21597478099.jpg', '2', '2020-08-15 14:55:00', '2020-08-15 14:57:34'),
(19, '7', '5f3794fa5841c.01597478138.jpg', '2', '2020-08-15 14:55:38', '2020-08-15 14:57:41'),
(20, '7', '5f3794faeb1ea.11597478138.jpg', '2', '2020-08-15 14:55:39', '2020-08-15 14:57:41'),
(21, '7', '5f3794fb8b696.21597478139.jpg', '2', '2020-08-15 14:55:40', '2020-08-15 14:57:41'),
(22, '8', '5f379536c74c3.01597478198.jpg', '2', '2020-08-15 14:56:39', '2020-08-15 14:58:25'),
(23, '8', '5f3795376b9b3.11597478199.jpg', '2', '2020-08-15 14:56:40', '2020-08-15 14:58:25'),
(24, '8', '5f37953815e6c.21597478200.jpg', '2', '2020-08-15 14:56:40', '2020-08-15 14:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '2', '2020-08-15 14:51:03', '2020-08-15 14:56:59'),
(2, '1', '2', '2', '2020-08-15 14:51:03', '2020-08-15 14:56:59'),
(3, '1', '3', '2', '2020-08-15 14:51:03', '2020-08-15 14:56:59'),
(4, '2', '1', '2', '2020-08-15 14:52:02', '2020-08-15 14:57:04'),
(5, '2', '2', '2', '2020-08-15 14:52:02', '2020-08-15 14:57:04'),
(6, '2', '3', '2', '2020-08-15 14:52:02', '2020-08-15 14:57:04'),
(7, '3', '1', '2', '2020-08-15 14:52:49', '2020-08-15 14:57:08'),
(8, '3', '2', '2', '2020-08-15 14:52:49', '2020-08-15 14:57:08'),
(9, '3', '3', '2', '2020-08-15 14:52:49', '2020-08-15 14:57:08'),
(10, '4', '1', '2', '2020-08-15 14:53:29', '2020-08-15 14:57:12'),
(11, '4', '2', '2', '2020-08-15 14:53:29', '2020-08-15 14:57:12'),
(12, '4', '3', '2', '2020-08-15 14:53:29', '2020-08-15 14:57:12'),
(13, '5', '1', '2', '2020-08-15 14:54:16', '2020-08-15 14:57:18'),
(14, '5', '2', '2', '2020-08-15 14:54:16', '2020-08-15 14:57:18'),
(15, '5', '3', '2', '2020-08-15 14:54:16', '2020-08-15 14:57:18'),
(16, '6', '1', '2', '2020-08-15 14:55:00', '2020-08-15 14:57:34'),
(17, '6', '2', '2', '2020-08-15 14:55:00', '2020-08-15 14:57:34'),
(18, '6', '3', '2', '2020-08-15 14:55:00', '2020-08-15 14:57:34'),
(19, '7', '1', '2', '2020-08-15 14:55:40', '2020-08-15 14:57:41'),
(20, '7', '2', '2', '2020-08-15 14:55:40', '2020-08-15 14:57:41'),
(21, '7', '3', '2', '2020-08-15 14:55:40', '2020-08-15 14:57:41'),
(22, '8', '1', '2', '2020-08-15 14:56:40', '2020-08-15 14:58:25'),
(23, '8', '2', '2', '2020-08-15 14:56:40', '2020-08-15 14:58:25'),
(24, '8', '3', '2', '2020-08-15 14:56:40', '2020-08-15 14:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `fname`, `lname`, `email`, `mobile`, `city`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, '5', 'hamid', 'hamid', 'a.b123kwsar@gmail.com', '01858969247', 'Chhagalnaiya', 'police quarter,Feni', '1', '2020-11-01 22:08:43', '2020-11-01 22:08:43'),
(2, '5', 'hamid', 'alam', 'a.b123kwsar@gmail.com', '01858969247', 'Chhagalnaiya', 'police quarter,Feni', '1', '2020-11-01 22:16:49', '2020-11-01 22:16:49'),
(3, '7', 'MD', 'Faruk', 'Faruk952219@gmail.com', '01837229519', 'Feni.', 'Kadal Gazi Road,Feni', '1', '2021-03-16 14:08:22', '2021-03-16 14:08:22'),
(4, '7', 'MD', 'Faruk', 'Faruk952219@gmail.com', '01837229519', 'Feni.', 'Kadal Gazi Road,Feni', '1', '2021-03-16 14:09:35', '2021-03-16 14:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'M', '2', '2020-08-15 14:48:10', '2020-08-15 14:48:48'),
(2, 'ML', '2', '2020-08-15 14:48:15', '2020-08-15 14:48:49'),
(3, 'X', '2', '2020-08-15 14:48:25', '2020-08-15 14:48:51'),
(4, 'XL', '2', '2020-08-15 14:48:29', '2020-08-15 14:48:53');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '1=customer,2=admin,3=user',
  `varify_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '1=panding,2=approve,',
  `github_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `address`, `email_verified_at`, `password`, `image`, `status`, `varify_email`, `github_id`, `github_name`, `code`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`) VALUES
(1, 'Kawsar Ahmed', 'a.b123kwsar@gmail.com', '01858969247', 'feni town', NULL, '$2y$10$Ar27OAO6i2pNo2BQBnJeFO9zFv/HsLuHVHtZH9XzcJtUAlY5wyy0S', '1597271295.jpg', '2', '2', NULL, NULL, '3755', NULL, '2020-08-13 05:22:33', '2020-08-13 05:28:16', NULL, NULL, NULL, NULL),
(5, 'Alam alam', 'abulkalam360360@gmail.com', NULL, NULL, NULL, '$2y$10$w.lGaOYcmEFsQ0wt32IIc.w2mudLMGXybrnVMqVrlrW/Xkor4R4Fy', NULL, '1', '2', NULL, NULL, '231', NULL, '2020-11-01 21:59:16', '2020-11-01 22:00:05', NULL, NULL, NULL, NULL),
(7, 'Mohammad Omar Faruk', 'Faruk952219@gmail.com', NULL, NULL, NULL, '$2y$10$2XIyE/eokIuDJ0Bmmh4G5OCydHs9S.lzYp3hBVQHixuA0RjewLYNq', NULL, '1', '2', NULL, NULL, '5458', NULL, '2021-03-16 14:07:54', '2021-03-16 14:08:12', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_gallerys`
--
ALTER TABLE `product_gallerys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_gallerys`
--
ALTER TABLE `product_gallerys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
