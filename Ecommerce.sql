-- --------------------------------------------------------
-- Host:                         
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for demo
CREATE DATABASE IF NOT EXISTS `demo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `demo`;

-- Dumping structure for table demo.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table demo.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo.migrations: ~6 rows (approximately)
INSERT IGNORE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_08_27_102208_create_products_table', 1),
	(6, '2022_08_27_110543_create_sales_table', 1);

-- Dumping structure for table demo.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo.password_resets: ~0 rows (approximately)

-- Dumping structure for table demo.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table demo.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyRate` int(11) NOT NULL,
  `sellRate` int(11) NOT NULL,
  `AvailableQuantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo.products: ~2 rows (approximately)
INSERT IGNORE INTO `products` (`id`, `name`, `buyRate`, `sellRate`, `AvailableQuantity`, `created_at`, `updated_at`) VALUES
	(1, 'A', 400, 500, 300, '2022-08-27 05:53:46', '2022-08-27 05:53:46'),
	(2, 'B', 400, 500, 200, '2022-08-27 05:54:03', '2022-08-27 05:54:03');

-- Dumping structure for table demo.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `sellRate` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `TotalAmount` int(11) DEFAULT NULL,
  `PaymentMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_product_id_foreign` (`product_id`),
  CONSTRAINT `sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo.sales: ~2 rows (approximately)
INSERT IGNORE INTO `sales` (`id`, `product_id`, `sellRate`, `Quantity`, `TotalAmount`, `PaymentMode`, `created_at`, `updated_at`) VALUES
	(11, 1, 500, 5, 2500, 'Cash', '2022-08-27 06:09:06', '2022-08-27 06:09:06'),
	(12, 1, 500, 2, 1000, 'Credit', '2022-08-27 06:09:15', '2022-08-27 06:09:15'),
	(13, 1, 500, 4, 2000, 'MFS', '2022-08-27 06:09:33', '2022-08-27 06:09:33'),
	(14, 2, 500, 3, 1500, 'Cash', '2022-08-27 06:09:47', '2022-08-27 06:09:47'),
	(15, 2, 500, 10, 5000, 'MFS', '2022-08-27 06:09:59', '2022-08-27 06:09:59'),
	(16, 2, 500, 10, 5000, 'MFS', '2022-08-27 06:12:09', '2022-08-27 06:12:09'),
	(17, 2, 500, 10, 5000, 'MFS', '2022-08-27 06:12:10', '2022-08-27 06:12:10'),
	(18, 2, 500, 10, 5000, 'MFS', '2022-08-27 06:12:10', '2022-08-27 06:12:10'),
	(19, 2, 500, 10, 5000, 'MFS', '2022-08-27 06:12:19', '2022-08-27 06:12:19'),
	(20, 2, 500, 10, 5000, 'MFS', '2022-08-27 06:12:19', '2022-08-27 06:12:19'),
	(21, 2, 500, 10, 5000, 'MFS', '2022-08-27 06:12:20', '2022-08-27 06:12:20'),
	(22, 2, 500, 10, 5000, 'MFS', '2022-08-27 06:12:20', '2022-08-27 06:12:20'),
	(23, 2, 500, 10, 5000, 'MFS', '2022-08-27 06:12:39', '2022-08-27 06:12:39'),
	(24, 2, 500, 10, 5000, 'MFS', '2022-08-27 06:12:39', '2022-08-27 06:12:39'),
	(25, 2, 500, 10, 5000, 'MFS', '2022-08-27 06:12:40', '2022-08-27 06:12:40'),
	(26, 2, 500, 10, 5000, 'MFS', '2022-08-27 06:12:40', '2022-08-27 06:12:40'),
	(27, 2, 500, 10, 5000, 'MFS', '2022-08-27 06:12:45', '2022-08-27 06:12:45'),
	(28, 2, 500, 10, 5000, 'MFS', '2022-08-27 06:12:45', '2022-08-27 06:12:45');

-- Dumping structure for table demo.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo.users: ~1 rows (approximately)
INSERT IGNORE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'mdraihan4835@gmail.com', 'judge01@nh22.com', NULL, '$2y$10$y408mszQyxdvCJJzvySw.OCBrMoOOIxHEZ5l70TttvcN79wODZlAG', NULL, '2022-08-27 05:53:22', '2022-08-27 05:53:22');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
