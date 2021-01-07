-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 07, 2021 at 05:20 AM
-- Server version: 5.6.49-cll-lve
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
-- Database: `bitcoinismcapitals`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commission_values`
--

CREATE TABLE `commission_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_fee` double NOT NULL,
  `cryptocurrency_additional_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commission_values`
--

INSERT INTO `commission_values` (`id`, `transaction_fee`, `cryptocurrency_additional_price`, `created_at`, `updated_at`) VALUES
(1, 5, 0, NULL, NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(29, '2014_10_12_000000_create_users_table', 1),
(30, '2014_10_12_100000_create_password_resets_table', 1),
(31, '2018_04_16_194401_create_admin_users_table', 1),
(32, '2019_08_19_000000_create_failed_jobs_table', 1),
(33, '2020_12_14_080846_create_tbl_bitcoin_values_table', 1),
(34, '2020_12_21_064634_create_commission_values_tbale', 1),
(35, '2020_12_22_063239_create_recived_order_tbl_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recived_order_tbl`
--

CREATE TABLE `recived_order_tbl` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankwire_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankwire_swift_card` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankwire_bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankwire_iban` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankwire_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `westrenunion_full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `westrenunion_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `westrenunion_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `westrenunion_phone_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perfectmoney_pm_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payza_payza_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payoneer_payoneer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webmoney_webmoney_purse` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `okpay_okpay_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skrill_skrill_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nettler_nettler_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dash_dash_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moneygram_full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moneygram_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moneygram_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moneygram_phone_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creditcard_card_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creditcard_expiry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creditcard_cvv` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instaforex_instaforex_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solidtrustpay_std_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usbank_us_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usbank_expiry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usbank_cvv` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advcash_wallet_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alipaychina_email_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paysafecard_email_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onecard_email_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sofort_email_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qiviwallet_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entromoney_wallet_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobilewallet_full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobilewallet_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wordremit_wallet_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wordremit_swift_card` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wordremit_bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wordremit_iban` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wordremit_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobilepay_full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobilepay_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capitalone_email_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applepay_full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applepay_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chasequickpay_email_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transferwise_email_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venmomobilepayment_full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xoommoneytransfer_email_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swifttransfer_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swifttransfer_swift_card` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swifttransfer_bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swifttransfer_iban` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swifttransfer_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directbankdeposit_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directbankdeposit_bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directbankdeposit_iban` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directbankdeposit_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyvirtualcard_email_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reciver_wallet_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transection_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recived_total_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recived_bitcoin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transection_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission_fee` double DEFAULT NULL,
  `bitcoin_current_val` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recived_order_tbl`
--

INSERT INTO `recived_order_tbl` (`id`, `order_number`, `payment_method`, `paypal_email`, `bankwire_holder_name`, `bankwire_swift_card`, `bankwire_bank_name`, `bankwire_iban`, `bankwire_country`, `westrenunion_full_name`, `westrenunion_address`, `westrenunion_country`, `westrenunion_phone_no`, `perfectmoney_pm_id`, `payza_payza_email`, `payoneer_payoneer_email`, `webmoney_webmoney_purse`, `okpay_okpay_email`, `skrill_skrill_email`, `nettler_nettler_id`, `dash_dash_id`, `moneygram_full_name`, `moneygram_address`, `moneygram_country`, `moneygram_phone_no`, `creditcard_card_number`, `creditcard_expiry`, `creditcard_cvv`, `instaforex_instaforex_id`, `solidtrustpay_std_id`, `usbank_us_id`, `usbank_expiry`, `usbank_cvv`, `advcash_wallet_id`, `alipaychina_email_id`, `paysafecard_email_id`, `onecard_email_id`, `sofort_email_id`, `qiviwallet_id`, `entromoney_wallet_address`, `mobilewallet_full_name`, `mobilewallet_phone_number`, `wordremit_wallet_address`, `wordremit_swift_card`, `wordremit_bank_name`, `wordremit_iban`, `wordremit_country`, `mobilepay_full_name`, `mobilepay_phone_number`, `capitalone_email_id`, `applepay_full_name`, `applepay_phone_number`, `chasequickpay_email_id`, `transferwise_email_address`, `venmomobilepayment_full_name`, `xoommoneytransfer_email_address`, `swifttransfer_holder_name`, `swifttransfer_swift_card`, `swifttransfer_bank_name`, `swifttransfer_iban`, `swifttransfer_country`, `directbankdeposit_holder_name`, `directbankdeposit_bank_name`, `directbankdeposit_iban`, `directbankdeposit_country`, `buyvirtualcard_email_address`, `reciver_wallet_address`, `transection_id`, `recived_total_amount`, `recived_bitcoin`, `transection_url`, `order_date`, `commission_fee`, `bitcoin_current_val`, `status`, `created_at`, `updated_at`) VALUES
(47, '16092424935feb177d89673', 'paypal', 'zahidjakhar2370@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '22711.472448661', '1', NULL, '29-12-2020', 1, '22940.881261274', 'off', '2020-12-29 19:59:59', '2020-12-29 19:59:59'),
(48, '16092424935feb177d89673', 'paypal', 'zahidjakhar2370@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '22711.472448661', '1', NULL, '29-12-2020', 1, '22940.881261274', 'off', '2020-12-29 20:00:06', '2020-12-29 20:00:06'),
(49, '16092424935feb177d89673', 'paypal', 'zahidjakhar2370@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '22711.472448661', '1', NULL, '29-12-2020', 1, '22940.881261274', 'off', '2020-12-29 20:00:14', '2020-12-29 20:00:14'),
(50, '16092424935feb177d89673', 'paypal', 'zahidjakhar2370@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '22711.472448661', '1', NULL, '29-12-2020', 1, '22940.881261274', 'off', '2020-12-29 20:01:19', '2020-12-29 20:01:19'),
(51, '16092424935feb177d89673', 'paypal', 'zahidjakhar2370@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '22711.472448661', '1', NULL, '29-12-2020', 1, '22940.881261274', 'off', '2020-12-29 20:01:59', '2020-12-29 20:01:59'),
(52, '16092424935feb177d89673', 'paypal', 'zahidjakhar2370@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '22711.472448661', '1', NULL, '29-12-2020', 1, '22940.881261274', 'off', '2020-12-29 20:02:10', '2020-12-29 20:02:10'),
(53, '16092424935feb177d89673', 'paypal', 'zahidjakhar2370@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '22711.472448661', '1', NULL, '29-12-2020', 1, '22940.881261274', 'off', '2020-12-29 20:02:40', '2020-12-29 20:02:40'),
(54, '16092447685feb206014406', 'paypal', 'zahidjakhar2370@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '22711.472448661', '1', NULL, '29-12-2020', 1, '22940.881261274', 'off', '2020-12-29 20:26:58', '2020-12-29 20:26:58'),
(55, '16092447685feb206014406', 'paypal', 'zahidjakhar2370@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '22711.472448661', '1', NULL, '29-12-2020', 1, '22940.881261274', 'off', '2020-12-29 20:35:14', '2020-12-29 20:35:14'),
(56, '16092477215feb2be9e032e', 'paypal', 'zahidjakhar2370@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '22711.472448661', '1', NULL, '29-12-2020', 1, '22940.881261274', 'off', '2020-12-29 21:15:36', '2020-12-29 21:15:36'),
(57, '16093244535fec57a538d08', 'paypal', 'faisalsehar786@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '22711.472448661', '1', NULL, '30-12-2020', 1, '22940.881261274', 'off', '2020-12-30 17:34:32', '2020-12-30 17:34:32'),
(58, '16093458325fecab28c290e', 'perfect_money', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'U417324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '27783.77278683', '1', NULL, '30-12-2020', 1, '28064.416956394', 'off', '2020-12-30 23:32:38', '2020-12-30 23:32:38'),
(59, '16093583125fecdbe8ae3ca', 'paypal', 'adas@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '28489.961601546', '1', NULL, '30-12-2020', 1, '28777.738991461', 'off', '2020-12-31 02:58:38', '2020-12-31 02:58:38'),
(60, '16093998515fed7e2b973a5', 'payoneer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'faheemkian14@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '28910.969457779', '1', NULL, '31-12-2020', 1, '29202.999452302', 'off', '2020-12-31 14:31:44', '2020-12-31 14:31:44'),
(61, '16094202475fedcdd7b63cf', 'dash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3834792', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '-28306.320759491', '1', NULL, '31-12-2020', 200, '28306.320759491', 'off', '2020-12-31 20:10:59', '2020-12-31 20:10:59'),
(62, '16099318595ff59c532e21f', 'paypal', 'faisalsehar786@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '33264.3355', '1', NULL, '06-01-2121', 5, '35015.09', 'off', '2021-01-06 18:18:09', '2021-01-06 18:18:09'),
(63, '16099329665ff5a0a62b9e2', 'paypal', 'faisalsehar786@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '33189.409', '1', NULL, '06-01-2121', 5, '34936.22', 'off', '2021-01-06 18:36:21', '2021-01-06 18:36:21'),
(64, '16099968825ff69a522c5f4', 'paypal', 'faisalsehar786@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13x7gfKZhVSHDU8hhKYkTREc4FXTgdt4Pb', NULL, '71378.212', '2', NULL, '07-01-2121', 5, '37567.48', 'off', '2021-01-07 12:21:32', '2021-01-07 12:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bitcoin_values`
--

CREATE TABLE `tbl_bitcoin_values` (
  `tbl_id` int(10) UNSIGNED NOT NULL,
  `id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_market_pairs` double DEFAULT NULL,
  `date_added` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_supply` double DEFAULT NULL,
  `circulating_supply` double DEFAULT NULL,
  `total_supply` double DEFAULT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmc_rank` double DEFAULT NULL,
  `last_updated` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `volume_24h` double DEFAULT NULL,
  `percent_change_1h` double DEFAULT NULL,
  `percent_change_24h` double DEFAULT NULL,
  `percent_change_7d` double DEFAULT NULL,
  `market_cap` double DEFAULT NULL,
  `img_url` text COLLATE utf8mb4_unicode_ci,
  `lasts_updated` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_bitcoin_values`
--

INSERT INTO `tbl_bitcoin_values` (`tbl_id`, `id`, `name`, `symbol`, `slug`, `num_market_pairs`, `date_added`, `max_supply`, `circulating_supply`, `total_supply`, `platform`, `cmc_rank`, `last_updated`, `price`, `volume_24h`, `percent_change_1h`, `percent_change_24h`, `percent_change_7d`, `market_cap`, `img_url`, `lasts_updated`, `created_at`, `updated_at`) VALUES
(427, 1182, 'Bitcoin', 'BTC', 'BTC', NULL, NULL, 20999999.9769, NULL, 18593500, NULL, NULL, '2021-01-07 12:19:55', 37874.93, 94430.013918681, -0.0076033962892717, 8.1707556001853, NULL, -147125589, '/media/19633/btc.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(428, 7605, 'Ethereum', 'ETH', 'ETH', NULL, NULL, -1, NULL, 114153230.6865, NULL, NULL, '2021-01-07 12:19:54', 1210.99, 1498152.7965015, 0.58056478405316, 5.6184969081696, NULL, 138238420829.04, '/media/20646/eth_logo.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(429, 4614, 'Stellar', 'XLM', 'XLM', NULL, NULL, -1, NULL, 50001803565.872, NULL, NULL, '2021-01-07 12:19:52', 0.3395, 2431264857.5775, 2.1974714027694, 0.47351287363127, NULL, 16975612310.613, '/media/35521289/xlm.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(430, 3808, 'Litecoin', 'LTC', 'LTC', NULL, NULL, 84000000, NULL, 66730883.233471, NULL, NULL, '2021-01-07 12:19:58', 166.98, 1562429.1819587, -0.29258971756136, 2.1346871368279, NULL, 11142722882.325, '/media/35309662/ltc.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(431, 5031, 'XRP', 'XRP', 'XRP', NULL, NULL, 1206562803, NULL, 1206562803, NULL, NULL, '2021-01-07 12:19:58', 0.3409, 1980757302.1627, -5.0682261208577, 45.435153583618, NULL, 34086867337.29, '/media/34477776/xrp.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(432, 321992, 'Cardano', 'ADA', 'ADA', NULL, NULL, 2050327040, NULL, 31827014272.862, NULL, NULL, '2021-01-07 12:19:55', 0.3185, 238926313.54732, 2.247191011236, 0.66371681415929, NULL, 10136904045.907, '/media/12318177/ada.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(433, 202330, 'Bitcoin Cash', 'BCH', 'BCH', NULL, NULL, 20999999.9769, NULL, 18620127.14679, NULL, NULL, '2021-01-07 12:19:42', 446.62, 173039.8830641, -0.74449407738294, 1.8146172434231, NULL, 8316121186.2992, '/media/35650680/bch.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(434, 171986, 'Tether', 'USDT', 'USDT', NULL, NULL, 23001770673.33, NULL, 22852410758.391, NULL, NULL, '2021-01-07 12:19:53', 1.001, 259996922.15922, 0, -0.19940179461615, NULL, 22875263169.15, '/media/1383672/usdt.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(435, 166503, 'EOS', 'EOS', 'EOS', NULL, NULL, -1, NULL, 1025969607.1876, NULL, NULL, '2021-01-07 12:19:55', 3.313, 19997176.605762, -0.65967016491754, 3.5959974984365, NULL, 3399037308.6125, '/media/1383652/eos_1.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(436, 318169, 'Loopring', 'LRC', 'LRC', NULL, NULL, 1374513861.4693, NULL, 1374513861.4693, NULL, NULL, '2021-01-07 12:19:41', 0.4144, 158287428.3942, -0.31272552321386, 1.8432047186041, NULL, 569598544.19288, '/media/36798698/lrc-logo.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(437, 309621, 'Chainlink', 'LINK', 'LINK', NULL, NULL, 1000000000, NULL, 1000000000, NULL, NULL, '2021-01-07 12:19:46', 16.29, 13964217.067655, -0.12262415695892, 3.6919159770846, NULL, -889869184, '/media/35309382/link.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(438, 935731, 'Polkadot', 'DOT', 'DOT', NULL, NULL, 0, NULL, 1031702438.5963, NULL, NULL, '2021-01-07 12:19:57', 9.904, 3509515.7300287, 0.72205837486016, -4.031007751938, NULL, 10217980951.857, '/media/37072130/dot.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(439, 932135, 'BUSD', 'BUSD', 'BUSD', NULL, NULL, 1104383482.97, NULL, 1104383482.97, NULL, NULL, '2021-01-07 12:19:54', 0.99960378713464, 649915113.63776, -0.62981336723154, -5.3274121521787, NULL, 1103945912.0258, '/media/9350818/binance.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(440, 310829, 'TRON', 'TRX', 'TRX', NULL, NULL, -1, NULL, 457699314, NULL, NULL, '2021-01-07 12:19:35', 0.03223, 187099701.58351, -1.1046333231052, 4.5410314628609, NULL, 3198567955.7421, '/media/34477805/trx.jpg', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(441, 936630, 'Uniswap Protocol Token', 'UNI', 'UNI', NULL, NULL, 1000000000, NULL, 1000000000, NULL, NULL, '2021-01-07 12:19:50', 6.208, 3907494.6036477, 0.35564177174265, -1.8032268269535, NULL, 1913032704, '/media/36935118/uniswap.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(442, 5324, 'Ethereum Classic', 'ETC', 'ETC', NULL, NULL, 210700000, NULL, 124203116.47143, NULL, NULL, '2021-01-07 12:19:38', 7.407, 1287742.5657898, 0.47476939772111, -0.43016534480441, NULL, 919972483.7039, '/media/33752295/etc_new.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(443, 236131, 'VeChain', 'VET', 'VET', NULL, NULL, 813288546, NULL, 85695257, NULL, NULL, '2021-01-07 12:19:29', 0.02939, 299338842.35516, 2.7622377622378, -6.9642291864514, NULL, 2527100360.192, '/media/12318129/ven.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(444, 4432, 'Dogecoin', 'DOGE', 'DOGE', NULL, NULL, -1, NULL, 127724936383.7, NULL, NULL, '2021-01-07 12:19:30', 0.0101, 433891626.83521, 0.69790628115652, -0.098911968348166, NULL, 1290021857.4754, '/media/19684/doge.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(445, 187440, 'OMG Network', 'OMG', 'OMG', NULL, NULL, 140245398.24513, NULL, 140245398.24513, NULL, NULL, '2021-01-07 12:19:27', 3.659, 7477002.9096756, -0.94748240389822, -5.1826898160145, NULL, 513157912.17894, '/media/37071946/omg.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(446, 930992, 'Algorand', 'ALGO', 'ALGO', NULL, NULL, 1410065408, NULL, 3736437009.7015, NULL, NULL, '2021-01-07 12:19:48', 0.4869, 80181768.323065, 0.99564405724954, -5.6212444272146, NULL, 1819271180.0237, '/media/35650900/algo.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(447, 714811, 'Theta', 'THETA', 'THETA', NULL, NULL, 1000000000, NULL, 1000000000, NULL, NULL, '2021-01-07 12:19:55', 2.0615324399, 16625843.743137, -0.67518248175181, -12.842273819055, NULL, 2061532439.9, '/media/27010450/theta.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(448, 204788, 'Binance Coin', 'BNB', 'BNB', NULL, NULL, 174153539.9, NULL, 174153539.9, NULL, NULL, '2021-01-07 12:19:47', 43.88, 147589.09073006, -0.11381743683132, 4.9509686677828, NULL, 7641857330.812, '/media/1383947/bnb.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(449, 926591, 'Bitcoin SV', 'BSV', 'BSV', NULL, NULL, 20999999.9769, NULL, 18618507.894239, NULL, NULL, '2021-01-07 12:19:17', 181.27, 18731.28775251, -0.74467502600886, 2.5688903977819, NULL, 3374976925.9887, '/media/35309257/bsv1.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(450, 925809, 'USD Coin', 'USDC', 'USDC', NULL, NULL, 4451472807.7897, NULL, 4451472807.7897, NULL, NULL, '2021-01-07 12:19:43', 0.9998, 19123365.471555, 0.030015007503749, -0.019999999999998, NULL, 4450582513.2281, '/media/34835941/usdc.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(451, 716725, 'Zilliqa', 'ZIL', 'ZIL', NULL, NULL, -474836480, NULL, 14109920904.025, NULL, NULL, '2021-01-07 12:18:38', 0.08043, 44661927.389637, -0.049707965701502, -1.5906032056772, NULL, 1134860938.3107, '/media/27010464/zil.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(452, 935926, 'yearn.finance', 'YFI', 'YFI', NULL, NULL, 30000, NULL, 30000, NULL, NULL, '2021-01-07 12:19:46', 32149.01, 3276.60638187, -1.9294413222576, 34.668794624811, NULL, 964470300, '/media/37072233/yfi.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(453, 199107, 'Cosmos', 'ATOM', 'ATOM', NULL, NULL, -1, NULL, 266214164.08056, NULL, NULL, '2021-01-07 12:19:53', 6.565, 2642862.2468194, -0.96545481973147, 1.7198636504493, NULL, 1747695987.1889, '/media/35650432/atom.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(454, 166390, 'Tezos', 'XTZ', 'XTZ', NULL, NULL, -1, NULL, 756195906.56613, NULL, NULL, '2021-01-07 12:19:46', 2.666, 13059374.3065, 0, -0.1498127340824, NULL, 2016018286.9053, '/media/35651213/tezos-logo.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(455, 816635, 'Synthetix', 'SNX', 'SNX', NULL, NULL, 214563473.82153, NULL, 214563473.82153, NULL, NULL, '2021-01-07 12:19:39', 12.11, 1553024.9666219, 0.41459369817578, -7.4866310160428, NULL, 2598363667.9787, '/media/35309690/hav.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(456, 930621, 'Reserve Rights', 'RSR', 'RSR', NULL, NULL, 341160884.01082, NULL, 341160884.01082, NULL, NULL, '2021-01-07 12:19:56', 0.0390111779, 548661436.71102, 0.98039215686279, -19.53125, NULL, 13309087.938667, '/media/35650703/rsr.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(457, 27368, 'NEO', 'NEO', 'NEO', NULL, NULL, 100000000, NULL, 100000000, NULL, NULL, '2021-01-07 12:19:10', 19.53, 213525.28942387, 0.15384615384616, 6.5466448445172, NULL, 1953000000, '/media/37459377/neo.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(458, 5038, 'Monero', 'XMR', 'XMR', NULL, NULL, -1, NULL, 17806804.686544, NULL, NULL, '2021-01-07 12:19:54', 150.46, 35566.03677326, 0.28660934479771, 8.4396396396396, NULL, 2679211833.1374, '/media/19969/xmr.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(459, 936306, 'Sushi', 'SUSHI', 'SUSHI', NULL, NULL, 180032041.57953, NULL, 180032041.57953, NULL, NULL, '2021-01-07 12:19:49', 3.826, 490241.5, -0.33862985152383, -3.7968317827508, NULL, 688802591.08327, '/media/37305388/sushi.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(460, 936952, 'Aave', 'AAVE', 'AAVE', NULL, NULL, 16000000, NULL, 16000000, NULL, NULL, '2021-01-07 12:19:43', 117.88, 128537.0995183, -0.42236864335192, 0.98517947399982, NULL, 1886080000, '/media/37071994/aave.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(461, 932096, 'Band Protocol', 'BAND', 'BAND', NULL, NULL, 100000000, NULL, 100000000, NULL, NULL, '2021-01-07 12:19:30', 8.65, 1681953.5602184, -2.2819701762314, -7.9885118604404, NULL, 865000000, '/media/35651530/band.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(462, 3807, 'Dash', 'DASH', 'DASH', NULL, NULL, 18900000, NULL, 9913590.6452847, NULL, NULL, '2021-01-07 12:19:49', 103.86, 165218.62951694, -0.019252984212549, 12.866768093893, NULL, 1029625524.4193, '/media/37459376/dash.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(463, 5285, 'NEM', 'XEM', 'XEM', NULL, NULL, -1, NULL, 410065407, NULL, NULL, '2021-01-07 12:19:55', 0.2526257831, 345685771.06442, 0.30075187969925, -14.046391752577, NULL, 2273632047.6474, '/media/20490/xem.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(464, 127356, 'IOTA', 'MIOTA', 'MIOTA', NULL, NULL, 2779530283.2778, NULL, 2779530283.2778, NULL, NULL, '2021-01-07 12:19:53', 0.3963, 11496374.591329, -0.52710843373494, 2.007722007722, NULL, 1101527851.263, '/media/1383540/iota_logo.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(465, 938098, 'The Graph', 'GRT', 'GRT', NULL, NULL, 10008924932.539, NULL, 10008924932.539, NULL, NULL, '2021-01-07 12:19:52', 0.3904, 150598193.20303, -2.9821073558648, 3.9126963002396, NULL, 3907484293.6634, '/media/37621875/the-graph.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(466, 24854, 'ZCash', 'ZEC', 'ZEC', NULL, NULL, 21000000, NULL, 10669849.595047, NULL, NULL, '2021-01-07 12:19:50', 70.36, 197277.86685119, -2.1010157228329, 15.174332951383, NULL, 750730617.50751, '/media/351360/zec.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(467, 186277, '0x', 'ZRX', 'ZRX', NULL, NULL, 1000000000, NULL, 1000000000, NULL, NULL, '2021-01-07 12:19:37', 0.4772, 26838769.664568, -0.041893590280682, -0.52115905774442, NULL, 477200000, '/media/1383799/zrx.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(468, 936373, 'Elrond', 'EGLD', 'EGLD', NULL, NULL, -1, NULL, 20397843, NULL, NULL, '2021-01-07 12:19:54', 39.25, 28174.55907058, 0.35796471490667, 8.9067702552719, NULL, 800615337.75, '/media/35651026/erd.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(469, 112392, 'QTUM', 'QTUM', 'QTUM', NULL, NULL, 107822402.25, NULL, 103055628, NULL, NULL, '2021-01-07 12:17:37', 2.977, 430022.86095022, 0.5403579871665, 3.332176327664, NULL, 306796604.556, '/media/1383382/qtum.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(470, 936137, 'Curve DAO Token', 'CRV', 'CRV', NULL, NULL, 1404829873.1258, NULL, 1404829873.1258, NULL, NULL, '2021-01-07 12:10:58', 0.722, 893172.28483189, 0.41724617524339, -2.4324324324324, NULL, 1014287168.3968, '/media/37072342/crv.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(471, 20131, 'Waves', 'WAVES', 'WAVES', NULL, NULL, -1, NULL, 104000638, NULL, NULL, '2021-01-07 12:19:40', 6.02, 612310.22272092, -0.80738177623991, 2.8181041844577, NULL, 626083840.76, '/media/27010639/waves2.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(472, 936118, 'Serum', 'SRM', 'SRM', NULL, NULL, 161000001, NULL, 161000001, NULL, NULL, '2021-01-07 12:19:46', 1.466, 602074, 0.68681318681319, -2.0053475935829, NULL, 236026001.466, '/media/37072331/srm.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(473, 324068, 'ICON Project', 'ICX', 'ICX', NULL, NULL, -1, NULL, 871725448.44074, NULL, NULL, '2021-01-07 12:18:28', 0.596, 1255600.5227069, 1.343308961061, -6.3776311655671, NULL, 519548367.27068, '/media/36640221/iconlogo.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(474, 929418, 'Crypto.com Chain Token', 'CRO', 'CRO', NULL, NULL, 1215752192, NULL, 1215752192, NULL, NULL, '2021-01-07 12:19:57', 0.07659, 32833740.713489, 0.69681830134105, 13.803863298663, NULL, 7659000000, '/media/34478435/mco.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(475, 808414, 'Ontology', 'ONT', 'ONT', NULL, NULL, -1, NULL, 1000000000, NULL, NULL, '2021-01-07 12:19:51', 0.5684, 1039594.4723256, -0.12300123001231, 4.658442275824, NULL, 568400000, '/media/36798656/ont.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(476, 213663, 'FileCoin', 'FIL', 'FIL', NULL, NULL, 2000000000, NULL, 44584205, NULL, NULL, '2021-01-07 12:19:40', 22.47, 410482.05168078, -0.79470198675497, 1.0341726618705, NULL, 1001807086.35, '/media/37459215/fil.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(477, 932932, 'Kusama', 'KSM', 'KSM', NULL, NULL, -1, NULL, 9651217.4512621, NULL, NULL, '2021-01-07 12:12:55', 71.86, 18082.47597725, 0.20917584716219, 1.8135449135733, NULL, 693536486.04769, '/media/36639823/ksm.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(478, 928761, 'Wrapped Bitcoin', 'WBTC', 'WBTC', NULL, NULL, 109507.94679064, NULL, 109507.94679064, NULL, NULL, '2021-01-07 12:19:58', 37879.7672, 403.86324554, -0.5089058524173, 2.3895253682488, NULL, 4148135530.9794, '/media/35309588/wbtc.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(479, 771595, 'Huobi Token', 'HT', 'HT', NULL, NULL, 500000000, NULL, 276889282.25487, NULL, NULL, '2021-01-07 12:19:55', 5.018428225, 1863564.2930542, 0.22692889561272, -5.6267806267806, NULL, 1389548989.2678, '/media/27010813/ht.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(480, 937212, 'NuCypher', 'NU', 'NU', NULL, NULL, 3885390081.7482, NULL, 3885390081.7482, NULL, NULL, '2021-01-07 12:19:38', 0.2026, 96555730.282323, -0.34431874077718, 7.1957671957672, NULL, 787180030.5622, '/media/37459029/nu.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(481, 930246, 'Matic Network', 'MATIC', 'MATIC', NULL, NULL, 1410065408, NULL, 1410065408, NULL, NULL, '2021-01-07 12:19:55', 0.0344661863, 694841314.2763, 0, 15.189873417722, NULL, 344661863, '/media/35650476/matic.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(482, 107672, 'Basic Attention Token', 'BAT', 'BAT', NULL, NULL, 1500000000, NULL, 1500000000, NULL, NULL, '2021-01-07 12:19:42', 0.2641, 11769745.251149, 0.76306753147654, 5.3030303030303, NULL, 396150000, '/media/1383370/bat.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(483, 932121, 'Hedera Hashgraph', 'HBAR', 'HBAR', NULL, NULL, -1539607552, NULL, -1829031431, NULL, NULL, '2021-01-07 12:17:35', 0.03871, 24317882.088067, 0.23303987571207, 5.276040250204, NULL, 261714561.36231, '/media/35651541/hbar.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(484, 935805, 'Avalanche', 'AVAX', 'AVAX', NULL, NULL, 720000000, NULL, 24509771.588235, NULL, NULL, '2021-01-07 12:19:57', 4.552566586, 690354.5313, -0.41425020712511, -13.087490961678, NULL, 111582367.16309, '/media/37305719/avax.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(485, 178978, 'FunFair', 'FUN', 'FUN', NULL, NULL, 10999873621.398, NULL, 10999873621.398, NULL, NULL, '2021-01-07 11:44:06', 0.0131240025, 462880936.5, 0, -16.666666666667, NULL, 144362368.90691, '/media/1383738/fun.png', NULL, '2021-01-06 14:27:03', '2021-01-07 18:46:06'),
(486, 935546, 'Compound', 'COMP', 'COMP', NULL, NULL, 10000000, NULL, 10000000, NULL, NULL, '2021-01-07 12:19:46', 172.79, 82376.22210542, -0.79802503157654, 1.7608951707892, NULL, 1727900000, '/media/37072045/comp.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(487, 931676, 'FTX Token', 'FTT', 'FTT', NULL, NULL, 341160884.01082, NULL, 333073150.963, NULL, NULL, '2021-01-07 12:19:59', 9.568, 1087444.9007906, 0.19897371452508, 8.2965478211658, NULL, 3186843908.414, '/media/35651305/ftxt.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(488, 937105, 'Near', 'NEAR', 'NEAR', NULL, NULL, 1000000000, NULL, 245170697, NULL, NULL, '2021-01-06 16:59:57', 1.567689228, 1430346.96, 0, -0.87719298245614, NULL, 384351460.70815, '/media/37458963/near.png', NULL, '2021-01-06 14:27:03', '2021-01-07 00:00:03'),
(489, 935634, 'Celo', 'CELO', 'CELO', NULL, NULL, 1000000000, NULL, 615499022.16079, NULL, NULL, '2021-01-06 20:22:54', 2.2666337859, 1722581.7306838, -0.32287822878229, -3.4836980794998, NULL, 1395110878.818, '/media/37072059/celo.png', NULL, '2021-01-06 14:27:03', '2021-01-07 03:25:02'),
(490, 930413, 'Ocean Protocol', 'OCEAN', 'OCEAN', NULL, NULL, 613099141, NULL, 613099141, NULL, NULL, '2021-01-07 12:19:55', 0.4692703827, 12290824.190889, -0.64153969526862, -6.4905660377359, NULL, 287709268.53011, '/media/35650582/ocean.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(491, 716522, 'IOS token', 'IOST', 'IOST', NULL, NULL, -194313216, NULL, 22293449023.083, NULL, NULL, '2021-01-07 12:19:55', 0.0064387381, 985331123.72702, 6.25, 0, NULL, 143541679.60533, '/media/27010459/iost.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(492, 934443, 'Solana', 'SOLAN', 'SOLAN', NULL, NULL, -1, NULL, 488589058.6861, NULL, NULL, '2021-01-07 12:19:42', 2.286, 1266478.42, 3.5795197100136, 5.980528511822, NULL, 1116914588.1564, '/media/36934955/solan.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(493, 931777, 'Swipe', 'SXP', 'SXP', NULL, NULL, 288787534.73844, NULL, 288787534.73844, NULL, NULL, '2021-01-07 12:19:55', 0.8245372261, 9909865.7186674, -1.2250453720508, -3.5872453498671, NULL, 238116072.82549, '/media/35651362/sxp.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(494, 22327, 'Bancor Network Token', 'BNT', 'BNT', NULL, NULL, 97583049.655408, NULL, 97583049.655408, NULL, NULL, '2021-01-07 12:19:28', 1.599, 3154931.4138621, -0.37383177570093, 3.7637897469176, NULL, 156035296.399, '/media/1383549/bnt.jpg', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(495, 41192, 'Maker', 'MKR', 'MKR', NULL, NULL, 996473.17245754, NULL, 996473.17245754, NULL, NULL, '2021-01-07 12:19:38', 1035.99, 61134.51573034, -2.0377479811638, 24.32824894692, NULL, 1032336241.9343, '/media/1382296/mkr.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(496, 932637, 'Multi Collateral Dai', 'DAI', 'DAI', NULL, NULL, 1315703157.0572, NULL, 1315703157.0572, NULL, NULL, '2021-01-07 12:19:43', 1.001, 22673777.801834, 0, -0.19940179461615, NULL, 1317018860.2142, '/media/36569383/mcd.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(497, 310497, 'Kyber Network', 'KNC', 'KNC', NULL, NULL, 210325273.09256, NULL, 210325273.09256, NULL, NULL, '2021-01-07 12:19:37', 1.146, 27811078.976963, 1.6858917480035, 17.743758347889, NULL, 241032762.96407, '/media/12318084/knc.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(498, 517477, 'GIFTO', 'GTO', 'GTO', NULL, NULL, 100000, NULL, 1000000000, NULL, NULL, '2021-01-07 12:19:54', 0.020223533, 1263844467.276, -2.3391812865497, -3.4682080924856, NULL, 20223533, '/media/16746671/gto.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(499, 844139, 'True USD', 'TUSD', 'TUSD', NULL, NULL, 300837779.13, NULL, 300837779.13, NULL, NULL, '2021-01-07 12:17:52', 0.999000999001, 78505.57111995, -0.099900099900085, 0.09990009990012, NULL, 300537241.88811, '/media/35650578/tusd.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(500, 930244, 'Thorecoin', 'THR', 'THR', NULL, NULL, -1, NULL, 1111111, NULL, NULL, '2021-01-07 03:01:55', 7227.797513, 6.75431925, 4.2200854700855, -0.051229508196715, NULL, 803088.53224711, '/media/35650475/thorecoin.png', NULL, '2021-01-06 14:27:03', '2021-01-07 10:03:03'),
(501, 932760, 'Thorchain', 'RUNE', 'RUNE', NULL, NULL, 500000000, NULL, 500000000, NULL, NULL, '2021-01-07 12:19:55', 1.4703047826, 3227954, -0.61443932411674, -12.409747292419, NULL, 735152391.3, '/media/36569446/rune.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(502, 932609, 'Kava', 'KAVA', 'KAVA', NULL, NULL, -1, NULL, 114424518, NULL, NULL, '2021-01-07 12:17:43', 1.74, 415145.06961232, -1.4164305949008, -4.5529347229841, NULL, 199098661.32, '/media/36569370/kava.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(503, 877073, 'NEXO', 'NEXO', 'NEXO', NULL, NULL, 1000000000, NULL, 1000000000, NULL, NULL, '2021-01-06 23:33:40', 0.6698877668, 7728746.9062285, -1.2847965738758, 0.60010911074743, NULL, 669887766.8, '/media/32655865/nexo.jpg', NULL, '2021-01-06 14:27:03', '2021-01-07 06:34:02'),
(504, 931799, 'Chiliz', 'CHZ', 'CHZ', NULL, NULL, 298954296, NULL, 298954296, NULL, NULL, '2021-01-07 12:19:55', 0.0208312115, 170179770.3713, -1.7857142857143, -8.3333333333333, NULL, 185166324.42593, '/media/35651381/chz.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(505, 794350, 'Ravencoin', 'RVN', 'RVN', NULL, NULL, -474836480, NULL, 8017699403.0182, NULL, NULL, '2021-01-07 12:19:55', 0.0159074706, 421807590.23302, 0, -4.5454545454545, NULL, 127541317.53315, '/media/27011010/rvn.jpg', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(506, 139467, 'Civic', 'CVC', 'CVC', NULL, NULL, 1000000000, NULL, 1000000000, NULL, NULL, '2021-01-07 12:19:55', 0.1420309875, 193362562.50961, 4.7486033519553, 23.355263157895, NULL, 142030987.5, '/media/1383611/cvc.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(507, 788239, 'REN', 'REN', 'REN', NULL, NULL, 999999632.80375, NULL, 999999632.80375, NULL, NULL, '2021-01-07 12:19:41', 0.4004, 27290345.425513, 0.67890369625345, 9.4587206123565, NULL, 400399852.97462, '/media/27010916/ren.jpg', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(508, 929751, 'Theta Fuel', 'TFUEL', 'TFUEL', NULL, NULL, -1, NULL, 705032704, NULL, NULL, '2021-01-07 12:01:55', 0.0295341306, 121906710, 0, -8.2352941176471, NULL, 147670653, '/media/36935301/tfuel.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:03:03'),
(509, 166548, 'Crypto.com', 'MCO', 'MCO', NULL, NULL, -1, NULL, 31587682.363206, NULL, NULL, '2021-01-07 12:20:01', 2.495957887, 1397029.9711, 2.1705426356589, -4.7687861271676, NULL, 78841524.926495, '/media/34478435/mco.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(510, 836492, 'Loom Network', 'LOOM', 'LOOM', NULL, NULL, 1000000000, NULL, 1000000000, NULL, NULL, '2021-01-07 12:19:55', 0.0496161583, 178181040.84961, 5.6451612903226, 25.961538461538, NULL, 49616158.3, '/media/30001890/untitled-1.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(511, 172091, 'Nano', 'NANO', 'NANO', NULL, NULL, 133248290, NULL, 133248290, NULL, NULL, '2021-01-07 12:19:45', 3.581, 2617192.3843501, 0.42063937184521, 86.607608129234, NULL, 477162126.49, '/media/30001997/untitled-1.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(512, 933019, 'Tellor', 'TRB', 'TRB', NULL, NULL, -1, NULL, 1721704.8104738, NULL, NULL, '2021-01-07 12:19:59', 23.1037073, 210097.62496862, -0.19633507853403, -6.0092449922958, NULL, 39777763.998189, '/media/36639873/trb.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(513, 4430, 'DigiByte', 'DGB', 'DGB', NULL, NULL, -474836480, NULL, 13916805267.436, NULL, NULL, '2021-01-07 12:14:49', 0.03194, 21642488.517915, 1.6549968173138, 14.644651830581, NULL, 444502760.24192, '/media/12318264/7638-nty_400x400.jpg', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(514, 13072, 'Siacoin', 'SC', 'SC', NULL, NULL, -1, NULL, -1973027264, NULL, NULL, '2021-01-07 12:19:14', 0.004892, 244069894.98314, -2.2186687987208, 19.901960784314, NULL, 221468730.75686, '/media/20726/siacon-logo.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(515, 137013, 'Status Network Token', 'SNT', 'SNT', NULL, NULL, 6804870174.8782, NULL, 6804870174.8782, NULL, NULL, '2021-01-07 12:19:59', 0.0674173754, 464770043.47049, 1.1363636363636, 14.102564102564, NULL, 458766487.12803, '/media/1383568/snt.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(516, 887527, 'True Chain', 'TRUE', 'TRUE', NULL, NULL, 0, NULL, 100000000, NULL, NULL, '2021-01-07 12:19:55', 0.1935408923, 38010466.588, 0.78895463510847, 0.59055118110236, NULL, 19354089.23, '/media/33187843/true.jpg', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(517, 933032, 'Orchid Protocol', 'OXT', 'OXT', NULL, NULL, 1000000000, NULL, 1000000000, NULL, NULL, '2021-01-07 12:19:27', 0.2812, 56926987.88671, -0.24831500532103, -6.3291139240506, NULL, 281200000, '/media/36639882/oxt.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(518, 935695, 'Balancer', 'BAL', 'BAL', NULL, NULL, 39495000, NULL, 39495000, NULL, NULL, '2021-01-07 12:19:49', 17.87, 107931.15687955, 0.33688938798429, 0.39325842696629, NULL, 705775650, '/media/37072101/bal.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(519, 931668, 'Terra', 'LUNA', 'LUNA', NULL, NULL, -1, NULL, 994673541.70972, NULL, NULL, '2021-01-07 12:19:55', 0.8968783424, 25045730.181935, 1.8932874354561, 15.907978463045, NULL, 892101157.31775, '/media/37459367/luna.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(520, 933125, 'BOSAGORA', 'BOA', 'BOA', NULL, NULL, -1, NULL, 542130130.19585, NULL, NULL, '2021-01-06 15:00:53', 0.0710513217, 71268.15000251, 0, -5.9090909090909, NULL, 38519062.283808, '/media/36639915/boa.png', NULL, '2021-01-06 14:27:03', '2021-01-06 22:01:03'),
(521, 816702, 'TomoChain', 'TOMO', 'TOMO', NULL, NULL, 100000000, NULL, 100000000, NULL, NULL, '2021-01-06 17:00:57', 0.973845402, 4042762.2437744, 0, -11.160290863105, NULL, 97384540.2, '/media/30001748/tomo.jpg', NULL, '2021-01-06 14:27:03', '2021-01-07 00:02:02'),
(522, 199148, 'Decentraland', 'MANA', 'MANA', NULL, NULL, 2194951611.1201, NULL, 2194951611.1201, NULL, NULL, '2021-01-07 12:19:55', 0.1044, 6595747.711109, -0.095693779904296, 18.798361401912, NULL, 229152948.20094, '/media/1383903/mana.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(523, 925939, 'Paxos Standard', 'PAX', 'PAX', NULL, NULL, 449254584.58, NULL, 449254584.58, NULL, NULL, '2021-01-07 11:37:59', 0.9997, 381672.00943277, 0, -0.010002000400079, NULL, 449119808.20463, '/media/34835691/pax.png', NULL, '2021-01-06 14:27:03', '2021-01-07 19:20:03'),
(524, 928921, 'LTO Network', 'LTO', 'LTO', NULL, NULL, 85588598.158931, NULL, 85588598.158931, NULL, NULL, '2021-01-06 13:01:55', 0.1983035305, 40463706, -0.17667844522968, -7.6797385620915, NULL, 16972521.185462, '/media/35309668/lto.png', NULL, '2021-01-06 14:27:03', '2021-01-06 20:02:05'),
(525, 937509, 'Oasis Labs', 'ROSE', 'ROSE', NULL, NULL, 1410065408, NULL, 1410065408, NULL, NULL, '2021-01-06 11:00:54', 0.0468662256, 49808526, -0.72992700729927, -3.5460992907801, NULL, 468662256, '/media/37459297/rose.png', NULL, '2021-01-06 14:27:03', '2021-01-06 18:01:02'),
(526, 926388, 'ABBC Coin', 'ABBC', 'ABBC', NULL, NULL, 1502169571, NULL, 1500000000, NULL, NULL, '2021-01-06 12:21:57', 0.1973690205, 5788392.2932673, 0.89285714285714, -8.7237479806139, NULL, 296053530.75, '/media/34836013/abbc_ticker.png', NULL, '2021-01-06 14:27:03', '2021-01-06 19:22:02'),
(527, 116180, 'Horizen', 'ZEN', 'ZEN', NULL, NULL, 21000000, NULL, 10626206.25, NULL, NULL, '2021-01-07 06:09:54', 15.769410654, 230720.95337867, 0.21362449560882, 5.55, NULL, 167569010.05035, '/media/34478457/horizen.png', NULL, '2021-01-06 17:32:09', '2021-01-07 13:10:03'),
(528, 936047, 'DIA', 'DIA', 'DIA', NULL, NULL, 200000000, NULL, 180163248.42011, NULL, NULL, '2021-01-06 11:58:59', 1.5778169981, 1271121.7930837, 0.98721112856182, -0.24379432624112, NULL, 284264635.79016, '/media/37072293/dia.png', NULL, '2021-01-06 18:59:03', '2021-01-06 19:00:03'),
(529, 187347, 'Storj', 'STORJ', 'STORJ', NULL, NULL, 424999998.00001, NULL, 424999998.00001, NULL, NULL, '2021-01-07 12:20:00', 0.3643568266, 7840936.6404539, -0.10384215991692, -1.8367346938775, NULL, 154851650.57629, '/media/20422/sjcx.png', NULL, '2021-01-06 19:23:02', '2021-01-07 19:20:03'),
(530, 17778, 'Augur', 'REP', 'REP', NULL, NULL, 5664903.3959136, NULL, 5664903.3959136, NULL, NULL, '2021-01-07 12:18:54', 20.03, 143877.32032106, -0.9396636993076, 3.0349794238683, NULL, 113468015.02015, '/media/37459143/repv2.png', NULL, '2021-01-06 19:40:10', '2021-01-07 19:20:03'),
(531, 5296, 'MonaCoin', 'MONA', 'MONA', NULL, NULL, -1, NULL, 80215787.471579, NULL, NULL, '2021-01-07 12:01:55', 1.5153280854, 209597.53432843, 0.024993751562101, -12.696335078534, NULL, 121553235.64816, '/media/35309574/mona.png', NULL, '2021-01-06 20:00:03', '2021-01-07 19:03:03'),
(532, 283116, 'Enjin Coin', 'ENJ', 'ENJ', NULL, NULL, 1000000000, NULL, 1000000000, NULL, NULL, '2021-01-07 12:12:10', 0.1715, 1865828.361548, -1.3801035077631, 7.5235109717868, NULL, 171500000, '/media/11417639/enjt.png', NULL, '2021-01-06 21:03:03', '2021-01-07 19:20:03'),
(533, 4433, 'Verge', 'XVG', 'XVG', NULL, NULL, -624869184, NULL, 16415378143.363, NULL, NULL, '2021-01-07 12:19:55', 0.015149972, 3305274589.0365, 2.5641025641026, 42.857142857143, NULL, 248692519.24137, '/media/12318032/xvg.png', NULL, '2021-01-06 21:27:04', '2021-01-07 19:20:03'),
(534, 218008, 'Bytom', 'BTM', 'BTM', NULL, NULL, 210000000, NULL, 1647007350, NULL, NULL, '2021-01-07 12:19:04', 0.0668787774, 48039014.234522, 0, -4.3243243243243, NULL, 110149837.93681, '/media/1383996/btm.png', NULL, '2021-01-06 22:48:03', '2021-01-07 19:19:07'),
(535, 5039, 'Bitshares', 'BTS', 'BTS', NULL, NULL, -694396794, NULL, 2994834054.652, NULL, NULL, '2021-01-07 12:19:55', 0.0284061975, 49752419.755294, 0, 1.3513513513514, NULL, 85071847.636172, '/media/20705/bts.png', NULL, '2021-01-07 02:03:02', '2021-01-07 19:20:03'),
(536, 16713, 'Decred', 'DCR', 'DCR', NULL, NULL, 21000000, NULL, 12456170.708905, NULL, NULL, '2021-01-07 07:51:50', 54.20341173, 161586.89474738, 0.54757015742642, 0.89285714285714, NULL, 675166949.51396, '/media/1382607/decred.png', NULL, '2021-01-07 04:35:02', '2021-01-07 14:52:03'),
(537, 177175, 'district0x', 'DNT', 'DNT', NULL, NULL, 1000000000, NULL, 1000000000, NULL, NULL, '2021-01-07 12:19:55', 0.0977173194, 150288256.44624, 7.5, 77.931034482759, NULL, 97717319.4, '/media/1383701/dnt.png', NULL, '2021-01-07 06:11:03', '2021-01-07 19:20:03'),
(538, 935562, 'UMA', 'UMA', 'UMA', NULL, NULL, 101220068.96557, NULL, 101220068.96557, NULL, NULL, '2021-01-07 12:19:21', 10.05, 595494.002, 0.50000000000001, 9.17979359044, NULL, 1017261693.104, '/media/37072053/uma.png', NULL, '2021-01-07 10:36:03', '2021-01-07 19:20:03'),
(539, 932843, 'Klaytn', 'KLAY', 'KLAY', NULL, NULL, -1, NULL, 0, NULL, NULL, '2021-01-07 12:19:55', 0.5044940676, 1431334.9133616, 0.075131480090165, -8.7045921864291, NULL, 0, '/media/36569485/klay.png', NULL, '2021-01-07 13:02:04', '2021-01-07 19:20:03'),
(540, 24294, 'Stratis', 'STRAX', 'STRAX', NULL, NULL, -1, NULL, 126962000, NULL, NULL, '2021-01-07 12:19:55', 0.5124478029, 3870686.9677298, -0.14760147601475, 2.2675736961451, NULL, 65061397.95179, '/media/351303/stratis-logo.png', NULL, '2021-01-07 16:01:03', '2021-01-07 19:20:03'),
(541, 936966, 'Alpha Finance Lab', 'ALPHA', 'ALPHA', NULL, NULL, 1000000000, NULL, 1000000000, NULL, NULL, '2021-01-07 12:20:00', 0.3401168714, 6395920, 3.0998851894374, 7.0321811680572, NULL, 340116871.4, '/media/37305730/alpha.png', NULL, '2021-01-07 19:04:02', '2021-01-07 19:20:03'),
(542, 347235, 'Bitcoin Gold', 'BTG', 'BTG', NULL, NULL, 21000000, NULL, 18610848.610885, NULL, NULL, '2021-01-07 12:19:37', 10.74, 26812.41756149, 6.1264822134387, 17.608409986859, NULL, 199880514.08091, '/media/27011062/btg.png', NULL, '2021-01-07 19:12:26', '2021-01-07 19:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(2, 'Zahid', 'admin@gmail.com', NULL, '$2y$10$Gk9bhGzUxm7zvnrZWVudzujOJzN5PGDKumrG/LSu5TU1/pMivDS7y', 'RGXOOIpSw4FEcLT4C8NyY6GDG7p1AQpqqy791wN9gop8WJlup5b56EBP6amF', NULL, NULL, '2020-12-22 19:26:36', '2020-12-22 19:26:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_unique` (`email`);

--
-- Indexes for table `commission_values`
--
ALTER TABLE `commission_values`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `recived_order_tbl`
--
ALTER TABLE `recived_order_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bitcoin_values`
--
ALTER TABLE `tbl_bitcoin_values`
  ADD PRIMARY KEY (`tbl_id`);

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
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commission_values`
--
ALTER TABLE `commission_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `recived_order_tbl`
--
ALTER TABLE `recived_order_tbl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_bitcoin_values`
--
ALTER TABLE `tbl_bitcoin_values`
  MODIFY `tbl_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=543;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
