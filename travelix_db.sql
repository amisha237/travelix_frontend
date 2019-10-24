-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2019 at 09:15 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelix_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_feeds`
--

CREATE TABLE `activity_feeds` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_feeds`
--

INSERT INTO `activity_feeds` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'A new Package Hawai Tour of Hawai has arrived!!!', '2019-10-24 12:32:11', '2019-10-24 12:32:11'),
(3, 'User', 'Have a look hum hai has Shared his Story!!!', '2019-10-24 12:42:18', '2019-10-24 12:42:18'),
(4, 'Admin', 'A new City Blog of japan has been added!!!', '2019-10-24 12:49:43', '2019-10-24 12:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `add_likes`
--

CREATE TABLE `add_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `stories_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOB` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `firstname`, `lastname`, `email`, `password`, `contact`, `profile_img`, `DOB`, `created_at`, `updated_at`) VALUES
(6, 'Anand', 'Anand', '1234567@gmail.com', '$2y$10$56hWmE1BSHIUmDBe4b6bz.ST4iAVjmgBydr1myXSodVXxFbmxGMq6', '1234567890', '1570274454-AdminProfileImage.jpg', '123456', '2019-10-05 05:50:54', '2019-10-05 05:50:54'),
(7, 'Anand', 'Anand', '12345678@gmail.com', '$2y$10$WnPVtJ3oougbGhqLRE7hh.werwB83fZ3RFELLDgtS7SXTOep4rVzW', '1234567890', '1570274605-AdminProfileImage.jpg', '123456', '2019-10-05 05:53:25', '2019-10-05 05:53:25'),
(8, 'ANAND', 'maurya', '123123@gmail.com', '$2y$10$sUs0zPDwfbT1PrOsan0MmenA5UiFddnDvhbXXskC4q9lzJVZK4aLO', '1234567890', 'default-profile.png', 'undefined', '2019-10-05 07:21:12', '2019-10-05 07:21:12'),
(10, 'Anand', 'Maurya', '123@gmail.com', '$2y$10$mtPAJTIRgEFy8/VKFFr19ewul5cI9gLt5RBj6FTN4NZu4y0G8s52a', '1234567890', 'default-profile.png', 'undefined', '2019-10-05 07:51:45', '2019-10-05 07:51:45'),
(11, 'Akash', 'Kumar', 'maurya@ga.coimq', '$2y$10$5Cs2Q//b.pGLVujE1RGrYOC4wp2/X99qCDTs3bwAAJT2BtQCtZ74u', '1234567890', 'default-profile.png', 'undefined', '2019-10-05 07:53:16', '2019-10-05 07:53:16'),
(12, 'ANAND', 'maurya', 'mauryaanand10@gmail.com', '$2y$10$le/GK3YI7q38OddmKd5W3.cxHpK4gqr7ef37ZaiqsKPoaPJd95Pgm', '1234567890', '1570274605-AdminProfileImage.jpg', 'undefined', '2019-10-05 08:05:27', '2019-10-05 08:05:27'),
(13, 'Anand', 'Maurya', '1705018@gmail.com', '$2y$10$HU4.NBuTKFsh26Pek1V2uOCAT1y9DAVG1gihVN20evMGC13EX8Rb6', '1234567890', '1570284821-AdminProfileImage.jpg', 'undefined', '2019-10-05 08:43:42', '2019-10-05 08:43:42'),
(14, 'Akash', 'Akash', '12345123@gfa.com', '$2y$10$Q12KStwqXHY20hUAZtava.wVR6adHM/vwYm1t5zuyc7LRzo6ktylS', '1234567890', '1570285656-AdminProfileImage.jpg', 'undefined', '2019-10-05 08:57:36', '2019-10-05 08:57:36'),
(15, 'Akash', 'Akash', '12312w3@df.com', '$2y$10$DdzCJ7Tg7PyceKlv.7WV/.DBS9na4EwtJWJSRmrhmN1YSpaYJvD6u', '1234567890', '1570285765-AdminProfileImage.jpg', 'undefined', '2019-10-05 08:59:25', '2019-10-05 08:59:25'),
(16, 'Akash', 'A', '12as@gam.com', '$2y$10$OKedwUlgH5mqby6Kt8fosOEl0m.EYj3AOI9GyAP31rVRtLvGaqniW', '1234567890', 'default-profile.png', 'undefined', '2019-10-05 09:01:24', '2019-10-05 09:01:24'),
(17, 'Anand', 'Anand', '111@gmail.com', '$2y$10$u.8GDCTunc.rYIli0X9X.ujjetLv79svZ4tR6thlWAjWeKnc.YEy2', '1234567890', '1570290024-AdminProfileImage.jpg', '123456', '2019-10-05 10:10:25', '2019-10-05 10:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_id` int(10) UNSIGNED NOT NULL,
  `place` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `city`, `destination_id`, `place`, `description`, `blog_image`, `created_at`, `updated_at`) VALUES
(1, 'Gujrat', 1, 'Rann of Kutch', 'The Rann of Kutch is located in the Thar Desert bio-geographic area in the Indian state of Gujarat, with some parts in Pakistani province of Sindh. It is a seasonally marshy region, the word Rann meaning \"salt marsh\", alternating with medak\'s, elevated pieces of land where vegetation grows. Kori Creek and Sir creek are located in the Rann of Kutch area, which is part of Indus river delta.\r\n\r\nKutch is the name of the district in Gujarat where this region is situated. The marsh covers an area of around 10,000 square miles and is positioned between the Gulf of Kutch and the mouth of the Indus River in southern Pakistan. Many rivers located in Rajasthan and Gujarat flow in to Rann of Kutch. These are Luni, Bhuki, Bharud, Nara, Kharod, Banas, Saraswati, Rupen, Bambhan and Machchhu.', '1570370194-blogImage.jpg', NULL, NULL),
(2, 'Gujrat', 1, 'Gir National Park', 'Gir National Park and Wildlife Sanctuary, also known as Sasan Gir, is a forest and wildlife sanctuary near Talala Gir in Gujarat, India. It is located 43 km (27 mi) north-east of Somnath, 65 km (40 mi) south-east of Junagadh and 60 km (37 mi) south-west of Amreli. It was established in 1965, with a total area of 1,412 km2 (545 sq mi), of which 258 km2 (100 sq mi) is fully protected as national park and 1,153 km2 (445 sq mi) as wildlife sanctuary.[1] It is part of the Kathiawar-Gir dry deciduous forests ecoregion.', '1570374247-blogImage.jpg', NULL, NULL),
(3, 'Gujrat', 1, 'Statue of Unity', 'The Statue of Unity is a colossal statue of Congress Politician and independence activist Sardar Vallabhbhai Patel (1875–1950), who was the first Home minister of independent India and the chief adherent of Mahatma Gandhi during the non-violent Indian Independence movement. Patel was highly respected for his leadership in uniting the 552 princely states of India to form the single Union of India. It is located in the state of Gujarat, India. It is the world\'s tallest statue with a height of 182 metres. It is located on a river island facing the Sardar Sarovar Dam on river Narmada in Kevadiya colony, 100 kilometres (62 mi) southeast of the city of Vadodara[2] and 150 km from Surat.\r\n\r\nThe project was first announced in 2010 and the construction of the statue started in October 2013 by Larsen & Toubro, who received the contract for ₹2,989 crore (US$420 million) from Government of Gujarat. It was designed by Indian sculptor Ram V. Sutar, and was inaugurated by Indian Prime Minister Narendra Modi on 31 October 2018, the 143rd anniversary of Patel\'s birth.', '1570371416-blogImage.png', NULL, NULL),
(5, 'Chennai', 6, 'Marina Beach', 'Marina Beach is a natural urban beach in Chennai, Tamil Nadu, India, along the Bay of Bengal.[1] The beach runs from near Fort St. George in the north to Foreshore Estate in the south, a distance of 6.0 km (3.7 mi),[2] making it the longest natural urban beach in the country.[3][4][5] The Marina is primarily sandy, unlike the short, rocky formations that make up the Juhu Beach in Mumbai. The average width of the beach is 300 m (980 ft)[6] and the width at the widest stretch is 437 m (1,434 ft). Bathing and swimming at the Marina Beach are legally prohibited because of the dangers, as the undercurrent is very turbulent. It is one of the most crowded beaches in the country and attracts about 30,000 visitors a day during weekdays[7] and 50,000 visitors a day during the weekends and on holidays.[8][9][10] During summer months, about 15,000 to 20,000 people visit the beach daily.', '1570371416-blogImage.png', '2019-10-06 08:46:56', '2019-10-06 08:46:56'),
(6, 'Mumbai', 7, 'Gateway of India', 'The Gateway of India is an arch-monument built in the early twentieth-century located in the city of Mumbai, in the Indian state of Maharashtra. It was erected to commemorate the landing of the first British monarch in India; King-Emperor George V and Queen-Empress Mary\'s arrival at Apollo Bunder, Mumbai (then Bombay) in December 1911. Built in the Indo-Saracenic style, incorporating elements of 16th-century Gujarati architecture, the foundation stone for the gateway was laid in March 1913. During the royal visit, the gateway was not yet built and a cardboard structure had greeted the monarch. The final design of the monument by architect George Wittet was sanctioned only in 1914, and construction was completed in 1924. The structure is a triumphal arch made of basalt, which is 26 metres (85 feet) high.', '1570374247-blogImage.jpg', '2019-10-06 09:34:07', '2019-10-06 09:34:07'),
(7, 'Gujrat', 1, 'Statue of Unity', 'The Statue of Unity is a colossal statue of Congress Politician and independence activist Sardar Vallabhbhai Patel (1875–1950), who was the first Home minister of independent India and the chief adherent of Mahatma Gandhi during the non-violent Indian Independence movement. Patel was highly respected for his leadership in uniting the 552 princely states of India to form the single Union of India. It is located in the state of Gujarat, India. It is the world\'s tallest statue with a height of 182 metres. It is located on a river island facing the Sardar Sarovar Dam on river Narmada in Kevadiya colony, 100 kilometres (62 mi) southeast of the city of Vadodara[2] and 150 km from Surat.\r\n\r\nThe project was first announced in 2010 and the construction of the statue started in October 2013 by Larsen & Toubro, who received the contract for ₹2,989 crore (US$420 million) from Government of Gujarat. It was designed by Indian sculptor Ram V. Sutar, and was inaugurated by Indian Prime Minister Narendra Modi on 31 October 2018, the 143rd anniversary of Patel\'s birth.', '1570374109-blogImage.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `destination_image`, `created_at`, `updated_at`) VALUES
(1, 'Gujrat', 'blog-img5.jpg', NULL, NULL),
(2, 'Himachal Pradesh', NULL, NULL, NULL),
(3, 'Rajasthan', NULL, '2019-10-06 06:11:29', '2019-10-06 06:11:29'),
(4, 'Delhi', '1570362138-blogImage.png', '2019-10-06 06:12:18', '2019-10-06 06:12:18'),
(6, 'Chennai', '1570371416-blogImage.png', '2019-10-06 08:26:34', '2019-10-06 08:26:34'),
(7, 'Mumbai', '1570374109-blogImage.jpg', '2019-10-06 09:31:49', '2019-10-06 09:31:49'),
(8, 'japan', NULL, '2019-10-24 12:49:23', '2019-10-24 12:49:23'),
(9, 'japan', NULL, '2019-10-24 12:49:43', '2019-10-24 12:49:43');

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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_09_25_141826_create_packages_table', 1),
(10, '2019_09_26_145222_create_contacts_table', 1),
(11, '2019_09_30_150213_create_admins_table', 1),
(12, '2019_10_02_143820_add_features_to_packages_table', 1),
(13, '2019_10_02_145334_create_package_images_table', 1),
(14, '2019_10_02_151738_create_subscribers_table', 1),
(15, '2019_10_03_141638_create_stocks_table', 1),
(18, '2019_10_06_105201_create_destinations_table', 2),
(21, '2019_10_06_105302_create_blogs_table', 3),
(22, '2019_10_06_110641_create_destinations_table', 3),
(23, '2019_10_06_110735_add_foreifn_to_blogs_table', 4),
(24, '2019_10_12_142356_create_stories_table', 5),
(25, '2019_10_12_153241_create_add_likes_table', 5),
(26, '2019_10_24_174011_create_activity_feeds_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02d44fad6423a2599e676b02adb16e8e5d8516b84046491e6a9ffa311aa5e430383a68532f3b733a', 1, 1, 'authToken', '[]', 0, '2019-10-05 10:33:12', '2019-10-05 10:33:12', '2020-10-05 16:03:12'),
('04902655c0fcbbd9cd639af2dfe81b4ce0140722c3d86b0d7cf52e8da1acc7460e678ed2cf39b791', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:32:34', '2019-10-05 11:32:34', '2020-10-05 17:02:34'),
('059946598d545dd4b51375f156ae59b1d4f0de24b71e621ddb386f0c00555a4885ebd906902cee5c', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:53:58', '2019-10-05 11:53:58', '2020-10-05 17:23:58'),
('06c0ab8d17b00718a5b1cfb5238f1a1c778e6bb42d46d7b5dec930cf1155e91d0d83157f28c5d7cb', 5, 1, 'authToken', '[]', 0, '2019-10-05 12:06:39', '2019-10-05 12:06:39', '2020-10-05 17:36:39'),
('0805e57e806889d3536679693fafcceffa91039e75e450283657bf069644401412505ee545d37d4e', 17, 1, 'authToken', '[]', 0, '2019-10-05 11:07:51', '2019-10-05 11:07:51', '2020-10-05 16:37:51'),
('2013fc11138c07eae98f33b68f634c2a1830946856b6826cb5c77e859b366aba7c7f9a5a30b5cef5', 7, 1, 'authToken', '[]', 0, '2019-10-05 05:53:25', '2019-10-05 05:53:25', '2020-10-05 11:23:25'),
('268ccdcba23482cbcd428f3d44648200c6c26f26f41438dd96a0a8707863edf5abe71aceffbfda4e', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:18:06', '2019-10-05 11:18:06', '2020-10-05 16:48:06'),
('2b59a05e156caa0c19ea1a69f9fed05c664751f30e6bde103f7a1634196a06f58352580af7c8a892', 1, 1, 'authToken', '[]', 1, '2019-10-05 10:56:44', '2019-10-05 10:56:44', '2020-10-05 16:26:44'),
('2ec64e884a8a1984e83a9905556dc1bf60d9f5f2a502a6120c90dec83ca0cfd67aeab33cda8aca59', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:31:17', '2019-10-05 11:31:17', '2020-10-05 17:01:17'),
('39b24419d672f3a43b99fd17800be65404fc400b9c66e88f50bde34579787989d98088eda4c25658', 1, 1, 'authToken', '[]', 0, '2019-10-05 11:54:36', '2019-10-05 11:54:36', '2020-10-05 17:24:36'),
('3bdce4b2bbaec31bb08a09ca5c587a2d7467c746a33f75c5fd9ee134262001edec4ccf749bf141af', 15, 1, 'authToken', '[]', 0, '2019-10-05 08:59:25', '2019-10-05 08:59:25', '2020-10-05 14:29:25'),
('3f48c2e88b32bfdc5b580cbe4f1c1a5ca199bc5f14091e538574d79b2615bc315a2873667944edfc', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:48:29', '2019-10-05 11:48:29', '2020-10-05 17:18:29'),
('412f09e9388857988fe48c9752f7607989b977019a506f6e5097ae9e24536e5f60b32674a46e948a', 17, 1, 'authToken', '[]', 0, '2019-10-05 11:02:03', '2019-10-05 11:02:03', '2020-10-05 16:32:03'),
('437d4c0524f5e580c1c99bd4b4c99c77d99c2c901411e322a98ecab74253318ef49537b83cfead76', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:41:33', '2019-10-05 11:41:33', '2020-10-05 17:11:33'),
('4de3e16fa9feb9a795651f6efe96d8f5546da8744aa271447202e99e7de87fbc7632a0172898ced6', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:49:17', '2019-10-05 11:49:17', '2020-10-05 17:19:17'),
('50d76b2dabf4c1be3920cdb734295b82e65a208a9c28bfe741d4c95bee5889dc9d7aacba47770474', 5, 1, 'authToken', '[]', 1, '2019-10-05 12:06:53', '2019-10-05 12:06:53', '2020-10-05 17:36:53'),
('51403a62ada593033102f83e1dbbd3921f1b89676f97d59b1ab3be9d56e762fd42d5d1fae6cde8cc', 1, 1, 'authToken', '[]', 0, '2019-10-05 10:18:10', '2019-10-05 10:18:10', '2020-10-05 15:48:10'),
('5185dafae4e5064edca69a10b6710adb34e28f24e07d8d0e226c76b6a77c9e732f59b9efd5224be9', 17, 1, 'authToken', '[]', 0, '2019-10-05 11:21:47', '2019-10-05 11:21:47', '2020-10-05 16:51:47'),
('544696c8cdae886e4c72d30c0e3fa8f9df209d03045f68a00c24c0d947dc70b39e3b1ae830a0e70e', 4, 1, 'authToken', '[]', 0, '2019-10-05 12:03:43', '2019-10-05 12:03:43', '2020-10-05 17:33:43'),
('57a5dd752abc6d5e647ce506cebcf2e3cd7c0bf06c4de32a84842b3dd156ba11328143c9fecbd916', 3, 1, 'authToken', '[]', 0, '2019-10-05 11:10:20', '2019-10-05 11:10:20', '2020-10-05 16:40:20'),
('65d365535092805ea51291a906f7220e09c4ed2c6a7731b973e82757cf3c04f4711c454c455a7da9', 6, 1, 'authToken', '[]', 0, '2019-10-05 05:50:54', '2019-10-05 05:50:54', '2020-10-05 11:20:54'),
('66b44b46ae900dc36b4fda301e9b12f06237542bb2ea35c51cda96578e0224c8015b90debcbcef35', 14, 1, 'authToken', '[]', 0, '2019-10-05 08:57:37', '2019-10-05 08:57:37', '2020-10-05 14:27:37'),
('6cc67655969145c2f58278890f5c35e3d0b634265d35976359795ceeaa876aa38f84e45020c8ef55', 13, 1, 'authToken', '[]', 0, '2019-10-05 08:43:43', '2019-10-05 08:43:43', '2020-10-05 14:13:43'),
('6f27b9e013766156846774d18c61b6dc0897937de918bb814f90a2ef3bb5b66f724891f420ce5847', 4, 1, 'authToken', '[]', 0, '2019-10-05 05:45:50', '2019-10-05 05:45:50', '2020-10-05 11:15:50'),
('74c0a03dede025681b0172fe65e96544ff1f0415ee25a3a12bba0a278cab3cc577a82b9cdc605f50', 2, 1, 'authToken', '[]', 0, '2019-10-05 05:27:17', '2019-10-05 05:27:17', '2020-10-05 10:57:17'),
('7c75e8e155a0f40791ac553c934eed49ad63da85c4b80983bb678b36c90e3d283e40f54d41bd7e72', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:50:37', '2019-10-05 11:50:37', '2020-10-05 17:20:37'),
('810197992f1e2dcde325eefd55f943dde7496be726b680a25a5c3291f0a6837138bda6db3c8d9933', 16, 1, 'authToken', '[]', 0, '2019-10-05 09:01:24', '2019-10-05 09:01:24', '2020-10-05 14:31:24'),
('83bb886cc93b1e471119aa4e87fd7726922abbbdbfbefbbc5e93ba9591f7c58ebb1ed0ad6e300067', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:28:45', '2019-10-05 11:28:45', '2020-10-05 16:58:45'),
('88cb4fa7995081d0f06d01c6de662ce159e303fa844319d2900f95ee0fbe8a8cf3a2bf03bd2fc5c8', 3, 1, 'authToken', '[]', 0, '2019-10-05 11:10:58', '2019-10-05 11:10:58', '2020-10-05 16:40:58'),
('8bf490235a54df7f0f11751e705e7cc3addc06881e9377a7d90e65b871b4f0a3ea0f08d53f07aa53', 1, 1, 'authToken', '[]', 1, '2019-10-05 10:49:20', '2019-10-05 10:49:20', '2020-10-05 16:19:20'),
('8dbc49c1a116694cc7863733d57e694e5d5346fc37cfb366f299b09582880cc7718ed85f1c2808a5', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:39:55', '2019-10-05 11:39:55', '2020-10-05 17:09:55'),
('91156b95b617ec13679aaca2282a242b14a1cf33939eb5033daca1a8ca84318236f4f725a36b4aaf', 8, 1, 'authToken', '[]', 0, '2019-10-05 07:21:13', '2019-10-05 07:21:13', '2020-10-05 12:51:13'),
('91b797d9746ef8523c58e7d46f2820041b6df423aa00e1e0861d3e38ed9eb5b035859683b842c5e0', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:30:01', '2019-10-05 11:30:01', '2020-10-05 17:00:01'),
('921df7a640e0ec13064966a58d683ad1fdc5f485903870f77154b443a73089060c4191b3b26b702e', 3, 1, 'authToken', '[]', 0, '2019-10-05 05:29:45', '2019-10-05 05:29:45', '2020-10-05 10:59:45'),
('96008e7379a963e2a6de818e0cebef317dbd33b33beadbcbd221688382f8146e5f51ee18e1dc8b3e', 12, 1, 'authToken', '[]', 0, '2019-10-05 08:05:29', '2019-10-05 08:05:29', '2020-10-05 13:35:29'),
('9676b450d8fa25e0088f3c775eaf2b191d126fcf2f97f7feedad035389ae5d8d9abb571e164b9e86', 17, 1, 'authToken', '[]', 0, '2019-10-05 11:25:28', '2019-10-05 11:25:28', '2020-10-05 16:55:28'),
('9ab41837a025301b2828a6f013c9f95d206e17120480d6461cd67b1f8ccb93520ed71b2e551dd2b4', 11, 1, 'authToken', '[]', 0, '2019-10-05 07:53:16', '2019-10-05 07:53:16', '2020-10-05 13:23:16'),
('a21612c20cef22ca58fc19ee4f1b9be6a8be80d7c583de4e0b555a15ff88805e0898ad90aedd10b5', 1, 1, 'authToken', '[]', 0, '2019-10-05 10:47:52', '2019-10-05 10:47:52', '2020-10-05 16:17:52'),
('a28bec450aa3a5d19f52df47207e500750b6ad14a10c405c60400b6ac404aac4c7d35241ffeb4f9b', 3, 1, 'authToken', '[]', 1, '2019-10-05 11:16:03', '2019-10-05 11:16:03', '2020-10-05 16:46:03'),
('a2adb2989b22c94644bfa7ffd5a9ceed192c72e35740b391f820e9a19a2d1be880912c71429c44ac', 17, 1, 'authToken', '[]', 0, '2019-10-05 11:01:27', '2019-10-05 11:01:27', '2020-10-05 16:31:27'),
('a56bbc8a6c21f2038dee9c0085f280740e1fa38915f09420fbbf65143c1a6c8597511c8d64e96205', 4, 1, 'authToken', '[]', 1, '2019-10-05 12:04:02', '2019-10-05 12:04:02', '2020-10-05 17:34:02'),
('b684dde87e2dd5c61d7b6bf16a83c511f8e16595eb1b5b14e92c5fa7e9bf7d643cb2f024bcb87e45', 5, 1, 'authToken', '[]', 0, '2019-10-05 05:46:19', '2019-10-05 05:46:19', '2020-10-05 11:16:19'),
('d96bef3dfee27d080471ae74588109fdc8e94c74f7b6bfaa028bed445194b9209d19b52145cb3ceb', 3, 1, 'authToken', '[]', 1, '2019-10-05 12:01:34', '2019-10-05 12:01:34', '2020-10-05 17:31:34'),
('ddcf8b489801c1fe5797d72693c8f846d17ae255939f0ced79dcb0c006cb21722dcbd2af0e9f2ca0', 17, 1, 'authToken', '[]', 1, '2019-10-05 11:56:28', '2019-10-05 11:56:28', '2020-10-05 17:26:28'),
('df1fe772ab7a57f72a8713b7f8623b8a58283e90479b39a2133c3c16be627f6a9b0f239065087f41', 10, 1, 'authToken', '[]', 0, '2019-10-05 07:51:45', '2019-10-05 07:51:45', '2020-10-05 13:21:45'),
('e196655672d34bededb71fe2ad7311339bed4301ed5196241717c70c850f9a09698d424deb6c27e4', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:40:27', '2019-10-05 11:40:27', '2020-10-05 17:10:27'),
('e1cd2f67f07de99cd1509c8e7f377e9140374e816e171778be03825849053c0cc9b854ebef0880a5', 1, 1, 'authToken', '[]', 1, '2019-10-05 10:18:40', '2019-10-05 10:18:40', '2020-10-05 15:48:40'),
('e427d98cc13cac240d5068d7df0b9721b00022a6b07c1554a720fc50902f912a3a07585a465025ce', 17, 1, 'authToken', '[]', 1, '2019-10-05 11:27:06', '2019-10-05 11:27:06', '2020-10-05 16:57:06'),
('e98b18baee2b3833f01af59efef0eed1010919867a7e3dd026a4c3614817f338970c9e8d043fbd57', 17, 1, 'authToken', '[]', 0, '2019-10-05 10:10:27', '2019-10-05 10:10:27', '2020-10-05 15:40:27'),
('eb3a29514f8092271c2395e1203849ca3047da8939f1f4137e2fba84bec068316e70a9b8ff0f1697', 17, 1, 'authToken', '[]', 1, '2019-10-05 10:20:25', '2019-10-05 10:20:25', '2020-10-05 15:50:25'),
('ec875f15ba7686f42502021a4b060563fb921c9f231a6ca4972a79f955144814f2d826bcf9c4474e', 1, 1, 'authToken', '[]', 0, '2019-10-05 12:26:29', '2019-10-05 12:26:29', '2020-10-05 17:56:29'),
('f1eaaefe1483226890caf7a174e9db1ae29bee73687388af8cec350885b33ac9db0126977ebd88aa', 17, 1, 'authToken', '[]', 1, '2019-10-05 10:14:23', '2019-10-05 10:14:23', '2020-10-05 15:44:23'),
('f25aa04ee925cf9ce7cd22e3efaf11f0c66378761fb5f7dc0a7d1b6d2ca005c0301c135eed1052ef', 17, 1, 'authToken', '[]', 0, '2019-10-05 11:20:56', '2019-10-05 11:20:56', '2020-10-05 16:50:56'),
('fa24d5edef3038ae993ab5f3d2c8b4d1554b558e8319a2dca71aad742f2190114bf9031c140bb785', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:52:23', '2019-10-05 11:52:23', '2020-10-05 17:22:23'),
('fef3fa8b53104b473f690deb960970a62813f214e6ddbb060d305fd5db2672a004f135904d8aeac9', 9, 1, 'authToken', '[]', 0, '2019-10-05 07:48:55', '2019-10-05 07:48:55', '2020-10-05 13:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '917WRysFALZvvEAiOPFn8sHPXsRGBwLSA45jE59w', 'http://localhost', 1, 0, 0, '2019-10-05 05:25:12', '2019-10-05 05:25:12'),
(2, NULL, 'Laravel Password Grant Client', 'Fdq9TC5VMVr1bVtCXu23BrU4MIO7ujBN9wsnzsxO', 'http://localhost', 0, 1, 0, '2019-10-05 05:25:12', '2019-10-05 05:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-10-05 05:25:12', '2019-10-05 05:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_price` int(11) NOT NULL,
  `package_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_header_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `package_features` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_day` int(11) NOT NULL,
  `package_nights` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `package_location`, `package_price`, `package_type`, `package_details`, `package_header_image`, `created_at`, `updated_at`, `package_features`, `package_day`, `package_nights`) VALUES
(1, 'Anand', 'Gujrat', 1231, 'Family', 'it has various features\nit has various features\nit has various features', '1570300214-packageImage.jpg', '2019-10-05 12:25:35', '2019-10-05 13:00:14', 'it has various features', 12, 13),
(2, 'Winter Vacation', 'Rajasthan', 1324, 'Couple', 'items: [], items: [], items: [], items: [], items: [],', '1571671746-packageImage.jpg', '2019-10-05 13:16:16', '2019-10-21 09:59:06', 'items: [], items: [], items: [], items: [], items: [],', 4, 3),
(3, 'Winter Vacation', 'Rajasthan', 8324, 'Couple', 'items: [], items: [], items: [], items: [], items: [],', '1570301243-packageImage.jpg', '2019-10-05 13:16:16', '2019-10-05 13:17:23', 'items: [], items: [], items: [], items: [], items: [],', 4, 3),
(4, 'Hawai Tour', 'Hawai', 100000, 'couple', 'padharo kabhi hawai me.', NULL, '2019-10-24 12:24:16', '2019-10-24 12:24:16', 'achh hai', 3, 2),
(5, 'Hawai Tour', 'Hawai', 100000, 'couple', 'padharo kabhi hawai me.', NULL, '2019-10-24 12:32:11', '2019-10-24 12:32:11', 'achh hai', 3, 2),
(6, 'Anand', 'Gujrat', 1231, 'Man', 'it has various features\r\nit has various features\r\nit has various features', '1570300214-packageImage.jpg', '2019-10-05 12:25:35', '2019-10-05 13:00:14', 'it has various features', 12, 13);

-- --------------------------------------------------------

--
-- Table structure for table `package_images`
--

CREATE TABLE `package_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `image_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_images`
--

INSERT INTO `package_images` (`id`, `package_id`, `image_1`, `image_2`, `image_3`, `image_4`, `image_5`, `created_at`, `updated_at`) VALUES
(1, 1, '1570301243-packageImage.jpg', '1570300214-packageImage.jpg', '1570300085-packageImage.jpg', '1570031111-packageImage.png', '1570301243-packageImage.jpg', NULL, NULL),
(9, 2, '15716748850-packageImage.jpg', '15716748851-packageImage.png', '15716748852-packageImage.jpg', '15716748853-packageImage.jpg', '15716748854-packageImage.jpg', '2019-10-21 10:51:25', '2019-10-21 10:51:25');

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
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `user_id`, `author`, `package_name`, `experience`, `tour_date`, `image_1`, `likes`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'username', 'Winte vacation', 'hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya hhehehehehe mazza aa gya', '12\'12\'12', NULL, 0, 'pending', NULL, NULL),
(4, 6, 'hum hai', 'winter vacation hai', 'hhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gyahhehehehehe mazza aa gya', '12\'3\'19', NULL, 0, 'Review', '2019-10-24 12:42:18', '2019-10-24 12:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `contact`, `password`, `profile_img`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'username', '111@gmail.com', 'Anand-123', '1234567890', '$2y$10$P3LksuSwCe1hEO6TRL.eG.Ov1aGHr8O/kdbUMA2w/GgYuu2DOXKT6', 'default-profile.png', NULL, '2019-10-05 10:18:10', '2019-10-05 10:18:10'),
(3, 'Anand', '1234@gmail.com', 'Anand-1234', '1234567890', '$2y$10$ethumDNUeesurUVE8M.FX.Tj9TERblzMRaWwKOuPNKCis4QQqkp5G', 'default-profile.png', NULL, '2019-10-05 11:10:20', '2019-10-05 11:10:20'),
(4, 'Anand', '12345@gmail.com', 'Anand-12345', '1234567890', '$2y$10$sRwYKTBjUH/QK.2plapiK.yz/mi8t.7YE0gdLFQf1kLRQ3htCntlO', 'default-profile.png', NULL, '2019-10-05 12:03:43', '2019-10-05 12:03:43'),
(5, 'Anand', '123456@gmail.com', 'Anand-123456', '1234567890', '$2y$10$Vp.Nr1QexTtz9FD4qzxtR.PjcXX3GgvoRw3RSkFMgWM4cizbia8n6', '1570296998-UserProfileImage.jpg', NULL, '2019-10-05 12:06:39', '2019-10-05 12:06:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_feeds`
--
ALTER TABLE `activity_feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_likes`
--
ALTER TABLE `add_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `add_likes_stories_id_index` (`stories_id`),
  ADD KEY `add_likes_user_id_index` (`user_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_city_index` (`city`),
  ADD KEY `blogs_destination_id_index` (`destination_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_images`
--
ALTER TABLE `package_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_images_package_id_index` (`package_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stories_user_id_unique` (`user_id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_feeds`
--
ALTER TABLE `activity_feeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `add_likes`
--
ALTER TABLE `add_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `package_images`
--
ALTER TABLE `package_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_likes`
--
ALTER TABLE `add_likes`
  ADD CONSTRAINT `add_likes_stories_id_foreign` FOREIGN KEY (`stories_id`) REFERENCES `stories` (`id`),
  ADD CONSTRAINT `add_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`);

--
-- Constraints for table `package_images`
--
ALTER TABLE `package_images`
  ADD CONSTRAINT `package_images_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
