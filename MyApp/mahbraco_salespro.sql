-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 05:37 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahbraco_salespro`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, '11111', 'Sales Account', 1000, 1000, 'this is first account', 1, 1, '2018-12-18 02:58:02', '2021-05-26 14:53:25', NULL, NULL),
(3, '21211', 'Sa', NULL, 0, NULL, 0, 1, '2018-12-18 02:58:56', '2021-05-26 14:53:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `date`, `employee_id`, `user_id`, `checkin`, `checkout`, `status`, `note`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, '2019-01-02', 1, 1, '10:00am', '6:30pm', 1, NULL, '2019-01-02 03:30:50', '2019-01-02 03:30:50', NULL, NULL),
(3, '2019-01-02', 3, 1, '10:15am', '6:30pm', 0, NULL, '2019-01-02 03:57:12', '2019-01-02 03:57:12', NULL, NULL),
(6, '2020-02-03', 1, 1, '11:30am', '6:00pm', 0, NULL, '2020-02-03 09:57:30', '2020-02-03 09:57:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE `billers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'yousuf', 'aks.jpg', 'aks', '31123', 'yousuf@kds.com', '442343324', 'halishahar', 'khartoum', NULL, NULL, 'sdgs', 1, '2018-05-12 21:49:30', '2019-03-02 05:20:38', NULL, NULL),
(2, 'tariq', NULL, 'big tree', NULL, 'tariq@bigtree.com', '321312', 'khartoum', 'khartoum', NULL, NULL, NULL, 1, '2018-05-12 21:57:54', '2018-06-15 00:07:11', NULL, NULL),
(3, 'test', NULL, 'test', NULL, 'test@test.com', '3211', 'erewrwqre', 'afsf', NULL, NULL, NULL, 0, '2018-05-30 02:38:58', '2018-05-30 02:39:57', NULL, NULL),
(5, 'modon', 'mogaTel.jpg', 'mogaTel', '', 'modon@gmail.com', '32321', 'nasirabad', 'khartoum', '', '', 'bd', 1, '2018-09-01 03:59:54', '2018-10-07 02:35:51', NULL, NULL),
(6, 'a', NULL, 'a', NULL, 'a@a.com', 'q', 'q', 'q', NULL, NULL, NULL, 0, '2018-10-07 02:33:39', '2018-10-07 02:34:18', NULL, NULL),
(7, 'a', NULL, 'a', NULL, 'a@a.com', 'a', 'a', 'a', NULL, NULL, NULL, 0, '2018-10-07 02:34:36', '2018-10-07 02:36:07', NULL, NULL),
(8, 'x', 'x.png', 'x', NULL, 'x@x.com', 'x', 'x', 'x', NULL, NULL, NULL, 1, '2019-03-18 11:02:42', '2019-12-21 11:01:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(3, 'HP', '20221115040324.jpg', 1, '2018-05-12 09:06:14', '2022-11-15 12:03:24', NULL, NULL),
(4, 'samsung', '20221115040425.png', 1, '2018-05-12 09:08:41', '2022-11-15 12:04:25', NULL, NULL),
(5, 'Apple', '20221115040735.jpg', 1, '2018-08-31 23:34:49', '2022-11-15 12:07:35', NULL, NULL),
(6, 'jjjj', '20201019093419.jpg', 0, '2020-10-19 15:33:52', '2020-10-19 15:35:58', NULL, NULL),
(7, 'Lotto', NULL, 1, '2020-11-16 04:13:41', '2020-11-16 04:13:41', NULL, NULL),
(8, 'هواوي', '20221115040648.jpg', 1, '2022-11-15 12:06:48', '2022-11-15 12:06:48', NULL, NULL),
(9, 'itel', '20221115042150.jpg', 1, '2022-11-15 12:21:50', '2022-11-15 12:21:50', NULL, NULL),
(10, 'تكنو', '20221115022617.jpg', 1, '2022-11-15 22:26:17', '2022-11-15 22:26:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cash_registers`
--

CREATE TABLE `cash_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_registers`
--

INSERT INTO `cash_registers` (`id`, `cash_in_hand`, `user_id`, `warehouse_id`, `status`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 100, 9, 1, 0, '2020-10-13 07:32:54', '2020-10-24 00:27:42', NULL, NULL),
(2, 50, 9, 1, 1, '2020-10-13 15:25:26', '2020-10-13 15:25:26', NULL, NULL),
(3, 200, 1, 1, 1, '2020-10-22 07:53:07', '2020-10-24 00:33:32', NULL, NULL),
(4, 100, 1, 2, 1, '2020-10-24 01:04:39', '2020-10-24 01:04:39', NULL, NULL),
(5, 0, 1, 1, 1, '2022-11-15 22:00:02', '2022-11-15 22:00:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'Fruits', NULL, 9, 0, '2018-05-12 03:27:25', '2022-11-15 12:10:39', NULL, NULL),
(2, 'electronics', '20221115041029.jpg', NULL, 1, '2018-05-12 03:35:57', '2022-11-15 12:10:29', NULL, NULL),
(3, 'ملحقات كمبيوتر', '20221115040913.png', 2, 1, '2018-05-12 03:36:08', '2022-11-15 12:09:13', NULL, NULL),
(4, 'هواتف', '20221115040004.jpg', NULL, 1, '2018-05-23 22:57:48', '2022-11-15 12:00:04', NULL, NULL),
(7, 'jacket', NULL, NULL, 0, '2018-05-27 22:39:51', '2018-05-27 22:40:48', NULL, NULL),
(9, 'food', NULL, NULL, 0, '2018-06-25 01:21:40', '2022-11-15 12:10:50', NULL, NULL),
(10, 'anda', NULL, NULL, 0, '2018-08-28 23:36:31', '2018-08-28 23:37:34', NULL, NULL),
(11, 'anda', NULL, NULL, 0, '2018-08-28 23:48:06', '2018-08-28 23:53:22', NULL, NULL),
(12, 'أكسسوارات', '20221115035821.jpg', 4, 1, '2018-12-04 23:28:53', '2022-11-15 12:00:42', NULL, NULL),
(14, 'nn', NULL, NULL, 0, '2019-04-10 04:22:30', '2019-04-10 05:38:47', NULL, NULL),
(15, 'nm', NULL, NULL, 0, '2019-04-10 04:22:36', '2019-04-10 05:41:43', NULL, NULL),
(16, 'desktop', NULL, 3, 0, '2020-03-11 10:42:33', '2022-11-15 12:09:41', NULL, NULL),
(17, 'tostos', '20200701080042.png', NULL, 0, '2020-07-01 14:00:42', '2020-07-01 15:35:34', NULL, NULL),
(18, 'ابورزابورزابورزابورزابورزابورز', NULL, NULL, 0, '2021-08-25 16:30:32', '2022-11-15 11:58:34', 1, NULL),
(19, 'test for client', '20210907064502.jpg', NULL, 0, '2021-09-07 15:45:02', '2022-11-15 12:00:27', 8, NULL),
(20, 'test from client 2', '20210907064559.jpg', NULL, 0, '2021-09-07 15:45:59', '2022-11-15 12:00:16', 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `amount`, `minimum_amount`, `quantity`, `used`, `expired_date`, `user_id`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'sonar bangla', 'percentage', 20, 0, 100, 4, '2020-11-19', 1, 1, '2018-10-25 22:38:50', '2020-11-18 00:52:39', NULL, NULL),
(2, 'i love sudan', 'fixed', 200, 1000, 50, 1, '2018-12-31', 1, 1, '2018-10-27 02:59:26', '2019-03-02 05:46:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `exchange_rate`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'US Dollar', 'USD', 1, '2020-11-01 00:22:58', '2020-11-01 00:34:55', NULL, NULL),
(2, 'Euro', 'Euro', 1.2, '2020-11-01 01:29:12', '2022-11-15 12:26:36', NULL, NULL),
(3, 'جنية سوداني', 'SDG', 570, '2022-11-15 10:34:49', '2022-11-15 10:34:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_group_id`, `user_id`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `deposit`, `expense`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 1, 22, 'Arbab', 'SmartTeam', 'dhiman@gmail.com', '+249111111101', NULL, 'kajir deuri', 'khartoum', NULL, NULL, 'bd', 190, 20, 1, '2018-05-12 10:00:48', '2020-11-15 06:14:58', NULL, NULL),
(2, 2, NULL, 'Ali', 'SmartTeam', NULL, '+249200000001', NULL, 'khartoum', 'khartoum', NULL, NULL, 'bd', 100, 20, 1, '2018-05-12 10:04:51', '2019-02-22 05:38:08', NULL, NULL),
(3, 3, NULL, 'tariq', 'big tree', NULL, '3424', NULL, 'khulshi', 'khartoum', NULL, NULL, 'bd', NULL, NULL, 1, '2018-05-12 10:07:52', '2019-03-02 05:54:07', NULL, NULL),
(4, 1, NULL, 'test', NULL, NULL, '4234', NULL, 'frwerw', 'qwerwqr', NULL, NULL, NULL, NULL, NULL, 0, '2018-05-30 01:35:28', '2018-05-30 01:37:38', NULL, NULL),
(8, 1, NULL, 'anwar', 'smart it', 'anwar@smartit.com', '32321', NULL, 'khartoum', 'khartoum', NULL, NULL, 'bd', NULL, NULL, 0, '2018-09-01 03:26:13', '2018-09-01 03:29:55', NULL, NULL),
(11, 1, NULL, 'walk-in-customer', NULL, 'ashfaqdev.php@gmail.com', '01923000001', '11111', 'mohammadpur', 'dhaka', NULL, NULL, NULL, NULL, 12600, 1, '2018-09-02 01:30:54', '2021-07-05 14:09:10', NULL, NULL),
(15, 1, NULL, 's', NULL, NULL, '2', NULL, 's', '3e', NULL, NULL, NULL, NULL, NULL, 0, '2018-11-05 04:00:39', '2018-11-08 03:37:08', NULL, NULL),
(16, 1, NULL, 'asas', NULL, NULL, '2121', NULL, 'dasd', 'asdd', NULL, NULL, NULL, NULL, NULL, 0, '2018-12-01 00:07:53', '2018-12-03 21:55:46', NULL, NULL),
(17, 1, NULL, 'sadman', NULL, NULL, '312312', NULL, 'khulshi', 'ctg', NULL, NULL, NULL, NULL, NULL, 0, '2020-06-22 09:45:35', '2020-06-22 09:45:51', NULL, NULL),
(19, 1, 19, 'shakalaka', 'Digital image', 'shakalaka@gmail.com', '1212', '999', 'Omdorman', 'khartoum', 'khartoum', '1234', 'sudan', NULL, NULL, 1, '2020-11-09 00:07:16', '2020-11-09 00:07:16', NULL, NULL),
(21, 1, 21, 'Modon Miya', 'modon company', 'modon@gmail.com', '2222', NULL, 'kuril road', 'Dhaka', NULL, NULL, NULL, NULL, NULL, 1, '2020-11-13 07:12:11', '2020-11-13 07:12:11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'general', '0', 1, '2018-05-12 08:09:36', '2019-03-02 06:01:35', NULL, NULL),
(2, 'distributor', '-10', 1, '2018-05-12 08:12:14', '2019-03-02 06:02:12', NULL, NULL),
(3, 'reseller', '5', 1, '2018-05-12 08:12:26', '2018-05-30 01:18:14', NULL, NULL),
(4, 'test', '12', 0, '2018-05-30 01:17:16', '2018-05-30 01:17:57', NULL, NULL),
(5, 'test', '0', 0, '2018-08-03 09:10:27', '2018-08-03 09:10:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `reference_no`, `sale_id`, `user_id`, `address`, `delivered_by`, `recieved_by`, `file`, `note`, `status`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'dr-20180808-044431', 1, 1, 'kajir deuri khartoum bd', 'abul', 'dhiman', NULL, 'Instrument 1', '3', '2018-08-08 10:44:55', '2020-09-26 12:25:39', NULL, NULL),
(2, 'dr-20181106-105936', 88, 1, 'mohammadpur dhaka', NULL, NULL, NULL, NULL, '2', '2018-11-06 04:59:43', '2018-11-06 05:10:38', NULL, NULL),
(3, 'dr-20181106-111321', 79, 1, 'mohammadpur dhaka', 'Harun', 'Amjad', NULL, NULL, '3', '2018-11-06 05:13:25', '2020-09-26 13:22:11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'Sale', 1, '2018-12-27 05:16:47', '2018-12-27 10:40:23', NULL, NULL),
(2, 'xyz', 1, '2018-12-27 10:28:47', '2018-12-27 10:28:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `amount`, `customer_id`, `user_id`, `note`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 90, 1, 1, 'first deposit', '2018-08-25 22:48:23', '2018-08-26 01:18:55', NULL, NULL),
(3, 100, 2, 1, NULL, '2018-08-26 00:53:16', '2018-08-26 21:42:39', NULL, NULL),
(4, 50, 1, 1, NULL, '2018-09-04 22:56:19', '2018-09-04 22:56:19', NULL, NULL),
(5, 50, 1, 1, NULL, '2018-09-10 00:08:40', '2018-09-10 00:08:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone_number`, `department_id`, `user_id`, `image`, `address`, `city`, `country`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'john', 'john@gmail.com', '10001', 2, 12, 'johngmailcom.jpg', 'GEC', 'Khartoum', 'sudan', 1, '2018-12-30 00:48:37', '2019-03-02 06:50:23', NULL, NULL),
(3, 'tests', 'test@test.com', '111', 1, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-30 22:20:51', '2019-01-03 00:03:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `reference_no`, `expense_category_id`, `warehouse_id`, `account_id`, `user_id`, `cash_register_id`, `amount`, `note`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(2, 'er-20180817-012254', 1, 2, 1, 1, NULL, 150, 'first expense...', '2018-08-17 07:22:54', '2018-08-17 07:44:13', NULL, NULL),
(3, 'er-20180817-014241', 1, 1, 1, 1, NULL, 125, 'second expense...', '2018-08-17 07:42:41', '2018-08-17 07:43:50', NULL, NULL),
(4, 'er-20181022-043609', 2, 1, 1, 1, NULL, 1000, NULL, '2018-10-22 10:36:09', '2018-10-22 10:36:09', NULL, NULL),
(5, 'er-20181101-050207', 2, 2, 1, 1, NULL, 1000, NULL, '2018-10-31 23:02:07', '2018-10-31 23:02:07', NULL, NULL),
(6, 'er-20181101-050231', 2, 1, 1, 1, NULL, 550, NULL, '2018-10-31 23:02:31', '2018-10-31 23:02:31', NULL, NULL),
(7, 'er-20181105-091913', 1, 1, 1, 1, NULL, 2000, NULL, '2018-11-05 03:19:13', '2018-11-05 03:19:13', NULL, NULL),
(8, 'er-20181105-091929', 2, 2, 1, 1, NULL, 1000, NULL, '2018-11-05 03:19:29', '2018-11-05 03:19:29', NULL, NULL),
(9, 'er-20190101-063342', 2, 1, 1, 1, NULL, 100, NULL, '2019-01-01 00:33:42', '2019-01-01 00:33:42', NULL, NULL),
(10, 'er-20190103-070018', 2, 2, 1, 9, NULL, 2000, NULL, '2019-01-03 01:00:18', '2019-01-03 01:00:18', NULL, NULL),
(11, 'er-20190209-104656', 2, 2, 1, 1, NULL, 500, NULL, '2019-02-09 04:46:56', '2019-02-09 04:46:56', NULL, NULL),
(12, 'er-20190209-104716', 2, 1, 1, 1, NULL, 400, NULL, '2019-02-09 04:47:16', '2019-02-09 04:47:16', NULL, NULL),
(14, 'er-20190303-104142', 2, 2, 1, 1, NULL, 250, 'jjj', '2019-03-03 04:41:42', '2019-03-20 09:17:16', NULL, NULL),
(15, 'er-20190404-095645', 2, 1, 1, 1, NULL, 200, NULL, '2019-04-04 03:56:45', '2019-04-04 03:56:45', NULL, NULL),
(16, 'er-20190528-103306', 2, 1, 1, 1, NULL, 560, NULL, '2019-05-28 04:33:06', '2019-05-28 04:33:06', NULL, NULL),
(17, 'er-20190528-103325', 2, 2, 1, 1, NULL, 600, NULL, '2019-05-28 04:33:25', '2019-05-28 04:33:25', NULL, NULL),
(19, 'er-20190613-101955', 2, 2, 1, 1, NULL, 800, NULL, '2019-06-13 04:19:55', '2019-06-13 04:19:55', NULL, NULL),
(20, 'er-20191019-033149', 2, 1, 1, 1, NULL, 300, NULL, '2019-10-19 09:31:49', '2019-10-19 09:31:49', NULL, NULL),
(21, 'er-20191222-023508', 2, 1, 1, 1, NULL, 550, NULL, '2019-12-22 08:35:08', '2019-12-22 08:35:08', NULL, NULL),
(22, 'er-20200101-022304', 2, 2, 1, 1, NULL, 500, NULL, '2020-01-01 08:23:04', '2020-01-01 08:23:04', NULL, NULL),
(23, 'er-20200204-105938', 1, 1, 1, 1, NULL, 400, NULL, '2020-02-04 16:59:38', '2020-02-04 16:59:38', NULL, NULL),
(24, 'er-20200204-105957', 1, 2, 1, 1, NULL, 350, NULL, '2020-02-04 16:59:57', '2020-02-04 16:59:57', NULL, NULL),
(25, 'er-20200406-075239', 2, 2, 1, 1, NULL, 750, NULL, '2020-04-06 13:52:39', '2020-04-06 13:52:39', NULL, NULL),
(26, 'er-20200506-110112', 2, 2, 1, 1, NULL, 1260, NULL, '2020-05-06 17:01:12', '2020-05-06 17:01:12', NULL, NULL),
(27, 'er-20200609-124344', 2, 1, 1, 1, NULL, 500, NULL, '2020-06-09 06:43:44', '2020-06-09 06:43:44', NULL, NULL),
(28, 'er-20200609-124406', 2, 2, 1, 1, NULL, 1000, NULL, '2020-06-09 06:44:06', '2020-06-09 06:44:06', NULL, NULL),
(29, 'er-20200703-064005', 2, 2, 1, 1, NULL, 630, NULL, '2020-07-03 12:40:05', '2020-07-03 12:40:05', NULL, NULL),
(30, 'er-20200812-062947', 1, 2, 1, 1, NULL, 320, NULL, '2020-08-12 12:29:47', '2020-08-12 12:29:47', NULL, NULL),
(31, 'er-20200812-063010', 2, 2, 1, 1, NULL, 730, NULL, '2020-08-12 12:30:10', '2020-08-12 12:30:10', NULL, NULL),
(32, 'er-20201018-124438', 2, 1, 1, 9, 2, 100, NULL, '2020-10-18 06:44:38', '2020-10-18 06:44:38', NULL, NULL),
(33, 'er-20201101-072257', 1, 2, 1, 1, 4, 50, NULL, '2020-11-01 01:22:57', '2020-11-01 01:22:57', NULL, NULL),
(34, 'er-20201118-062500', 4, 1, 1, 1, 3, 200, NULL, '2020-11-18 00:25:00', '2020-11-18 00:25:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `code`, `name`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, '16718342', 'washing', 1, '2018-08-16 00:32:48', '2019-03-02 07:02:07', NULL, NULL),
(2, '60128975', 'electric bill', 1, '2018-08-16 00:39:18', '2018-08-16 00:39:18', NULL, NULL),
(3, '83954970', 'test', 0, '2018-08-16 00:50:28', '2018-08-16 00:51:40', NULL, NULL),
(4, '1234', 'snacks', 1, '2018-09-01 02:40:04', '2018-09-01 02:40:04', NULL, NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `currency`, `staff_access`, `date_format`, `developed_by`, `invoice_format`, `state`, `theme`, `created_at`, `updated_at`, `currency_position`, `organization_id`, `branch_id`) VALUES
(1, 'مركز نصر الدين  للهواتف وملحقاته', '1.PNG', '3', 'all', 'd-m-Y', 'محمد كمال وأواب ابراهيم', 'standard', 1, 'default.css', '2018-07-06 06:13:11', '2022-11-15 11:54:53', 'prefix', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_cards`
--

INSERT INTO `gift_cards` (`id`, `card_no`, `amount`, `expense`, `customer_id`, `user_id`, `expired_date`, `created_by`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, '3571097513020486', 1400, 2134, 11, NULL, '2021-07-10', 1, 1, '2018-08-18 01:57:40', '2021-06-19 07:24:28', NULL, NULL),
(2, '3195674330122581', 370, 100, NULL, 1, '2021-07-10', 1, 1, '2018-08-18 02:46:43', '2021-06-19 07:23:23', NULL, NULL),
(3, '123', 13123, 0, 1, NULL, '2018-08-19', 1, 0, '2018-08-18 22:38:21', '2018-08-18 22:38:28', NULL, NULL),
(4, '1862381252690499', 100, 0, NULL, 1, '2018-10-04', 1, 0, '2018-09-30 00:16:28', '2018-09-30 00:17:21', NULL, NULL),
(5, '2300813717254199', 143, 0, NULL, 1, '2018-10-04', 1, 0, '2018-09-30 00:18:49', '2018-09-30 00:20:20', NULL, NULL),
(6, '8327019475026421', 1, 0, 1, NULL, '2018-10-07', 1, 0, '2018-10-07 03:12:41', '2018-10-07 03:12:55', NULL, NULL),
(7, '2063379780590151', 1, 0, 1, NULL, '2018-10-23', 1, 0, '2018-10-23 00:23:22', '2018-10-23 00:23:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_recharges`
--

CREATE TABLE `gift_card_recharges` (
  `id` int(10) UNSIGNED NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_card_recharges`
--

INSERT INTO `gift_card_recharges` (`id`, `gift_card_id`, `amount`, `user_id`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 2, 100, 1, '2018-08-24 23:08:29', '2018-08-24 23:08:29', NULL, NULL),
(2, 1, 200, 1, '2018-08-24 23:08:50', '2018-08-24 23:08:50', NULL, NULL),
(3, 1, 100, 1, '2018-09-04 23:50:41', '2018-09-04 23:50:41', NULL, NULL),
(4, 1, 50, 1, '2018-09-04 23:51:38', '2018-09-04 23:51:38', NULL, NULL),
(5, 1, 50, 1, '2018-09-04 23:53:36', '2018-09-04 23:53:36', NULL, NULL),
(6, 2, 50, 1, '2018-09-04 23:54:34', '2018-09-04 23:54:34', NULL, NULL),
(7, 5, 10, 1, '2018-09-30 00:19:48', '2018-09-30 00:19:48', NULL, NULL),
(8, 5, 10, 1, '2018-09-30 00:20:04', '2018-09-30 00:20:04', NULL, NULL),
(9, 2, 100, 1, '2018-10-07 03:13:05', '2018-10-07 03:13:05', NULL, NULL),
(10, 1, 200, 1, '2018-10-07 03:13:39', '2018-10-07 03:13:39', NULL, NULL),
(11, 1, 300, 1, '2018-10-23 00:22:49', '2018-10-23 00:22:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_settings`
--

CREATE TABLE `hrm_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_settings`
--

INSERT INTO `hrm_settings` (`id`, `checkin`, `checkout`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, '10:00am', '6:00pm', '2019-01-02 02:20:08', '2019-01-02 04:20:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'en', '2018-07-07 22:59:17', '2019-12-24 17:34:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`, `organization_id`, `branch_id`) VALUES
(1, '2014_10_12_000000_create_users_table', 1, NULL, NULL),
(2, '2014_10_12_100000_create_password_resets_table', 1, NULL, NULL),
(3, '2018_02_17_060412_create_categories_table', 1, NULL, NULL),
(4, '2018_02_20_035727_create_brands_table', 1, NULL, NULL),
(5, '2018_02_25_100635_create_suppliers_table', 1, NULL, NULL),
(6, '2018_02_27_101619_create_warehouse_table', 1, NULL, NULL),
(7, '2018_03_03_040448_create_units_table', 1, NULL, NULL),
(8, '2018_03_04_041317_create_taxes_table', 1, NULL, NULL),
(9, '2018_03_10_061915_create_customer_groups_table', 1, NULL, NULL),
(10, '2018_03_10_090534_create_customers_table', 1, NULL, NULL),
(11, '2018_03_11_095547_create_billers_table', 1, NULL, NULL),
(12, '2018_04_05_054401_create_products_table', 1, NULL, NULL),
(13, '2018_04_06_133606_create_purchases_table', 1, NULL, NULL),
(14, '2018_04_06_154600_create_product_purchases_table', 1, NULL, NULL),
(15, '2018_04_06_154915_create_product_warhouse_table', 1, NULL, NULL),
(16, '2018_04_10_085927_create_sales_table', 1, NULL, NULL),
(17, '2018_04_10_090133_create_product_sales_table', 1, NULL, NULL),
(18, '2018_04_10_090254_create_payments_table', 1, NULL, NULL),
(19, '2018_04_10_090341_create_payment_with_cheque_table', 1, NULL, NULL),
(20, '2018_04_10_090509_create_payment_with_credit_card_table', 1, NULL, NULL),
(21, '2018_04_13_121436_create_quotation_table', 1, NULL, NULL),
(22, '2018_04_13_122324_create_product_quotation_table', 1, NULL, NULL),
(23, '2018_04_14_121802_create_transfers_table', 1, NULL, NULL),
(24, '2018_04_14_121913_create_product_transfer_table', 1, NULL, NULL),
(25, '2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table', 2, NULL, NULL),
(26, '2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table', 3, NULL, NULL),
(27, '2018_05_20_054532_create_adjustments_table', 4, NULL, NULL),
(28, '2018_05_20_054859_create_product_adjustments_table', 4, NULL, NULL),
(29, '2018_05_21_163419_create_returns_table', 5, NULL, NULL),
(30, '2018_05_21_163443_create_product_returns_table', 5, NULL, NULL),
(31, '2018_06_02_050905_create_roles_table', 6, NULL, NULL),
(32, '2018_06_02_073430_add_columns_to_users_table', 7, NULL, NULL),
(33, '2018_06_03_053738_create_permission_tables', 8, NULL, NULL),
(36, '2018_06_21_063736_create_pos_setting_table', 9, NULL, NULL),
(37, '2018_06_21_094155_add_user_id_to_sales_table', 10, NULL, NULL),
(38, '2018_06_21_101529_add_user_id_to_purchases_table', 11, NULL, NULL),
(39, '2018_06_21_103512_add_user_id_to_transfers_table', 12, NULL, NULL),
(40, '2018_06_23_061058_add_user_id_to_quotations_table', 13, NULL, NULL),
(41, '2018_06_23_082427_add_is_deleted_to_users_table', 14, NULL, NULL),
(42, '2018_06_25_043308_change_email_to_users_table', 15, NULL, NULL),
(43, '2018_07_06_115449_create_general_settings_table', 16, NULL, NULL),
(44, '2018_07_08_043944_create_languages_table', 17, NULL, NULL),
(45, '2018_07_11_102144_add_user_id_to_returns_table', 18, NULL, NULL),
(46, '2018_07_11_102334_add_user_id_to_payments_table', 18, NULL, NULL),
(47, '2018_07_22_130541_add_digital_to_products_table', 19, NULL, NULL),
(49, '2018_07_24_154250_create_deliveries_table', 20, NULL, NULL),
(50, '2018_08_16_053336_create_expense_categories_table', 21, NULL, NULL),
(51, '2018_08_17_115415_create_expenses_table', 22, NULL, NULL),
(55, '2018_08_18_050418_create_gift_cards_table', 23, NULL, NULL),
(56, '2018_08_19_063119_create_payment_with_gift_card_table', 24, NULL, NULL),
(57, '2018_08_25_042333_create_gift_card_recharges_table', 25, NULL, NULL),
(58, '2018_08_25_101354_add_deposit_expense_to_customers_table', 26, NULL, NULL),
(59, '2018_08_26_043801_create_deposits_table', 27, NULL, NULL),
(60, '2018_09_02_044042_add_keybord_active_to_pos_setting_table', 28, NULL, NULL),
(61, '2018_09_09_092713_create_payment_with_paypal_table', 29, NULL, NULL),
(62, '2018_09_10_051254_add_currency_to_general_settings_table', 30, NULL, NULL),
(63, '2018_10_22_084118_add_biller_and_store_id_to_users_table', 31, NULL, NULL),
(65, '2018_10_26_034927_create_coupons_table', 32, NULL, NULL),
(66, '2018_10_27_090857_add_coupon_to_sales_table', 33, NULL, NULL),
(67, '2018_11_07_070155_add_currency_position_to_general_settings_table', 34, NULL, NULL),
(68, '2018_11_19_094650_add_combo_to_products_table', 35, NULL, NULL),
(69, '2018_12_09_043712_create_accounts_table', 36, NULL, NULL),
(70, '2018_12_17_112253_add_is_default_to_accounts_table', 37, NULL, NULL),
(71, '2018_12_19_103941_add_account_id_to_payments_table', 38, NULL, NULL),
(72, '2018_12_20_065900_add_account_id_to_expenses_table', 39, NULL, NULL),
(73, '2018_12_20_082753_add_account_id_to_returns_table', 40, NULL, NULL),
(74, '2018_12_26_064330_create_return_purchases_table', 41, NULL, NULL),
(75, '2018_12_26_144210_create_purchase_product_return_table', 42, NULL, NULL),
(76, '2018_12_26_144708_create_purchase_product_return_table', 43, NULL, NULL),
(77, '2018_12_27_110018_create_departments_table', 44, NULL, NULL),
(78, '2018_12_30_054844_create_employees_table', 45, NULL, NULL),
(79, '2018_12_31_125210_create_payrolls_table', 46, NULL, NULL),
(80, '2018_12_31_150446_add_department_id_to_employees_table', 47, NULL, NULL),
(81, '2019_01_01_062708_add_user_id_to_expenses_table', 48, NULL, NULL),
(82, '2019_01_02_075644_create_hrm_settings_table', 49, NULL, NULL),
(83, '2019_01_02_090334_create_attendances_table', 50, NULL, NULL),
(84, '2019_01_27_160956_add_three_columns_to_general_settings_table', 51, NULL, NULL),
(85, '2019_02_15_183303_create_stock_counts_table', 52, NULL, NULL),
(86, '2019_02_17_101604_add_is_adjusted_to_stock_counts_table', 53, NULL, NULL),
(87, '2019_04_13_101707_add_tax_no_to_customers_table', 54, NULL, NULL),
(89, '2019_10_14_111455_create_holidays_table', 55, NULL, NULL),
(90, '2019_11_13_145619_add_is_variant_to_products_table', 56, NULL, NULL),
(91, '2019_11_13_150206_create_product_variants_table', 57, NULL, NULL),
(92, '2019_11_13_153828_create_variants_table', 57, NULL, NULL),
(93, '2019_11_25_134041_add_qty_to_product_variants_table', 58, NULL, NULL),
(94, '2019_11_25_134922_add_variant_id_to_product_purchases_table', 58, NULL, NULL),
(95, '2019_11_25_145341_add_variant_id_to_product_warehouse_table', 58, NULL, NULL),
(96, '2019_11_29_182201_add_variant_id_to_product_sales_table', 59, NULL, NULL),
(97, '2019_12_04_121311_add_variant_id_to_product_quotation_table', 60, NULL, NULL),
(98, '2019_12_05_123802_add_variant_id_to_product_transfer_table', 61, NULL, NULL),
(100, '2019_12_08_114954_add_variant_id_to_product_returns_table', 62, NULL, NULL),
(101, '2019_12_08_203146_add_variant_id_to_purchase_product_return_table', 63, NULL, NULL),
(102, '2020_02_28_103340_create_money_transfers_table', 64, NULL, NULL),
(103, '2020_07_01_193151_add_image_to_categories_table', 65, NULL, NULL),
(105, '2020_09_26_130426_add_user_id_to_deliveries_table', 66, NULL, NULL),
(107, '2020_10_11_125457_create_cash_registers_table', 67, NULL, NULL),
(108, '2020_10_13_155019_add_cash_register_id_to_sales_table', 68, NULL, NULL),
(109, '2020_10_13_172624_add_cash_register_id_to_returns_table', 69, NULL, NULL),
(110, '2020_10_17_212338_add_cash_register_id_to_payments_table', 70, NULL, NULL),
(111, '2020_10_18_124200_add_cash_register_id_to_expenses_table', 71, NULL, NULL),
(112, '2020_10_21_121632_add_developed_by_to_general_settings_table', 72, NULL, NULL),
(113, '2019_08_19_000000_create_failed_jobs_table', 73, NULL, NULL),
(114, '2020_10_30_135557_create_notifications_table', 73, NULL, NULL),
(115, '2020_11_01_044954_create_currencies_table', 74, NULL, NULL),
(116, '2020_11_01_140736_add_price_to_product_warehouse_table', 75, NULL, NULL),
(117, '2020_11_02_050633_add_is_diff_price_to_products_table', 76, NULL, NULL),
(118, '2020_11_09_055222_add_user_id_to_customers_table', 77, NULL, NULL),
(119, '2020_11_17_054806_add_invoice_format_to_general_settings_table', 78, NULL, NULL),
(120, '2021_08_23_194501_add_org_id_and_branch_id_to_users_table', 79, NULL, NULL),
(121, '2021_08_24_060309_add_org_id_and_branch_id_to_accounts_table', 80, NULL, NULL),
(122, '2021_08_24_060419_add_org_id_and_branch_id_to_adjustments_table', 80, NULL, NULL),
(123, '2021_08_24_060837_add_org_id_and_branch_id_to_attendances_table', 80, NULL, NULL),
(124, '2021_08_24_061233_add_org_id_and_branch_id_to_billers_table', 80, NULL, NULL),
(125, '2021_08_24_061255_add_org_id_and_branch_id_to_brands_table', 80, NULL, NULL),
(126, '2021_08_24_061316_add_org_id_and_branch_id_to_cash_registers_table', 80, NULL, NULL),
(127, '2021_08_24_061349_add_org_id_and_branch_id_to_categories_table', 80, NULL, NULL),
(128, '2021_08_24_061410_add_org_id_and_branch_id_to_coupons_table', 80, NULL, NULL),
(129, '2021_08_24_061434_add_org_id_and_branch_id_to_currencies_table', 80, NULL, NULL),
(130, '2021_08_24_061453_add_org_id_and_branch_id_to_customers_table', 80, NULL, NULL),
(131, '2021_08_24_061512_add_org_id_and_branch_id_to_customer_groups_table', 80, NULL, NULL),
(132, '2021_08_24_061538_add_org_id_and_branch_id_to_deliveries_table', 80, NULL, NULL),
(133, '2021_08_24_061557_add_org_id_and_branch_id_to_departments_table', 80, NULL, NULL),
(134, '2021_08_24_061645_add_org_id_and_branch_id_to_deposits_table', 80, NULL, NULL),
(135, '2021_08_24_061704_add_org_id_and_branch_id_to_employees_table', 80, NULL, NULL),
(136, '2021_08_24_061738_add_org_id_and_branch_id_to_expenses_table', 80, NULL, NULL),
(137, '2021_08_24_061801_add_org_id_and_branch_id_to_expense_categories_table', 80, NULL, NULL),
(138, '2021_08_24_061832_add_org_id_and_branch_id_to_failed_jobs_table', 80, NULL, NULL),
(139, '2021_08_24_061909_add_org_id_and_branch_id_to_general_settings_table', 80, NULL, NULL),
(140, '2021_08_24_061934_add_org_id_and_branch_id_to_gift_cards_table', 80, NULL, NULL),
(141, '2021_08_24_062004_add_org_id_and_branch_id_to_gift_card_recharges_table', 80, NULL, NULL),
(142, '2021_08_24_062029_add_org_id_and_branch_id_to_holidays_table', 80, NULL, NULL),
(143, '2021_08_24_062101_add_org_id_and_branch_id_to_hrm_settings_table', 80, NULL, NULL),
(144, '2021_08_24_062120_add_org_id_and_branch_id_to_languages_table', 80, NULL, NULL),
(145, '2021_08_24_062146_add_org_id_and_branch_id_to_migrations_table', 80, NULL, NULL),
(146, '2021_08_24_062212_add_org_id_and_branch_id_to_money_transfers_table', 80, NULL, NULL),
(147, '2021_08_24_062253_add_org_id_and_branch_id_to_notifications_table', 80, NULL, NULL),
(148, '2021_08_24_062325_add_org_id_and_branch_id_to_password_resets_table', 80, NULL, NULL),
(149, '2021_08_24_062349_add_org_id_and_branch_id_to_payments_table', 80, NULL, NULL),
(150, '2021_08_24_062416_add_org_id_and_branch_id_to_payment_with_cheque_table', 80, NULL, NULL),
(151, '2021_08_24_062444_add_org_id_and_branch_id_to_payment_with_credit_card_table', 80, NULL, NULL),
(152, '2021_08_24_062521_add_org_id_and_branch_id_to_payment_with_gift_card_table', 80, NULL, NULL),
(153, '2021_08_24_062556_add_org_id_and_branch_id_to_payment_with_paypal_table', 80, NULL, NULL),
(154, '2021_08_24_062618_add_org_id_and_branch_id_to_payrolls_table', 80, NULL, NULL),
(155, '2021_08_24_062658_add_org_id_and_branch_id_to_products_table', 80, NULL, NULL),
(156, '2021_08_24_062711_add_org_id_and_branch_id_to_pos_setting_table', 80, NULL, NULL),
(157, '2021_08_24_062728_add_org_id_and_branch_id_to_permissions_table', 80, NULL, NULL),
(158, '2021_08_24_062817_add_org_id_and_branch_id_to_product_returns_table', 80, NULL, NULL),
(159, '2021_08_24_062837_add_org_id_and_branch_id_to_product_quotation_table', 80, NULL, NULL),
(160, '2021_08_24_062857_add_org_id_and_branch_id_to_product_purchases_table', 80, NULL, NULL),
(161, '2021_08_24_062917_add_org_id_and_branch_id_to_product_adjustments_table', 80, NULL, NULL),
(162, '2021_08_24_063028_add_org_id_and_branch_id_to_role_has_permissions_table', 80, NULL, NULL),
(163, '2021_08_24_063051_add_org_id_and_branch_id_to_sales_table', 80, NULL, NULL),
(164, '2021_08_24_063108_add_org_id_and_branch_id_to_stock_counts_table', 80, NULL, NULL),
(165, '2021_08_24_063125_add_org_id_and_branch_id_to_suppliers_table', 80, NULL, NULL),
(166, '2021_08_24_063148_add_org_id_and_branch_id_to_taxes_table', 80, NULL, NULL),
(167, '2021_08_24_063203_add_org_id_and_branch_id_to_product_sales_table', 80, NULL, NULL),
(168, '2021_08_24_063220_add_org_id_and_branch_id_to_product_transfer_table', 80, NULL, NULL),
(169, '2021_08_24_063240_add_org_id_and_branch_id_to_product_variants_table', 80, NULL, NULL),
(170, '2021_08_24_063318_add_org_id_and_branch_id_to_product_warehouse_table', 80, NULL, NULL),
(171, '2021_08_24_063336_add_org_id_and_branch_id_to_purchases_table', 80, NULL, NULL),
(172, '2021_08_24_063356_add_org_id_and_branch_id_to_purchase_product_return_table', 80, NULL, NULL),
(173, '2021_08_24_063416_add_org_id_and_branch_id_to_quotations_table', 80, NULL, NULL),
(174, '2021_08_24_063451_add_org_id_and_branch_id_to_returns_table', 80, NULL, NULL),
(175, '2021_08_24_063506_add_org_id_and_branch_id_to_return_purchases_table', 80, NULL, NULL),
(176, '2021_08_24_063524_add_org_id_and_branch_id_to_roles_table', 80, NULL, NULL),
(177, '2021_08_24_063751_add_org_id_and_branch_id_to_units_table', 80, NULL, NULL),
(178, '2021_08_24_063807_add_org_id_and_branch_id_to_variants_table', 80, NULL, NULL),
(179, '2021_08_24_063843_add_org_id_and_branch_id_to_warehouses_table', 80, NULL, NULL),
(180, '2021_08_24_164845_create_organizations_table', 81, NULL, NULL),
(181, '2021_08_24_170753_create_branches_table', 81, NULL, NULL),
(182, '2021_08_28_110711_add_expired_at_to_organizations_table', 82, NULL, NULL),
(183, '2021_08_28_110841_add_expired_at_to_branches_table', 83, NULL, NULL),
(185, '2021_09_08_171521_add_expired_at_to_users_table', 85, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `money_transfers`
--

CREATE TABLE `money_transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `money_transfers`
--

INSERT INTO `money_transfers` (`id`, `reference_no`, `from_account_id`, `to_account_id`, `amount`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(2, 'mtr-20200228-071852', 1, 3, 100, '2020-02-28 13:18:52', '2020-02-28 13:18:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
('249beded-5431-40a3-ba1e-d255ffb047a3', 'App\\Notifications\\SendNotification', 'App\\User', 9, '{\"message\":\"Please delete all pending purchase.\"}', '2020-11-01 01:33:32', '2020-11-01 01:33:07', '2020-11-01 01:33:32', NULL, NULL),
('7095bb89-9f8f-45c8-a6a2-22793ee7fb65', 'App\\Notifications\\ExpiredNotification', 'App\\User', 27, '{\"message\":\"\\u0627\\u0644\\u0631\\u062c\\u0627\\u0621 \\u062a\\u062c\\u062f\\u064a\\u062f \\u0627\\u0644\\u0625\\u0634\\u062a\\u0631\\u0627\\u0643 \\u0644\\u0623\\u0646 \\u0627\\u0644\\u0625\\u0634\\u062a\\u0631\\u0627\\u0643 \\u064a\\u0646\\u062a\\u0647\\u064a \\u0628\\u0639\\u062f 4 \\u0623\\u064a\\u0627\\u0645\"}', '2021-09-11 07:48:18', '2021-09-11 07:47:06', '2021-09-11 07:48:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `domain`, `manager_id`, `created_at`, `updated_at`, `expires_at`, `phone`, `location`) VALUES
(1, 'test test test', 'test-test-test', NULL, '2021-08-24 15:05:11', '2021-08-28 11:19:38', '2021-11-30 21:00:00', '', ''),
(2, 'محمد كمال', 'test', NULL, '2021-08-25 17:20:05', '2021-08-03 17:20:05', '2021-07-31 21:00:00', '', ''),
(3, 'new domain', 'new-domain', NULL, '2021-08-28 10:30:23', '2021-08-28 10:30:23', '2021-09-30 21:00:00', '', ''),
(4, 'new org', 'new-org', NULL, '2021-09-04 09:44:46', '2021-09-04 09:44:46', '2021-10-03 21:00:00', '', ''),
(5, 'test new org', 'test-new-org', NULL, '2021-09-04 09:45:36', '2021-09-04 09:45:36', '2021-10-03 21:00:00', '', ''),
(6, 'test test new org', 'test-test-new-org', NULL, '2021-09-04 09:46:13', '2021-09-04 09:46:13', '2021-10-03 21:00:00', '', ''),
(8, 'test test new org as', 'test-test-new-org-as', NULL, '2021-09-04 09:47:16', '2021-09-04 09:47:16', '2021-10-03 21:00:00', '', ''),
(9, 'admin', 'admin', NULL, '2021-09-04 09:54:14', '2021-09-04 09:54:14', '2021-10-03 21:00:00', '', ''),
(10, 'سوبر ماركت الأنفال', 'سوبر-ماركت-الأنفال', NULL, '2021-09-11 08:06:15', '2021-09-11 08:06:15', '2021-10-10 21:00:00', '+249912345678', 'الخرطوم , بري'),
(11, 'النور', 'النور', NULL, '2021-09-11 11:02:45', '2021-09-11 11:02:45', '2021-10-10 21:00:00', '+249122299370', 'الخرطوم , بري');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`, `organization_id`, `branch_id`) VALUES
('admin@gmail.com', '$2y$10$KS5.x.ke/6GdmtG0Pz3Z7uOnxQ4mVhk0INSD6aWDqo9sJ6vfDj./G', '2022-11-13 02:55:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_reference`, `user_id`, `purchase_id`, `sale_id`, `cash_register_id`, `account_id`, `amount`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(33, 'spr-20180809-055453', 1, NULL, 2, NULL, 1, 1000, 0, 'Cash', NULL, '2018-08-08 23:54:53', '2018-08-08 23:54:53', NULL, NULL),
(34, 'spr-20180809-055553', 1, NULL, 2, NULL, 1, 1200, 0, 'Cheque', NULL, '2018-08-08 23:55:53', '2018-08-08 23:56:36', NULL, NULL),
(35, 'spr-20180809-063214', 1, NULL, 3, NULL, 1, 897, 0, 'Cheque', NULL, '2018-08-09 00:32:14', '2018-08-09 00:32:14', NULL, NULL),
(36, 'spr-20180825-034836', 1, NULL, 4, NULL, 1, 100, 0, 'Gift Card', '100 bucks paid...', '2018-08-24 21:48:36', '2018-08-25 00:57:35', NULL, NULL),
(39, 'spr-20180825-083634', 1, NULL, 4, NULL, 1, 200, 0, 'Gift Card', NULL, '2018-08-25 02:36:34', '2018-08-25 02:36:34', NULL, NULL),
(41, 'spr-20180826-094836', 1, NULL, 6, NULL, 1, 20, 0, 'Deposit', '20 bucks paid', '2018-08-26 03:48:36', '2018-08-26 21:42:13', NULL, NULL),
(42, 'spr-20180827-073545', 1, NULL, 7, NULL, 1, 880, 0, 'Cash', NULL, '2018-08-27 01:35:45', '2018-08-27 01:35:45', NULL, NULL),
(43, 'ppr-20180830-071637', 1, 13, NULL, NULL, 1, 100, 0, 'Cash', '100 bucks paid...', '2018-08-30 01:16:37', '2018-08-30 01:16:37', NULL, NULL),
(44, 'ppr-20180830-090718', 1, 13, NULL, NULL, 1, 200, 0, 'Cheque', NULL, '2018-08-30 03:07:18', '2018-08-30 03:07:18', NULL, NULL),
(46, 'spr-20180902-053954', 1, NULL, 8, NULL, 1, 3529.8, 0, 'Cash', 'fully paid', '2018-09-01 23:39:54', '2018-09-01 23:39:54', NULL, NULL),
(49, 'spr-20180903-033314', 1, NULL, 9, NULL, 1, 20, 0, 'Deposit', 'fully paid', '2018-09-02 21:33:14', '2018-09-02 21:33:14', NULL, NULL),
(50, 'spr-20180903-050138', 1, NULL, 10, NULL, 1, 200, 0, 'Gift Card', '50 bucks due...', '2018-09-02 23:01:38', '2018-09-09 21:40:28', NULL, NULL),
(51, 'spr-20180903-100821', 1, NULL, 11, NULL, 1, 5500, 0, 'Cheque', NULL, '2018-09-03 04:08:21', '2018-09-03 04:08:21', NULL, NULL),
(53, 'ppr-20180903-101524', 1, 16, NULL, NULL, 1, 1750, 0, 'Cheque', NULL, '2018-09-03 04:15:24', '2018-10-06 01:09:20', NULL, NULL),
(78, 'spr-20180926-092105', 1, NULL, 31, NULL, 1, 560, 0, 'Cash', NULL, '2018-09-26 03:21:05', '2018-09-26 03:21:05', NULL, NULL),
(79, 'spr-20181006-065017', 1, NULL, 30, NULL, 1, 100, 0, 'Cheque', NULL, '2018-10-06 00:50:17', '2018-10-06 00:51:55', NULL, NULL),
(80, 'spr-20181006-065222', 1, NULL, 30, NULL, 1, 20, 0, 'Cash', NULL, '2018-10-06 00:52:22', '2018-10-06 00:52:22', NULL, NULL),
(82, 'ppr-20181006-070935', 1, 16, NULL, NULL, 1, 1600, 0, 'Cash', NULL, '2018-10-06 01:09:35', '2018-10-06 01:09:35', NULL, NULL),
(83, 'spr-20181010-041636', 1, NULL, 41, NULL, 1, 461, 0, 'Cash', NULL, '2018-10-09 22:16:36', '2018-10-09 22:16:36', NULL, NULL),
(84, 'spr-20181010-053456', 1, NULL, 42, NULL, 1, 440, 0, 'Cash', NULL, '2018-10-09 23:34:56', '2018-10-09 23:34:56', NULL, NULL),
(91, 'spr-20181021-065338', 1, NULL, 55, NULL, 1, 250, 0, 'Cash', NULL, '2018-10-21 00:53:38', '2018-10-21 00:53:38', NULL, NULL),
(92, 'spr-20181021-082618', 1, NULL, 57, NULL, 1, 575.2, 0, 'Cash', NULL, '2018-10-21 02:26:18', '2018-10-21 02:26:18', NULL, NULL),
(93, 'spr-20181022-032730', 1, NULL, 58, NULL, 1, 1220, 0, 'Cash', NULL, '2018-10-22 09:27:30', '2018-10-22 09:27:30', NULL, NULL),
(104, 'spr-20181023-071548', 11, NULL, 73, NULL, 1, 5500, 0, 'Cash', NULL, '2018-10-23 01:15:48', '2018-10-23 01:15:48', NULL, NULL),
(105, 'spr-20181023-071648', 1, NULL, 74, NULL, 1, 2320, 0, 'Cash', NULL, '2018-10-23 01:16:48', '2018-10-23 01:16:48', NULL, NULL),
(126, 'spr-20181101-050033', 1, NULL, 75, NULL, 1, 7678, 0, 'Cash', NULL, '2018-10-31 23:00:33', '2018-10-31 23:00:33', NULL, NULL),
(127, 'spr-20181101-050130', 1, NULL, 76, NULL, 1, 1424, 0, 'Cash', NULL, '2018-10-31 23:01:30', '2018-11-08 03:44:51', NULL, NULL),
(129, 'spr-20181105-091523', 1, NULL, 79, NULL, 1, 14454, 0, 'Cash', NULL, '2018-11-05 03:15:23', '2018-11-05 03:15:23', NULL, NULL),
(130, 'spr-20181105-092002', 1, NULL, 80, NULL, 1, 2500, 0, 'Cash', NULL, '2018-11-05 03:20:02', '2018-11-05 03:20:02', NULL, NULL),
(131, 'ppr-20181105-092128', 1, 24, NULL, NULL, 1, 15950, 0, 'Cash', NULL, '2018-11-05 03:21:28', '2018-11-05 03:21:28', NULL, NULL),
(137, 'spr-20181105-095952', 1, NULL, 86, NULL, 1, 1100, 0, 'Cash', NULL, '2018-11-05 03:59:52', '2018-11-05 03:59:52', NULL, NULL),
(138, 'spr-20181105-100310', 1, NULL, 88, NULL, 1, 1100, 0, 'Cash', NULL, '2018-11-05 04:03:10', '2018-11-05 04:03:10', NULL, NULL),
(139, 'spr-20181126-020534', 1, NULL, 94, NULL, 1, 120, 0, 'Cash', NULL, '2018-11-26 08:05:34', '2018-11-26 08:05:34', NULL, NULL),
(140, 'spr-20181128-071515', 1, NULL, 96, NULL, 1, 132, 0, 'Cash', NULL, '2018-11-28 01:15:15', '2018-11-28 01:15:15', NULL, NULL),
(141, 'spr-20181201-060524', 1, NULL, 97, NULL, 1, 200, 300, 'Cash', NULL, '2018-12-01 00:05:24', '2018-12-04 00:21:05', NULL, NULL),
(148, 'ppr-20181204-065932', 1, 23, NULL, NULL, 1, 500, 500, 'Cash', NULL, '2018-12-04 00:59:32', '2018-12-04 00:59:44', NULL, NULL),
(149, 'ppr-20181205-053443', 1, 25, NULL, NULL, 1, 4450, 550, 'Cash', NULL, '2018-12-04 23:34:43', '2018-12-04 23:34:43', NULL, NULL),
(150, 'spr-20181205-053608', 1, NULL, 98, NULL, 1, 800, 200, 'Cash', NULL, '2018-12-04 23:36:08', '2018-12-04 23:36:08', NULL, NULL),
(151, 'spr-20181205-053724', 1, NULL, 99, NULL, 1, 800, 0, 'Cash', NULL, '2018-12-04 23:37:24', '2018-12-04 23:37:24', NULL, NULL),
(152, 'spr-20181208-062032', 1, NULL, 101, NULL, 1, 100, 400, 'Cash', NULL, '2018-12-08 00:20:32', '2018-12-11 03:19:39', NULL, NULL),
(157, 'ppr-20181220-063439', 1, 27, NULL, NULL, 1, 10, 0, 'Cash', NULL, '2018-12-20 00:34:39', '2018-12-20 00:35:01', NULL, NULL),
(159, 'spr-20181224-045832', 1, NULL, 103, NULL, 1, 120, 0, 'Cash', NULL, '2018-12-23 22:58:32', '2018-12-23 22:58:32', NULL, NULL),
(160, 'spr-20190101-054544', 1, NULL, 105, NULL, 1, 21, 0, 'Cash', NULL, '2018-12-31 23:45:44', '2018-12-31 23:45:44', NULL, NULL),
(161, 'spr-20190101-091040', 1, NULL, 106, NULL, 1, 860, 0, 'Cash', NULL, '2019-01-01 03:10:40', '2019-01-01 03:10:40', NULL, NULL),
(162, 'spr-20190103-065627', 1, NULL, 107, NULL, 1, 5040, 960, 'Cash', NULL, '2019-01-03 00:56:27', '2019-01-03 00:56:27', NULL, NULL),
(163, 'spr-20190120-035824', 1, NULL, 108, NULL, 1, 120, 0, 'Cash', NULL, '2019-01-20 09:58:24', '2019-01-20 09:58:24', NULL, NULL),
(164, 'ppr-20190129-100302', 9, 36, NULL, NULL, 1, 650, 350, 'Cash', NULL, '2019-01-29 04:03:02', '2019-01-29 04:03:02', NULL, NULL),
(165, 'ppr-20190129-100324', 9, 34, NULL, NULL, 1, 2860, 140, 'Cash', NULL, '2019-01-29 04:03:24', '2019-01-29 04:03:24', NULL, NULL),
(166, 'spr-20190129-101451', 9, NULL, 109, NULL, 1, 540, 460, 'Cash', NULL, '2019-01-29 04:14:51', '2019-01-29 04:14:51', NULL, NULL),
(167, 'spr-20190129-115048', 9, NULL, 110, NULL, 1, 1700, 300, 'Cash', NULL, '2019-01-29 05:50:48', '2019-01-29 05:50:48', NULL, NULL),
(168, 'spr-20190131-110839', 9, NULL, 111, NULL, 1, 271, 0, 'Cash', NULL, '2019-01-31 05:08:39', '2019-01-31 05:08:39', NULL, NULL),
(169, 'spr-20190202-104045', 1, NULL, 112, NULL, 1, 440, 0, 'Cash', NULL, '2019-02-02 04:40:45', '2019-02-02 04:40:45', NULL, NULL),
(170, 'spr-20190202-114117', 1, NULL, 113, NULL, 1, 350, 0, 'Cash', NULL, '2019-02-02 05:41:17', '2019-02-02 05:41:17', NULL, NULL),
(171, 'spr-20190205-030454', 1, NULL, 114, NULL, 1, 440, 0, 'Cash', NULL, '2019-02-05 09:04:54', '2019-02-05 09:04:54', NULL, NULL),
(176, 'ppr-20190207-125418', 1, 35, NULL, NULL, 1, 50, 50, 'Cash', NULL, '2019-02-07 06:54:18', '2019-02-07 07:05:23', NULL, NULL),
(178, 'ppr-20190207-010640', 1, 35, NULL, NULL, 1, 50, 50, 'Cheque', NULL, '2019-02-07 07:06:40', '2019-02-07 07:07:04', NULL, NULL),
(179, 'spr-20190207-010915', 1, NULL, 120, NULL, 1, 50, 50, 'Cash', NULL, '2019-02-07 07:09:15', '2019-02-07 07:09:15', NULL, NULL),
(180, 'spr-20190209-104816', 1, NULL, 121, NULL, 1, 1272, 728, 'Cash', NULL, '2019-02-09 04:48:16', '2019-02-09 04:48:16', NULL, NULL),
(181, 'ppr-20190209-104940', 1, 38, NULL, NULL, 1, 1660, 0, 'Cash', NULL, '2019-02-09 04:49:40', '2019-02-09 04:49:40', NULL, NULL),
(182, 'ppr-20190209-104959', 1, 39, NULL, NULL, 1, 973.5, 0, 'Cash', NULL, '2019-02-09 04:49:59', '2019-02-09 04:49:59', NULL, NULL),
(183, 'spr-20190219-023214', 1, NULL, 123, NULL, 1, 440, 0, 'Cash', NULL, '2019-02-19 08:32:14', '2019-02-19 08:32:14', NULL, NULL),
(189, 'spr-20190303-104010', 1, NULL, 127, NULL, 1, 2500, 0, 'Cash', NULL, '2019-03-03 04:40:10', '2019-03-03 04:40:10', NULL, NULL),
(190, 'ppr-20190303-104046', 1, 40, NULL, NULL, 1, 100, 0, 'Cash', NULL, '2019-03-03 04:40:46', '2019-03-03 04:40:46', NULL, NULL),
(191, 'ppr-20190303-104222', 1, 37, NULL, NULL, 1, 4000, 0, 'Cash', NULL, '2019-03-03 04:42:22', '2019-03-03 04:42:22', NULL, NULL),
(192, 'ppr-20190303-104414', 1, 41, NULL, NULL, 1, 1000, 0, 'Cash', NULL, '2019-03-03 04:44:14', '2019-03-03 04:44:14', NULL, NULL),
(193, 'spr-20190404-095555', 1, NULL, 128, NULL, 1, 560, 0, 'Cash', NULL, '2019-04-04 03:55:55', '2019-04-04 03:55:55', NULL, NULL),
(194, 'ppr-20190404-095910', 1, 42, NULL, NULL, 1, 300, 200, 'Cash', NULL, '2019-04-04 03:59:10', '2019-04-13 10:52:38', NULL, NULL),
(195, 'spr-20190404-095937', 1, NULL, 129, NULL, 1, 120, 0, 'Cash', NULL, '2019-04-04 03:59:37', '2019-04-04 03:59:37', NULL, NULL),
(196, 'spr-20190421-122124', 1, NULL, 130, NULL, 1, 586, 0, 'Cash', NULL, '2019-04-21 06:21:24', '2019-04-21 06:21:24', NULL, NULL),
(197, 'spr-20190528-103229', 1, NULL, 131, NULL, 1, 2890, 0, 'Cash', NULL, '2019-05-28 04:32:29', '2019-05-28 04:32:29', NULL, NULL),
(198, 'ppr-20190613-101351', 1, 37, NULL, NULL, 1, 2390, 0, 'Cash', NULL, '2019-06-13 04:13:51', '2019-06-13 04:13:51', NULL, NULL),
(199, 'spr-20190613-101637', 1, NULL, 132, NULL, 1, 840, 0, 'Cash', NULL, '2019-06-13 04:16:37', '2019-06-13 04:16:37', NULL, NULL),
(200, 'ppr-20190613-101713', 1, 43, NULL, NULL, 1, 1000, 0, 'Cash', NULL, '2019-06-13 04:17:13', '2019-06-13 04:17:13', NULL, NULL),
(201, 'spr-20190613-101752', 1, NULL, 133, NULL, 1, 2700, 0, 'Cash', NULL, '2019-06-13 04:17:52', '2019-06-13 04:17:52', NULL, NULL),
(202, 'ppr-20191019-032925', 1, 43, NULL, NULL, 1, 3290, 710, 'Cash', NULL, '2019-10-19 09:29:25', '2019-10-19 09:29:25', NULL, NULL),
(203, 'spr-20191019-033028', 1, NULL, 134, NULL, 1, 2940, 60, 'Cash', NULL, '2019-10-19 09:30:28', '2019-10-19 09:30:28', NULL, NULL),
(205, 'spr-20191103-114044', 1, NULL, 139, NULL, 1, 488, 12, 'Cash', NULL, '2019-11-03 05:40:44', '2019-11-03 05:40:44', NULL, NULL),
(206, 'ppr-20191103-114222', 1, 46, NULL, NULL, 1, 200, 0, 'Cash', NULL, '2019-11-03 05:42:22', '2019-11-03 05:42:22', NULL, NULL),
(211, 'spr-20191109-074131', 1, NULL, 144, NULL, 1, 1220, 0, 'Cash', NULL, '2019-11-09 13:41:31', '2019-11-09 13:41:31', NULL, NULL),
(216, 'ppr-20191111-103911', 1, 49, NULL, NULL, 1, 5000, 0, 'Cheque', NULL, '2019-11-11 04:39:11', '2019-11-11 04:39:11', NULL, NULL),
(217, 'spr-20191111-104008', 1, NULL, 147, NULL, 1, 2220, 780, 'Cash', NULL, '2019-11-11 04:40:08', '2019-11-11 04:40:08', NULL, NULL),
(222, 'spr-20191203-115128', 1, NULL, 163, NULL, 1, 3, 0, 'Cash', NULL, '2019-12-03 05:51:28', '2019-12-03 05:51:28', NULL, NULL),
(227, 'ppr-20191204-111124', 1, 57, NULL, NULL, 1, 220, 280, 'Cash', NULL, '2019-12-04 17:11:24', '2019-12-04 17:11:24', NULL, NULL),
(228, 'spr-20191205-092712', 1, NULL, 173, NULL, 1, 621, 0, 'Cash', NULL, '2019-12-05 03:27:12', '2019-12-05 03:27:12', NULL, NULL),
(239, 'spr-20191222-104058', 1, NULL, 187, NULL, 1, 288, 212, 'Cash', NULL, '2019-12-22 04:40:58', '2019-12-22 04:40:58', NULL, NULL),
(241, 'spr-20191223-125946', 1, NULL, 190, NULL, 1, 1100, 400, 'Cash', NULL, '2019-12-23 06:59:46', '2019-12-23 06:59:46', NULL, NULL),
(244, 'ppr-20200101-010750', 1, 61, NULL, NULL, 1, 60, 0, 'Cash', NULL, '2020-01-01 07:07:50', '2020-01-01 07:07:50', NULL, NULL),
(246, 'spr-20200101-022028', 1, NULL, 193, NULL, 1, 1100, 400, 'Cash', NULL, '2020-01-01 08:20:28', '2020-01-01 08:20:28', NULL, NULL),
(247, 'ppr-20200101-022131', 1, 59, NULL, NULL, 1, 6, 0, 'Cash', NULL, '2020-01-01 08:21:31', '2020-01-01 08:21:31', NULL, NULL),
(248, 'ppr-20200101-022137', 1, 58, NULL, NULL, 1, 4, 0, 'Cash', NULL, '2020-01-01 08:21:37', '2020-01-01 08:21:37', NULL, NULL),
(249, 'ppr-20200101-022144', 1, 56, NULL, NULL, 1, 2, 0, 'Cash', NULL, '2020-01-01 08:21:44', '2020-01-01 08:21:44', NULL, NULL),
(250, 'ppr-20200101-022152', 1, 55, NULL, NULL, 1, 4, 0, 'Cash', NULL, '2020-01-01 08:21:52', '2020-01-01 08:21:52', NULL, NULL),
(251, 'ppr-20200101-022225', 1, 49, NULL, NULL, 1, 2000, 0, 'Cash', NULL, '2020-01-01 08:22:25', '2020-01-01 08:22:25', NULL, NULL),
(252, 'spr-20200102-043947', 1, NULL, 194, NULL, 1, 892, 108, 'Cash', NULL, '2020-01-02 10:39:47', '2020-01-02 10:39:47', NULL, NULL),
(258, 'spr-20200203-035256', 1, NULL, 201, NULL, 1, 120, 880, 'Cash', NULL, '2020-02-03 09:52:56', '2020-02-03 09:52:56', NULL, NULL),
(259, 'spr-20200204-105853', 1, NULL, 202, NULL, 1, 1400, 100, 'Cash', NULL, '2020-02-04 16:58:53', '2020-02-04 16:58:53', NULL, NULL),
(260, 'ppr-20200204-110050', 1, 67, NULL, NULL, 1, 300, 0, 'Cash', NULL, '2020-02-04 17:00:50', '2020-02-04 17:00:50', NULL, NULL),
(261, 'spr-20200302-115414', 1, NULL, 203, NULL, 1, 350, 150, 'Cash', NULL, '2020-03-02 05:54:14', '2020-03-02 05:54:14', NULL, NULL),
(262, 'spr-20200302-115741', 1, NULL, 204, NULL, 1, 40, 10, 'Cash', NULL, '2020-03-02 05:57:41', '2020-03-02 05:57:41', NULL, NULL),
(263, 'ppr-20200302-115811', 1, 70, NULL, NULL, 1, 50, 0, 'Cash', NULL, '2020-03-02 05:58:11', '2020-03-02 05:58:11', NULL, NULL),
(264, 'ppr-20200302-115820', 1, 69, NULL, NULL, 1, 50, 0, 'Cash', NULL, '2020-03-02 05:58:20', '2020-03-02 05:58:20', NULL, NULL),
(265, 'spr-20200311-044642', 1, NULL, 205, NULL, 1, 352, 148, 'Cash', NULL, '2020-03-11 10:46:42', '2020-03-11 10:46:42', NULL, NULL),
(266, 'ppr-20200406-073823', 1, 71, NULL, NULL, 1, 2000, 1000, 'Cash', 'First Payment', '2020-04-06 13:38:23', '2020-04-06 13:38:55', NULL, NULL),
(267, 'spr-20200406-074024', 1, NULL, 207, NULL, 1, 500, 500, 'Cash', NULL, '2020-04-06 13:40:24', '2020-04-06 13:40:24', NULL, NULL),
(268, 'spr-20200406-074201', 1, NULL, 207, NULL, 1, 144, 56, 'Cash', NULL, '2020-04-06 13:42:01', '2020-04-06 13:42:01', NULL, NULL),
(269, 'spr-20200506-105950', 1, NULL, 208, NULL, 1, 1540, 460, 'Cash', NULL, '2020-05-06 16:59:50', '2020-05-06 16:59:50', NULL, NULL),
(270, 'spr-20200609-124248', 1, NULL, 209, NULL, 1, 1220, 780, 'Cash', NULL, '2020-06-09 06:42:48', '2020-06-09 06:42:48', NULL, NULL),
(273, 'spr-20200703-063914', 1, NULL, 212, NULL, 1, 2585, 415, 'Cash', NULL, '2020-07-03 12:39:14', '2020-07-03 12:39:14', NULL, NULL),
(274, 'spr-20200712-095153', 1, NULL, 213, NULL, 1, 13, 37, 'Cash', NULL, '2020-07-12 15:51:53', '2020-07-12 15:51:53', NULL, NULL),
(276, 'spr-20200727-083808', 1, NULL, 217, NULL, 1, 385, 0, 'Cash', NULL, '2020-07-27 14:38:08', '2020-07-27 14:38:08', NULL, NULL),
(277, 'spr-20200727-084024', 1, NULL, 218, NULL, 1, 385, 0, 'Cash', NULL, '2020-07-27 14:40:24', '2020-07-27 14:40:24', NULL, NULL),
(278, 'spr-20200727-084645', 1, NULL, 219, NULL, 1, 385, 0, 'Cash', NULL, '2020-07-27 14:46:45', '2020-07-27 14:46:45', NULL, NULL),
(279, 'spr-20200812-062806', 1, NULL, 220, NULL, 1, 760, 240, 'Cash', NULL, '2020-08-12 12:28:06', '2020-08-12 12:28:06', NULL, NULL),
(280, 'ppr-20200812-062853', 1, 62, NULL, NULL, 1, 1650, 0, 'Cash', NULL, '2020-08-12 12:28:53', '2020-08-12 12:28:53', NULL, NULL),
(281, 'spr-20200812-063035', 1, NULL, 221, NULL, 1, 1100, 0, 'Cash', NULL, '2020-08-12 12:30:35', '2020-08-12 12:30:35', NULL, NULL),
(282, 'spr-20200816-100426', 1, NULL, 222, NULL, 1, 23000, 2000, 'Cash', NULL, '2020-08-16 16:04:26', '2020-08-16 16:04:26', NULL, NULL),
(283, 'spr-20200816-100523', 1, NULL, 223, NULL, 1, 300, 200, 'Cash', NULL, '2020-08-16 16:05:23', '2020-08-16 16:05:23', NULL, NULL),
(284, 'spr-20200816-100632', 1, NULL, 223, NULL, 1, 100, 0, 'Cash', NULL, '2020-08-16 16:06:32', '2020-08-16 16:06:32', NULL, NULL),
(285, 'spr-20200816-100735', 1, NULL, 223, NULL, 1, 40, 0, 'Cash', NULL, '2020-08-16 16:07:35', '2020-08-16 16:07:35', NULL, NULL),
(290, 'spr-20201017-092854', 9, NULL, 230, 2, 1, 200, 0, 'Cash', NULL, '2020-10-17 15:28:54', '2020-10-18 04:48:54', NULL, NULL),
(291, 'spr-20201018-105138', 9, NULL, 230, 2, 1, 50, 0, 'Cash', NULL, '2020-10-18 04:51:38', '2020-10-18 04:51:38', NULL, NULL),
(292, 'spr-20201018-111333', 9, NULL, 231, 2, 1, 100, 0, 'Cash', NULL, '2020-10-18 05:13:33', '2020-10-18 05:13:33', NULL, NULL),
(293, 'spr-20201018-111426', 9, NULL, 231, 2, 1, 50, 0, 'Gift Card', NULL, '2020-10-18 05:14:26', '2020-10-18 05:14:26', NULL, NULL),
(294, 'spr-20201018-111651', 9, NULL, 231, 2, 1, 50, 0, 'Credit Card', NULL, '2020-10-18 05:16:51', '2020-10-18 05:16:51', NULL, NULL),
(295, 'spr-20201018-111724', 9, NULL, 231, 2, 1, 50, 0, 'Cheque', NULL, '2020-10-18 05:17:24', '2020-10-18 05:17:24', NULL, NULL),
(296, 'spr-20201022-013018', 9, NULL, 232, 2, 1, 100, 0, 'Cash', NULL, '2020-10-22 07:30:18', '2020-10-22 07:30:18', NULL, NULL),
(297, 'spr-20201022-015606', 1, NULL, 233, 3, 1, 250, 0, 'Cash', NULL, '2020-10-22 07:56:06', '2020-10-22 07:56:06', NULL, NULL),
(298, 'spr-20201024-070508', 1, NULL, 234, 4, 1, 11500, 0, 'Cash', NULL, '2020-10-24 01:05:08', '2020-10-24 01:05:08', NULL, NULL),
(299, 'spr-20201024-070753', 1, NULL, 235, 4, 1, 250, 0, 'Cash', NULL, '2020-10-24 01:07:53', '2020-10-24 01:07:53', NULL, NULL),
(300, 'spr-20201024-034619', 1, NULL, 237, 4, 1, 61900, 0, 'Cash', NULL, '2020-10-24 09:46:19', '2020-10-24 09:46:19', NULL, NULL),
(302, 'spr-20201027-054004', 1, NULL, 239, 3, 1, 2, 0, 'Cash', NULL, '2020-10-26 23:40:04', '2020-10-26 23:40:04', NULL, NULL),
(303, 'spr-20201027-054207', 1, NULL, 240, 3, 1, 6, 0, 'Cash', NULL, '2020-10-26 23:42:07', '2020-10-26 23:42:07', NULL, NULL),
(304, 'spr-20201027-063202', 1, NULL, 241, 4, 1, 250, 0, 'Cash', NULL, '2020-10-27 00:32:02', '2020-10-27 00:32:02', NULL, NULL),
(305, 'spr-20201029-073033', 1, NULL, 242, 4, 1, 250, 0, 'Cash', NULL, '2020-10-29 01:30:33', '2020-10-29 01:30:33', NULL, NULL),
(306, 'spr-20201101-072115', 1, NULL, 243, 4, 1, 250, 0, 'Cash', NULL, '2020-11-01 01:21:15', '2020-11-01 01:21:15', NULL, NULL),
(307, 'spr-20201101-074225', 1, NULL, 245, 3, 1, 1130, 0, 'Cash', NULL, '2020-11-01 01:42:25', '2020-11-01 01:42:25', NULL, NULL),
(308, 'spr-20201101-075019', 1, NULL, 246, 4, 1, 440, 0, 'Cash', NULL, '2020-11-01 01:50:19', '2020-11-01 01:50:19', NULL, NULL),
(310, 'spr-20201106-013042', 1, NULL, 250, 4, 1, 378.4, 0, 'Cash', NULL, '2020-11-06 07:30:42', '2020-11-06 07:30:42', NULL, NULL),
(311, 'spr-20201109-011527', 1, NULL, 251, 4, 1, 500, 0, 'Cash', NULL, '2020-11-09 07:15:27', '2020-11-09 07:15:27', NULL, NULL),
(312, 'spr-20201111-055902', 1, NULL, 252, 3, 1, 229.5, 0, 'Cash', NULL, '2020-11-10 23:59:02', '2020-11-10 23:59:02', NULL, NULL),
(313, 'spr-20201114-064739', 1, NULL, 253, 4, 1, 10242.5, 0, 'Cash', NULL, '2020-11-14 00:47:39', '2020-11-14 00:47:39', NULL, NULL),
(316, 'spr-20201117-064751', 1, NULL, 256, 4, 1, 715, 0, 'Cash', NULL, '2020-11-17 00:47:51', '2020-11-17 00:47:51', NULL, NULL),
(317, 'spr-20201117-070920', 1, NULL, 257, 4, 1, 250, 0, 'Cash', NULL, '2020-11-17 01:09:20', '2020-11-17 01:09:20', NULL, NULL),
(320, 'ppr-20201118-062036', 1, 90, NULL, NULL, 1, 33000, 0, 'Cash', NULL, '2020-11-18 00:20:36', '2020-11-18 00:20:36', NULL, NULL),
(321, 'spr-20201118-065242', 1, NULL, 258, 4, 1, 27200, 0, 'Cash', NULL, '2020-11-18 00:52:42', '2020-11-18 00:52:42', NULL, NULL),
(322, 'spr-20210507-033507', 1, NULL, 259, 4, 1, 1642, 0, 'Cash', NULL, '2021-05-07 01:35:07', '2021-05-07 01:35:07', NULL, NULL),
(323, 'spr-20210511-102057', 1, NULL, 260, 4, 1, 1684, 316, 'Cash', NULL, '2021-05-11 08:20:57', '2021-05-11 08:20:57', NULL, NULL),
(324, 'spr-20210528-065742', 1, NULL, 261, 4, 1, 146, 0, 'Paypal', NULL, '2021-05-28 04:57:42', '2021-05-28 04:57:42', NULL, NULL),
(325, 'spr-20210608-025120', 1, NULL, 262, 4, 1, 836, 164, 'Cash', NULL, '2021-06-08 00:51:20', '2021-06-08 00:51:20', NULL, NULL),
(326, 'spr-20210608-073439', 1, NULL, 263, 4, 1, 584, 16, 'Cash', NULL, '2021-06-08 17:34:39', '2021-06-08 17:34:39', NULL, NULL),
(327, 'spr-20210608-073443', 1, NULL, 264, 4, 1, 584, 16, 'Cash', NULL, '2021-06-08 17:34:43', '2021-06-08 17:34:43', NULL, NULL),
(328, 'spr-20210614-081848', 1, NULL, 265, 4, 1, 1790, 0, 'Cash', NULL, '2021-06-14 06:18:48', '2021-06-14 06:18:48', NULL, NULL),
(329, 'spr-20210614-103658', 1, NULL, 267, 4, 1, 1596, 0, 'Cash', NULL, '2021-06-14 08:36:58', '2021-06-14 08:36:58', NULL, NULL),
(330, 'spr-20210619-092428', 1, NULL, 268, 4, 1, 1684, 0, 'Gift Card', NULL, '2021-06-19 07:24:28', '2021-06-19 07:24:28', NULL, NULL),
(331, 'spr-20210705-030329', 1, NULL, 269, 4, 1, 1570, 0, 'Cash', NULL, '2021-07-05 13:03:29', '2021-07-05 13:03:29', NULL, NULL),
(332, 'spr-20210705-040910', 1, NULL, 270, 4, 1, 12600, 0, 'Deposit', NULL, '2021-07-05 14:09:10', '2021-07-05 14:09:10', NULL, NULL),
(333, 'spr-20210712-035209', 1, NULL, 271, 4, 1, 3157, 343, 'Cash', NULL, '2021-07-12 13:52:09', '2021-07-12 13:52:09', NULL, NULL),
(334, 'spr-20210712-035747', 1, NULL, 272, 4, 1, 694, 6, 'Cash', NULL, '2021-07-12 13:57:47', '2021-07-12 13:57:47', NULL, NULL),
(335, 'spr-20210911-022932', 1, NULL, 273, 4, 1, 2200, 400, 'Cash', NULL, '2021-09-11 11:29:32', '2021-09-11 11:29:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_cheque`
--

CREATE TABLE `payment_with_cheque` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_cheque`
--

INSERT INTO `payment_with_cheque` (`id`, `payment_id`, `cheque_no`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 19, '23425235235', '2018-07-01 03:09:48', '2018-07-01 03:09:48', NULL, NULL),
(2, 24, '3123123123', '2018-07-10 01:21:32', '2018-07-10 01:21:32', NULL, NULL),
(3, 31, '767867678', '2018-08-08 10:36:22', '2018-08-08 10:36:22', NULL, NULL),
(4, 34, '3123412', '2018-08-08 23:55:54', '2018-08-08 23:55:54', NULL, NULL),
(5, 35, '7765', '2018-08-09 00:32:14', '2018-08-09 00:32:14', NULL, NULL),
(6, 44, '3124142412', '2018-08-30 03:07:18', '2018-08-30 03:07:18', NULL, NULL),
(7, 51, '6576764646', '2018-09-03 04:08:21', '2018-09-03 04:08:21', NULL, NULL),
(8, 53, '111111111', '2018-09-03 04:15:24', '2018-09-03 04:15:24', NULL, NULL),
(9, 79, '1111', '2018-10-06 00:51:55', '2018-10-06 00:51:55', NULL, NULL),
(10, 147, '221133', '2018-12-04 00:58:35', '2018-12-04 00:58:35', NULL, NULL),
(11, 175, '1111', '2019-02-07 06:38:23', '2019-02-07 06:38:23', NULL, NULL),
(12, 176, '1111', '2019-02-07 06:54:59', '2019-02-07 06:54:59', NULL, NULL),
(13, 178, '420', '2019-02-07 07:07:04', '2019-02-07 07:07:04', NULL, NULL),
(14, 216, '12344321', '2019-11-11 04:39:11', '2019-11-11 04:39:11', NULL, NULL),
(15, 295, '111122222', '2020-10-18 05:17:24', '2020-10-18 05:17:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_credit_card`
--

CREATE TABLE `payment_with_credit_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_credit_card`
--

INSERT INTO `payment_with_credit_card` (`id`, `payment_id`, `customer_id`, `customer_stripe_id`, `charge_id`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(4, 294, 1, 'cus_IDw8z9yJZn4qH3', 'ch_1HdUGJKwOmA8HLXePiqphlky', '2020-10-18 05:16:55', '2020-10-18 05:16:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_gift_card`
--

CREATE TABLE `payment_with_gift_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_gift_card`
--

INSERT INTO `payment_with_gift_card` (`id`, `payment_id`, `gift_card_id`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 36, 2, '2018-08-24 21:48:36', '2018-08-25 00:57:35', NULL, NULL),
(4, 39, 1, '2018-08-25 02:36:34', '2018-08-25 02:36:34', NULL, NULL),
(6, 50, 1, '2018-09-02 23:01:38', '2018-09-02 23:01:38', NULL, NULL),
(8, 293, 1, '2020-10-18 05:14:26', '2020-10-18 05:14:26', NULL, NULL),
(9, 330, 1, '2021-06-19 07:24:28', '2021-06-19 07:24:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_paypal`
--

CREATE TABLE `payment_with_paypal` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `reference_no`, `employee_id`, `account_id`, `user_id`, `amount`, `paying_method`, `note`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(8, 'payroll-20190101-055231', 1, 1, 1, 100, '0', NULL, '2018-12-31 23:52:31', '2018-12-31 23:52:31', NULL, NULL),
(9, 'payroll-20191204-113802', 1, 1, 1, 10000, '0', NULL, '2019-12-04 17:38:02', '2019-12-04 17:38:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(4, 'products-edit', 'web', '2018-06-03 01:00:09', '2018-06-03 01:00:09', NULL, NULL),
(5, 'products-delete', 'web', '2018-06-03 22:54:22', '2018-06-03 22:54:22', NULL, NULL),
(6, 'products-add', 'web', '2018-06-04 00:34:14', '2018-06-04 00:34:14', NULL, NULL),
(7, 'products-index', 'web', '2018-06-04 03:34:27', '2018-06-04 03:34:27', NULL, NULL),
(8, 'purchases-index', 'web', '2018-06-04 08:03:19', '2018-06-04 08:03:19', NULL, NULL),
(9, 'purchases-add', 'web', '2018-06-04 08:12:25', '2018-06-04 08:12:25', NULL, NULL),
(10, 'purchases-edit', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36', NULL, NULL),
(11, 'purchases-delete', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36', NULL, NULL),
(12, 'sales-index', 'web', '2018-06-04 10:49:08', '2018-06-04 10:49:08', NULL, NULL),
(13, 'sales-add', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52', NULL, NULL),
(14, 'sales-edit', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52', NULL, NULL),
(15, 'sales-delete', 'web', '2018-06-04 10:49:53', '2018-06-04 10:49:53', NULL, NULL),
(16, 'quotes-index', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10', NULL, NULL),
(17, 'quotes-add', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10', NULL, NULL),
(18, 'quotes-edit', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10', NULL, NULL),
(19, 'quotes-delete', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10', NULL, NULL),
(20, 'transfers-index', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03', NULL, NULL),
(21, 'transfers-add', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03', NULL, NULL),
(22, 'transfers-edit', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03', NULL, NULL),
(23, 'transfers-delete', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03', NULL, NULL),
(24, 'returns-index', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24', NULL, NULL),
(25, 'returns-add', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24', NULL, NULL),
(26, 'returns-edit', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25', NULL, NULL),
(27, 'returns-delete', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25', NULL, NULL),
(28, 'customers-index', 'web', '2018-06-04 23:15:54', '2018-06-04 23:15:54', NULL, NULL),
(29, 'customers-add', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55', NULL, NULL),
(30, 'customers-edit', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55', NULL, NULL),
(31, 'customers-delete', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55', NULL, NULL),
(32, 'suppliers-index', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12', NULL, NULL),
(33, 'suppliers-add', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12', NULL, NULL),
(34, 'suppliers-edit', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12', NULL, NULL),
(35, 'suppliers-delete', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12', NULL, NULL),
(36, 'product-report', 'web', '2018-06-24 23:05:33', '2018-06-24 23:05:33', NULL, NULL),
(37, 'purchase-report', 'web', '2018-06-24 23:24:56', '2018-06-24 23:24:56', NULL, NULL),
(38, 'sale-report', 'web', '2018-06-24 23:33:13', '2018-06-24 23:33:13', NULL, NULL),
(39, 'customer-report', 'web', '2018-06-24 23:36:51', '2018-06-24 23:36:51', NULL, NULL),
(40, 'due-report', 'web', '2018-06-24 23:39:52', '2018-06-24 23:39:52', NULL, NULL),
(41, 'users-index', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10', NULL, NULL),
(42, 'users-add', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10', NULL, NULL),
(43, 'users-edit', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30', NULL, NULL),
(44, 'users-delete', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30', NULL, NULL),
(45, 'profit-loss', 'web', '2018-07-14 21:50:05', '2018-07-14 21:50:05', NULL, NULL),
(46, 'best-seller', 'web', '2018-07-14 22:01:38', '2018-07-14 22:01:38', NULL, NULL),
(47, 'daily-sale', 'web', '2018-07-14 22:24:21', '2018-07-14 22:24:21', NULL, NULL),
(48, 'monthly-sale', 'web', '2018-07-14 22:30:41', '2018-07-14 22:30:41', NULL, NULL),
(49, 'daily-purchase', 'web', '2018-07-14 22:36:46', '2018-07-14 22:36:46', NULL, NULL),
(50, 'monthly-purchase', 'web', '2018-07-14 22:48:17', '2018-07-14 22:48:17', NULL, NULL),
(51, 'payment-report', 'web', '2018-07-14 23:10:41', '2018-07-14 23:10:41', NULL, NULL),
(52, 'warehouse-stock-report', 'web', '2018-07-14 23:16:55', '2018-07-14 23:16:55', NULL, NULL),
(53, 'product-qty-alert', 'web', '2018-07-14 23:33:21', '2018-07-14 23:33:21', NULL, NULL),
(54, 'supplier-report', 'web', '2018-07-30 03:00:01', '2018-07-30 03:00:01', NULL, NULL),
(55, 'expenses-index', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10', NULL, NULL),
(56, 'expenses-add', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10', NULL, NULL),
(57, 'expenses-edit', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10', NULL, NULL),
(58, 'expenses-delete', 'web', '2018-09-05 01:07:11', '2018-09-05 01:07:11', NULL, NULL),
(59, 'general_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04', NULL, NULL),
(60, 'mail_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04', NULL, NULL),
(61, 'pos_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04', NULL, NULL),
(62, 'hrm_setting', 'web', '2019-01-02 10:30:23', '2019-01-02 10:30:23', NULL, NULL),
(63, 'purchase-return-index', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14', NULL, NULL),
(64, 'purchase-return-add', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14', NULL, NULL),
(65, 'purchase-return-edit', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14', NULL, NULL),
(66, 'purchase-return-delete', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14', NULL, NULL),
(67, 'account-index', 'web', '2019-01-02 22:06:13', '2019-01-02 22:06:13', NULL, NULL),
(68, 'balance-sheet', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14', NULL, NULL),
(69, 'account-statement', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14', NULL, NULL),
(70, 'department', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01', NULL, NULL),
(71, 'attendance', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01', NULL, NULL),
(72, 'payroll', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01', NULL, NULL),
(73, 'employees-index', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19', NULL, NULL),
(74, 'employees-add', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19', NULL, NULL),
(75, 'employees-edit', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19', NULL, NULL),
(76, 'employees-delete', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19', NULL, NULL),
(77, 'user-report', 'web', '2019-01-16 06:48:18', '2019-01-16 06:48:18', NULL, NULL),
(78, 'stock_count', 'web', '2019-02-17 10:32:01', '2019-02-17 10:32:01', NULL, NULL),
(79, 'adjustment', 'web', '2019-02-17 10:32:02', '2019-02-17 10:32:02', NULL, NULL),
(80, 'sms_setting', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03', NULL, NULL),
(81, 'create_sms', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03', NULL, NULL),
(82, 'print_barcode', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19', NULL, NULL),
(83, 'empty_database', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19', NULL, NULL),
(84, 'customer_group', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15', NULL, NULL),
(85, 'unit', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15', NULL, NULL),
(86, 'tax', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15', NULL, NULL),
(87, 'gift_card', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38', NULL, NULL),
(88, 'coupon', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38', NULL, NULL),
(89, 'holiday', 'web', '2019-10-19 08:57:15', '2019-10-19 08:57:15', NULL, NULL),
(90, 'warehouse-report', 'web', '2019-10-22 06:00:23', '2019-10-22 06:00:23', NULL, NULL),
(91, 'warehouse', 'web', '2020-02-26 06:47:32', '2020-02-26 06:47:32', NULL, NULL),
(92, 'brand', 'web', '2020-02-26 06:59:59', '2020-02-26 06:59:59', NULL, NULL),
(93, 'billers-index', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15', NULL, NULL),
(94, 'billers-add', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15', NULL, NULL),
(95, 'billers-edit', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15', NULL, NULL),
(96, 'billers-delete', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15', NULL, NULL),
(97, 'money-transfer', 'web', '2020-03-02 05:41:48', '2020-03-02 05:41:48', NULL, NULL),
(98, 'category', 'web', '2020-07-13 12:13:16', '2020-07-13 12:13:16', NULL, NULL),
(99, 'delivery', 'web', '2020-07-13 12:13:16', '2020-07-13 12:13:16', NULL, NULL),
(100, 'send_notification', 'web', '2020-10-31 06:21:31', '2020-10-31 06:21:31', NULL, NULL),
(101, 'today_sale', 'web', '2020-10-31 06:57:04', '2020-10-31 06:57:04', NULL, NULL),
(102, 'today_profit', 'web', '2020-10-31 06:57:04', '2020-10-31 06:57:04', NULL, NULL),
(103, 'currency', 'web', '2020-11-09 00:23:11', '2020-11-09 00:23:11', NULL, NULL),
(104, 'backup_database', 'web', '2020-11-15 00:16:55', '2020-11-15 00:16:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pos_setting`
--

CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_setting`
--

INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `stripe_public_key`, `stripe_secret_key`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 11, 2, 1, 4, 0, 'pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB', 'sk_test_TtQQaawhEYRwa3mU9CzttrEy', '2018-09-02 03:17:04', '2020-04-17 13:59:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_variant`, `is_diffPrice`, `featured`, `product_list`, `qty_list`, `price_list`, `product_details`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'Mouse', '63920719', 'standard', 'C39', 4, 3, 1, 1, 1, '320', '400', 182, 20, 1, '350', '2020-06-30', '2020-07-31', 1, 1, 'toponemouse.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, '<p style=@text-align: center;@>11:11:30 AM<img src=@https://pbs.twimg.com/profile_images/900037286879838208/sZhajgua_400x400.jpg@ alt=@SmartTeam@ width=@400@ height=@400@ /><span style=@background-color: #ccffff;@>hello world<br /></span></p>', 0, '2018-05-13 05:23:03', '2022-11-15 21:45:50', NULL, NULL),
(63, 'جراب خلفي', '82348911', 'standard', 'C128', 8, 4, 1, 1, 1, '500', '500', 78, NULL, 1, '60', '2022-11-15', '2023-11-15', NULL, 1, '16685203121511.jpg', NULL, NULL, 0, 0, NULL, NULL, NULL, '', 1, '2022-11-15 21:44:48', '2022-11-15 23:10:40', NULL, NULL),
(64, 'جراب خلفي فاخر', '50392463', 'standard', 'C128', 8, 4, 1, 1, 1, '700', '700', 26, NULL, NULL, NULL, NULL, NULL, NULL, 1, '166852039594110.jpg', NULL, NULL, 0, 0, NULL, NULL, NULL, '', 1, '2022-11-15 21:48:58', '2022-11-15 23:10:40', NULL, NULL),
(65, 'جراب خلفي أوريجنال', '62819046', 'standard', 'C128', 8, 4, 1, 1, 1, '600', '600', 100, NULL, NULL, NULL, NULL, NULL, NULL, 1, '166852221969110.jpg', NULL, NULL, 0, 0, NULL, NULL, NULL, '', 1, '2022-11-15 22:21:06', '2022-11-15 23:10:40', NULL, NULL),
(66, 'جراب تكنو', '30392149', 'standard', 'C128', 10, 4, 1, 1, 1, '300', '300', 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, '166852254480711.jpg', NULL, NULL, 0, 0, NULL, NULL, NULL, '', 1, '2022-11-15 22:27:47', '2022-11-15 23:10:40', NULL, NULL),
(67, 'شاحن رسيفر', '00291582', 'standard', 'C128', 8, 4, 1, 1, 1, '800', '800', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, '166852291333212.jpg', NULL, NULL, 0, 0, NULL, NULL, NULL, '', 1, '2022-11-15 22:31:50', '2022-11-15 23:10:40', NULL, NULL),
(68, 'شاحن رسيفر open pox', '18512434', 'standard', 'C128', 3, 4, 1, 1, 1, '9500', '9500', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, '166852309445113.png', NULL, NULL, 0, 0, NULL, NULL, NULL, '', 1, '2022-11-15 22:36:41', '2022-11-15 23:10:40', NULL, NULL),
(69, 'مقعذ اولمبي', '75205342', 'standard', 'C128', NULL, 2, 1, 1, 1, '1500', '1500', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, '166852357991015.PNG', NULL, NULL, 0, 0, NULL, NULL, NULL, '', 1, '2022-11-15 22:45:56', '2022-11-15 23:10:40', NULL, NULL),
(70, 'مقعذ اولمبي مشترك', '21875401', 'standard', 'C128', NULL, 2, 1, 1, 1, '1500', '1500', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, '166852369501815.PNG', NULL, NULL, 0, 0, NULL, NULL, NULL, '', 1, '2022-11-15 22:47:50', '2022-11-15 23:10:40', NULL, NULL),
(71, 'سماعة mp3 b1', '08843003', 'standard', 'C128', NULL, 2, 1, 1, 1, '2200', '2200', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, '166852387524216.jpg', NULL, NULL, 0, 0, NULL, NULL, NULL, '', 1, '2022-11-15 22:50:52', '2022-11-15 23:10:40', NULL, NULL),
(72, 'سماعة mp3 b2', '52998223', 'standard', 'C128', NULL, 2, 1, 1, 1, '2500', '2500', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, '166852400188817.jpg', NULL, NULL, 0, 0, NULL, NULL, NULL, '', 1, '2022-11-15 22:52:38', '2022-11-15 23:10:40', NULL, NULL),
(73, 'سماعة بلوتوث', '73226511', 'standard', 'C128', NULL, 4, 1, 1, 1, '1500', '1500', 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, '166852420398318.jpg', NULL, NULL, 0, 0, NULL, NULL, NULL, '', 1, '2022-11-15 22:55:27', '2022-11-15 23:10:40', NULL, NULL),
(74, 'وصلة النواقع', '16476240', 'standard', 'C128', NULL, 2, 1, 1, 1, '500', '500', 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-15 22:56:20', '2022-11-15 23:10:40', NULL, NULL),
(75, 'شاحن عربي', '92411879', 'standard', 'C128', NULL, 4, 1, 1, 1, '800', '800', 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-15 22:57:53', '2022-11-15 23:10:40', NULL, NULL),
(76, 'يد بلستيشن', '92401594', 'standard', 'C128', NULL, 2, 1, 1, 1, '2000', '2000', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, '166852438731919.jpg', NULL, NULL, 0, 0, NULL, NULL, NULL, '', 1, '2022-11-15 22:59:14', '2022-11-15 23:10:40', NULL, NULL),
(77, 'شاحن أصلي', '49180291', 'standard', 'C128', NULL, 4, 1, 1, 1, '2000', '2000', 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-15 23:01:24', '2022-11-15 23:10:40', NULL, NULL),
(78, 'كيس وصلة  خضراء', '61109855', 'standard', 'C128', NULL, 2, 1, 1, 1, '1500', '1500', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-15 23:02:22', '2022-11-15 23:10:40', NULL, NULL),
(79, 'وصلة ايفون', '78920325', 'standard', 'C128', NULL, 4, 1, 1, 1, '500', '500', 13, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-15 23:03:07', '2022-11-15 23:10:40', NULL, NULL),
(80, 'استيكر   d5', '81596273', 'standard', 'C128', NULL, 12, 1, 1, 1, '150', '150', 301, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-15 23:15:39', '2022-11-16 00:29:53', NULL, NULL),
(81, 'استيكر مرايا', '44290768', 'standard', 'C128', NULL, 12, 1, 1, 1, '500', '500', 58, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-15 23:16:41', '2022-11-16 00:29:53', NULL, NULL),
(82, 'شاحن خارجي', '42160871', 'standard', 'C128', NULL, 4, 1, 1, 1, '400', '400', 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-15 23:17:36', '2022-11-16 00:29:53', NULL, NULL),
(83, 'وصلة OTG', '96134040', 'standard', 'C128', NULL, 2, 1, 1, 1, '500', '500', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-15 23:19:00', '2022-11-16 00:29:53', NULL, NULL),
(84, 'سماعة NST', '52311099', 'standard', 'C128', NULL, 2, 1, 1, 1, '600', '600', 9, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-15 23:20:13', '2022-11-16 00:29:53', NULL, NULL),
(85, 'سماعة ايربودز', '36824077', 'standard', 'C128', NULL, 2, 1, 1, 1, '6000', '6000', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-15 23:55:34', '2022-11-16 00:29:53', NULL, NULL),
(86, 'ساعة i12', '39165025', 'standard', 'C128', NULL, 2, 1, 1, 1, '3500', '3500', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-15 23:57:40', '2022-11-15 23:57:40', NULL, NULL),
(87, 'عربية mp3', '83314377', 'standard', 'C128', NULL, 2, 1, 1, 1, '2000', '2000', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-15 23:59:35', '2022-11-16 00:29:53', NULL, NULL),
(88, 'كفر نوكيا', '02074734', 'standard', 'C128', NULL, 2, 1, 1, 1, '300', '300', 58, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:00:35', '2022-11-16 00:29:53', NULL, NULL),
(89, 'جراب ايربودز', '33504628', 'standard', 'C128', NULL, 2, 1, 1, 1, '900', '900', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:01:47', '2022-11-16 00:29:53', NULL, NULL),
(90, 'وصلة باكم', '97317924', 'standard', 'C128', NULL, 2, 1, 1, 1, '600', '600', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:02:51', '2022-11-16 00:29:53', NULL, NULL),
(91, 'شاحن هندي', '77283690', 'standard', 'C128', NULL, 4, 1, 1, 1, '1000', '1000', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:03:44', '2022-11-16 00:29:53', NULL, NULL),
(92, 'وصلة ابره', '02437807', 'standard', 'C128', NULL, 4, 1, 1, 1, '400', '400', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:04:38', '2022-11-16 00:29:53', NULL, NULL),
(93, 'شاحن تجاري', '83359197', 'standard', 'C128', NULL, 4, 1, 1, 1, '450', '450', 7, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:06:08', '2022-11-16 00:29:53', NULL, NULL),
(94, 'وصلة عاديه', '19645283', 'standard', 'C128', NULL, 2, 1, 1, 1, '300', '300', 16, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:06:58', '2022-11-16 00:29:53', NULL, NULL),
(95, 'ريموت', '33109340', 'standard', 'C128', NULL, 2, 1, 1, 1, '450', '450', 43, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:07:47', '2022-11-16 00:29:53', NULL, NULL),
(96, 'بطارية ايتل', '50204196', 'standard', 'C128', 9, 4, 1, 1, 1, '400', '400', 80, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:08:40', '2022-11-16 00:33:56', NULL, NULL),
(97, 'بطارية galaxy', '43091870', 'standard', 'C128', 4, 4, 1, 1, 1, '1400', '1400', 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:09:39', '2022-11-16 00:33:56', NULL, NULL),
(98, 'بطارية تكنو', '75109906', 'standard', 'C128', 10, 4, 1, 1, 1, '1000', '1000', 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:10:32', '2022-11-16 00:33:56', NULL, NULL),
(99, 'باطارية y7', '09134989', 'standard', 'C128', 8, 4, 1, 1, 1, '2000', '2000', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:11:20', '2022-11-16 00:33:56', NULL, NULL),
(100, 'بور بنك', '21692347', 'standard', 'C128', NULL, 2, 1, 1, 1, '3500', '3500', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:12:19', '2022-11-16 00:33:56', NULL, NULL),
(101, 'سماعة AKG', '70269713', 'standard', 'C128', NULL, 4, 1, 1, 1, '300', '300', 59, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:13:05', '2022-11-16 00:33:56', NULL, NULL),
(102, 'وصلة HD', '31137242', 'standard', 'C128', NULL, 2, 1, 1, 1, '750', '750', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:13:49', '2022-11-16 00:33:56', NULL, NULL),
(103, 'جاكات', '39082815', 'standard', 'C128', NULL, 2, 1, 1, 1, '400', '400', 16, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:14:29', '2022-11-16 00:33:56', NULL, NULL),
(104, 'سماعة سامسونج', '11906268', 'standard', 'C128', 4, 4, 1, 1, 1, '400', '400', 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:15:36', '2022-11-16 00:33:56', NULL, NULL),
(105, 'OTG', '10832969', 'standard', 'C128', NULL, 2, 1, 1, 1, '100', '100', 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:16:23', '2022-11-16 00:33:56', NULL, NULL),
(106, 'مساكات', '03812294', 'standard', 'C128', NULL, 2, 1, 1, 1, '200', '200', 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:17:09', '2022-11-16 00:33:56', NULL, NULL),
(107, 'راوتر', '25130861', 'standard', 'C128', NULL, 2, 1, 1, 1, '10000', '10000', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:17:51', '2022-11-16 00:33:56', NULL, NULL),
(108, 'سماعة i12', '11705048', 'standard', 'C128', NULL, 2, 1, 1, 1, '3500', '3500', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-11-16 00:23:29', '2022-11-16 00:29:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_adjustments`
--

CREATE TABLE `product_adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_purchases`
--

CREATE TABLE `product_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_purchases`
--

INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `variant_id`, `qty`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(264, 91, 63, NULL, 78, 78, 1, 500, 0, 0, 0, 39000, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(265, 91, 65, NULL, 100, 100, 1, 600, 0, 0, 0, 60000, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(266, 91, 66, NULL, 8, 8, 1, 300, 0, 0, 0, 2400, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(267, 91, 67, NULL, 6, 6, 1, 800, 0, 0, 0, 4800, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(268, 91, 69, NULL, 2, 2, 1, 1500, 0, 0, 0, 3000, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(269, 91, 70, NULL, 1, 1, 1, 1500, 0, 0, 0, 1500, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(270, 91, 68, NULL, 2, 2, 1, 9500, 0, 0, 0, 19000, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(271, 91, 71, NULL, 4, 4, 1, 2200, 0, 0, 0, 8800, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(272, 91, 72, NULL, 1, 1, 1, 2500, 0, 0, 0, 2500, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(273, 91, 73, NULL, 3, 3, 1, 1500, 0, 0, 0, 4500, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(274, 91, 74, NULL, 10, 10, 1, 500, 0, 0, 0, 5000, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(275, 91, 75, NULL, 3, 3, 1, 800, 0, 0, 0, 2400, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(276, 91, 76, NULL, 1, 1, 1, 2000, 0, 0, 0, 2000, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(277, 91, 77, NULL, 3, 3, 1, 2000, 0, 0, 0, 6000, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(278, 91, 78, NULL, 5, 5, 1, 1500, 0, 0, 0, 7500, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(279, 91, 79, NULL, 13, 13, 1, 500, 0, 0, 0, 6500, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(280, 91, 64, NULL, 26, 26, 1, 700, 0, 0, 0, 18200, '2022-11-15 23:10:40', '2022-11-15 23:10:40', NULL, NULL),
(287, 92, 80, NULL, 301, 301, 1, 150, 0, 0, 0, 45150, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(288, 92, 81, NULL, 58, 58, 1, 500, 0, 0, 0, 29000, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(289, 92, 82, NULL, 8, 8, 1, 400, 0, 0, 0, 3200, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(290, 92, 83, NULL, 2, 2, 1, 500, 0, 0, 0, 1000, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(291, 92, 84, NULL, 9, 9, 1, 600, 0, 0, 0, 5400, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(292, 92, 85, NULL, 1, 1, 1, 6000, 0, 0, 0, 6000, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(293, 92, 108, NULL, 1, 1, 1, 3500, 0, 0, 0, 3500, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(294, 92, 87, NULL, 4, 4, 1, 2000, 0, 0, 0, 8000, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(295, 92, 88, NULL, 58, 58, 1, 300, 0, 0, 0, 17400, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(296, 92, 89, NULL, 4, 4, 1, 900, 0, 0, 0, 3600, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(297, 92, 90, NULL, 4, 4, 1, 600, 0, 0, 0, 2400, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(298, 92, 91, NULL, 5, 5, 1, 1000, 0, 0, 0, 5000, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(299, 92, 92, NULL, 4, 4, 1, 400, 0, 0, 0, 1600, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(300, 92, 93, NULL, 7, 7, 1, 450, 0, 0, 0, 3150, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(301, 92, 94, NULL, 16, 16, 1, 300, 0, 0, 0, 4800, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(302, 92, 95, NULL, 43, 43, 1, 450, 0, 0, 0, 19350, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(303, 93, 96, NULL, 80, 80, 1, 400, 0, 0, 0, 32000, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(304, 93, 97, NULL, 10, 10, 1, 1400, 0, 0, 0, 14000, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(305, 93, 98, NULL, 8, 8, 1, 1000, 0, 0, 0, 8000, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(306, 93, 99, NULL, 6, 6, 1, 2000, 0, 0, 0, 12000, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(307, 93, 100, NULL, 2, 2, 1, 3500, 0, 0, 0, 7000, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(308, 93, 101, NULL, 59, 59, 1, 300, 0, 0, 0, 17700, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(309, 93, 102, NULL, 2, 2, 1, 750, 0, 0, 0, 1500, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(310, 93, 103, NULL, 16, 16, 1, 400, 0, 0, 0, 6400, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(311, 93, 104, NULL, 10, 10, 1, 400, 0, 0, 0, 4000, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(312, 93, 105, NULL, 10, 10, 1, 100, 0, 0, 0, 1000, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(313, 93, 106, NULL, 8, 8, 1, 200, 0, 0, 0, 1600, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(314, 93, 107, NULL, 2, 2, 1, 10000, 0, 0, 0, 20000, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_quotation`
--

CREATE TABLE `product_quotation` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_returns`
--

CREATE TABLE `product_returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_transfer`
--

CREATE TABLE `product_transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `product_id`, `variant_id`, `warehouse_id`, `qty`, `price`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(50, '63', NULL, 1, 78, NULL, '2022-11-15 21:55:20', '2022-11-15 23:10:40', NULL, NULL),
(51, '64', NULL, 1, 26, NULL, '2022-11-15 21:55:20', '2022-11-15 23:10:40', NULL, NULL),
(52, '65', NULL, 1, 100, NULL, '2022-11-15 23:08:43', '2022-11-15 23:10:40', NULL, NULL),
(53, '66', NULL, 1, 8, NULL, '2022-11-15 23:08:43', '2022-11-15 23:10:40', NULL, NULL),
(54, '67', NULL, 1, 6, NULL, '2022-11-15 23:08:43', '2022-11-15 23:10:40', NULL, NULL),
(55, '69', NULL, 1, 2, NULL, '2022-11-15 23:08:43', '2022-11-15 23:10:40', NULL, NULL),
(56, '70', NULL, 1, 1, NULL, '2022-11-15 23:08:43', '2022-11-15 23:10:40', NULL, NULL),
(57, '68', NULL, 1, 2, NULL, '2022-11-15 23:08:43', '2022-11-15 23:10:40', NULL, NULL),
(58, '71', NULL, 1, 4, NULL, '2022-11-15 23:08:43', '2022-11-15 23:10:40', NULL, NULL),
(59, '72', NULL, 1, 1, NULL, '2022-11-15 23:08:43', '2022-11-15 23:10:40', NULL, NULL),
(60, '73', NULL, 1, 3, NULL, '2022-11-15 23:08:43', '2022-11-15 23:10:40', NULL, NULL),
(61, '74', NULL, 1, 10, NULL, '2022-11-15 23:08:43', '2022-11-15 23:10:40', NULL, NULL),
(62, '75', NULL, 1, 3, NULL, '2022-11-15 23:08:43', '2022-11-15 23:10:40', NULL, NULL),
(63, '76', NULL, 1, 1, NULL, '2022-11-15 23:08:44', '2022-11-15 23:10:40', NULL, NULL),
(64, '77', NULL, 1, 3, NULL, '2022-11-15 23:08:44', '2022-11-15 23:10:40', NULL, NULL),
(65, '78', NULL, 1, 5, NULL, '2022-11-15 23:08:44', '2022-11-15 23:10:40', NULL, NULL),
(66, '79', NULL, 1, 13, NULL, '2022-11-15 23:08:44', '2022-11-15 23:10:40', NULL, NULL),
(67, '80', NULL, 1, 301, NULL, '2022-11-16 00:21:40', '2022-11-16 00:29:53', NULL, NULL),
(68, '81', NULL, 1, 58, NULL, '2022-11-16 00:21:40', '2022-11-16 00:29:53', NULL, NULL),
(69, '82', NULL, 1, 8, NULL, '2022-11-16 00:21:40', '2022-11-16 00:29:53', NULL, NULL),
(70, '83', NULL, 1, 2, NULL, '2022-11-16 00:21:40', '2022-11-16 00:29:53', NULL, NULL),
(71, '84', NULL, 1, 9, NULL, '2022-11-16 00:21:40', '2022-11-16 00:29:53', NULL, NULL),
(72, '85', NULL, 1, 1, NULL, '2022-11-16 00:21:40', '2022-11-16 00:29:53', NULL, NULL),
(73, '108', NULL, 1, 1, NULL, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(74, '87', NULL, 1, 4, NULL, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(75, '88', NULL, 1, 58, NULL, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(76, '89', NULL, 1, 4, NULL, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(77, '90', NULL, 1, 4, NULL, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(78, '91', NULL, 1, 5, NULL, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(79, '92', NULL, 1, 4, NULL, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(80, '93', NULL, 1, 7, NULL, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(81, '94', NULL, 1, 16, NULL, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(82, '95', NULL, 1, 43, NULL, '2022-11-16 00:29:53', '2022-11-16 00:29:53', NULL, NULL),
(83, '96', NULL, 1, 80, NULL, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(84, '97', NULL, 1, 10, NULL, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(85, '98', NULL, 1, 8, NULL, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(86, '99', NULL, 1, 6, NULL, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(87, '100', NULL, 1, 2, NULL, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(88, '101', NULL, 1, 59, NULL, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(89, '102', NULL, 1, 2, NULL, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(90, '103', NULL, 1, 16, NULL, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(91, '104', NULL, 1, 10, NULL, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(92, '105', NULL, 1, 10, NULL, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(93, '106', NULL, 1, 8, NULL, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL),
(94, '107', NULL, 1, 2, NULL, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `user_id`, `warehouse_id`, `supplier_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `status`, `payment_status`, `document`, `note`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(91, 'pr-20221115-015520', 1, 1, 3, 17, 266, 0, 0, 193100, 0, 0, 0, 0, 193100, 0, 1, 1, NULL, NULL, '2022-11-15 21:55:20', '2022-11-15 23:10:40', NULL, NULL),
(92, 'pr-20221115-042140', 1, 1, 3, 16, 525, 0, 0, 158550, 0, 0, 0, 0, 158550, 0, 1, 1, NULL, NULL, '2022-11-16 00:21:40', '2022-11-16 00:29:53', NULL, NULL),
(93, 'pr-20221115-043356', 1, 1, 3, 12, 213, 0, 0, 125200, 0, 0, NULL, NULL, 125200, 0, 1, 1, NULL, NULL, '2022-11-16 00:33:56', '2022-11-16 00:33:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product_return`
--

CREATE TABLE `purchase_product_return` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `reference_no`, `user_id`, `biller_id`, `supplier_id`, `customer_id`, `warehouse_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `quotation_status`, `document`, `note`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'qr-20180809-055250', 1, 1, 3, 3, 1, 3, 57, 35, 767.73, 5930, 10, 583, 100, 500, 6913, 2, NULL, 'first quotation...', '2018-08-08 23:52:50', '2018-09-04 03:32:16', NULL, NULL),
(2, 'qr-20180904-040257', 1, 1, NULL, 1, 1, 2, 3.5, 0, 0, 76, 0, 0, 1.6, 2.7, 77.1, 1, NULL, NULL, '2018-09-03 22:02:57', '2018-09-21 07:05:57', NULL, NULL),
(3, 'qr-20181023-061249', 9, 1, 3, 11, 1, 2, 2, 0, 40, 453, 0, 0, 0, 0, 453, 2, NULL, NULL, '2018-10-23 00:12:49', '2019-12-21 06:41:36', NULL, NULL),
(11, 'qr-20201024-090814', 1, 1, NULL, 1, 1, 1, 2, 0, 3000, 23000, 0, 0, 0, 0, 23000, 1, NULL, NULL, '2020-10-24 03:08:14', '2020-10-24 03:28:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `reference_no`, `user_id`, `cash_register_id`, `customer_id`, `warehouse_id`, `biller_id`, `account_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `grand_total`, `document`, `return_note`, `staff_note`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(2, 'rr-20180809-055834', 1, NULL, 1, 1, 1, 1, 1, 20, 0, 0, 40, 10, 4, 44, NULL, NULL, NULL, '2018-08-08 23:58:34', '2018-08-08 23:58:34', NULL, NULL),
(3, 'rr-20180828-045527', 1, NULL, 1, 2, 1, 1, 1, 2, 0, 0, 44, 0, 0, 44, NULL, NULL, NULL, '2018-08-27 22:55:27', '2018-09-20 11:03:47', NULL, NULL),
(5, 'rr-20181007-082129', 1, NULL, 11, 2, 2, 1, 1, 1, 0, 0, 250, 0, 0, 250, NULL, NULL, NULL, '2018-10-07 02:21:29', '2018-12-25 22:16:08', NULL, NULL),
(6, 'rr-20190101-090630', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 40, 440, 0, 0, 440, NULL, NULL, NULL, '2019-01-01 03:06:30', '2019-01-01 03:06:30', NULL, NULL),
(13, 'rr-20200816-102502', 1, NULL, 1, 2, 2, 1, 1, 1, 0, 1500, 11500, 0, 0, 11500, NULL, NULL, NULL, '2020-08-16 16:25:02', '2020-08-16 16:25:02', NULL, NULL),
(14, 'rr-20201013-053954', 9, 1, 1, 1, 1, 1, 1, 1, 0, 40, 440, 0, 0, 440, NULL, NULL, NULL, '2020-10-13 11:39:54', '2020-10-13 11:39:54', NULL, NULL),
(18, 'rr-20201118-070218', 1, 4, 1, 2, 1, 1, 1, 1, 0, 1500, 11500, 0, 0, 11500, NULL, NULL, NULL, '2020-11-18 01:02:18', '2020-11-18 01:02:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `return_purchases`
--

CREATE TABLE `return_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_purchases`
--

INSERT INTO `return_purchases` (`id`, `reference_no`, `supplier_id`, `warehouse_id`, `user_id`, `account_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `grand_total`, `document`, `return_note`, `staff_note`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'prr-20190101-090759', 3, 2, 1, 3, 1, 1, 0, 0, 200, 0, 0, 200, NULL, NULL, NULL, '2019-01-01 03:07:59', '2021-05-17 20:29:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'Admin', 'admin can access all data...', 'web', 1, '2018-06-01 23:46:44', '2018-06-02 23:13:05', NULL, NULL),
(2, 'Owner', 'Owner of shop...', 'web', 1, '2018-10-22 02:38:13', '2018-10-22 02:38:13', NULL, NULL),
(4, 'staff', 'staff has specific acess...', 'web', 1, '2018-06-02 00:05:27', '2018-06-02 00:05:27', NULL, NULL),
(5, 'Customer', NULL, 'web', 1, '2020-11-05 06:43:16', '2020-11-15 00:24:15', NULL, NULL),
(6, 'POS Employee', 'just a point of sale employee', 'web', 1, '2021-09-10 11:39:13', '2021-09-10 11:39:13', NULL, NULL),
(7, 'sales', 'sales', 'web', 1, '2021-09-11 11:03:53', '2021-09-11 11:03:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`, `organization_id`, `branch_id`) VALUES
(4, 1, NULL, NULL),
(4, 2, NULL, NULL),
(4, 4, NULL, NULL),
(4, 6, NULL, NULL),
(4, 7, NULL, NULL),
(5, 1, NULL, NULL),
(5, 2, NULL, NULL),
(5, 6, NULL, NULL),
(5, 7, NULL, NULL),
(6, 1, NULL, NULL),
(6, 2, NULL, NULL),
(6, 4, NULL, NULL),
(6, 6, NULL, NULL),
(6, 7, NULL, NULL),
(7, 1, NULL, NULL),
(7, 2, NULL, NULL),
(7, 4, NULL, NULL),
(7, 6, NULL, NULL),
(7, 7, NULL, NULL),
(8, 1, NULL, NULL),
(8, 2, NULL, NULL),
(8, 4, NULL, NULL),
(8, 6, NULL, NULL),
(9, 1, NULL, NULL),
(9, 2, NULL, NULL),
(9, 4, NULL, NULL),
(9, 6, NULL, NULL),
(10, 1, NULL, NULL),
(10, 2, NULL, NULL),
(10, 6, NULL, NULL),
(11, 1, NULL, NULL),
(11, 2, NULL, NULL),
(11, 6, NULL, NULL),
(12, 1, NULL, NULL),
(12, 2, NULL, NULL),
(12, 4, NULL, NULL),
(12, 6, NULL, NULL),
(13, 1, NULL, NULL),
(13, 2, NULL, NULL),
(13, 4, NULL, NULL),
(13, 6, NULL, NULL),
(14, 1, NULL, NULL),
(14, 2, NULL, NULL),
(14, 6, NULL, NULL),
(15, 1, NULL, NULL),
(15, 2, NULL, NULL),
(15, 6, NULL, NULL),
(16, 1, NULL, NULL),
(16, 2, NULL, NULL),
(16, 6, NULL, NULL),
(17, 1, NULL, NULL),
(17, 2, NULL, NULL),
(17, 6, NULL, NULL),
(18, 1, NULL, NULL),
(18, 2, NULL, NULL),
(18, 6, NULL, NULL),
(19, 1, NULL, NULL),
(19, 2, NULL, NULL),
(19, 6, NULL, NULL),
(20, 1, NULL, NULL),
(20, 2, NULL, NULL),
(20, 4, NULL, NULL),
(20, 6, NULL, NULL),
(21, 1, NULL, NULL),
(21, 2, NULL, NULL),
(21, 4, NULL, NULL),
(21, 6, NULL, NULL),
(22, 1, NULL, NULL),
(22, 2, NULL, NULL),
(22, 4, NULL, NULL),
(22, 6, NULL, NULL),
(23, 1, NULL, NULL),
(23, 2, NULL, NULL),
(23, 6, NULL, NULL),
(24, 1, NULL, NULL),
(24, 2, NULL, NULL),
(24, 4, NULL, NULL),
(24, 6, NULL, NULL),
(25, 1, NULL, NULL),
(25, 2, NULL, NULL),
(25, 4, NULL, NULL),
(25, 6, NULL, NULL),
(26, 1, NULL, NULL),
(26, 2, NULL, NULL),
(26, 6, NULL, NULL),
(27, 1, NULL, NULL),
(27, 2, NULL, NULL),
(27, 6, NULL, NULL),
(28, 1, NULL, NULL),
(28, 2, NULL, NULL),
(28, 4, NULL, NULL),
(28, 6, NULL, NULL),
(29, 1, NULL, NULL),
(29, 2, NULL, NULL),
(29, 4, NULL, NULL),
(29, 6, NULL, NULL),
(30, 1, NULL, NULL),
(30, 2, NULL, NULL),
(30, 6, NULL, NULL),
(31, 1, NULL, NULL),
(31, 2, NULL, NULL),
(31, 6, NULL, NULL),
(32, 1, NULL, NULL),
(32, 2, NULL, NULL),
(32, 6, NULL, NULL),
(33, 1, NULL, NULL),
(33, 2, NULL, NULL),
(33, 6, NULL, NULL),
(34, 1, NULL, NULL),
(34, 2, NULL, NULL),
(34, 6, NULL, NULL),
(35, 1, NULL, NULL),
(35, 2, NULL, NULL),
(35, 6, NULL, NULL),
(36, 1, NULL, NULL),
(36, 2, NULL, NULL),
(37, 1, NULL, NULL),
(37, 2, NULL, NULL),
(38, 1, NULL, NULL),
(38, 2, NULL, NULL),
(39, 1, NULL, NULL),
(39, 2, NULL, NULL),
(40, 1, NULL, NULL),
(40, 2, NULL, NULL),
(41, 1, NULL, NULL),
(41, 2, NULL, NULL),
(41, 6, NULL, NULL),
(42, 1, NULL, NULL),
(42, 2, NULL, NULL),
(42, 6, NULL, NULL),
(43, 1, NULL, NULL),
(43, 2, NULL, NULL),
(43, 6, NULL, NULL),
(44, 1, NULL, NULL),
(44, 2, NULL, NULL),
(44, 6, NULL, NULL),
(45, 1, NULL, NULL),
(45, 2, NULL, NULL),
(46, 1, NULL, NULL),
(46, 2, NULL, NULL),
(47, 1, NULL, NULL),
(47, 2, NULL, NULL),
(48, 1, NULL, NULL),
(48, 2, NULL, NULL),
(49, 1, NULL, NULL),
(49, 2, NULL, NULL),
(50, 1, NULL, NULL),
(50, 2, NULL, NULL),
(51, 1, NULL, NULL),
(51, 2, NULL, NULL),
(52, 1, NULL, NULL),
(52, 2, NULL, NULL),
(53, 1, NULL, NULL),
(53, 2, NULL, NULL),
(54, 1, NULL, NULL),
(54, 2, NULL, NULL),
(55, 1, NULL, NULL),
(55, 2, NULL, NULL),
(55, 4, NULL, NULL),
(55, 6, NULL, NULL),
(56, 1, NULL, NULL),
(56, 2, NULL, NULL),
(56, 4, NULL, NULL),
(56, 6, NULL, NULL),
(57, 1, NULL, NULL),
(57, 2, NULL, NULL),
(57, 4, NULL, NULL),
(57, 6, NULL, NULL),
(58, 1, NULL, NULL),
(58, 2, NULL, NULL),
(58, 6, NULL, NULL),
(59, 1, NULL, NULL),
(59, 2, NULL, NULL),
(60, 1, NULL, NULL),
(60, 2, NULL, NULL),
(61, 1, NULL, NULL),
(61, 2, NULL, NULL),
(62, 1, NULL, NULL),
(62, 2, NULL, NULL),
(63, 1, NULL, NULL),
(63, 2, NULL, NULL),
(63, 4, NULL, NULL),
(63, 6, NULL, NULL),
(64, 1, NULL, NULL),
(64, 2, NULL, NULL),
(64, 4, NULL, NULL),
(64, 6, NULL, NULL),
(65, 1, NULL, NULL),
(65, 2, NULL, NULL),
(65, 6, NULL, NULL),
(66, 1, NULL, NULL),
(66, 2, NULL, NULL),
(66, 6, NULL, NULL),
(67, 1, NULL, NULL),
(67, 2, NULL, NULL),
(68, 1, NULL, NULL),
(68, 2, NULL, NULL),
(69, 1, NULL, NULL),
(69, 2, NULL, NULL),
(70, 1, NULL, NULL),
(70, 2, NULL, NULL),
(71, 1, NULL, NULL),
(71, 2, NULL, NULL),
(72, 1, NULL, NULL),
(72, 2, NULL, NULL),
(73, 1, NULL, NULL),
(73, 2, NULL, NULL),
(73, 6, NULL, NULL),
(74, 1, NULL, NULL),
(74, 2, NULL, NULL),
(74, 6, NULL, NULL),
(75, 1, NULL, NULL),
(75, 2, NULL, NULL),
(75, 6, NULL, NULL),
(76, 1, NULL, NULL),
(76, 2, NULL, NULL),
(76, 6, NULL, NULL),
(77, 1, NULL, NULL),
(77, 2, NULL, NULL),
(78, 1, NULL, NULL),
(78, 2, NULL, NULL),
(79, 1, NULL, NULL),
(79, 2, NULL, NULL),
(80, 1, NULL, NULL),
(80, 2, NULL, NULL),
(81, 1, NULL, NULL),
(81, 2, NULL, NULL),
(82, 1, NULL, NULL),
(82, 2, NULL, NULL),
(83, 1, NULL, NULL),
(83, 2, NULL, NULL),
(84, 1, NULL, NULL),
(84, 2, NULL, NULL),
(85, 1, NULL, NULL),
(85, 2, NULL, NULL),
(86, 1, NULL, NULL),
(86, 2, NULL, NULL),
(87, 1, NULL, NULL),
(87, 2, NULL, NULL),
(88, 1, NULL, NULL),
(88, 2, NULL, NULL),
(89, 1, NULL, NULL),
(89, 2, NULL, NULL),
(90, 1, NULL, NULL),
(90, 2, NULL, NULL),
(91, 1, NULL, NULL),
(91, 2, NULL, NULL),
(92, 1, NULL, NULL),
(92, 2, NULL, NULL),
(93, 1, NULL, NULL),
(93, 2, NULL, NULL),
(93, 6, NULL, NULL),
(94, 1, NULL, NULL),
(94, 2, NULL, NULL),
(94, 6, NULL, NULL),
(95, 1, NULL, NULL),
(95, 2, NULL, NULL),
(95, 6, NULL, NULL),
(96, 1, NULL, NULL),
(96, 2, NULL, NULL),
(96, 6, NULL, NULL),
(97, 1, NULL, NULL),
(97, 2, NULL, NULL),
(98, 1, NULL, NULL),
(98, 2, NULL, NULL),
(99, 1, NULL, NULL),
(99, 2, NULL, NULL),
(100, 1, NULL, NULL),
(100, 2, NULL, NULL),
(101, 1, NULL, NULL),
(101, 2, NULL, NULL),
(102, 1, NULL, NULL),
(102, 2, NULL, NULL),
(103, 1, NULL, NULL),
(103, 2, NULL, NULL),
(104, 1, NULL, NULL),
(104, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `user_id`, `cash_register_id`, `customer_id`, `warehouse_id`, `biller_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `grand_total`, `order_tax_rate`, `order_tax`, `order_discount`, `coupon_id`, `coupon_discount`, `shipping_cost`, `sale_status`, `payment_status`, `document`, `paid_amount`, `sale_note`, `staff_note`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'sr-20180808-043622', 1, NULL, 1, 1, 1, 2, 3, 10, 15.65, 350, 380, 10, 30, 50, NULL, NULL, 50, 1, 2, NULL, 0, 'ukgjkgjkgkj', 'gjkgjkgkujg', '2018-08-08 10:36:22', '2018-10-06 09:25:29', NULL, NULL),
(2, 'sr-20180809-055453', 1, NULL, 3, 1, 1, 3, 63, 0, 469.3, 5103, 5503, 0, 0, 100, NULL, NULL, 500, 1, 2, NULL, 2200, NULL, NULL, '2018-08-08 23:54:53', '2018-08-08 23:56:35', NULL, NULL),
(3, 'posr-20180809-063214', 1, NULL, 2, 2, 2, 3, 26, 0, 0, 897, 897, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 897, NULL, NULL, '2018-08-09 00:32:14', '2018-08-09 00:32:14', NULL, NULL),
(4, 'sr-20180825-034836', 1, NULL, 1, 1, 1, 1, 2, 0, 80, 880, 880, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 300, NULL, NULL, '2018-08-24 21:48:36', '2018-09-22 02:56:03', NULL, NULL),
(6, 'sr-20180826-094836', 1, NULL, 2, 1, 2, 1, 1, 0, 0, 18.9, 20, 0, 0, 0, NULL, NULL, 1.1, 1, 4, NULL, 20, NULL, NULL, '2018-08-26 03:48:36', '2018-08-26 05:48:05', NULL, NULL),
(7, 'sr-20180827-073545', 1, NULL, 1, 1, 1, 1, 2, 0, 80, 880, 880, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 880, NULL, NULL, '2018-08-27 01:35:45', '2018-08-27 01:35:45', NULL, NULL),
(8, 'posr-20180902-053954', 1, NULL, 1, 1, 2, 1, 2, 0, 288, 3168, 3529.8, 10, 311.8, 50, NULL, NULL, 100, 1, 4, NULL, 3529.8, 'good customer', 'good customer', '2018-09-01 23:39:54', '2018-09-01 23:39:54', NULL, NULL),
(9, 'posr-20180903-033314', 1, NULL, 1, 2, 1, 1, 10, 0, 0, 20, 20, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 20, NULL, NULL, '2018-09-02 21:33:14', '2018-09-02 21:33:14', NULL, NULL),
(10, 'posr-20180903-050138', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 200, NULL, NULL, '2018-09-02 23:01:38', '2018-09-09 21:40:28', NULL, NULL),
(11, 'posr-20180903-100821', 1, NULL, 11, 2, 1, 1, 5, 0, 500, 5500, 5500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 5500, NULL, NULL, '2018-09-03 04:08:21', '2018-09-03 04:08:21', NULL, NULL),
(12, 'sr-20180903-101026', 1, NULL, 3, 1, 5, 1, 10, 0, 1050, 11550, 11550, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-09-03 04:10:26', '2018-09-22 02:55:14', NULL, NULL),
(29, 'sr-20180909-093841', 1, NULL, 1, 1, 1, 1, 1, 0, 0, 120, 132, 10, 12, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-09-09 03:38:41', '2018-10-06 02:36:52', NULL, NULL),
(30, 'posr-20180910-045706', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, NULL, NULL, 0, 1, 2, NULL, 120, NULL, NULL, '2018-09-09 22:57:06', '2018-10-06 00:53:20', NULL, NULL),
(31, 'posr-20180926-092059', 1, NULL, 11, 2, 1, 2, 2, 0, 55.65, 560, 560, 0, 0, 0, NULL, NULL, 0, 1, 4, NULL, 560, NULL, NULL, '2018-09-26 03:20:59', '2018-09-26 03:21:25', NULL, NULL),
(32, 'posr-20181004-095547', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2018-10-04 03:55:47', '2018-10-04 03:55:47', NULL, NULL),
(33, 'posr-20181004-100022', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2018-10-04 04:00:22', '2018-10-04 04:00:22', NULL, NULL),
(37, 'sr-20181007-064605', 1, NULL, 1, 1, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-10-07 00:46:05', '2018-10-07 00:46:28', NULL, NULL),
(38, 'posr-20181007-064719', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-10-07 00:47:19', '2018-10-07 03:17:02', NULL, NULL),
(40, 'posr-20181007-071312', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-10-07 01:13:12', '2018-10-07 03:17:39', NULL, NULL),
(41, 'posr-20181010-041621', 1, NULL, 1, 2, 1, 2, 2, 0, 40, 461, 461, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 461, NULL, NULL, '2018-10-09 22:16:21', '2018-10-09 22:16:21', NULL, NULL),
(42, 'posr-20181010-053450', 1, NULL, 1, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2018-10-09 23:34:50', '2018-10-09 23:34:50', NULL, NULL),
(43, 'sr-20181016-033434', 1, NULL, 1, 1, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, 'sss\r\nsss\r\ns', NULL, '2018-10-15 21:34:34', '2018-10-23 00:21:27', NULL, NULL),
(55, 'posr-20181021-065334', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2018-10-21 00:53:34', '2018-10-21 00:53:34', NULL, NULL),
(57, 'posr-20181021-082612', 1, NULL, 11, 2, 1, 2, 3, 0, 40, 482, 575.2, 10, 43.2, 50, NULL, NULL, 100, 1, 4, NULL, 575.2, NULL, NULL, '2018-10-21 02:26:12', '2018-10-21 02:26:12', NULL, NULL),
(58, 'posr-20181022-032723', 1, NULL, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1220, NULL, NULL, '2018-10-22 09:27:23', '2018-10-22 09:27:23', NULL, NULL),
(73, 'posr-20181023-071543', 11, NULL, 11, 1, 5, 2, 5, 0, 500, 5500, 5500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 5500, NULL, NULL, '2018-10-23 01:15:43', '2018-10-23 01:15:43', NULL, NULL),
(74, 'posr-20181023-071644', 1, NULL, 11, 2, 1, 3, 3, 0, 200, 2320, 2320, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2320, NULL, NULL, '2018-10-23 01:16:44', '2018-10-23 01:16:44', NULL, NULL),
(75, 'posr-20181101-050027', 1, NULL, 11, 2, 1, 5, 12, 0, 626.96, 6980, 7678, 10, 698, NULL, NULL, NULL, NULL, 1, 4, NULL, 7678, NULL, NULL, '2018-10-31 23:00:27', '2018-10-31 23:00:27', NULL, NULL),
(76, 'posr-20181101-050126', 1, NULL, 11, 2, 1, 3, 6, 0, 100, 1434, 1424, 0, 0, 10, NULL, NULL, 0, 1, 4, NULL, 1424, NULL, NULL, '2018-10-31 23:01:26', '2018-11-08 03:44:51', NULL, NULL),
(79, 'posr-20181105-091516', 1, NULL, 11, 2, 1, 7, 52, 0, 1069.57, 14454, 14454, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 14454, NULL, NULL, '2018-11-05 03:15:16', '2018-11-05 03:15:16', NULL, NULL),
(80, 'posr-20181105-091958', 1, NULL, 11, 2, 1, 3, 8, 0, 191.3, 2500, 2500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2018-11-05 03:19:58', '2018-11-05 03:19:58', NULL, NULL),
(86, 'posr-20181105-095948', 1, NULL, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2018-11-05 03:59:48', '2018-11-05 03:59:48', NULL, NULL),
(88, 'posr-20181105-100258', 1, NULL, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2018-11-05 04:02:58', '2018-11-05 04:02:58', NULL, NULL),
(94, 'posr-20181126-020534', 1, NULL, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2018-11-26 08:05:34', '2018-11-26 08:05:34', NULL, NULL),
(95, 'posr-20181127-093608', 1, NULL, 11, 2, 1, 1, 3, 0, 0, 360, 360, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2018-11-27 03:36:08', '2018-11-27 03:36:08', NULL, NULL),
(96, 'posr-20181128-071509', 1, NULL, 11, 2, 1, 1, 1, 0, 15.65, 120, 132, 10, 12, NULL, NULL, NULL, NULL, 1, 4, NULL, 132, NULL, NULL, '2018-11-28 01:15:09', '2018-11-28 01:15:09', NULL, NULL),
(97, 'posr-20181201-060518', 1, NULL, 11, 2, 1, 2, 3, 0, 31.3, 262, 262, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 200, NULL, NULL, '2018-12-01 00:05:18', '2018-12-04 00:21:05', NULL, NULL),
(98, 'posr-20181205-053558', 1, NULL, 11, 2, 1, 2, 4, 0, 0, 800, 800, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 800, NULL, NULL, '2018-12-04 23:35:58', '2018-12-04 23:35:58', NULL, NULL),
(99, 'posr-20181205-053719', 1, NULL, 11, 1, 1, 2, 4, 0, 0, 800, 800, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 800, NULL, NULL, '2018-12-04 23:37:19', '2018-12-04 23:37:19', NULL, NULL),
(101, 'posr-20181208-062026', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 100, 100, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 100, NULL, NULL, '2018-12-08 00:20:26', '2018-12-08 00:20:26', NULL, NULL),
(103, 'posr-20181224-045832', 1, NULL, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2018-12-23 22:58:32', '2018-12-23 22:58:32', NULL, NULL),
(104, 'sr-20181224-091527', 1, NULL, 1, 1, 2, 2, 6, 0, 0, 2508, 2518, 0, 0, 0, NULL, NULL, 10, 1, 2, NULL, NULL, NULL, NULL, '2018-12-24 03:15:27', '2018-12-24 21:55:23', NULL, NULL),
(105, 'posr-20190101-054538', 1, NULL, 1, 2, 1, 1, 1, 0, 0, 21, 21, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 21, NULL, NULL, '2018-12-31 23:45:38', '2018-12-31 23:45:38', NULL, NULL),
(106, 'posr-20190101-091040', 1, NULL, 11, 2, 1, 3, 5, 0, 15.65, 860, 860, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 860, NULL, NULL, '2019-01-01 03:10:40', '2019-01-01 03:10:40', NULL, NULL),
(107, 'posr-20190103-065626', 1, NULL, 11, 2, 1, 6, 10, 0, 395.65, 5040, 5040, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 5040, NULL, NULL, '2019-01-03 00:56:26', '2019-01-03 00:56:26', NULL, NULL),
(108, 'posr-20190120-035824', 1, NULL, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2019-01-20 09:58:24', '2019-01-20 09:58:24', NULL, NULL),
(109, 'posr-20190129-101443', 9, NULL, 11, 1, 5, 2, 2, 0, 40, 540, 540, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 540, NULL, NULL, '2019-01-29 04:14:43', '2019-01-29 04:14:43', NULL, NULL),
(110, 'posr-20190129-115041', 9, NULL, 11, 1, 5, 2, 3, 0, 100, 1700, 1700, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1700, NULL, NULL, '2019-01-29 05:50:41', '2019-01-29 05:50:41', NULL, NULL),
(111, 'posr-20190131-110839', 9, NULL, 11, 1, 5, 2, 2, 0, 0, 271, 271, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 271, NULL, NULL, '2019-01-31 05:08:39', '2019-01-31 05:08:39', NULL, NULL),
(112, 'posr-20190202-104045', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2019-02-02 04:40:45', '2019-02-02 04:40:45', NULL, NULL),
(113, 'posr-20190202-114117', 1, NULL, 11, 2, 1, 2, 2, 0, 0, 350, 350, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 350, NULL, NULL, '2019-02-02 05:41:17', '2019-02-02 05:41:17', NULL, NULL),
(114, 'posr-20190205-030445', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2019-02-05 09:04:45', '2019-02-05 09:04:45', NULL, NULL),
(118, 'posr-20190207-111542', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, '2019-02-07 05:15:42', '2019-02-07 05:15:42', NULL, NULL),
(120, 'sr-20190207-114036', 1, NULL, 1, 1, 2, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 50, NULL, NULL, '2019-02-07 05:40:36', '2019-02-07 07:09:15', NULL, NULL),
(121, 'posr-20190209-104814', 1, NULL, 11, 2, 1, 7, 17, 0, 55.65, 1272, 1272, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1272, NULL, NULL, '2019-02-09 04:48:14', '2019-02-09 04:48:14', NULL, NULL),
(123, 'posr-20190219-023214', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2019-02-19 08:32:14', '2019-02-19 08:32:14', NULL, NULL),
(127, 'posr-20190303-104010', 1, NULL, 11, 2, 1, 3, 3, 0, 200, 2500, 2500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2019-03-03 04:40:10', '2019-03-03 04:40:10', NULL, NULL),
(128, 'posr-20190404-095555', 1, NULL, 11, 2, 1, 2, 2, 0, 55.65, 560, 560, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 560, NULL, NULL, '2019-04-04 03:55:55', '2019-04-04 03:55:55', NULL, NULL),
(129, 'posr-20190404-095937', 1, NULL, 11, 2, 1, 1, 2, 0, 0, 240, 240, 0, 0, 0, NULL, NULL, 0, 1, 2, NULL, 120, NULL, NULL, '2019-04-04 03:59:37', '2019-04-11 04:50:16', NULL, NULL),
(130, 'posr-20190421-122124', 1, NULL, 11, 2, 1, 3, 3, 0, 58.78, 586, 586, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 586, NULL, NULL, '2019-04-21 06:21:24', '2019-04-21 06:21:24', NULL, NULL),
(131, 'posr-20190528-103229', 1, NULL, 11, 2, 1, 4, 4, 0, 240, 2890, 2890, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2890, NULL, NULL, '2019-05-28 04:32:29', '2019-05-28 04:32:29', NULL, NULL),
(132, 'posr-20190613-101637', 1, NULL, 11, 2, 1, 3, 3, 0, 40, 840, 840, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 840, NULL, NULL, '2019-06-13 04:16:37', '2019-06-13 04:16:37', NULL, NULL),
(133, 'posr-20190613-101751', 1, NULL, 11, 2, 1, 3, 4, 0, 200, 2700, 2700, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2700, NULL, NULL, '2019-06-13 04:17:51', '2019-06-13 04:17:51', NULL, NULL),
(134, 'posr-20191019-033028', 1, NULL, 11, 2, 1, 4, 4, 0, 240, 2940, 2940, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2940, NULL, NULL, '2019-10-19 09:30:28', '2019-10-19 09:30:28', NULL, NULL),
(138, 'sr-20191031-122937', 1, NULL, 1, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-10-31 06:29:37', '2019-10-31 06:29:37', NULL, NULL),
(139, 'posr-20191103-114044', 1, NULL, 11, 2, 1, 2, 102, 0, 37.57, 488, 488, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 488, NULL, NULL, '2019-11-03 05:40:44', '2019-11-03 05:40:44', NULL, NULL),
(144, 'posr-20191109-074131', 1, NULL, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, 0, NULL, NULL, 0, 1, 4, NULL, 1220, NULL, NULL, '2019-11-09 13:41:31', '2019-11-09 13:41:31', NULL, NULL),
(147, 'posr-20191111-104008', 1, NULL, 11, 2, 1, 3, 12, 0, 200, 2220, 2220, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2220, NULL, NULL, '2019-11-11 04:40:08', '2019-11-11 04:40:08', NULL, NULL),
(172, 'posr-20191203-034631', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2019-12-03 09:46:31', '2019-12-03 09:46:31', NULL, NULL),
(173, 'sr-20191204-111940', 1, NULL, 2, 1, 1, 2, 2, 0, 36, 621, 621, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 621, NULL, NULL, '2019-12-04 17:19:40', '2019-12-05 03:27:12', NULL, NULL),
(187, 'posr-20191222-104058', 1, NULL, 11, 2, 1, 1, 2, 0, 37.57, 288, 288, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 288, NULL, NULL, '2019-12-22 04:40:58', '2019-12-22 04:40:58', NULL, NULL),
(190, 'posr-20191223-125946', 1, NULL, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2019-12-23 06:59:46', '2019-12-23 06:59:46', NULL, NULL),
(193, 'posr-20200101-022028', 1, NULL, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2020-01-01 08:20:28', '2020-01-01 08:20:28', NULL, NULL),
(194, 'posr-20200102-043947', 1, NULL, 11, 2, 1, 2, 3, 0, 81.57, 892, 892, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 892, NULL, NULL, '2020-01-02 10:39:47', '2020-01-02 10:39:47', NULL, NULL),
(201, 'posr-20200203-035256', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2020-02-03 09:52:56', '2020-02-03 09:52:56', NULL, NULL),
(202, 'posr-20200204-105853', 1, NULL, 11, 2, 1, 2, 2, 0, 100, 1400, 1400, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1400, NULL, NULL, '2020-02-04 16:58:53', '2020-02-04 16:58:53', NULL, NULL),
(203, 'posr-20200302-115414', 1, NULL, 11, 2, 1, 2, 2, 0, 0, 350, 350, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 350, NULL, NULL, '2020-03-02 05:54:14', '2020-03-02 05:54:14', NULL, NULL),
(204, 'posr-20200302-115741', 1, NULL, 11, 2, 1, 1, 20, 0, 0, 40, 40, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 40, NULL, NULL, '2020-03-02 05:57:41', '2020-03-02 05:57:41', NULL, NULL),
(205, 'posr-20200311-044641', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 352, 0, 0, NULL, 1, 88, NULL, 1, 4, NULL, 352, NULL, NULL, '2020-03-11 10:46:42', '2020-03-11 10:46:42', NULL, NULL),
(206, 'sr-20200311-045230', 1, NULL, 1, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, 0, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, '2020-03-11 10:52:30', '2020-03-11 10:54:04', NULL, NULL),
(207, 'posr-20200406-074024', 1, NULL, 11, 2, 1, 3, 4, 0, 18.78, 644, 644, 0, 0, 0, NULL, NULL, 0, 1, 4, NULL, 644, NULL, NULL, '2020-04-06 13:40:24', '2020-04-06 13:42:01', NULL, NULL),
(208, 'posr-20200506-105950', 1, NULL, 11, 2, 1, 2, 2, 0, 140, 1540, 1540, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1540, NULL, NULL, '2020-05-06 16:59:50', '2020-05-06 16:59:50', NULL, NULL),
(209, 'posr-20200609-124248', 1, NULL, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1220, NULL, NULL, '2020-06-09 06:42:48', '2020-06-09 06:42:48', NULL, NULL),
(212, 'posr-20200703-063914', 1, NULL, 11, 2, 1, 3, 3, 0, 235, 2585, 2585, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2585, NULL, NULL, '2020-07-03 12:39:14', '2020-07-03 12:39:14', NULL, NULL),
(213, 'posr-20200712-095153', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 13, 13, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 13, NULL, NULL, '2020-07-12 15:51:53', '2020-07-12 15:51:53', NULL, NULL),
(214, 'posr-20200714-115341', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 250, 309.5, 10, 24.5, 5, NULL, NULL, 40, 3, 2, NULL, NULL, NULL, NULL, '2020-07-14 05:53:41', '2020-07-14 05:53:41', NULL, NULL),
(217, 'posr-20200727-083808', 1, NULL, 11, 2, 1, 1, 1, 0, 35, 385, 385, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 385, NULL, NULL, '2020-07-27 14:38:08', '2020-07-27 14:38:08', NULL, NULL),
(218, 'posr-20200727-084024', 1, NULL, 11, 2, 1, 1, 1, 0, 35, 385, 385, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 385, NULL, NULL, '2020-07-27 14:40:24', '2020-07-27 14:40:24', NULL, NULL),
(219, 'posr-20200727-084644', 1, NULL, 11, 2, 1, 1, 1, 0, 35, 385, 385, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 385, NULL, NULL, '2020-07-27 14:46:45', '2020-07-27 14:46:45', NULL, NULL),
(220, 'posr-20200812-062804', 1, NULL, 11, 2, 1, 3, 6, 0, 0, 760, 760, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 760, NULL, NULL, '2020-08-12 12:28:04', '2020-08-12 12:28:04', NULL, NULL),
(221, 'posr-20200812-063035', 1, NULL, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2020-08-12 12:30:35', '2020-08-12 12:30:35', NULL, NULL),
(222, 'posr-20200816-100424', 1, NULL, 11, 2, 1, 1, 2, 0, 3000, 23000, 23000, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 23000, NULL, NULL, '2020-08-16 16:04:24', '2020-08-16 16:04:24', NULL, NULL),
(223, 'posr-20200816-100523', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2020-08-16 16:05:23', '2020-08-16 16:07:35', NULL, NULL),
(224, 'sr-20200826-080139', 1, NULL, 1, 1, 1, 1, 3, 30, 117, 1287, 1287, 0, 0, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2020-08-26 14:01:39', '2020-08-26 14:01:39', NULL, NULL),
(230, 'posr-20201017-092852', 9, 2, 11, 1, 5, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 350, NULL, NULL, '2020-10-17 15:28:52', '2020-10-18 04:51:38', NULL, NULL),
(231, 'sr-20201018-111333', 9, 2, 1, 1, 5, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 250, NULL, NULL, '2020-10-18 05:13:33', '2020-10-18 05:17:24', NULL, NULL),
(232, 'posr-20201022-013014', 9, 2, 11, 1, 5, 1, 1, 0, 0, 100, 100, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 100, NULL, NULL, '2020-10-22 07:30:14', '2020-10-22 07:30:14', NULL, NULL),
(233, 'posr-20201022-015604', 1, 3, 11, 1, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-10-22 07:56:04', '2020-10-22 07:56:04', NULL, NULL),
(234, 'posr-20201024-070506', 1, 4, 11, 2, 1, 1, 1, 0, 1500, 11500, 11500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 11500, NULL, NULL, '2020-10-24 01:05:06', '2020-10-24 01:05:06', NULL, NULL),
(235, 'posr-20201024-070751', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-10-24 01:07:51', '2020-10-24 01:07:51', NULL, NULL),
(237, 'posr-20201024-034601', 1, 4, 11, 2, 1, 3, 9, 0, 7900, 61900, 61900, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 61900, NULL, NULL, '2020-10-24 09:46:01', '2020-10-24 09:46:01', NULL, NULL),
(239, 'posr-20201027-054002', 1, 3, 11, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2, NULL, NULL, '2020-10-26 23:40:02', '2020-10-26 23:40:02', NULL, NULL),
(240, 'posr-20201027-054206', 1, 3, 11, 1, 1, 1, 2, 0, 0, 6, 6, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 6, NULL, NULL, '2020-10-26 23:42:06', '2020-10-26 23:42:06', NULL, NULL),
(241, 'posr-20201027-063200', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-10-27 00:32:00', '2020-10-27 00:32:00', NULL, NULL),
(242, 'posr-20201029-073030', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-10-29 01:30:30', '2020-10-29 01:30:30', NULL, NULL),
(243, 'posr-20201101-072112', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-11-01 01:21:12', '2020-11-01 01:21:12', NULL, NULL),
(245, 'posr-20201101-074223', 1, 3, 11, 1, 5, 2, 3, 0, 80, 1130, 1130, NULL, 0, 0, NULL, NULL, 0, 1, 4, NULL, 1130, NULL, NULL, '2020-11-01 01:42:23', '2020-11-01 01:42:23', NULL, NULL),
(246, 'posr-20201101-075017', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, NULL, NULL, 0, 1, 4, NULL, 440, 'ssss\r\nssas', 'hhhh\r\nkkkk', '2020-11-01 01:50:17', '2020-11-02 10:39:17', NULL, NULL),
(250, 'posr-20201106-013041', 1, 4, 11, 2, 1, 1, 1, 0, 34.4, 378.4, 378.4, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 378.4, NULL, NULL, '2020-11-06 07:30:41', '2020-11-06 07:30:41', NULL, NULL),
(251, 'posr-20201109-011524', 1, 4, 19, 2, 1, 2, 2, 0, 34.4, 610.6, 610.6, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 500, NULL, NULL, '2020-11-09 07:15:24', '2020-11-09 07:15:24', NULL, NULL),
(252, 'posr-20201111-055858', 1, 3, 11, 1, 1, 1, 1, 0, 0, 229.5, 229.5, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 229.5, NULL, NULL, '2020-11-10 23:58:58', '2020-11-10 23:58:58', NULL, NULL),
(253, 'posr-20201114-064736', 1, 4, 11, 2, 1, 3, 3, 0, 1275, 10242.5, 10242.5, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 10242.5, NULL, NULL, '2020-11-14 00:47:36', '2020-11-14 00:47:36', NULL, NULL),
(256, 'posr-20201117-064748', 1, 4, 11, 2, 1, 2, 2, 0, 65, 715, 715, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 715, NULL, NULL, '2020-11-17 00:47:48', '2020-11-17 00:47:48', NULL, NULL),
(257, 'posr-20201117-070919', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-11-17 01:09:19', '2020-11-17 01:09:19', NULL, NULL),
(258, 'posr-20201118-065239', 1, 4, 11, 2, 1, 1, 3, 0, 4500, 34500, 27200, 0, 0, 600, 1, 6800, 100, 1, 4, NULL, 27200, NULL, NULL, '2020-11-18 00:52:39', '2020-11-18 00:52:39', NULL, NULL),
(259, 'posr-20210507-033453', 1, 4, 11, 2, 1, 4, 4, 0, 140, 1642, 1642, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1642, NULL, NULL, '2021-05-07 01:34:53', '2021-05-07 01:34:53', NULL, NULL),
(260, 'posr-20210511-102055', 1, 4, 11, 2, 1, 3, 3, 0, 158.78, 1684, 1684, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1684, NULL, NULL, '2021-05-11 08:20:55', '2021-05-11 08:20:55', NULL, NULL),
(261, 'posr-20210528-065712', 1, 4, 11, 2, 1, 2, 2, 0, 18.78, 146, 146, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 146, NULL, NULL, '2021-05-28 04:57:12', '2021-05-28 04:57:12', NULL, NULL),
(262, 'posr-20210608-025055', 1, 4, 11, 2, 1, 4, 4, 0, 58.78, 836, 836, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 836, NULL, NULL, '2021-06-08 00:50:55', '2021-06-08 00:50:55', NULL, NULL),
(263, 'posr-20210608-073417', 1, 4, 11, 2, 1, 2, 2, 0, 58.78, 584, 584, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 584, NULL, NULL, '2021-06-08 17:34:17', '2021-06-08 17:34:17', NULL, NULL),
(264, 'posr-20210608-073443', 1, 4, 11, 2, 1, 2, 2, 0, 58.78, 584, 584, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 584, NULL, NULL, '2021-06-08 17:34:43', '2021-06-08 17:34:43', NULL, NULL),
(265, 'posr-20210614-081820', 1, 4, 11, 2, 1, 3, 3, 0, 140, 1790, 1790, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1790, NULL, NULL, '2021-06-14 06:18:20', '2021-06-14 06:18:20', NULL, NULL),
(266, 'posr-20210614-103506', 1, 4, 11, 2, 1, 4, 4, 0, 1540, 13440, 13440, 0, 0, NULL, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, '2021-06-14 08:35:06', '2021-06-14 08:35:06', NULL, NULL),
(267, 'posr-20210614-103639', 1, 4, 11, 2, 1, 5, 5, 0, 118.78, 1596, 1596, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1596, NULL, NULL, '2021-06-14 08:36:39', '2021-06-14 08:36:39', NULL, NULL),
(268, 'posr-20210619-092416', 1, 4, 11, 2, 1, 4, 4, 0, 258.78, 2784, 2784, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 1684, NULL, NULL, '2021-06-19 07:24:16', '2021-06-19 07:24:16', NULL, NULL),
(269, 'posr-20210705-030325', 1, 4, 11, 2, 1, 2, 4, 0, 120, 1570, 1570, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1570, NULL, NULL, '2021-07-05 13:03:25', '2021-07-05 13:03:25', NULL, NULL),
(270, 'posr-20210705-040909', 1, 4, 11, 2, 1, 2, 2, 0, 1600, 12600, 12600, 0, 0, NULL, NULL, NULL, NULL, 3, 4, NULL, 12600, NULL, NULL, '2021-07-05 14:09:09', '2021-07-05 14:09:09', NULL, NULL),
(271, 'posr-20210712-035206', 1, 4, 11, 2, 1, 8, 8, 0, 258.78, 3157, 3157, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 3157, NULL, NULL, '2021-07-12 13:52:06', '2021-07-12 13:52:06', NULL, NULL),
(272, 'posr-20210712-035746', 1, 4, 11, 2, 1, 3, 3, 0, 18.78, 694, 694, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 694, NULL, NULL, '2021-07-12 13:57:46', '2021-07-12 13:57:46', NULL, NULL),
(273, 'posr-20210911-022930', 1, 4, 11, 2, 1, 1, 5, 0, 200, 2200, 2200, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2200, NULL, NULL, '2021-09-11 11:29:30', '2021-09-11 11:29:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_counts`
--

CREATE TABLE `stock_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_counts`
--

INSERT INTO `stock_counts` (`id`, `reference_no`, `warehouse_id`, `category_id`, `brand_id`, `user_id`, `type`, `initial_file`, `final_file`, `note`, `is_adjusted`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'scr-20190228-124939', 2, NULL, NULL, 1, 'full', '20190228-124939.csv', NULL, NULL, 0, '2019-02-28 06:49:39', '2019-02-28 06:49:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'abdullah', 'globaltouch.jpg', 'global touch', NULL, 'abdullah@globaltouch.com', '231231', 'fsdfs', 'fsdfs', NULL, NULL, 'bd', 1, '2018-05-12 22:06:34', '2019-12-21 10:58:47', NULL, NULL),
(2, 'test', 'lion.jpg', 'lion', NULL, 'lion@gmail.com', '242', 'gfdg', 'fgd', NULL, NULL, NULL, 0, '2018-05-29 23:59:41', '2018-05-30 00:00:06', NULL, NULL),
(3, 'ismail', NULL, 'techbd', NULL, 'ismail@test.com', '23123123', 'mohammadpur', 'dhaka', NULL, NULL, 'sudan', 1, '2018-07-20 04:34:17', '2018-07-20 04:34:17', NULL, NULL),
(4, 'modon', 'mogaFruit.jpg', 'mogaFruit', NULL, 'modon@gmail.com', '32321', 'nasirabad', 'khartoum', NULL, NULL, 'bd', 0, '2018-09-01 04:30:07', '2018-09-01 04:37:20', NULL, NULL),
(5, 'sadman', NULL, 'anda boda', 'dsa', 'asd@dsa.com', '3212313', 'dadas', 'sdad', 'Other', '1312', 'Australia', 0, '2020-06-22 09:48:33', '2020-06-22 09:48:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'vat@10', 10, 1, '2018-05-12 09:58:30', '2019-03-02 11:46:10', NULL, NULL),
(2, 'vat@15', 15, 1, '2018-05-12 09:58:43', '2018-05-27 23:35:05', NULL, NULL),
(3, 'test', 6, 0, '2018-05-27 23:32:54', '2018-05-27 23:34:44', NULL, NULL),
(4, 'vat 20', 20, 1, '2018-09-01 00:58:57', '2018-09-01 00:58:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `reference_no`, `user_id`, `status`, `from_warehouse_id`, `to_warehouse_id`, `item`, `total_qty`, `total_tax`, `total_cost`, `shipping_cost`, `grand_total`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'tr-20180808-051710', 1, 1, 2, 1, 1, 100, 0, 100, 0, 100, NULL, NULL, '2018-08-08 11:17:10', '2018-12-24 22:16:55'),
(6, 'tr-20191205-075504', 1, 1, 1, 2, 1, 1, 0, 2, 0, 2, NULL, NULL, '2019-12-05 13:55:04', '2019-12-05 14:09:42'),
(8, 'tr-20200122-123058', 1, 1, 1, 2, 1, 10, 0, 1000, NULL, 1000, NULL, NULL, '2020-01-22 06:30:58', '2020-01-22 06:30:58'),
(10, 'tr-20201008-012735', 9, 1, 1, 2, 1, 1, 32, 352, 0, 352, NULL, NULL, '2020-10-08 07:27:35', '2020-10-08 07:29:35'),
(11, 'tr-20201018-061708', 9, 1, 1, 2, 1, 1, 0, 1, NULL, 1, NULL, NULL, '2020-10-18 12:17:08', '2020-10-18 12:17:08'),
(12, 'tr-20201024-090146', 1, 1, 2, 1, 1, 10, 4500, 34500, NULL, 34500, NULL, NULL, '2020-10-24 03:01:46', '2020-10-24 03:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'pc', 'قطعة', NULL, '*', 1, 1, '2018-05-12 02:27:46', '2022-11-15 12:22:56', NULL, NULL),
(2, 'dozen', 'dozen box', 1, '*', 12, 1, '2018-05-12 09:57:05', '2018-05-12 09:57:05', NULL, NULL),
(3, 'cartoon', 'كرتونة', 1, '*', 24, 1, '2018-05-12 09:57:45', '2022-11-15 12:25:02', NULL, NULL),
(4, 'm', 'meter', NULL, '*', 1, 0, '2018-05-12 09:58:07', '2022-11-15 12:24:01', NULL, NULL),
(6, 'test', 'test', NULL, '*', 1, 0, '2018-05-27 23:20:20', '2018-05-27 23:20:25', NULL, NULL),
(7, 'kg', 'kilogram', NULL, '*', 1, 0, '2018-06-25 00:49:26', '2022-11-15 12:24:12', NULL, NULL),
(8, '20', 'ni33', 8, '*', 1, 0, '2018-07-31 22:35:51', '2018-07-31 22:40:54', NULL, NULL),
(9, 'gm', 'gram', 7, '/', 1000, 0, '2018-09-01 00:06:28', '2022-11-15 12:23:47', NULL, NULL),
(10, 'gz', 'goz', NULL, '*', 1, 0, '2018-11-29 03:40:29', '2019-03-02 11:53:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `organization_id`, `branch_id`, `expires_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$jck4OTGJoRHlznvLWcQnrOvLWdEhfgczIfBRl1eINcmQqFCSU8R6i', 'k22CTkJaGR2K4KuNruPG6CWRhEur6XdenzFu4H4jRarOJjLLxV0uAMduCbfc', '12112', 'مركز نصر الدين للهواتف', 1, NULL, NULL, 1, 0, '2018-06-02 03:24:15', '2022-11-15 12:29:31', NULL, NULL, NULL),
(3, 'dhiman da', 'dhiman@gmail.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', '5ehQM6JIfiQfROgTbB5let0Z93vjLHS7rd9QD5RPNgOxli3xdo7fykU7vtTt', '212', NULL, 1, NULL, NULL, 0, 1, '2018-06-13 22:00:31', '2020-11-05 07:06:51', NULL, NULL, NULL),
(6, 'test', 'test@gmail.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', 'Xt8FvNpDWcdj1EmXcnZAOS4hd38GZ7B9H8rpMNl9voj6P5yJFZYt1b6lmw0z', '1234', NULL, 4, NULL, NULL, 0, 1, '2018-06-23 03:05:33', '2018-06-23 03:13:45', NULL, NULL, NULL),
(8, 'test', 'test@yahoo.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', NULL, '31231', NULL, 4, NULL, NULL, 0, 1, '2018-06-24 22:35:49', '2018-07-02 01:07:39', NULL, NULL, NULL),
(9, 'staff', 'anda@gmail.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', 'DIDsmdI5kMZfkk2n4OkOpuH8yYHs3O0aPp9xUO0zuY4TwPvylsW5H6ovgE0K', '3123', NULL, 4, 5, 1, 1, 0, '2018-07-02 01:08:08', '2018-10-23 21:41:13', NULL, NULL, NULL),
(10, 'owner', 'owner@demo.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', 'x7HlttI5bM0vSKViqATaowHFJkLS3PHwfvl7iJdFl5Z1SsyUgWCVbLSgAoi0', '1234', NULL, 2, NULL, NULL, 1, 0, '2018-09-07 23:44:48', '2021-06-09 08:23:33', NULL, NULL, NULL),
(11, 'teststaff', 'a@a.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', 'DkHDEcCA0QLfsKPkUK0ckL0CPM6dPiJytNa0k952gyTbeAyMthW3vi7IRitp', '111', NULL, 4, 5, 1, 0, 1, '2018-10-22 02:47:56', '2018-10-23 02:10:56', NULL, NULL, NULL),
(12, 'john', 'john@gmail.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', 'O0f1WJBVjT5eKYl3Js5l1ixMMtoU6kqrH7hbHDx9I1UCcD9CmiSmCBzHbQZg', '10001', NULL, 4, 2, 2, 0, 1, '2018-12-30 00:48:37', '2019-03-06 04:59:49', NULL, NULL, NULL),
(13, 'jjj', 'test@test.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', NULL, '1213', NULL, 1, NULL, NULL, 0, 1, '2019-01-03 00:08:31', '2019-03-03 04:02:29', NULL, NULL, NULL),
(19, 'shakalaka', 'shakalaka@gmail.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', NULL, '1212', NULL, 5, NULL, NULL, 1, 0, '2020-11-09 00:07:16', '2020-11-09 00:07:16', NULL, NULL, NULL),
(21, 'modon', 'modon@gmail.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', NULL, '2222', NULL, 5, NULL, NULL, 1, 0, '2020-11-13 07:12:08', '2020-11-13 07:12:08', NULL, NULL, NULL),
(22, 'dhiman', 'dhiman@gmail.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', NULL, '+249111111101', NULL, 1, NULL, NULL, 1, 0, '2020-11-15 06:14:58', '2020-11-15 06:14:58', 2, NULL, NULL),
(27, 'admin121', 's49hack@gmail.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', NULL, '11111111111', NULL, 1, NULL, NULL, 1, 0, '2021-06-28 15:02:46', '2021-06-28 15:02:46', 1, NULL, '2021-09-29 21:00:00'),
(28, 'pato-code', 'pato-code@gmail.com', '$2y$10$v0Fb5ef6C9G7fAzivjfBu.1O6gt93/BaBvsq1Pw4GXCAhSUl5IkZq', NULL, '+249927104041', NULL, 1, NULL, NULL, 1, 0, '2021-08-28 07:12:35', '2021-08-28 07:12:35', 2, NULL, NULL),
(29, 'test-test', 'test@test.com', '$2y$10$VahHwGC8hILuARBtpiggYuGOHzhGOeKXmzs/oi6bUSgQmC5R0Pe/K', NULL, '+249927104042', NULL, 1, NULL, NULL, 1, 0, '2021-08-28 07:47:00', '2021-08-28 07:48:08', 2, NULL, NULL),
(30, 'aaa', 'a@mail.com', '$2y$10$0GUYc1KGI1XlGPoxkFZLeePIot3WFBgBAPsgUUAV9CuhQIJu/meLC', NULL, '+12345', NULL, 2, NULL, NULL, 1, 0, '2021-08-28 07:49:12', '2021-08-28 07:49:12', NULL, NULL, NULL),
(31, 'pato-pato', 'a@test-2.com', '$2y$10$0GUYc1KGI1XlGPoxkFZLeePIot3WFBgBAPsgUUAV9CuhQIJu/meLC', NULL, '002499122224', NULL, 1, NULL, NULL, 1, 0, '2021-09-04 09:48:12', '2021-09-04 09:48:12', 8, NULL, NULL),
(32, 'albraa-2', 'albraa.hesham95@gmail.com', '$2y$10$L2I3ijT3dCMJwjrCrabVpe7ncuv9CreOkDrK.kROx07/HFDMhXice', NULL, '999999999', NULL, 1, NULL, NULL, 1, 0, '2021-09-04 09:55:18', '2021-09-04 09:55:18', 9, NULL, NULL),
(33, 'ac-mailn', 'ac-mailn@gmail.com', '$2y$10$KCHGyLdLSCBj57MJ2fpQzuB0rXlBUQo1k45EWHsPzGdBSTdmm./wi', NULL, '009555', NULL, 6, 1, 1, 1, 0, '2021-09-08 14:23:04', '2021-09-10 13:49:31', 3, NULL, '2022-03-05 20:59:59'),
(34, 'mo-salah', 'mo@salah.com', '$2y$10$tKMvzetv3JIFw7uNYInHd.D.eFYOQXFnDYgN3E182vYeeAbR29Wzi', NULL, '222', NULL, 1, NULL, NULL, 1, 0, '2021-09-08 14:25:05', '2021-09-09 15:00:40', 4, NULL, '2022-07-03 21:00:00'),
(35, 'cr7', 'cr7@mail.com', '$2y$10$XjbRYzrzCtrua5gMGcLM5ekVvDykurULp.Uip5rKLUSoUaV1lOSwC', NULL, '5646', NULL, 1, NULL, NULL, 1, 0, '2021-09-10 13:51:44', '2021-09-10 13:53:20', 6, NULL, '2021-12-04 21:00:00'),
(36, 'jimy', 'jimy@anfal.com', '$2y$10$x16gJ.7jaX.7BHmnkC6HDemdxw89/r8jNaPYHUH89fZiLei0m1Td.', NULL, '+24966666666', NULL, 6, NULL, NULL, 1, 0, '2021-09-11 08:06:52', '2021-09-11 08:06:52', 10, NULL, '2021-10-04 21:00:00'),
(37, 'alnour', 'alnour@alnour.com', '$2y$10$1ED6zHccKVTuLlPQSgy3Vuqc07h/UVMEkl9vJKG7w61yUgIe5lsze', NULL, '+249927104041', NULL, 1, NULL, NULL, 1, 0, '2021-09-11 11:04:54', '2021-09-11 11:14:12', 11, NULL, '2022-05-04 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `name`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(2, 'Medium', '2019-11-21 07:03:04', '2019-11-24 08:43:52', NULL, NULL),
(3, 'Small', '2019-11-21 07:03:04', '2019-11-24 08:43:52', NULL, NULL),
(5, 'Large', '2019-11-24 06:07:20', '2019-11-24 08:44:56', NULL, NULL),
(9, 'a', '2020-05-18 16:44:14', '2020-05-18 16:44:14', NULL, NULL),
(11, 'b', '2020-05-18 16:53:49', '2020-05-18 16:53:49', NULL, NULL),
(12, 'variant 1', '2020-09-27 06:08:27', '2020-09-27 06:08:27', NULL, NULL),
(13, 'variant 2', '2020-09-27 06:08:27', '2020-09-27 06:08:27', NULL, NULL),
(15, 'S', '2020-11-16 06:09:33', '2020-11-16 06:09:33', NULL, NULL),
(16, 'M', '2020-11-16 06:09:33', '2020-11-16 06:09:33', NULL, NULL),
(17, 'L', '2020-11-16 06:09:33', '2020-11-16 06:09:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`, `organization_id`, `branch_id`) VALUES
(1, 'مستودع سوبا الحلة', '2312121', 'war1@lion.com', 'khartoum', 1, '2018-05-12 07:51:44', '2022-11-15 21:59:34', NULL, NULL),
(2, 'warehouse 2', '1234', NULL, 'Khartoum, Sudan', 0, '2018-05-12 08:09:03', '2022-11-15 21:59:14', NULL, NULL),
(3, 'test', NULL, NULL, 'dqwdeqw', 0, '2018-05-30 00:14:23', '2018-05-30 00:14:47', NULL, NULL),
(6, 'gudam', '2121', '', 'gazipur', 0, '2018-08-31 22:53:26', '2018-08-31 22:54:48', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_registers`
--
ALTER TABLE `cash_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_transfers`
--
ALTER TABLE `money_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
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
-- Indexes for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_setting`
--
ALTER TABLE `pos_setting`
  ADD UNIQUE KEY `pos_setting_id_unique` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_purchases`
--
ALTER TABLE `product_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_quotation`
--
ALTER TABLE `product_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_returns`
--
ALTER TABLE `product_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_transfer`
--
ALTER TABLE `product_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_purchases`
--
ALTER TABLE `return_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_counts`
--
ALTER TABLE `stock_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cash_registers`
--
ALTER TABLE `cash_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `money_transfers`
--
ALTER TABLE `money_transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_purchases`
--
ALTER TABLE `product_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `product_quotation`
--
ALTER TABLE `product_quotation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_returns`
--
ALTER TABLE `product_returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=448;

--
-- AUTO_INCREMENT for table `product_transfer`
--
ALTER TABLE `product_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `return_purchases`
--
ALTER TABLE `return_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `stock_counts`
--
ALTER TABLE `stock_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
