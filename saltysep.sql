-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table saltysep.adminmenus
CREATE TABLE IF NOT EXISTS `adminmenus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.adminmenus: ~8 rows (approximately)
/*!40000 ALTER TABLE `adminmenus` DISABLE KEYS */;
INSERT INTO `adminmenus` (`id`, `name`, `position`, `data`, `lang`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Header', 'header', '[{"text":"Home","href":"/","icon":"","target":"_self","title":""},{"text":"Pricing","href":"/priceing","icon":"empty","target":"_self","title":""},{"text":"Services","href":"/service","icon":"empty","target":"_self","title":""},{"text":"Contact","href":"/contact","icon":"empty","target":"_self","title":""},{"text":"Login","href":"/login","icon":"empty","target":"_self","title":""}]', 'en', 1, '2021-01-08 15:21:55', '2021-01-11 17:08:42'),
	(2, 'Useful links', 'footer_left', '[{"text":"Academy","href":"/","icon":"","target":"_self","title":""},{"text":"Help","href":"/contact","icon":"empty","target":"_self","title":""},{"text":"Community","href":"/contact","icon":"empty","target":"_self","title":""},{"text":"Tools","href":"/contact","icon":"empty","target":"_self","title":""}]', 'en', 1, '2021-01-10 08:46:43', '2021-01-16 07:04:06'),
	(3, 'Policy', 'footer_right', '[{"text":"Policy","href":"/page/terms-and-condition","icon":"empty","target":"_self","title":""},{"text":"Service Policy","href":"/page/terms-and-condition","icon":"empty","target":"_self","title":""},{"text":"Refund Policy","href":"/page/terms-and-condition","icon":"empty","target":"_self","title":""}]', 'en', 1, '2021-01-10 08:58:24', '2021-01-16 07:09:59'),
	(4, 'Information', 'footer_center', '[{"text":"About Us","href":"#about_us","icon":"empty","target":"_self","title":""},{"text":"Partners Program","href":"/contact","icon":"empty","target":"_self","title":""},{"text":"Priceing","href":"#priceing","icon":"empty","target":"_self","title":""},{"text":"Payment gateway","href":"/contact","icon":"empty","target":"_self","title":""}]', 'en', 1, '2021-01-10 08:58:40', '2021-01-16 07:02:47'),
	(5, 'Header Arabic', 'header', '[{"text":"الصفحة الرئيسية","icon":"","href":"/","target":"_self","title":""},{"text":"التسعير","icon":"empty","href":"/priceing","target":"_self","title":""},{"text":"صالة عرض","icon":"empty","href":"/service","target":"_self","title":""},{"text":"اتصل","icon":"empty","href":"/contact","target":"_self","title":""},{"text":"تسجيل الدخول","icon":"empty","href":"/login","target":"_self","title":""}]', 'ar', 1, '2021-01-11 17:09:00', '2021-01-11 17:10:56'),
	(6, 'معلومات', 'footer_center', '[{"text":"معلومات عنا","icon":"","href":"#about_us","target":"_self","title":""},{"text":"برنامج الشركاء","icon":"empty","href":"/contact","target":"_self","title":""},{"text":"التسعير","icon":"empty","href":"#priceing","target":"_self","title":""},{"text":"بوابة الدفع","icon":"empty","href":"/contact","target":"_self","title":""}]', 'ar', 1, '2021-01-16 07:05:58', '2021-01-16 07:08:26'),
	(7, 'سياسات', 'footer_right', '[{"text":"سياسات","icon":"","href":"/page/terms-and-condition","target":"_self","title":""},{"text":"سياسة الخدمة","icon":"empty","href":"/page/terms-and-condition","target":"_self","title":""},{"text":"سياسة الاسترجاع","icon":"empty","href":"/page/terms-and-condition","target":"_self","title":""}]', 'ar', 1, '2021-01-16 07:06:18', '2021-01-16 07:10:29'),
	(8, 'روابط مفيدة', 'footer_left', '[{"text":"الأكاديمية","icon":"empty","href":"/","target":"_self","title":""},{"text":"مساعدة","icon":"empty","href":"/contact","target":"_self","title":""},{"text":"تواصل اجتماعي","icon":"empty","href":"/contact","target":"_self","title":""},{"text":"أدوات","icon":"empty","href":"/contact","target":"_self","title":""}]', 'ar', 1, '2021-01-16 07:06:35', '2021-01-16 07:24:25');
/*!40000 ALTER TABLE `adminmenus` ENABLE KEYS */;

-- Dumping structure for table saltysep.attributes
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `variation_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `term_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attributes_category_id_foreign` (`category_id`),
  KEY `attributes_variation_id_foreign` (`variation_id`),
  KEY `attributes_term_id_foreign` (`term_id`),
  CONSTRAINT `attributes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `attributes_term_id_foreign` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `attributes_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.attributes: ~0 rows (approximately)
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;

-- Dumping structure for table saltysep.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'category',
  `p_id` bigint(20) unsigned DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT '0',
  `menu_status` int(11) NOT NULL DEFAULT '0',
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_user_id_foreign` (`user_id`),
  CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.categories: ~28 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `slug`, `type`, `p_id`, `featured`, `menu_status`, `is_admin`, `created_at`, `updated_at`, `user_id`) VALUES
	(1, 'Default', 'default', 'parent_attribute', NULL, 0, 0, 0, '2020-12-12 14:49:38', '2020-12-12 14:49:38', 1),
	(2, 'COD', 'cod', 'payment_getway', NULL, 1, 0, 0, '2020-12-12 14:49:38', '2020-12-12 14:49:38', 1),
	(3, 'INSTAMOJO', 'instamojo', 'payment_getway', NULL, 0, 0, 0, '2020-12-12 14:49:39', '2020-12-12 14:49:39', 1),
	(4, 'RAZORPAY', 'razorpay', 'payment_getway', NULL, 0, 0, 0, '2020-12-12 14:49:39', '2020-12-12 14:49:39', 1),
	(5, 'PAYPAL', 'paypal', 'payment_getway', NULL, 0, 0, 0, '2020-12-12 14:49:39', '2020-12-29 09:12:16', 1),
	(6, 'STRIPE', 'stripe', 'payment_getway', NULL, 0, 0, 0, '2020-12-12 14:49:40', '2020-12-12 14:49:40', 1),
	(7, 'TOYYIBPAY', 'toyyibpay', 'payment_getway', NULL, 0, 0, 0, '2020-12-12 14:49:40', '2020-12-12 14:49:40', 1),
	(8, 'Mollie', 'mollie', 'payment_getway', NULL, 0, 0, 0, '2020-12-12 14:54:58', '2020-12-14 06:28:00', 1),
	(9, 'Paystack', 'paystack', 'payment_getway', NULL, 0, 0, 0, '2020-12-12 14:54:58', '2020-12-14 06:28:00', 1),
	(10, 'Mercado', 'mercado', 'payment_getway', NULL, 0, 0, 0, '2020-12-12 14:54:58', '2020-12-14 06:28:00', 1),
	(73, 'James Curran', 'General Manager Spotify', 'testimonial', NULL, 0, 0, 1, '2020-12-18 17:36:54', '2020-12-18 17:36:54', 1),
	(74, 'Jose Evans', 'Chief Engineer Apple', 'testimonial', NULL, 0, 0, 1, '2020-12-18 17:37:34', '2020-12-18 17:37:34', 1),
	(75, '#', NULL, 'brand', NULL, 0, 0, 1, '2020-12-18 18:02:34', '2020-12-18 18:02:34', 1),
	(76, '#', NULL, 'brand', NULL, 0, 0, 1, '2020-12-18 18:02:43', '2020-12-18 18:02:43', 1),
	(77, '#', NULL, 'brand', NULL, 0, 0, 1, '2020-12-18 18:02:57', '2020-12-18 18:02:57', 1),
	(78, '#', NULL, 'brand', NULL, 0, 0, 1, '2020-12-18 18:03:05', '2020-12-18 18:03:05', 1),
	(79, '#', NULL, 'brand', NULL, 0, 0, 1, '2020-12-18 18:03:14', '2020-12-18 18:03:14', 1),
	(81, 'Start an online business', 'start-an-online-business', 'features', NULL, 0, 0, 1, '2021-01-09 17:20:57', '2021-01-09 17:20:57', 1),
	(82, 'Move your business online', 'move-your-business-online', 'features', NULL, 0, 0, 1, '2021-01-09 17:23:50', '2021-01-09 17:23:50', 1),
	(83, 'Switch to dokans', 'switch-to-dokans', 'features', NULL, 0, 0, 1, '2021-01-09 17:27:48', '2021-01-09 17:27:48', 1),
	(85, 'Hire a dokans expert', 'hire-a-dokans-expert', 'features', NULL, 0, 0, 1, '2021-01-09 17:34:21', '2021-01-09 17:34:21', 1),
	(87, '#test', '', 'gallery', NULL, 0, 0, 1, '2021-01-09 18:19:05', '2021-01-09 18:19:05', 1),
	(88, '#', '1', 'gallery', NULL, 0, 0, 1, '2021-01-09 18:19:17', '2021-01-09 18:19:17', 1),
	(89, '#', '1', 'gallery', NULL, 0, 0, 1, '2021-01-09 18:19:27', '2021-01-09 18:19:27', 1),
	(90, '#', '1', 'gallery', NULL, 0, 0, 1, '2021-01-09 18:32:18', '2021-01-09 18:32:18', 1),
	(91, 'Product Inventors', 'start-an-online-business', 'features', NULL, 0, 0, 1, '2021-01-09 17:20:57', '2021-01-09 17:20:57', 1),
	(92, 'Easy to customization', 'start-an-online-business', 'features', NULL, 0, 0, 1, '2021-01-09 17:20:57', '2021-01-09 17:20:57', 1),
	(93, '#', NULL, 'brand', NULL, 0, 0, 1, '2020-12-18 18:03:14', '2020-12-18 18:03:14', 1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table saltysep.categorymedia
CREATE TABLE IF NOT EXISTS `categorymedia` (
  `media_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  KEY `categorymedia_category_id_foreign` (`category_id`),
  KEY `categorymedia_media_id_foreign` (`media_id`),
  CONSTRAINT `categorymedia_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `categorymedia_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.categorymedia: ~0 rows (approximately)
/*!40000 ALTER TABLE `categorymedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorymedia` ENABLE KEYS */;

-- Dumping structure for table saltysep.categorymetas
CREATE TABLE IF NOT EXISTS `categorymetas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categorymetas_category_id_foreign` (`category_id`),
  CONSTRAINT `categorymetas_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.categorymetas: ~50 rows (approximately)
/*!40000 ALTER TABLE `categorymetas` DISABLE KEYS */;
INSERT INTO `categorymetas` (`id`, `category_id`, `type`, `content`, `created_at`, `updated_at`) VALUES
	(1, 2, 'description', 'description', '2020-12-12 14:49:38', '2020-12-12 14:49:38'),
	(2, 2, 'preview', 'uploads/cod.png', '2020-12-12 14:49:39', '2020-12-12 14:49:39'),
	(3, 3, 'description', 'description', '2020-12-12 14:49:39', '2020-12-12 14:49:39'),
	(4, 3, 'preview', 'uploads/instamojo.png', '2020-12-12 14:49:39', '2020-12-12 14:49:39'),
	(5, 4, 'description', 'description', '2020-12-12 14:49:39', '2020-12-12 14:49:39'),
	(6, 4, 'preview', 'uploads/razorpay.png', '2020-12-12 14:49:39', '2020-12-12 14:49:39'),
	(7, 5, 'description', 'description', '2020-12-12 14:49:39', '2020-12-12 14:49:39'),
	(8, 5, 'preview', 'uploads/paypal.png', '2020-12-12 14:49:39', '2020-12-12 14:49:39'),
	(9, 6, 'description', 'description', '2020-12-12 14:49:40', '2020-12-12 14:49:40'),
	(10, 6, 'preview', 'uploads/stripe.png', '2020-12-12 14:49:40', '2020-12-12 14:49:40'),
	(11, 7, 'description', 'description', '2020-12-12 14:49:40', '2020-12-12 14:49:40'),
	(12, 7, 'preview', 'uploads/toyyibpay.jpg', '2020-12-12 14:49:40', '2020-12-12 14:49:40'),
	(35, 73, 'excerpt', 'We use Impact mainly for its site explorer, and it’s immensely improved how we find link targets. We use it both for getting quick analysis of a site, as well as utilizing its extensive index when we want to dive deep.', '2020-12-18 17:36:54', '2020-12-18 17:36:54'),
	(36, 74, 'excerpt', 'We use Impact mainly for its site explorer, and it’s immensely improved how we find link targets. We use it both for getting quick analysis of a site, as well as utilizing its extensive index when we want to dive deep.', '2020-12-18 17:37:34', '2020-12-18 17:37:34'),
	(37, 75, 'preview', 'uploads/1/2020/12/1608314554.png', '2020-12-18 18:02:34', '2020-12-18 18:02:34'),
	(38, 76, 'preview', 'uploads/1/2020/12/1608314563.png', '2020-12-18 18:02:43', '2020-12-18 18:02:43'),
	(39, 77, 'preview', 'uploads/1/2020/12/1608314577.png', '2020-12-18 18:02:57', '2020-12-18 18:02:57'),
	(40, 78, 'preview', 'uploads/1/2020/12/1608314585.png', '2020-12-18 18:03:06', '2020-12-18 18:03:06'),
	(41, 79, 'preview', 'uploads/1/2020/12/1608314594.png', '2020-12-18 18:03:14', '2020-12-18 18:03:14'),
	(42, 8, 'description', 'description', '2020-12-12 14:49:38', '2020-12-12 14:49:38'),
	(43, 8, 'preview', 'uploads/mollie.png', '2020-12-12 14:49:39', '2020-12-12 14:49:39'),
	(44, 4, 'credentials', '{"key_id":"","key_secret":"","currency":"USD"}', '2020-12-29 07:42:37', '2020-12-29 07:51:10'),
	(45, 3, 'credentials', '{"x_api_Key":"","x_api_token":""}', '2020-12-29 07:42:54', '2020-12-29 07:42:54'),
	(46, 5, 'credentials', '{"client_id":"","client_secret":"","currency":"USD"}', '2020-12-29 07:43:08', '2020-12-29 09:01:49'),
	(47, 6, 'credentials', '{"publishable_key":"","secret_key":"","currency":"USD"}', '2020-12-29 07:43:20', '2020-12-29 07:50:41'),
	(48, 7, 'credentials', '{"userSecretKey":"","categoryCode":""}', '2020-12-29 07:43:32', '2020-12-29 07:43:32'),
	(49, 8, 'credentials', '{"api_key":"","currency":"USD"}', '2020-12-29 07:50:18', '2020-12-29 07:50:18'),
	(50, 81, 'preview', 'uploads/1/2021/01/1610212857.svg', '2021-01-09 17:20:57', '2021-01-09 17:20:57'),
	(51, 81, 'excerpt', 'Create a business, whether you’ve got a fresh idea or are looking for a new way to make money.', '2021-01-09 17:20:57', '2021-01-09 17:20:57'),
	(52, 82, 'preview', 'uploads/1/2021/01/1610213030.svg', '2021-01-09 17:23:51', '2021-01-09 17:23:51'),
	(53, 82, 'excerpt', 'Turn your retail store into an online store and keep serving customers without missing a beat.', '2021-01-09 17:23:51', '2021-01-09 17:23:51'),
	(54, 83, 'preview', 'uploads/1/2021/01/1610213268.svg', '2021-01-09 17:27:48', '2021-01-09 17:27:48'),
	(55, 83, 'excerpt', 'Bring your business to Shopify, no matter which ecommerce platform you’re currently using.', '2021-01-09 17:27:48', '2021-01-09 17:27:48'),
	(58, 85, 'preview', 'uploads/1/2021/01/1610213661.svg', '2021-01-09 17:34:21', '2021-01-09 17:34:21'),
	(59, 85, 'excerpt', 'Get set up with the help of a trusted freelancer or agency from the dokans Experts Marketplace.', '2021-01-09 17:34:21', '2021-01-09 17:34:21'),
	(61, 87, 'preview', 'uploads/admin/1/2021/01/1610216345.webp', '2021-01-09 18:19:05', '2021-01-09 18:19:05'),
	(62, 88, 'preview', 'uploads/admin/1/2021/01/1610216357.webp', '2021-01-09 18:19:17', '2021-01-09 18:19:17'),
	(63, 89, 'preview', 'uploads/admin/1/2021/01/1610216367.webp', '2021-01-09 18:19:27', '2021-01-09 18:19:27'),
	(64, 90, 'preview', 'uploads/admin/1/2021/01/1610217138.webp', '2021-01-09 18:32:18', '2021-01-09 18:32:18'),
	(65, 9, 'credentials', '{"public_key":"","secret_key":"","currency":"GHS"}', '2020-12-29 07:50:18', '2020-12-29 07:50:18'),
	(66, 9, 'preview', 'uploads/paystack.png', '2020-12-12 14:49:39', '2020-12-12 14:49:39'),
	(67, 9, 'description', 'description', '2020-12-12 14:49:38', '2020-12-12 14:49:38'),
	(68, 91, 'excerpt', 'Create a business, whether you’ve got a fresh idea or are looking for a new way to make money.', '2021-01-09 17:20:57', '2021-01-09 17:20:57'),
	(69, 92, 'excerpt', 'Create a business, whether you’ve got a fresh idea or are looking for a new way to make money.', '2021-01-09 17:20:57', '2021-01-09 17:20:57'),
	(70, 91, 'preview', 'uploads/1/2021/01/1610212859.svg', '2021-01-09 17:20:57', '2021-01-09 17:20:57'),
	(71, 92, 'preview', 'uploads/1/2021/01/1610212858.svg', '2021-01-09 17:20:57', '2021-01-09 17:20:57'),
	(72, 93, 'preview', 'uploads/1/2020/12/nginx-logo.svg', '2020-12-18 18:03:14', '2020-12-18 18:03:14'),
	(73, 10, 'credentials', '{"public_key":"","access_token":""}', '2020-12-29 07:50:18', '2020-12-29 07:50:18'),
	(74, 10, 'preview', 'uploads/mercado.png', '2020-12-12 14:49:39', '2020-12-12 14:49:39'),
	(75, 10, 'description', 'description', '2020-12-12 14:49:38', '2020-12-12 14:49:38');
/*!40000 ALTER TABLE `categorymetas` ENABLE KEYS */;

-- Dumping structure for table saltysep.categoryrelations
CREATE TABLE IF NOT EXISTS `categoryrelations` (
  `category_id` bigint(20) unsigned NOT NULL,
  `relation_id` bigint(20) unsigned NOT NULL,
  KEY `categoryrelations_category_id_foreign` (`category_id`),
  KEY `categoryrelations_relation_id_foreign` (`relation_id`),
  CONSTRAINT `categoryrelations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `categoryrelations_relation_id_foreign` FOREIGN KEY (`relation_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.categoryrelations: ~0 rows (approximately)
/*!40000 ALTER TABLE `categoryrelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoryrelations` ENABLE KEYS */;

-- Dumping structure for table saltysep.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customers_created_by_foreign` (`created_by`),
  KEY `customers_domain_id_foreign` (`domain_id`),
  CONSTRAINT `customers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `customers_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `domains` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.customers: ~0 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table saltysep.domains
CREATE TABLE IF NOT EXISTS `domains` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userplan_id` bigint(20) unsigned NOT NULL,
  `full_domain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `type` int(11) NOT NULL DEFAULT '1',
  `will_expire` date DEFAULT NULL,
  `data` json DEFAULT NULL,
  `is_trial` int(11) NOT NULL DEFAULT '1',
  `user_id` bigint(20) unsigned NOT NULL,
  `template_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `shop_type` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `domains_user_id_foreign` (`user_id`),
  KEY `domains_template_id_foreign` (`template_id`),
  KEY `domains_userplan_id_foreign` (`userplan_id`),
  CONSTRAINT `domains_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `templates` (`id`),
  CONSTRAINT `domains_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `domains_userplan_id_foreign` FOREIGN KEY (`userplan_id`) REFERENCES `userplans` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.domains: ~2 rows (approximately)
/*!40000 ALTER TABLE `domains` DISABLE KEYS */;
INSERT INTO `domains` (`id`, `domain`, `userplan_id`, `full_domain`, `status`, `type`, `will_expire`, `data`, `is_trial`, `user_id`, `template_id`, `shop_type`, `created_at`, `updated_at`) VALUES
	(1, 'arabcode.saltysep.test', 1, 'http://arabcode.saltysep.test', 1, 1, '2024-02-13', '{"gtm": true, "pos": true, "pwa": true, "qr_code": true, "storage": 10000, "whatsapp": true, "custom_js": true, "inventory": true, "custom_css": true, "brand_limit": 10000, "live_support": true, "custom_domain": true, "product_limit": 10000, "category_limit": 10000, "customer_limit": 10000, "customer_panel": true, "facebook_pixel": true, "location_limit": 10000, "variation_limit": 10000, "google_analytics": true}', 1, 2, 1, 1, '2022-02-13 13:04:50', '2022-02-13 13:06:20'),
	(2, 'sessions.saltysep.test', 2, 'http://sessions.saltysep.test', 3, 1, '2024-02-13', '{"gtm": true, "pos": true, "pwa": true, "qr_code": true, "storage": 10000, "whatsapp": true, "custom_js": true, "inventory": true, "custom_css": true, "brand_limit": 10000, "live_support": true, "custom_domain": true, "product_limit": 10000, "category_limit": 10000, "customer_limit": 10000, "customer_panel": true, "facebook_pixel": true, "location_limit": 10000, "variation_limit": 10000, "google_analytics": true}', 1, 3, 1, 1, '2022-02-13 13:17:17', '2022-02-13 13:17:17');
/*!40000 ALTER TABLE `domains` ENABLE KEYS */;

-- Dumping structure for table saltysep.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table saltysep.files
CREATE TABLE IF NOT EXISTS `files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `files_term_id_foreign` (`term_id`),
  CONSTRAINT `files_term_id_foreign` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.files: ~0 rows (approximately)
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;

-- Dumping structure for table saltysep.getways
CREATE TABLE IF NOT EXISTS `getways` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `getways_user_id_foreign` (`user_id`),
  KEY `getways_category_id_foreign` (`category_id`),
  CONSTRAINT `getways_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `getways_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.getways: ~0 rows (approximately)
/*!40000 ALTER TABLE `getways` DISABLE KEYS */;
/*!40000 ALTER TABLE `getways` ENABLE KEYS */;

-- Dumping structure for table saltysep.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table saltysep.media
CREATE TABLE IF NOT EXISTS `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_user_id_foreign` (`user_id`),
  CONSTRAINT `media_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.media: ~0 rows (approximately)
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;

-- Dumping structure for table saltysep.menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_user_id_foreign` (`user_id`),
  CONSTRAINT `menus_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.menus: ~0 rows (approximately)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Dumping structure for table saltysep.metas
CREATE TABLE IF NOT EXISTS `metas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `metas_term_id_foreign` (`term_id`),
  CONSTRAINT `metas_term_id_foreign` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.metas: ~0 rows (approximately)
/*!40000 ALTER TABLE `metas` DISABLE KEYS */;
/*!40000 ALTER TABLE `metas` ENABLE KEYS */;

-- Dumping structure for table saltysep.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.migrations: ~39 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(40, '2014_10_12_000000_create_users_table', 1),
	(41, '2014_10_12_100000_create_password_resets_table', 1),
	(42, '2019_08_19_000000_create_failed_jobs_table', 1),
	(43, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(44, '2020_08_18_193025_create_plans_table', 1),
	(45, '2020_08_18_193026_create_categories_table', 1),
	(46, '2020_08_18_193027_create_userplans_table', 1),
	(47, '2020_08_18_193029_create_templates_table', 1),
	(48, '2020_08_18_193030_create_domains_table', 1),
	(49, '2020_08_18_193343_create_terms_table', 1),
	(50, '2020_08_18_193358_create_metas_table', 1),
	(51, '2020_08_18_194203_create_postcategories_table', 1),
	(52, '2020_08_18_201413_create_adminmenus_table', 1),
	(53, '2020_08_18_201414_create_menus_table', 1),
	(54, '2020_08_18_201436_create_options_table', 1),
	(55, '2020_08_18_201617_create_usermetas_table', 1),
	(56, '2020_08_25_165636_create_categorymetas_table', 1),
	(57, '2020_09_14_162315_create_permission_tables', 1),
	(58, '2020_10_09_122906_create_attributes_table', 1),
	(59, '2020_10_09_123652_create_stocks_table', 1),
	(60, '2020_10_09_124238_create_media_table', 1),
	(61, '2020_10_09_124646_create_postmedia_table', 1),
	(62, '2020_10_15_182226_create_files_table', 1),
	(63, '2020_10_17_152834_create_categoryrelations_table', 1),
	(64, '2020_10_18_053526_create_useroptions_table', 1),
	(65, '2020_10_19_180725_create_getways_table', 1),
	(66, '2020_10_21_083527_create_categorymedia_table', 1),
	(67, '2020_10_27_174950_create_customers_table', 1),
	(68, '2020_10_27_174958_create_trasections_table', 1),
	(69, '2020_10_27_174959_create_orders_table', 1),
	(70, '2020_11_05_065943_create_ordermetas_table', 1),
	(71, '2020_11_05_072101_create_orderitems_table', 1),
	(72, '2020_11_05_074430_create_ordershippings_table', 1),
	(73, '2020_11_06_110926_create_jobs_table', 1),
	(74, '2020_12_13_072447_create_reviews_table', 1),
	(75, '2021_02_04_072932_create_prices_table', 1),
	(76, '2021_02_04_074632_create_termoptions_table', 1),
	(77, '2021_07_09_041208_create_requestdomains_table', 1),
	(78, '2021_07_16_184214_create_planlogs_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table saltysep.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.model_has_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Dumping structure for table saltysep.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.model_has_roles: ~0 rows (approximately)
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Dumping structure for table saltysep.options
CREATE TABLE IF NOT EXISTS `options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.options: ~20 rows (approximately)
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'langlist', '{"English":"en","Bengali":"bn"}', '2020-12-12 14:49:37', '2020-12-12 14:49:37'),
	(2, 'order_prefix', 'AMC', '2020-12-12 14:49:38', '2020-12-12 14:49:38'),
	(3, 'company_info', '{"name":"Dokans","site_description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s","email1":"email@email.com","email2":"email2@email.com","phone1":"+88012456789","phone2":"+88012456789","country":"bangladesh","zip_code":"1234","state":"Chattagram","city":"Chattagram","address":"Agrabad","facebook":"#","twitter":"#","linkedin":"#","instagram":"#","youtube":"#","site_color":"#42155c"}', '2020-12-12 14:49:38', '2021-01-16 07:30:52'),
	(4, 'currency_info', '{"currency_name":"USD","currency_icon":"$","currency_possition":"left"}', '2020-12-12 14:49:38', '2020-12-12 14:49:38'),
	(5, 'cron_info', '{"send_mail_to_will_expire_within_days":7,"alert_message":"i, your plan will expire soon.","expire_message":"our plan is expired!","trial_expired_message":"our free trial is expired!","auto_approve":"yes"}', '2020-12-12 14:49:38', '2020-12-12 14:49:38'),
	(6, 'header', '{"title":"SELL EVERYWHERE","highlight_title":"Increase your productivity","ytb_video":"75TGjNieK84","description":"Use one platform to sell products to anyone, anywhere\\u2014in person with Point of Sale and online through your website, social media, and online marketplaces.","preview":"uploads\\/1\\/2021\\/01\\/1610213945.webp"}', '2020-12-18 17:14:36', '2021-01-09 18:05:30'),
	(7, 'faqs', '{"description":"<h2>Site Audit<\\/h2>\\r\\n\\r\\n<p>Site Audit crawls all the pages it finds on your website &ndash; then provides an overall SEO health score, visualises key data in charts, flags all possible SEO issues and provides recommendations on how to fix them.<\\/p>\\r\\n\\r\\n<p>Have a huge website? Not an issue.<\\/p>\\r\\n\\r\\n<p><a href=\\"https:\\/\\/demos.creative-tim.com\\/impact-design-system\\/front\\/pages\\/about.html\\">Learn More&nbsp;<\\/a><\\/p>","preview":"uploads\\/1\\/2020\\/12\\/1608311802.svg"}', '2020-12-18 17:16:42', '2020-12-18 17:19:03'),
	(8, 'marketing_tool', '{"ga_measurement_id":"UA-180680025-1","analytics_view_id":"231381168","google_status":"on","fb_pixel":"","fb_pixel_status":""}', '2020-12-25 17:32:48', '2020-12-25 17:32:48'),
	(9, 'languages', '{"en":"English","bn":"Bangla","ar":"Arabic"}', '2021-01-05 09:51:31', '2021-01-11 17:07:34'),
	(10, 'active_languages', '{"en":"English","ar":"Arabic"}', '2021-01-08 15:21:41', '2021-01-11 17:07:52'),
	(11, 'about_1', '{"title":"Upload your product","description":"Enter the product along with other complete information such as photos, videos, variations, product descriptions, promotions and so on.","btn_link":"#priceing","btn_text":"Free Trial","preview":"icofont-cloud-upload"}', '2021-01-09 18:51:25', '2021-01-16 06:22:49'),
	(12, 'about_2', '{"title":"Setup your store","description":"Insert logo, banner and modify your store theme according to your own brand identity without having to create any code.","btn_link":"","btn_text":"","preview":"icofont-shopping-cart"}', '2021-01-09 18:55:31', '2021-01-16 06:18:44'),
	(13, 'about_3', '{"title":"The launch continues","description":"Easily, your online store goes live and you can validate your business and get market share faster than your other competitors.","btn_link":"","btn_text":"","preview":"icofont-rocket-alt-2"}', '2021-01-09 18:56:22', '2021-01-16 06:56:08'),
	(14, 'seo', '{"title":"Dokans","description":"test","canonical":"http://saltysep.test","tags":"test","twitterTitle":"@dokans"}', '2021-01-16 08:30:26', '2021-01-16 08:30:26'),
	(15, 'auto_order', 'yes', '2021-02-21 18:14:35', '2021-02-21 18:14:44'),
	(16, 'ecom_features', '{"top_image":"uploads\\/1\\/2021\\/03\\/1615392340.png","center_image":"uploads\\/1\\/2021\\/03\\/1615392340.webp","bottom_image":"uploads\\/1\\/2021\\/03\\/1615392340.webp","area_title":"Market your business","description":"Take the guesswork out of marketing with built-in tools that help you create, execute, and analyze digital marketing campaigns.","btn_link":"#service","btn_text":"Service"}', '2021-02-21 18:14:35', '2021-02-21 18:14:44'),
	(17, 'counter_area', '{"happy_customer":"1000","total_reviews":"800","total_domain":"1200","community_member":"2000"}', '2021-02-21 18:14:35', '2021-02-21 18:14:44'),
	(18, 'instruction', '{"dns_configure_instruction":"You\'ll need to setup a DNS record to point to your store on our server. DNS records can be setup through your domain registrars control panel. Since every registrar has a different setup, contact them for assistance if you\'re unsure.","support_instruction":"DNS changes may take up to 48-72 hours to take effect, although it\'s normally a lot faster than that. You will receive a reply when your custom domain has been activated. Please allow 1-2 business days for this process to complete."}', '2021-02-21 18:14:35', '2021-02-21 18:14:44'),
	(19, 'tax', '2', '2021-02-21 18:14:35', '2021-02-21 18:14:44'),
	(20, 'site_key', NULL, '2022-02-13 13:00:30', '2021-02-21 18:14:44');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;

-- Dumping structure for table saltysep.orderitems
CREATE TABLE IF NOT EXISTS `orderitems` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci,
  `qty` int(11) NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderitems_order_id_foreign` (`order_id`),
  KEY `orderitems_term_id_foreign` (`term_id`),
  CONSTRAINT `orderitems_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orderitems_term_id_foreign` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.orderitems: ~0 rows (approximately)
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;

-- Dumping structure for table saltysep.ordermetas
CREATE TABLE IF NOT EXISTS `ordermetas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ordermetas_order_id_foreign` (`order_id`),
  CONSTRAINT `ordermetas_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.ordermetas: ~0 rows (approximately)
/*!40000 ALTER TABLE `ordermetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordermetas` ENABLE KEYS */;

-- Dumping structure for table saltysep.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `order_type` int(11) NOT NULL DEFAULT '0',
  `payment_status` int(11) NOT NULL DEFAULT '2',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `tax` double NOT NULL DEFAULT '0',
  `shipping` double NOT NULL DEFAULT '0',
  `total` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_customer_id_foreign` (`customer_id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_category_id_foreign` (`category_id`),
  CONSTRAINT `orders_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.orders: ~0 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table saltysep.ordershippings
CREATE TABLE IF NOT EXISTS `ordershippings` (
  `order_id` bigint(20) unsigned NOT NULL,
  `location_id` bigint(20) unsigned NOT NULL,
  `shipping_id` bigint(20) unsigned NOT NULL,
  KEY `ordershippings_order_id_foreign` (`order_id`),
  KEY `ordershippings_location_id_foreign` (`location_id`),
  KEY `ordershippings_shipping_id_foreign` (`shipping_id`),
  CONSTRAINT `ordershippings_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ordershippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ordershippings_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.ordershippings: ~0 rows (approximately)
/*!40000 ALTER TABLE `ordershippings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordershippings` ENABLE KEYS */;

-- Dumping structure for table saltysep.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table saltysep.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.permissions: ~58 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
	(1, 'dashboard', 'web', 'dashboard', '2022-02-13 13:00:20', '2022-02-13 13:00:20'),
	(2, 'plan.create', 'web', 'plan', '2022-02-13 13:00:21', '2022-02-13 13:00:21'),
	(3, 'plan.edit', 'web', 'plan', '2022-02-13 13:00:21', '2022-02-13 13:00:21'),
	(4, 'plan.show', 'web', 'plan', '2022-02-13 13:00:21', '2022-02-13 13:00:21'),
	(5, 'plan.update', 'web', 'plan', '2022-02-13 13:00:22', '2022-02-13 13:00:22'),
	(6, 'plan.delete', 'web', 'plan', '2022-02-13 13:00:22', '2022-02-13 13:00:22'),
	(7, 'plan.list', 'web', 'plan', '2022-02-13 13:00:22', '2022-02-13 13:00:22'),
	(8, 'admin.create', 'web', 'admin', '2022-02-13 13:00:22', '2022-02-13 13:00:22'),
	(9, 'admin.edit', 'web', 'admin', '2022-02-13 13:00:22', '2022-02-13 13:00:22'),
	(10, 'admin.update', 'web', 'admin', '2022-02-13 13:00:22', '2022-02-13 13:00:22'),
	(11, 'admin.delete', 'web', 'admin', '2022-02-13 13:00:22', '2022-02-13 13:00:22'),
	(12, 'admin.list', 'web', 'admin', '2022-02-13 13:00:22', '2022-02-13 13:00:22'),
	(13, 'role.create', 'web', 'role', '2022-02-13 13:00:23', '2022-02-13 13:00:23'),
	(14, 'role.edit', 'web', 'role', '2022-02-13 13:00:23', '2022-02-13 13:00:23'),
	(15, 'role.update', 'web', 'role', '2022-02-13 13:00:23', '2022-02-13 13:00:23'),
	(16, 'role.delete', 'web', 'role', '2022-02-13 13:00:23', '2022-02-13 13:00:23'),
	(17, 'role.list', 'web', 'role', '2022-02-13 13:00:23', '2022-02-13 13:00:23'),
	(18, 'page.create', 'web', 'Pages', '2022-02-13 13:00:23', '2022-02-13 13:00:23'),
	(19, 'page.edit', 'web', 'Pages', '2022-02-13 13:00:23', '2022-02-13 13:00:23'),
	(20, 'page.delete', 'web', 'Pages', '2022-02-13 13:00:24', '2022-02-13 13:00:24'),
	(21, 'page.list', 'web', 'Pages', '2022-02-13 13:00:24', '2022-02-13 13:00:24'),
	(22, 'payment_gateway.config', 'web', 'Payment Gateway', '2022-02-13 13:00:24', '2022-02-13 13:00:24'),
	(23, 'seo', 'web', 'seo', '2022-02-13 13:00:24', '2022-02-13 13:00:24'),
	(24, 'gallery.list', 'web', 'gallery', '2022-02-13 13:00:24', '2022-02-13 13:00:24'),
	(25, 'gallery.create', 'web', 'gallery', '2022-02-13 13:00:24', '2022-02-13 13:00:24'),
	(26, 'order.create', 'web', 'Orders', '2022-02-13 13:00:24', '2022-02-13 13:00:24'),
	(27, 'order.edit', 'web', 'Orders', '2022-02-13 13:00:25', '2022-02-13 13:00:25'),
	(28, 'order.delete', 'web', 'Orders', '2022-02-13 13:00:25', '2022-02-13 13:00:25'),
	(29, 'order.list', 'web', 'Orders', '2022-02-13 13:00:25', '2022-02-13 13:00:25'),
	(30, 'order.view', 'web', 'Orders', '2022-02-13 13:00:25', '2022-02-13 13:00:25'),
	(31, 'report.view', 'web', 'Report', '2022-02-13 13:00:25', '2022-02-13 13:00:25'),
	(32, 'customer.create', 'web', 'Customer', '2022-02-13 13:00:25', '2022-02-13 13:00:25'),
	(33, 'customer.list', 'web', 'Customer', '2022-02-13 13:00:26', '2022-02-13 13:00:26'),
	(34, 'customer.view', 'web', 'Customer', '2022-02-13 13:00:26', '2022-02-13 13:00:26'),
	(35, 'customer.edit', 'web', 'Customer', '2022-02-13 13:00:26', '2022-02-13 13:00:26'),
	(36, 'customer.delete', 'web', 'Customer', '2022-02-13 13:00:26', '2022-02-13 13:00:26'),
	(37, 'customer.request', 'web', 'Customer', '2022-02-13 13:00:26', '2022-02-13 13:00:26'),
	(38, 'customer.expired_subscription', 'web', 'Customer', '2022-02-13 13:00:27', '2022-02-13 13:00:27'),
	(39, 'domain.create', 'web', 'Domain', '2022-02-13 13:00:27', '2022-02-13 13:00:27'),
	(40, 'domain.edit', 'web', 'Domain', '2022-02-13 13:00:27', '2022-02-13 13:00:27'),
	(41, 'domain.list', 'web', 'Domain', '2022-02-13 13:00:27', '2022-02-13 13:00:27'),
	(42, 'domain.delete', 'web', 'Domain', '2022-02-13 13:00:27', '2022-02-13 13:00:27'),
	(43, 'cron_job.control', 'web', 'Cron jobs', '2022-02-13 13:00:27', '2022-02-13 13:00:27'),
	(44, 'menu', 'web', 'menu', '2022-02-13 13:00:28', '2022-02-13 13:00:28'),
	(45, 'cron_job', 'web', 'Developer', '2022-02-13 13:00:28', '2022-02-13 13:00:28'),
	(46, 'email_template.config', 'web', 'Developer', '2022-02-13 13:00:28', '2022-02-13 13:00:28'),
	(47, 'template.upload', 'web', 'Developer', '2022-02-13 13:00:28', '2022-02-13 13:00:28'),
	(48, 'template.delete', 'web', 'Developer', '2022-02-13 13:00:28', '2022-02-13 13:00:28'),
	(49, 'template.list', 'web', 'Developer', '2022-02-13 13:00:28', '2022-02-13 13:00:28'),
	(50, 'environment.settings', 'web', 'Developer', '2022-02-13 13:00:28', '2022-02-13 13:00:28'),
	(51, 'payment_gateway.setup', 'web', 'Developer', '2022-02-13 13:00:29', '2022-02-13 13:00:29'),
	(52, 'site.settings', 'web', 'Settings', '2022-02-13 13:00:29', '2022-02-13 13:00:29'),
	(53, 'marketing.tools', 'web', 'Settings', '2022-02-13 13:00:29', '2022-02-13 13:00:29'),
	(54, 'uploaded_files.control', 'web', 'Seller Activity', '2022-02-13 13:00:29', '2022-02-13 13:00:29'),
	(55, 'uploaded_files_directory.control', 'web', 'Seller Activity', '2022-02-13 13:00:29', '2022-02-13 13:00:29'),
	(56, 'product.control', 'web', 'Seller Activity', '2022-02-13 13:00:29', '2022-02-13 13:00:29'),
	(57, 'invoices.control', 'web', 'Seller Activity', '2022-02-13 13:00:30', '2022-02-13 13:00:30'),
	(58, 'language_edit', 'web', 'language', '2022-02-13 13:00:30', '2022-02-13 13:00:30');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table saltysep.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table saltysep.planlogs
CREATE TABLE IF NOT EXISTS `planlogs` (
  `userplan_id` bigint(20) unsigned NOT NULL,
  `domain_id` bigint(20) unsigned NOT NULL,
  KEY `planlogs_userplan_id_foreign` (`userplan_id`),
  KEY `planlogs_domain_id_foreign` (`domain_id`),
  CONSTRAINT `planlogs_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `domains` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `planlogs_userplan_id_foreign` FOREIGN KEY (`userplan_id`) REFERENCES `userplans` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.planlogs: ~2 rows (approximately)
/*!40000 ALTER TABLE `planlogs` DISABLE KEYS */;
INSERT INTO `planlogs` (`userplan_id`, `domain_id`) VALUES
	(1, 1),
	(2, 2);
/*!40000 ALTER TABLE `planlogs` ENABLE KEYS */;

-- Dumping structure for table saltysep.plans
CREATE TABLE IF NOT EXISTS `plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `days` int(11) NOT NULL,
  `data` json NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `custom_domain` int(11) NOT NULL DEFAULT '0',
  `featured` int(11) NOT NULL DEFAULT '0',
  `is_default` int(11) NOT NULL DEFAULT '0',
  `is_trial` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.plans: ~0 rows (approximately)
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` (`id`, `name`, `description`, `price`, `days`, `data`, `status`, `custom_domain`, `featured`, `is_default`, `is_trial`, `created_at`, `updated_at`) VALUES
	(1, 'Free Trial', 'free register', 0, 730, '{"gtm": true, "pos": true, "pwa": true, "qr_code": true, "storage": 10000, "whatsapp": true, "custom_js": true, "inventory": true, "custom_css": true, "brand_limit": 10000, "live_support": true, "custom_domain": true, "product_limit": 10000, "category_limit": 10000, "customer_limit": 10000, "customer_panel": true, "facebook_pixel": true, "location_limit": 10000, "variation_limit": 10000, "google_analytics": true}', 1, 0, 0, 0, 1, '2020-12-12 14:51:30', '2021-01-16 07:27:51');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;

-- Dumping structure for table saltysep.postcategories
CREATE TABLE IF NOT EXISTS `postcategories` (
  `category_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL,
  KEY `postcategories_category_id_foreign` (`category_id`),
  KEY `postcategories_term_id_foreign` (`term_id`),
  CONSTRAINT `postcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `postcategories_term_id_foreign` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.postcategories: ~0 rows (approximately)
/*!40000 ALTER TABLE `postcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `postcategories` ENABLE KEYS */;

-- Dumping structure for table saltysep.postmedia
CREATE TABLE IF NOT EXISTS `postmedia` (
  `media_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL,
  KEY `postmedia_term_id_foreign` (`term_id`),
  KEY `postmedia_media_id_foreign` (`media_id`),
  CONSTRAINT `postmedia_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  CONSTRAINT `postmedia_term_id_foreign` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.postmedia: ~0 rows (approximately)
/*!40000 ALTER TABLE `postmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `postmedia` ENABLE KEYS */;

-- Dumping structure for table saltysep.prices
CREATE TABLE IF NOT EXISTS `prices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL,
  `price` double NOT NULL,
  `regular_price` double NOT NULL,
  `special_price` double DEFAULT NULL,
  `price_type` int(11) NOT NULL DEFAULT '1',
  `starting_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prices_term_id_foreign` (`term_id`),
  CONSTRAINT `prices_term_id_foreign` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.prices: ~0 rows (approximately)
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;

-- Dumping structure for table saltysep.requestdomains
CREATE TABLE IF NOT EXISTS `requestdomains` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `domain_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `domain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requestdomains_domain_id_foreign` (`domain_id`),
  KEY `requestdomains_user_id_foreign` (`user_id`),
  CONSTRAINT `requestdomains_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `domains` (`id`) ON DELETE CASCADE,
  CONSTRAINT `requestdomains_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.requestdomains: ~0 rows (approximately)
/*!40000 ALTER TABLE `requestdomains` DISABLE KEYS */;
/*!40000 ALTER TABLE `requestdomains` ENABLE KEYS */;

-- Dumping structure for table saltysep.reviews
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_user_id_foreign` (`user_id`),
  KEY `reviews_term_id_foreign` (`term_id`),
  CONSTRAINT `reviews_term_id_foreign` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.reviews: ~0 rows (approximately)
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;

-- Dumping structure for table saltysep.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.roles: ~0 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'superadmin', 'web', '2022-02-13 13:00:20', '2022-02-13 13:00:20');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table saltysep.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.role_has_permissions: ~58 rows (approximately)
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1),
	(36, 1),
	(37, 1),
	(38, 1),
	(39, 1),
	(40, 1),
	(41, 1),
	(42, 1),
	(43, 1),
	(44, 1),
	(45, 1),
	(46, 1),
	(47, 1),
	(48, 1),
	(49, 1),
	(50, 1),
	(51, 1),
	(52, 1),
	(53, 1),
	(54, 1),
	(55, 1),
	(56, 1),
	(57, 1),
	(58, 1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Dumping structure for table saltysep.stocks
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL,
  `stock_manage` int(11) NOT NULL DEFAULT '1',
  `stock_status` int(11) NOT NULL DEFAULT '1',
  `stock_qty` int(11) NOT NULL DEFAULT '1',
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stocks_term_id_foreign` (`term_id`),
  CONSTRAINT `stocks_term_id_foreign` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.stocks: ~0 rows (approximately)
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;

-- Dumping structure for table saltysep.templates
CREATE TABLE IF NOT EXISTS `templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.templates: ~4 rows (approximately)
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` (`id`, `name`, `src_path`, `asset_path`, `created_at`, `updated_at`) VALUES
	(1, 'Bigbag', 'frontend/bigbag', 'frontend/bigbag', '2022-02-13 13:00:18', '2022-02-13 13:00:18'),
	(2, 'Arafa Cart', 'frontend/arafa-cart', 'frontend/arafa-cart', '2022-02-13 13:00:19', '2022-02-13 13:00:19'),
	(3, 'Saka Cart', 'frontend/saka-cart', 'frontend/saka-cart', '2022-02-13 13:00:19', '2022-02-13 13:00:19'),
	(4, 'Bazar', 'frontend/bazar', 'frontend/bazar', '2022-02-13 13:00:19', '2022-02-13 13:00:19');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;

-- Dumping structure for table saltysep.termoptions
CREATE TABLE IF NOT EXISTS `termoptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `amount` double DEFAULT NULL,
  `amount_type` int(11) NOT NULL DEFAULT '1',
  `is_required` int(11) NOT NULL DEFAULT '0',
  `select_type` int(11) NOT NULL DEFAULT '0',
  `p_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `termoptions_user_id_foreign` (`user_id`),
  KEY `termoptions_term_id_foreign` (`term_id`),
  CONSTRAINT `termoptions_term_id_foreign` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `termoptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.termoptions: ~0 rows (approximately)
/*!40000 ALTER TABLE `termoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `termoptions` ENABLE KEYS */;

-- Dumping structure for table saltysep.terms
CREATE TABLE IF NOT EXISTS `terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `status` int(11) NOT NULL,
  `featured` int(11) NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product',
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `terms_user_id_foreign` (`user_id`),
  CONSTRAINT `terms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.terms: ~0 rows (approximately)
/*!40000 ALTER TABLE `terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `terms` ENABLE KEYS */;

-- Dumping structure for table saltysep.trasections
CREATE TABLE IF NOT EXISTS `trasections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '3',
  `trasection_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trasections_category_id_foreign` (`category_id`),
  KEY `trasections_user_id_foreign` (`user_id`),
  CONSTRAINT `trasections_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trasections_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.trasections: ~0 rows (approximately)
/*!40000 ALTER TABLE `trasections` DISABLE KEYS */;
/*!40000 ALTER TABLE `trasections` ENABLE KEYS */;

-- Dumping structure for table saltysep.usermetas
CREATE TABLE IF NOT EXISTS `usermetas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'preview',
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usermetas_user_id_foreign` (`user_id`),
  CONSTRAINT `usermetas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.usermetas: ~0 rows (approximately)
/*!40000 ALTER TABLE `usermetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `usermetas` ENABLE KEYS */;

-- Dumping structure for table saltysep.useroptions
CREATE TABLE IF NOT EXISTS `useroptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `useroptions_user_id_foreign` (`user_id`),
  CONSTRAINT `useroptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.useroptions: ~0 rows (approximately)
/*!40000 ALTER TABLE `useroptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `useroptions` ENABLE KEYS */;

-- Dumping structure for table saltysep.userplans
CREATE TABLE IF NOT EXISTS `userplans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `will_expire` date DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `plan_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `payment_status` int(11) NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userplans_user_id_foreign` (`user_id`),
  KEY `userplans_plan_id_foreign` (`plan_id`),
  KEY `userplans_category_id_foreign` (`category_id`),
  CONSTRAINT `userplans_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `userplans_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`),
  CONSTRAINT `userplans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.userplans: ~2 rows (approximately)
/*!40000 ALTER TABLE `userplans` DISABLE KEYS */;
INSERT INTO `userplans` (`id`, `order_no`, `amount`, `tax`, `trx`, `will_expire`, `user_id`, `plan_id`, `category_id`, `status`, `payment_status`, `created_at`, `updated_at`) VALUES
	(1, 'AMC', 0, 0, 'TafsPYbPKpt9VMZ', '2024-02-13', 2, 1, 2, 1, 1, '2022-02-13 13:04:49', '2022-02-13 13:04:49'),
	(2, 'AMC1', 0, 0, 'pSa1qj7mohrm4gO1', '2024-02-13', 3, 1, 2, 1, 1, '2022-02-13 13:17:17', '2022-02-13 13:17:17');
/*!40000 ALTER TABLE `userplans` ENABLE KEYS */;

-- Dumping structure for table saltysep.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `shop_type` int(11) NOT NULL DEFAULT '1',
  `domain_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_created_by_foreign` (`created_by`),
  CONSTRAINT `users_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table saltysep.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `status`, `shop_type`, `domain_id`, `name`, `email`, `email_verified_at`, `password`, `created_by`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 1, 1, 'Admin', 'admin@admin.com', NULL, '$2y$10$JcqsyWvMJW3Ukn7.cVerdesznfpHDWChd1gcbQMdUVFoqX8fppS/K', NULL, NULL, '2022-02-13 13:00:20', '2022-02-13 13:00:20'),
	(2, 3, 1, 1, 1, 'arabcode', 'arab6ode@gmail.com', NULL, '$2y$10$jBIMyHAP9BaFzzR408I6O.HNNw/6lsQUlLw7JYYhC.vzyfFoo2jgm', NULL, NULL, '2022-02-13 13:04:49', '2022-02-13 13:06:04'),
	(3, 3, 3, 1, 2, 'sessions', 'admin@admi.com', NULL, '$2y$10$qSfuagi2Zl/j3XovaBEMFeBNXS6WgNw.5mAPi57ckevIFQkJRGhfK', NULL, NULL, '2022-02-13 13:17:17', '2022-02-13 13:17:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
