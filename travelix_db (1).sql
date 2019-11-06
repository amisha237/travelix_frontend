-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2019 at 10:53 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

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
(4, 'Admin', 'A new City Blog of japan has been added!!!', '2019-10-24 12:49:43', '2019-10-24 12:49:43'),
(5, 'User', 'Have a look Anand has Shared his Story!!!', '2019-10-25 13:31:05', '2019-10-25 13:31:05'),
(6, 'Admin', 'A new Package fsfvasdcs of Rajsthan has arrived!!!', '2019-10-26 14:06:38', '2019-10-26 14:06:38'),
(7, 'Admin', 'A new Package ANAND mAURYS of Gujrat has arrived!!!', '2019-10-26 14:07:52', '2019-10-26 14:07:52'),
(8, 'Admin', 'A new Package new Packlages1 of Gujrat has arrived!!!', '2019-10-26 14:10:17', '2019-10-26 14:10:17'),
(9, 'Admin', 'A new Package enkg of Rajsthan has arrived!!!', '2019-10-26 14:11:11', '2019-10-26 14:11:11'),
(10, 'Admin', 'A new Package tefqsfa34 of Kerala has arrived!!!', '2019-10-26 14:13:26', '2019-10-26 14:13:26'),
(11, 'Admin', 'A new City Blog of Uttarakhand has been added!!!', '2019-11-05 12:39:20', '2019-11-05 12:39:20'),
(12, 'Admin', 'A new City Blog of North East has been added!!!', '2019-11-05 12:42:48', '2019-11-05 12:42:48'),
(13, 'Admin', 'A new City Blog of Kerla has been added!!!', '2019-11-06 08:49:06', '2019-11-06 08:49:06'),
(14, 'Admin', 'A new City Blog of Rajsthan has been added!!!', '2019-11-06 09:15:33', '2019-11-06 09:15:33'),
(15, 'Admin', 'A new City Blog of Himachal Pradesh has been added!!!', '2019-11-06 09:24:00', '2019-11-06 09:24:00'),
(16, 'Admin', 'A new City Blog of Andaman and Nicobar Islands has been added!!!', '2019-11-06 09:33:05', '2019-11-06 09:33:05'),
(17, 'Admin', 'A new Package Kerala Calling of Kerla has arrived!!!', '2019-11-06 10:51:14', '2019-11-06 10:51:14'),
(18, 'Admin', 'A new Package Nature\'s Bounty and Leisure in Kerala-Deluxe of Kerla has arrived!!!', '2019-11-06 11:08:08', '2019-11-06 11:08:08'),
(19, 'Admin', 'A new Package 4 Days Andaman Honeymoon Tour With Dinner Cruise of Andaman and Nicobar Islands has arrived!!!', '2019-11-06 11:17:05', '2019-11-06 11:17:05'),
(20, 'Admin', 'A new Package Andaman Backpacker Group Tour of Andaman and Nicobar Islands has arrived!!!', '2019-11-06 11:27:22', '2019-11-06 11:27:22'),
(21, 'Admin', 'A new Package Eastern Delight of North East has arrived!!!', '2019-11-06 12:17:09', '2019-11-06 12:17:09'),
(22, 'Admin', 'A new Package Jim Corbett: Know Your Forests of Uttarakhand has arrived!!!', '2019-11-06 12:25:45', '2019-11-06 12:25:45'),
(23, 'Admin', 'A new Package Adventure Camp In Manali of Himachal Pradesh has arrived!!!', '2019-11-06 13:40:39', '2019-11-06 13:40:39'),
(24, 'Admin', 'A new Package Kaziranga Wildlife Trip of North East has arrived!!!', '2019-11-06 13:54:03', '2019-11-06 13:54:03'),
(25, 'User', 'Have a look Akash has Shared his Story!!!', '2019-11-06 14:39:06', '2019-11-06 14:39:06'),
(26, 'User', 'Have a look Anand has Shared his Story!!!', '2019-11-06 14:46:22', '2019-11-06 14:46:22');

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

--
-- Dumping data for table `add_likes`
--

INSERT INTO `add_likes` (`id`, `stories_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 8, 6, NULL, NULL),
(4, 8, 3, NULL, NULL),
(5, 8, 4, NULL, NULL),
(6, 8, 5, NULL, NULL),
(7, 10, 6, NULL, NULL),
(8, 10, 3, NULL, NULL);

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
(17, 'Anand', 'Anand', '111@gmail.com', '$2y$10$u.8GDCTunc.rYIli0X9X.ujjetLv79svZ4tR6thlWAjWeKnc.YEy2', '1234567890', '1570290024-AdminProfileImage.jpg', '123456', '2019-10-05 10:10:25', '2019-10-05 10:10:25'),
(18, 'Akash', 'Pandey', '1705013@kiit.ac.in', '$2y$10$xjq1/5kgZTdVii8lrqgRsOxFW5KIbcfFPuaPTX2mcSJGLkC6cYrD2', '9556055615', '1573072373-AdminProfileImage.png', 'undefined', '2019-11-06 15:02:53', '2019-11-06 15:02:53'),
(19, 'Amisha', 'Patel', '1705016@kiit.ac.in', '$2y$10$1XuQBylcvdHxlQ2hV7Z84ek.tnRj44X0MrbXBM88lCBCv3938iUwy', '1234567890', '1573072438-AdminProfileImage.jpg', 'undefined', '2019-11-06 15:03:58', '2019-11-06 15:03:58'),
(20, 'Anand', 'Maurya', '1705018@kiit.ac.in', '$2y$10$vHSVcxeWoRJ45RgAL/evQ.BZTnZcxk9d6NZUJStaR71zU8T3S1aX.', '0987654321', '1573072547-AdminProfileImage.png', 'undefined', '2019-11-06 15:05:47', '2019-11-06 15:05:47'),
(21, 'Abhirup', 'Dutta', '1705004@kiit.ac.in', '$2y$10$OIcXO5cw59c2L2xVX0xwaOV3oYZkeJvSGQN5.PDb2xJeuNZAgMlTu', '9702620581', '1573072630-AdminProfileImage.png', 'undefined', '2019-11-06 15:07:10', '2019-11-06 15:07:10'),
(22, 'Saumya', 'Goyal', '1705071@kiit.ac.in', '$2y$10$4OfRyb/0KSM0qszQ2ez0EOK8GbATLeHzl5CwQP5sIIrpL34wa/qRy', '9702620581', '1573072682-AdminProfileImage.jpg', 'undefined', '2019-11-06 15:08:02', '2019-11-06 15:08:02');

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
(8, 'Uttarakhand', 10, 'Nainital', 'One of the best places to visit in Uttarakhand and a popular getaway for couples and families is\r\nNainital. Located by the famous Naini Lake in the valley, surrounded by mountains on all sides\r\nwhere one can enjoy majestic vistas of nature here. Plus, there is plenty to explore with some\r\ninteresting tourist places in Nanital. Also these are two of the places to visit in Uttarakhand in\r\nmonsoon!\r\n\r\nWhy: The lush green sight of Nainital offers an exotic view of the Himalayan ranges. Enjoy the\r\ntrekking trails in Ranikhet and go camping in the main sight of the location.\r\nIdeal for: Honeymoon couples, office goers, couples and families\r\nBest time to visit: April – June\r\nIdeal duration: 4 to 5 days\r\nHow to reach: Nainital does not have direct access to air connectivity. The nearest railway\r\nstation is located at a distance of 34 km at Kathgodham. It takes about 7 hours from Delhi to\r\nreach Nainital.\r\nThings to do: Visit the host of temples at Ranikhet, go trekking, and visit the Nainital zoo and\r\nNaini Lake. Enjoy the wildlife sanctuary and the wonderful climate of the hill station.', '1572977885-blogImage.jpg', '2019-11-05 12:48:05', '2019-11-05 12:48:05'),
(9, 'Uttarakhand', 10, 'Dehradun And Mussoorie', 'The capital of Uttarakhand, Dehradun has a picturesque location with a beautiful view of the\nHimalayan ranges and river Ganga flowing on either side of the city. Mussoorie is located at a\ndistance of about 38 km from Dehradun. It is touted to be the ‘Queen of Hills’ and attracts many\ntourists every year.\nWhy: ‘Coz there are only a few amazing weekend getaways like Dehradun and Mussoorie\nIdeal for: Peace lovers, honeymooners, family and friends\nBest time to visit: All around the year except monsoons.\nIdeal duration: 2 to 3 days\nHow to reach: It takes around 5 hours to reach Dehradun from Delhi via road. From Dehradun,\nMussoorie is just an hour journey away. The nearest airport is in Dehradun – Jolly Grant Airport.\nThings to do: Visit the National Parks, Lakes, Kempty Falls, Benog Hill & Jwalaji Temple.\nMonastery, Resorts and Forest research institute in Dehradun', '1572978424-blogImage.jpg', '2019-11-05 12:57:04', '2019-11-05 12:57:04'),
(10, 'Uttarakhand', 10, 'Rishikesh And Haridwar', 'Another place you definitely must visit in Uttarakhand is the adventure capital–Rishikesh and\npilgrim capital–Haridwar. Haridwar is a place where tourists get enchanted by rustic touch and\nspiritual energy of the place and its surroundings. Rishikesh is considered to be one of the best\nexotic places to visit in Uttarakhand.\nWhy: Rishikesh as it is the adventure capital of India; Haridwar for the tranquility and religion.\nIdeal for: Everyone – friends, couples and families.\nBest time to visit: Anytime of the year is good except monsoons.\nIdeal duration: 3 to 4 days\nHow to reach: Nearest airport is in Dehradun. Trains connect both Rishikesh and Haridwar.\nThings to do: Take part in the Ganga aarti in Haridwar, a holy dip in the river Ganga, go for a\nboat ride, eat the local delicacies and talk to the spiritual gurus. Visit the ashrams in Rishikesh;\ngo for water sports adventures and trekking up in the hills.', '1572978561-blogImage.jpg', '2019-11-05 12:59:21', '2019-11-05 12:59:21'),
(11, 'Uttarakhand', 10, 'Jim Corbett – Wildlife Heaven', 'Formely known as Haley’s National Park, Jim Corbett was established in 1938 and attracts visitors for its Royal Bengal Tigers. The park is home to some 600 species of birds, an equal number of animals and around 488 different types of plants and trees. Jim corbett organises safaris and hiking trails through the dense forest’s buffer zones all through the year.\nWhy: ‘Coz this is the place you can’t miss if you are a wildlife enthusiast, photographer and nature lover.\nBest time to visit: December to February\nIdeal for: Nature enthusiast, photographers, excursionists\nIdeal duration: 2 to 3 days\nHow to reach: Ramnagar is the nearest railway staion while Pant Nagar provides air connectivity. It is well connecetd by road and there are regular bus services from Ramnagar and Delhi.\nThings to do: Elephant rides, elephant safaris, Jeep safaris, photography, and unplanned excursions', '1572978767-blogImage.jpg', '2019-11-05 13:02:47', '2019-11-05 13:02:47'),
(12, 'Uttarakhand', 10, 'Mukteshwar – Fun Adventure Sports', 'Located around 50km from Nainital, Mukteshwar is a small hill town in Uttrakhand. It is known for its awesome views of Himalayan ranges and fun adventure sports. With, lush greenery and narrow lanes, the major attractions here are coniferous forests, rolling meadows, the picturesque orchards and little cottages.\r\nWhy: If you are an adventure enthusiast and experience seeker, this is a must-visit place for you.\r\nIdeal for: Trekking, rock climbing and rappeling\r\nBest time to visit: October to June\r\nIdeal duration: 1 to 2 days\r\nHow to reach: Kathgodam Railway station is the nearest railway station to Mukteshwar (62kms away) and the nearest airport is Dehradun. You can easily get taxis from the airport to Mukteshwar.\r\n\r\nThings to do: Visit Mukteshwar temple, enjoy trekking, rock climbing, soak yourself in the splendid view of Himalayan ranges', '1572978821-blogImage.jpg', '2019-11-05 13:03:41', '2019-11-05 13:03:41'),
(13, 'North East', 11, 'Kaziranga National Park', 'The renowned Kaziranga National Park is home to the two-third population of the entire world’s one-horned rhinoceros. This national park of India has been declared as a World Heritage Site. This national park is developed with vibrant, unique, and well-preserved ecology. The versatile bio-diversity of the park attracts maximum tourists to this place year after year. Apart from the rare one-horned rhinoceros, you can also spot a number of other animals including swamp deer, wild buffaloes, Bengal foxes, civets, leopards, elephants, Chinese pangolins, gibbons, sloth bears, and flying squirrels. The park is also a tiger reserve, therefore, one might as well spot the Indian tiger while exploring the place. While you turn your head up towards the sky, you can spot pelicans, eagles as well as hornbills. Apart from featuring beautiful wild animals in a natural environment the park also boasts of a number of water bodies. In order to get around the vast park, you can take up a safari ride either in SUVs or open jeeps. Another popular and more adventurous way of exploring the park is by taking an elephant ride. However, these have to be pre-booked since it is one of the most popular ways to explore the park. Therefore, Kaziranga National Park is one of the most precious jewels of Assam that must not be missed.\nIdeal duration to explore Kaziranga National Park – 1 to 2 days\nBest time to visit – October, November, December, January, February, March, April, May, and June.\nNearest Airport to Kaziranga National Park – Jorhat', '1572979105-blogImage.jpg', '2019-11-05 13:08:25', '2019-11-05 13:08:25'),
(14, 'North East', 11, 'Majuli', 'Nestled merely at a distance of around 20 kilometres from the city of Jorhat is one of the most amazing tourist place in north east India named Majuli. It is an environment-friendly, pollution free, surrounded with lush greenery, and pristine freshwater island. Situated in the lap of River Brahmaputra, Majuli is no less than a jewel of the state. Spread in an expanse of around twelve hundred and fifty square kilometres, this beautiful island is the largest river island in the world successfully attracting tourists and admirers across the globe. It might also get the honour of being a UNESCO World Heritage Site. Apart from the natural beauty of this heavenly place, you would be able to explore the unique tribal culture here. It is also popularly known as Assam’s cultural capital. There are a number of festivals that are celebrated in Majuli, mainly ‘RAAS’. You might want to witness the festival and its celebrations while planning to visit the place.\nIdeal duration to explore Majuli – 1 to 2 days\nBest time to visit – July, August, September, October, November, December, January, February, and March.\nNearest Airport to Majuli – Jorhat\nMajor Attractions – Kamalabari Satra, Dakhinpat Satra, Gamur, Tengapania, and Auniati Satra.', '1572979651-blogImage.jpg', '2019-11-05 13:17:31', '2019-11-05 13:17:31'),
(15, 'North East', 11, 'Shillong', 'Shillong is a mesmerizing city dotted by pine trees. An idol named Lei Shyllong is worshipped at the peak of Shillong, which is also the source from where the city of Shillong has derived its name. It is nestled at an elevation of 1496 meters. The hill station is renowned for its ancient traditions and picturesque landscapes. The climate of the place is such that you can visit it any time of the year. It receives light showers at times, which further beautifies the surroundings. Owing to the beauty of the places of Shillong it is also popularly known as the ‘Scotland of the East’. You would also find the descendants of a number of tribes like Khyrim, Maharam, Bhowal, Mylliem, Mallaisohmat, Langrim settled here. The city is home to a large number of waterfalls. Other key attractions of Shillong include various mountain peaks, golf courses, lakes with crystal clear water, ancient museums etc. It is also popularly known as the musical capital of the country as a number of prominent musicians have been discovered here. Shillong also hosts a number of music festivals throughout the year.\nIdeal duration to explore Shillong – 2 to 4 days\nBest time to visit – September, October, November, December, January, February, March, April, and May.\nNearest Airport to Shillong – Shillong\nMajor Attraction – Umiam Lake, Mawlynnong, Shillong Peak, Elephant Falls, Don Bosco Museum, Mawsynram Falls, Ward’s Lake, David Scott Trek, Lady Hydari Park, Nohsngithiang Falls, Sweet Falls, Mawphlang, Spread Eagle Falls, Jakrem, Diengiei Peak, Kyllang Rock, Sohpetbneng, Khasi Hills, Jaintia Hills, Garo Hills, Mawjymbuin Cave, Laitlum Canyons, Cathedral Of Mary Help Of Christians, Police Bazar, Shillong Peak etc.', '1572979715-blogImage.jpg', '2019-11-05 13:18:35', '2019-11-05 13:18:35'),
(16, 'North East', 11, 'Mawsynram', 'The beautiful village of Mawsynram receives the highest rainfall. It is an ideal tourist destination for all nature lovers. Cherrapunjee is trounced by Mawsynram by merely a slight margin in being India’s wettest place. Mawsynram’s ‘MAW’ is a Khasi word, which means ‘stone’. This term symbolizes the popular megaliths unearthed in the hilly regions of the Khasi. The village of Mawsynram is quite a popular one for the huge formation that the village features. It is made up of stalagmite and takes the shape of a ‘Shivling’. This peaceful village of the Meghalaya District is nestled in the Eastern Khasi Hills. It is located 1400 meters above sea level. The villagers use thick grass to protect their homes from the sound of the heavy rains and thunderstorms. This reflects the excess amount of rains that the place welcomes.\nIdeal duration to explore Mawsynram – 1 day\nBest time to visit – September, October, and November\nNearest Airport to Mawsynram – Shillong\nMajor Attractions – Mawsmai Caves, Mawsmai Falls, Mawlyngbna, and Nohalikalai Falls.', '1572979818-blogImage.jpg', '2019-11-05 13:20:18', '2019-11-05 13:20:18'),
(17, 'North East', 11, 'Gangtok', 'The capital city of Sikkim, Gangtok is a marvel nestled in the northeast. It is a hill station that gives you a distant skyline view of the mighty Kanchenjunga Mountains. Gangtok is also a base location for a number of trekking enthusiasts heading towards the mountain ranges of the Himalayas. The road that leads to Gangtok from Sikkim gets more and more beautiful as you drive further. You would enjoy every bit of your road journey. Gangtok is a perfect blend of rich culture, urbanization, lush greenery, and lavish resorts. There are a number of tourist attractions like Tsomgo Lake, Tashi Viewpoint, Ban Jhakri Falls etc. in and around Gangtok that would sway you off your feet. Various other places that you must visit include Enchey Monastery, Do Drul Chorten Rumtek Monastery, and Ganesh Tok. In case you are up for adventure filled activities while visiting Gangtok, you might try river rafting at River Teesta, well-known for white water rafting.\nIdeal duration to explore Gangtok – 2 to 4 days\nBest time to visit – Throughout the year\nNearest Airport to Gangtok – Bagdogra\nMajor Attractions – Nathu La Pass, Rumtek Monastery, Ganesh Tok, Ban Jhakri Falls, Namgyal Institute of Tibetology, Tsongmo Lake, Enchey Monastery, Kanchenjunga, Mangan, Tinkitam, Flower Exhibition Centre, Do Drul Chorten, Kabi Longstok, Baba Harbhajan Singh Temple, Himalayan Zoological Park, Saramsa Garden, Hanuman Tok, Tashi Viewpoint, Tsuk La Khang Monastery, Seven Sisters Waterfalls, Reshi Hot Spring, Shingba Rhododendron Sanctuary, Banjhakri Falls, Ranka Monastery, Enchey Monastery, Saga Dawa, MG Road, The International Flower Show, Cable Car Ropeway, Yak Safari, Paragliding, Mountain Biking.', '1572979879-blogImage.webp', '2019-11-05 13:21:19', '2019-11-05 13:21:19'),
(18, 'North East', 11, 'Imphal', 'This oval shaped canyon is situated an hour drive away from the city and is incredibly scenic. This valley owes its beauty to the confluence of several small river streams from the neighbouring hills, giving a unique colour to the river and scenery. \nThe famous Loktak lake is one of the lakes and swamps of the Southern side of the valley. The valley is picture-perfect and you can click endless selfies, the frame will always look bright and beautiful.\nBest time to visit: Early in the morning or evening, throughout the year.\nDistance: Around 30 KM away from Imphal city.\nTimings: Any time of the day.\nPrice: No entry cost but transport charges will cost you depending on the mode you chose.\nLocation: Near Loktak Lake, Imphal, India', '1572981024-blogImage.jpg', '2019-11-05 13:40:24', '2019-11-05 13:40:24'),
(19, 'North East', 11, 'Agartala', 'The second largest city in Northeast, Agartala has made some impact on tourists since a couple of years. It is marked as one of the fastest developing cities of India and the third international internet gateway after Mumbai and Chennai. Apart from the facts, this clean and green city of Tripura has many megastructures like Ujjayanta Palace, Tripura Sundari Temple, Neermahal Palace, Tripura Government Museum lined for you to visit. The Sepahijala Wildlife Sanctuary, Rose Valley Amusement Park, Dumboor Lake and other worth visiting sites in Agartala. The place has lapful of gems with which you will be entertained all throughout your visit.', '1572981063-blogImage.jpg', '2019-11-05 13:41:03', '2019-11-05 13:41:03'),
(20, 'North East', 11, 'Tawang', 'Tawang is situated at an elevation of around 3048 meters and is well known place to visit in north-east India due to various ancient monasteries. It is a popular city where the renowned personality Dalai Lama was born. It is of quite a significance for the followers of Buddhism and a number of Buddhist monks can be spotted here. Apart from the religious popularity that it boasts, it is also a very picturesque location and you would be in love with the beauty of the place. Amongst the various monasteries that the place features, the Tawang Monastery is the most sacred one especially amongst the Buddhist enthusiasts. Other ideal attractions of the place include the Tipi Orchid Sanctuary as well as the Orchid Sanctuary.\nIdeal duration to explore Tawang – 2 days\nBest time to visit – September, October, November, December, January, February, and March.\nNearest Airport to Tawang – Guwahati\nMajor Attractions – Tawang Monastery, Sela Pass, Nuranang Falls, Madhuri Lake, Gorichen Peak, Tawang War Memorial, Jaswant Garh, and P.T Tso Lake.', '1572981110-blogImage.webp', '2019-11-05 13:41:50', '2019-11-05 13:41:50'),
(21, 'Kerla', 12, 'Munnar', 'A very popular one among hill stations in Kerala, Munnar is one of the best tourist places in Kerala for 2 days trip itinerary. Once the summer capital for the British, Munnar sightseeing attracts tourists from all across the world. With about 80,000 miles of tea plantation, an equal measure of aromatic vegetation, misty valleys, and low-flying clouds, Munnar is a hill station that has become one of the best tourist places in Kerala for a honeymoon.\nCute bungalows, cozy homestays and lavish hotels and resorts in Munnar, make it the most romantic destination even among the top places to visit in Kerala. The old world colonial feel has its own charms and it certainly makes for a good selfie drive. Revel in the extraordinary blend of luxury and beauty, at the most amazing honeymoon resorts in Munnar.\nPopular tourist attractions: TATA Tea Museum, Meesapulimala, Blossom Park, Pothamedu ViewPoint, Life of Pi Church, Attukal Waterfalls, Cheeyappara Waterfalls, Top Station, Marayoor Dolmens, Indo Swiss Dairy Farm, Kundala Lake, Lockhart Gap, Mattupetty Dam, Anamudi, and Eravikulam National Park .\nBest time to visit: October to March\nNearest airport: Kochi Airport, at a mere distance of 143 km from the hill station.\nNearest railway station: Aluva Railway Station, which is 110 km away from Munnar.', '1573050092-blogImage.jpg', '2019-11-06 08:51:32', '2019-11-06 08:51:32'),
(22, 'Kerla', 12, 'ALLEPPEY', 'Alleppey tops this list of best tourist places in Kerala with pictures. Its backwater trips, houseboat stays, and serene beauty attract a fair number of people to its territory. In fact, it is the most popular place to experience Kerala’s backwaters. Lord Curzon’s depiction of Alleppey as the Venice of the East is not hyperbole. Alleppey houseboat vacation is what people look for on their visit to Alleppey. There are expanses of paddy fields, quaint chapels, interesting fishing villages, and lakes filled with water lilies which make Allepey one of the best tourist places in Kerala for 3 days trip itinerary.\nThe fascination of Keralites with coconut and banana leaves in their food will prove to be a good experiment for you if you have never had it before. The cobbled pathways and cleaner roads comparatively will take you on an old-world tour.\nPopular tourist attractions: Alappuzha Beach,Krishnapuram Palace, Kumarakom Bird Sanctuary, Marari Beach, Revi Karunakaran Museum, Marari Beach, Punnamada Lake, Pathiramanal, and Sri Krishna Temple in Ambalappuzha. The Snake Boat Race in Alleppey is another crowd puller.\nBest time to visit: September to mid-May\nNearest airport: Kochi Airport, which is 53 km away from the city.\nNearest railway station: Alleppey Railway Station; it is well within the city limits.', '1573050144-blogImage.jpg', '2019-11-06 08:52:24', '2019-11-06 08:52:24'),
(23, 'Kerla', 12, 'KOZHIKODE', 'Kozhikode, also known as Calicut, is one of the most active commercial cities in Kerala. The place is famous for its culture, historical sites, educational institutions, and culinary experiences. The architecture of the city has strong influences of the Dutch and the British. It is known for its authentic Malabar food and the exotic spices that make the food so delicious. When in Calicut, don’t miss on delicacies like Dum Biryani, Kallummakkaya, Chatti Pathiri, and Dal Halwa.\nBest tourist attractions: Mananchira, Conolly Canal, Hilite Mall, Kallayi, Tali Temple, Kappad Beach, Kozhikode Beach, Thusharagiri Waterfalls, Sargaalaya, Payyoli Beach, Kozhippara Falls, and Matri Dei Cathedral.\nBest time to visit: September to May\nNearest airport: Karipur International Airport in Calicut is just 28 km away.\nNearest railway station: Kozhikode Railway Station is well within the city limits.', '1573050200-blogImage.jpg', '2019-11-06 08:53:20', '2019-11-06 08:53:20'),
(24, 'Kerla', 12, 'Trivandrum', 'The main attraction for Hindus who visit Trivandrum is the 16th-century Padmanabhaswamy temple, dedicated to Lord Vishnu and built by rulers of the kingdom of Travancore. A great deal of wealth has been hidden in the temple, making it the richest temple in the world. Some of the treasures were recently unearthed but the largest vault remains unopened. Unfortunately, if you\'re not Hindu, you won\'t be allowed to go inside the temple unless you declare you believe in Hinduism. Trivandrum also has some interesting museums and galleries, housed in classical heritage buildings. These include the Napier Museum, Natural History Museum and Sri Chitra Art Gallery in the museum complex, and Kuthiramalika Palace Museum outside the Padmanabhaswamy temple.\n\nBest time to visit- From October to March\n\nNearest airport: Trivandrum(TRV) Airport  just 3 km away.\nNearest railway station: Trivandrum Pettha Railway Station about 2km from TRV airport', '1573050239-blogImage.jpg', '2019-11-06 08:53:59', '2019-11-06 08:53:59'),
(25, 'Kerla', 12, 'Cochin', 'Cochin or Kochi is the central port city in Kerala. Regarded to be the “Queen of Arabian Sea,” Cochin is located on the south-west coast of India, and is a busy, profitable port city in Kerala. Its trading activities date back to more than 600 years. It’s the financial, industrial, and commercial capital of Kerala. The Arabs seem to have put a profound influence on the city, along with influences of the Dutch, Portuguese, Chinese, and the British.\n\nThe Chera Dynasty and the Feudal Lords have also played a significant role in the nourishment of the city. This sophisticated town is quite famous for its upmarket stores, art galleries, shopping hubs, cultural heritages, fashion, restaurants, and a few palaces and beaches. Places like Fort Kochi, Mattancherry Palace, Chinese Fishing Nets, Jewish Synagogue, Willingdon Island, Bolgatty Palace, and Mangalavanam Bird Sanctuary are worth visiting.\n\nBest time to visit- From October to March\n\nNearest airport:Cochi Airport (COK) is well within the city limits.\nNearest railway station: Ernakulam junction Railway Station is well within the city limits.', '1573050279-blogImage.jpg', '2019-11-06 08:54:39', '2019-11-06 08:54:39'),
(26, 'Rajsthan', 13, 'Jaipur – The Pink City', 'So the pink city and the capital of Rajasthan is largest in the state. Founded by Maharaja Sawai Jai Singh in 1727, Jaipur is one of the most popular Rajasthan sightseeing places. Long list of historic and heritage monuments, swift connectivity from major cities and an amazing city plan where all the streets of the city run from east to west – Jaipur is a marvel to be at.\n\nBest time to visit: All through the year, avoid summers for the days are extremely hot.\nMajor attractions in Jaipur: City Palace, Amber Fort and Palace, Jantar Mantar Observatory, Birla Mandir.\nThings to do in Jaipur: Go for a desert safari, shop for Rajasthani crafts, textiles, and gems', '1573051594-blogImage.jpg', '2019-11-06 09:16:34', '2019-11-06 09:16:34'),
(27, 'Rajsthan', 13, 'Jodhpur – The Blue City', 'Well, Jodhpur is just an extension of the royalty that you get to see at Jaisalmer and Jaipur. The royal city was the center of power of the then Mewar state and has got several forts, palaces, and temples to enchant travelers from different corners of the world. Famous as the Sun City because of its sunny weather, Jodhpur is also known as Blue City for the blue houses near the Mehrangarh Fort. The blue houses have played muse to the acclaimed photographer Steve McCurry. Click here to see his mind-blowing shots of Jodhpur city.\nBest time to visit: All through the year\nMajor attractions in Jodhpur: Mehrangarh Fort, the Umaid Bhawan Palace, the Mandore Gardens, the Jaswant Thada, the Kalyana Lake, and Garden, the Ghanta Ghar, Sardar Samand Lake and Masuria Hills\nThings to do in Jodhpur: Visit the palaces; Mehrangarh fort can’t be missed', '1573051638-blogImage.webp', '2019-11-06 09:17:18', '2019-11-06 09:17:18'),
(28, 'Rajsthan', 13, 'Jaisalmer', 'In the heart of Thar Desert, Jaisalmer is known as the Golden City for its beautiful sun-soaked sand dunes, exuberant forts, and rich culture and traditions. One of the top 5 cities to visit in Rajasthan, Jaisalmer is known for its forts, palaces, and temples. The city is has got its name from Maharaja Jaisal Singh. Interestingly, an aerial view of the city is like an image of a prince sitting on the ridge of sand dunes, crowned by the Jaisalmer fort.\nLooking at attractions, Jaisalmer has got some of the most important places to visit in Rajasthan in 3 days including a couple of museums and heritage temples. The city also hosts the annual Desert Festival in January-February and attracts travelers from across the globe to witness the magic of Rajasthani art forms.\nBest time to visit: September to November and late January to April\nMajor attractions in Jaisalmer: Jaisalmer Fort, Sam sand dunes, Gadi Sagar Lake, Tanot Mata Temple\nThings to do in Jaisalmer: Attend the Desert festival of Jaisalmer in January – February, take a camel safari to the Sam sand dunes, visit Longewala border', '1573051681-blogImage.jpg', '2019-11-06 09:18:01', '2019-11-06 09:18:01'),
(29, 'Rajsthan', 13, 'Ranthambore National Park', 'Ranthambore National Park is one of the best places in India to spot a tiger in the wild. In contrast to many national parks in India, Ranthambore is also really accessible and easy to get to. This makes it very popular (and, unfortunately, it\'s been facing a lot of tourist pressure). As well as nature, the park is home to the formidable 10th century Ranthambore Fort. It\'s a huge structure that contains ruined pavilions, monuments, and three Hindu temples. The park is full of history, having witnessed many battles played out on its land, and the rise and fall of many rulers.', '1573051743-blogImage.png', '2019-11-06 09:19:03', '2019-11-06 09:19:03'),
(30, 'Rajsthan', 13, 'Ajmer – The Holy City', 'Popular for the Dargah Sharif — shrine of Sufi saint Moinuddin Chishti, Ajmer is the 5th largest city of Rajasthan. It is surrounded by the Aravalli range and the Naag Pathar range, which protects it from the Thar desert. Among the most popular tourist attractions in Rajasthan, Ajmer is popular as the most beautiful tourist place in Rajasthan. for several celebrities who come to the dargah to seek blessings.\nBest time to visit: All through the year\nMajor attractions in Ajmer: Dargah Sharif, Ana Sagar Lake, Naag Pathar ranges\nThings to do in Ajmer: Attend Qawwali at Dargah Sharif, offer chadar to the grave of Sufi saint', '1573051775-blogImage.jpg', '2019-11-06 09:19:35', '2019-11-06 09:19:35'),
(31, 'Himachal Pradesh', 14, 'Kullu-Manali – Country’s Famous Hill Station', 'One of the best places to visit in Himachal Pradesh is Kullu and Manali. If you are on a lookout for fresh air and green mountains amidst the snow-covered ranges then Kullu Manali indeed should be on the top of your list.\nIdeal for: Everyone! But it is a hot favorite amongst newlyweds.\nIdeal duration: 4-5 days\nBest time to visit: May-July and November-January for snowfall.\nHow to reach: Chandigarh is the nearest airport, 252 Kms away. The nearest railhead is also in Chandigarh, 270 Kms away. Kullu is 570 Kms from Delhi via road.\nThings to do:\nIndulge in adventure sports at Solang Valley\nVisit Manali Bird Sanctuary\nGo trekking, camping, angling & river rafting in Kullu\nVisit the Old temples\nNearby famous places: Solang, Rohtang, Manikaran, Malana, Khirganga', '1573052105-blogImage.jpg', '2019-11-06 09:25:05', '2019-11-06 09:25:05'),
(32, 'Himachal Pradesh', 14, 'Shimla – The Capital Of Himachal Pradesh', 'One of the most famous hill stations of Northern India – Shimla which is the right mix of Indian glory with British sophistication.it is consecrated stunning landscape and fresh climate all through the year.\nIdeal for: Family and friends\nIdeal Duration: 3-4days\nBest time to visit: May –July and November-January for snowfall.\nHow to reach: Kalka, in turn, is the nearest railhead, which is connected to Chandigarh and Delhi by regular trains. Chandigarh is at a distance of 117 kilometers, Manali at 260 kilometers and Delhi at 343 kilometers.\nThings to do:\nFull fill your shopping desire at the Mall Road\nEnjoy a trek to jakhu hill and a visit to Lord Hanuman’s Temple\nVisit to the Viceregal Lodge to appreciate the British elegance\nTry your hands on Polo at Annandale which is 4km from the Ridge\nNearby famous places: Tattapani, Solan, Mashobra', '1573052136-blogImage.jpg', '2019-11-06 09:25:36', '2019-11-06 09:25:36'),
(33, 'Himachal Pradesh', 14, 'Dharamshala – The Residence Of Dalai Lama', 'Dharamsala definitely has to be on your list of best places to visit in Himachal Pradesh. Famous not only because of its climate but also you get to see how multicultural Indian community lives in harmony with the Indo Tibetan community.\nIdeal for: Friends or Solo Travelers\nIdeal duration: 2-3days\nBest time to visit: May –July and November-January for snowfall\nHow to reach: The nearest major railway station is at Pathankot, 85 kilometers away. Dharamshala is well-connected to Delhi The journey is almost 520 kilometers from Delhi. The drive from Delhi via Chandigarh is about 12 hours.\nThings to do:\nEnjoy a boat ride across the Dal Lake and witness the royal the Kangra Fort.\nPay homage to the Bhagsunath Temple, dedicated to Lord Shiva and simultaneously enjoy the cascading Bhagsu falls.\nVisit various monasteries, the Kangra Art Museum, the Dalai Lama Temple Complex and see the magnificent tea plantation on the foothills of Kangra valley.\nNearby famous places: Khajjiar, Bir Billing, Palampur', '1573052169-blogImage.jpg', '2019-11-06 09:26:09', '2019-11-06 09:26:09'),
(34, 'Himachal Pradesh', 14, 'Kasauli – The Gateway To Himachal', 'Kasauli is a perfect getaway from the hustle bustle of the city and is one of the most serene places to visit in Himachal in June. Almost on the outskirts of Punjab and Haryana, it is well connected by roadways.\nIdeal for: Friend and Family\nIdeal duration: 3-4 days\nBest time to go visit: November – March & December – January for snowfall.\nHow to reach: The nearest airport is in Chandigarh, 70 km away. The nearest train station is Sonwara which is 4km away. It is 293 km from New Delhi and takes about 7 hours.\nThings to do:\nVisit to the Anglican Church which was built during the British era.\nEnjoy a great stroll or a trek on the lower mall which leads to the Monkey point which is in the shape of a Lord Hanuman’s foot.\nA must watch is the sunrise and the sunset point where you can witness the most beautiful sky.\nIf you are fond of walking and exploring the nature then do take the Gilbert Trail\nNearby famous places: Parwanoo, Solan', '1573052197-blogImage.jpg', '2019-11-06 09:26:37', '2019-11-06 09:26:37'),
(35, 'Himachal Pradesh', 14, 'Dalhousie – Mini Switzerland Of India', 'Dalhousie is yet another hill station in Himachal Pradesh which is ideal for de-stressing in the serene, tranquil troposphere. Away from the hustle-bustle of the city life, sit back and enjoy the nature in Dalhousie, one of the top places to visit in Himachal Pradesh.\nIdeal for: Honeymooners\nIdeal duration: 2-3days\nBest time to visit: April to July\nHow to reach: The closest airport is Dharamsala which is 5 hours away. The closest railhead is Pathankot’s Chakki Bank (71 km from Dalhousie) and then take a cab which takes around 10 hours.\nThings to do:\nExperience the beauty of nature in the valley of Khajjiar which is also known as the Switzerland of India\nEnjoy a gentle walk or a trek in the beautiful terrain in Dainkund Walk, Ganji Pahadi Walk and Bakrota Walk.\nVisit the St. John’s Church, oldest church of the town carries vast historical implication\nRelish the cascading waterfalls near Delhi – namely the Chamera falls and the Satdhara falls\nNearby famous places: Dharamshala, Khajjiar, Kalatop', '1573052232-blogImage.jpg', '2019-11-06 09:27:12', '2019-11-06 09:27:12'),
(36, 'Andaman and Nicobar Islands', 15, 'Havelock Island', 'Havelock Island is like the Holy Grail of scuba diving and snorkelling! And it is also one of the most popular things to do in Andaman among travellers. The Barefoot Scuba Resort is where you’d want to go if you’re a scuba enthusiast. Whether you’re a rookie, a professional diver, looking for some fun diving or want to get PADI certified Barefoot has a hell lot of options for you. This is surely one of the best places to visit in Andaman and a must include in your list!\nTip: If you wish to dive in the waters of Andaman, plan your trip between November to Mid-April.', '1573052846-blogImage.jpg', '2019-11-06 09:37:26', '2019-11-06 09:37:26'),
(37, 'Andaman and Nicobar Islands', 15, 'Cellular Jail National Memorial', 'I know, this may sound a bit dark and depressing but you wouldn’t regret one moment of your time spent here. The dreadful word “Kaala Pani” that we’ve heard since our childhood actually referred to this place. Yes, it’s the former British prison that is now a shrine to the political dissidents it once jailed. Even though several parts of it have been destroyed by the Japanese during the World War II, it still stands tall reminding us of our brave and gallant forefathers.\nLocation: Atlanta Point, Port Blair, Andaman and Nicobar Islands 744102\nTimings:\nVisiting hours for the Cellular Jail are between 9:00am to 5:00 Pm\nLight and Sound show timings: 5:30 Pm – 6:30 Pm (Hindi) & 6:45 Pm – 7:45 Pm (English)\nAdmission cost is Rs.10, and an extra fee of Rs.25 and Rs.100 is applicable for using cameras and video cameras respectively.\nTip: The jail remains closed on Monday and during Public Holidays.', '1573052979-blogImage.jpg', '2019-11-06 09:39:39', '2019-11-06 09:39:39'),
(38, 'Andaman and Nicobar Islands', 15, 'Ross Island', 'Back in the days, this place was fondly called the ‘Paris of the East’ by the Brits. But all its glory and tropical beauty was wrecked by the earthquake of 1941 and the Japanese invasion. There are remnants of the English architecture and machine-gun nests that are great fun to poke a finger in. Don’t forget to include this place to your list of places to visit in Andaman!\nWhen to visit: Andaman has a pleasant weather all throughout the year but the most apt time to visit the islands would be October to April. Monsoons hit the shore in the month June.\nLocation: South Andaman', '1573053025-blogImage.jpg', '2019-11-06 09:40:25', '2019-11-06 09:40:25'),
(39, 'Andaman and Nicobar Islands', 15, 'Barren Island', 'This island has been proven to be the only place with active volcano in the regions of Southeast Asia. Also, the island was featured in the news in 2017 that covered the incident of volcanic eruption that happened here during that time.\nThis island derives its name from the fact that it actually is ‘barren’ with no humans inhabiting here due to which one can witness quite a lot of animal species here. On your visit to this island, you can indulge in activities like seaplane ride as well as sightseeing to make the most of it.\nLocation: 143Kms from Port Blair', '1573053053-blogImage.jpg', '2019-11-06 09:40:53', '2019-11-06 09:40:53'),
(40, 'Andaman and Nicobar Islands', 15, 'Limestone Caves', 'If you love exploring the caves and also discover the mysteries behind that, then the Limestone caves at Baratang island is a place one should visit. These limestone caves are actually massive sediment rocks which forms a beautiful natural marvel to witness in Andaman. This is one of the best places to see in Andaman. The caves are dark and dull inside and people have to carry a light to enter these openings.\nLocation: Baratang Island, Andaman', '1573053086-blogImage.jpg', '2019-11-06 09:41:26', '2019-11-06 09:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `amount_balance` int(11) NOT NULL,
  `picked_facility` tinyint(1) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `firstName`, `lastName`, `amount_paid`, `amount_balance`, `picked_facility`, `address`, `adult`, `children`, `package_id`, `status`, `email`, `contact`, `package_name`, `created_at`, `updated_at`) VALUES
(3, 'Anand', 'Maurya', 1200, 300, 1, 'Mumbai , Thane 400605', 3, 1, 1, 'Active', 'mauryaanand10@gmail.com', '1234567890', 'Summer Trip to Goa', '2019-11-10 18:30:00', NULL),
(4, 'Akash', 'Kumar', 2300, 560, 1, 'Durg , Thane 400605', 5, 2, 3, 'Active', 'akash.1998.ku@gmail.com', '1234567890', 'Kerala Calling', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` int(4) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `token`, `name`, `email`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(20, 6372, 'Anand Maurya', '1705018@kiit.ac.in', 'Want to Join Us', 'Hey there, I want to join your campany as Software developer. Please Give a chance', 'pending', '2019-11-06 15:30:45', '2019-11-06 15:30:45'),
(21, 2980, 'Akash Kumar Panedy', '1705013@kiit.ac.in', 'Registeration Issue', 'I could not able to register through the website. It showing 404 error everytime, Please review the solution.', 'pending', '2019-11-06 15:31:54', '2019-11-06 15:31:54'),
(22, 1745, 'Amisha Patel', '17050136@kiit.ac.in', 'Registeration Issue', 'I could not able to login through the website. It showing 505 error everytime, Please review the solution.', 'pending', '2019-11-06 15:31:54', '2019-11-06 15:31:54');

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
(10, 'Uttarakhand', '1572977360-blogImage.jpg', '2019-11-05 12:39:20', '2019-11-05 12:39:20'),
(11, 'North East', '1572977567-blogImage.jpg', '2019-11-05 12:42:47', '2019-11-05 12:42:47'),
(12, 'Kerla', '1573049946-blogImage.jpg', '2019-11-06 08:49:06', '2019-11-06 08:49:06'),
(13, 'Rajsthan', '1573051532-blogImage.jpg', '2019-11-06 09:15:32', '2019-11-06 09:15:32'),
(14, 'Himachal Pradesh', '1573052039-blogImage.jpg', '2019-11-06 09:23:59', '2019-11-06 09:23:59'),
(15, 'Andaman and Nicobar Islands', '1573052585-blogImage.jpg', '2019-11-06 09:33:05', '2019-11-06 09:33:05');

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
(26, '2019_10_24_174011_create_activity_feeds_table', 5),
(27, '2019_10_25_184043_create_notifications_table', 6),
(28, '2019_10_28_151534_create_bookings_table', 7),
(29, '2019_10_28_155131_create_bookings_table', 8),
(30, '2019_10_28_155313_create_bookings_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `action`, `created_at`, `updated_at`) VALUES
(3, 'Enquiry', 'aNAND has request a enquiry on 1234567890', '2019-10-28 09:16:19', '2019-10-28 09:16:19'),
(4, 'Enquiry', 'ANAND maurya has request a enquiry on Subject 2', '2019-10-28 09:16:53', '2019-10-28 09:16:53'),
(5, 'Enquiry', 'ANAND maurya has request a enquiry on Subject 2', '2019-10-28 09:17:01', '2019-10-28 09:17:01'),
(6, 'Enquiry', 'ANAND maurya has request a enquiry on Subject 4', '2019-10-28 09:19:48', '2019-10-28 09:19:48'),
(7, 'Enquiry', 'ANAND maurya has request a enquiry on Subject 3', '2019-10-28 09:20:56', '2019-10-28 09:20:56'),
(8, 'Enquiry', 'ANAND maurya has request a enquiry on Subject 4', '2019-10-28 09:22:29', '2019-10-28 09:22:29'),
(10, 'Enquiry', 'kczsmcs has request a enquiry on Subject 4', '2019-10-28 09:29:41', '2019-10-28 09:29:41'),
(11, 'User', 'Akash has Shared his Story, Please review it', '2019-11-06 14:39:06', '2019-11-06 14:39:06'),
(12, 'User', 'Anand has Shared his Story, Please review it', '2019-11-06 14:46:22', '2019-11-06 14:46:22'),
(13, 'Enquiry', 'Anand Maurya has request a enquiry on Want to Join Us', '2019-11-06 15:30:45', '2019-11-06 15:30:45'),
(14, 'Enquiry', 'Akash Kumar Panedy has request a enquiry on Registeration Issue', '2019-11-06 15:31:54', '2019-11-06 15:31:54');

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
('02ba18d05287d68236c5cd2638ddb4657f6dfd45ab14823b8947850faaa2bd3b14e29cd49acb722e', 17, 1, 'authToken', '[]', 1, '2019-11-02 15:06:20', '2019-11-02 15:06:20', '2020-11-02 20:36:20'),
('02d44fad6423a2599e676b02adb16e8e5d8516b84046491e6a9ffa311aa5e430383a68532f3b733a', 1, 1, 'authToken', '[]', 0, '2019-10-05 10:33:12', '2019-10-05 10:33:12', '2020-10-05 16:03:12'),
('04902655c0fcbbd9cd639af2dfe81b4ce0140722c3d86b0d7cf52e8da1acc7460e678ed2cf39b791', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:32:34', '2019-10-05 11:32:34', '2020-10-05 17:02:34'),
('059946598d545dd4b51375f156ae59b1d4f0de24b71e621ddb386f0c00555a4885ebd906902cee5c', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:53:58', '2019-10-05 11:53:58', '2020-10-05 17:23:58'),
('06c0ab8d17b00718a5b1cfb5238f1a1c778e6bb42d46d7b5dec930cf1155e91d0d83157f28c5d7cb', 5, 1, 'authToken', '[]', 0, '2019-10-05 12:06:39', '2019-10-05 12:06:39', '2020-10-05 17:36:39'),
('0805e57e806889d3536679693fafcceffa91039e75e450283657bf069644401412505ee545d37d4e', 17, 1, 'authToken', '[]', 0, '2019-10-05 11:07:51', '2019-10-05 11:07:51', '2020-10-05 16:37:51'),
('0f5556f6cd8d94f8db29ddce3a5b50be01a99d5e2e12ba84003833d02015088a98b62de883320ce6', 18, 1, 'authToken', '[]', 0, '2019-11-06 15:02:53', '2019-11-06 15:02:53', '2020-11-06 20:32:53'),
('1158d5786eb20d58f803adef6e61938ac4557109a88693566ac09153a3ceeb7fe47d155d63a55413', 17, 1, 'authToken', '[]', 1, '2019-11-02 11:45:19', '2019-11-02 11:45:19', '2020-11-02 17:15:19'),
('1a1a50e81acda96bcb200275f7880de9b24d6d68e4404d149f94be95460e9d61920cf6d500f97559', 17, 1, 'authToken', '[]', 1, '2019-11-02 14:30:57', '2019-11-02 14:30:57', '2020-11-02 20:00:57'),
('1c84d175d360e66181d40d0c54ae84d15d52adc27db1ed0b6aa838867ec6db2c82888743b0edddc5', 6, 1, 'authToken', '[]', 1, '2019-11-06 15:51:00', '2019-11-06 15:51:00', '2020-11-06 21:21:00'),
('2013fc11138c07eae98f33b68f634c2a1830946856b6826cb5c77e859b366aba7c7f9a5a30b5cef5', 7, 1, 'authToken', '[]', 0, '2019-10-05 05:53:25', '2019-10-05 05:53:25', '2020-10-05 11:23:25'),
('268ccdcba23482cbcd428f3d44648200c6c26f26f41438dd96a0a8707863edf5abe71aceffbfda4e', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:18:06', '2019-10-05 11:18:06', '2020-10-05 16:48:06'),
('2a0efc291f9698b5f69eee2b76e8764d32210df6db321782508dc131604501e82e835289e4dcd123', 20, 1, 'authToken', '[]', 0, '2019-11-06 15:05:48', '2019-11-06 15:05:48', '2020-11-06 20:35:48'),
('2a3a653a915ae176ebc4b2ed823ef62e7cbf0e0da8f42d58e6c338998a6e5e34b9b5dba1340335d0', 17, 1, 'authToken', '[]', 1, '2019-11-02 15:04:43', '2019-11-02 15:04:43', '2020-11-02 20:34:43'),
('2b59a05e156caa0c19ea1a69f9fed05c664751f30e6bde103f7a1634196a06f58352580af7c8a892', 1, 1, 'authToken', '[]', 1, '2019-10-05 10:56:44', '2019-10-05 10:56:44', '2020-10-05 16:26:44'),
('2e53cd701716c89630c048e80827636458282e7778a48798dc58b2e0e25980166476f5fd5ba49bf9', 17, 1, 'authToken', '[]', 0, '2019-11-02 14:27:45', '2019-11-02 14:27:45', '2020-11-02 19:57:45'),
('2e7a3edafc883f76c9dac153b4ac27afb086134379ccc2501ab3fa1845cbb5190863f3a820bb303d', 17, 1, 'authToken', '[]', 1, '2019-11-06 08:45:45', '2019-11-06 08:45:45', '2020-11-06 14:15:45'),
('2ec64e884a8a1984e83a9905556dc1bf60d9f5f2a502a6120c90dec83ca0cfd67aeab33cda8aca59', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:31:17', '2019-10-05 11:31:17', '2020-10-05 17:01:17'),
('39b24419d672f3a43b99fd17800be65404fc400b9c66e88f50bde34579787989d98088eda4c25658', 1, 1, 'authToken', '[]', 0, '2019-10-05 11:54:36', '2019-10-05 11:54:36', '2020-10-05 17:24:36'),
('3bdce4b2bbaec31bb08a09ca5c587a2d7467c746a33f75c5fd9ee134262001edec4ccf749bf141af', 15, 1, 'authToken', '[]', 0, '2019-10-05 08:59:25', '2019-10-05 08:59:25', '2020-10-05 14:29:25'),
('3f48c2e88b32bfdc5b580cbe4f1c1a5ca199bc5f14091e538574d79b2615bc315a2873667944edfc', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:48:29', '2019-10-05 11:48:29', '2020-10-05 17:18:29'),
('412f09e9388857988fe48c9752f7607989b977019a506f6e5097ae9e24536e5f60b32674a46e948a', 17, 1, 'authToken', '[]', 0, '2019-10-05 11:02:03', '2019-10-05 11:02:03', '2020-10-05 16:32:03'),
('437d4c0524f5e580c1c99bd4b4c99c77d99c2c901411e322a98ecab74253318ef49537b83cfead76', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:41:33', '2019-10-05 11:41:33', '2020-10-05 17:11:33'),
('4386e535061bbe01a83f43da576fb8bf1a6eb75793add67cbf14437712dc52c63cd76e34d327d18b', 17, 1, 'authToken', '[]', 1, '2019-11-02 14:39:50', '2019-11-02 14:39:50', '2020-11-02 20:09:50'),
('4447a541d9dd365ca8b4946c5459135d3ec6aa10d75207f8eddcc24033918e59f69680244bc09c4b', 17, 1, 'authToken', '[]', 1, '2019-11-02 14:37:34', '2019-11-02 14:37:34', '2020-11-02 20:07:34'),
('4889ceed331fb92bbcf13b36e654e22c74a86434872f391f650cea834db2040f95102d8ba37b9d29', 17, 1, 'authToken', '[]', 0, '2019-11-05 12:33:42', '2019-11-05 12:33:42', '2020-11-05 18:03:42'),
('4de3e16fa9feb9a795651f6efe96d8f5546da8744aa271447202e99e7de87fbc7632a0172898ced6', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:49:17', '2019-10-05 11:49:17', '2020-10-05 17:19:17'),
('50d76b2dabf4c1be3920cdb734295b82e65a208a9c28bfe741d4c95bee5889dc9d7aacba47770474', 5, 1, 'authToken', '[]', 1, '2019-10-05 12:06:53', '2019-10-05 12:06:53', '2020-10-05 17:36:53'),
('51403a62ada593033102f83e1dbbd3921f1b89676f97d59b1ab3be9d56e762fd42d5d1fae6cde8cc', 1, 1, 'authToken', '[]', 0, '2019-10-05 10:18:10', '2019-10-05 10:18:10', '2020-10-05 15:48:10'),
('5185dafae4e5064edca69a10b6710adb34e28f24e07d8d0e226c76b6a77c9e732f59b9efd5224be9', 17, 1, 'authToken', '[]', 0, '2019-10-05 11:21:47', '2019-10-05 11:21:47', '2020-10-05 16:51:47'),
('544696c8cdae886e4c72d30c0e3fa8f9df209d03045f68a00c24c0d947dc70b39e3b1ae830a0e70e', 4, 1, 'authToken', '[]', 0, '2019-10-05 12:03:43', '2019-10-05 12:03:43', '2020-10-05 17:33:43'),
('57a5dd752abc6d5e647ce506cebcf2e3cd7c0bf06c4de32a84842b3dd156ba11328143c9fecbd916', 3, 1, 'authToken', '[]', 0, '2019-10-05 11:10:20', '2019-10-05 11:10:20', '2020-10-05 16:40:20'),
('63e501098eb396e266931ba4beed617fde9996c7c90149eaac31b3253acf0ca67c667007a9367b0f', 1, 1, 'authToken', '[]', 1, '2019-11-02 11:20:57', '2019-11-02 11:20:57', '2020-11-02 16:50:57'),
('65d365535092805ea51291a906f7220e09c4ed2c6a7731b973e82757cf3c04f4711c454c455a7da9', 6, 1, 'authToken', '[]', 0, '2019-10-05 05:50:54', '2019-10-05 05:50:54', '2020-10-05 11:20:54'),
('66b44b46ae900dc36b4fda301e9b12f06237542bb2ea35c51cda96578e0224c8015b90debcbcef35', 14, 1, 'authToken', '[]', 0, '2019-10-05 08:57:37', '2019-10-05 08:57:37', '2020-10-05 14:27:37'),
('6cc67655969145c2f58278890f5c35e3d0b634265d35976359795ceeaa876aa38f84e45020c8ef55', 13, 1, 'authToken', '[]', 0, '2019-10-05 08:43:43', '2019-10-05 08:43:43', '2020-10-05 14:13:43'),
('6daa5587d94b5bfd24251a67d81f33199ee9979411bf8c9d3c69a6b4b88ae8cd3e75fea4e2b856f6', 17, 1, 'authToken', '[]', 1, '2019-11-02 14:32:32', '2019-11-02 14:32:32', '2020-11-02 20:02:32'),
('6f27b9e013766156846774d18c61b6dc0897937de918bb814f90a2ef3bb5b66f724891f420ce5847', 4, 1, 'authToken', '[]', 0, '2019-10-05 05:45:50', '2019-10-05 05:45:50', '2020-10-05 11:15:50'),
('6f62c74fe1a81d283487184452ff2631cca5933c90a54d3339ab0c374f7babf8be3f6a096334c675', 17, 1, 'authToken', '[]', 1, '2019-11-02 14:46:21', '2019-11-02 14:46:21', '2020-11-02 20:16:21'),
('724a4d97d3cc0a69634b68a3411176af9fb11321e8852c570e43426ecd43dd671401d329a2da7904', 21, 1, 'authToken', '[]', 0, '2019-11-06 15:07:11', '2019-11-06 15:07:11', '2020-11-06 20:37:11'),
('74c0a03dede025681b0172fe65e96544ff1f0415ee25a3a12bba0a278cab3cc577a82b9cdc605f50', 2, 1, 'authToken', '[]', 0, '2019-10-05 05:27:17', '2019-10-05 05:27:17', '2020-10-05 10:57:17'),
('75ec68c9a1b6ea81743c403d99b64da3b6b25ebf1a920d3f00e1aa3b997908b286bdf444e539df6b', 6, 1, 'authToken', '[]', 1, '2019-11-06 13:13:40', '2019-11-06 13:13:40', '2020-11-06 18:43:40'),
('7c75e8e155a0f40791ac553c934eed49ad63da85c4b80983bb678b36c90e3d283e40f54d41bd7e72', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:50:37', '2019-10-05 11:50:37', '2020-10-05 17:20:37'),
('7f775204090e22ab52f847fe10137e49ed0c70f54748592250479120fa67de32ced607da1fb4d799', 17, 1, 'authToken', '[]', 1, '2019-11-02 15:07:26', '2019-11-02 15:07:26', '2020-11-02 20:37:26'),
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
('9692790b6fd6c4221877023cf2aaac0cd49d40a7ab17190042e4215ac5b42ffb0f8fccb2e75d3698', 17, 1, 'authToken', '[]', 1, '2019-11-02 11:19:10', '2019-11-02 11:19:10', '2020-11-02 16:49:10'),
('98f5892790f003e2d288445b165f5786b3fff85b40385f0ddd031ff205e2a80ba5c2909cc7cfd649', 17, 1, 'authToken', '[]', 1, '2019-11-02 10:38:09', '2019-11-02 10:38:09', '2020-11-02 16:08:09'),
('9a7422ff358a260e03f003cc7ff322e4a3484ae27e4c7b6a85f860db6c78c4e2699de1dc189edca7', 17, 1, 'authToken', '[]', 1, '2019-11-02 14:36:13', '2019-11-02 14:36:13', '2020-11-02 20:06:13'),
('9ab41837a025301b2828a6f013c9f95d206e17120480d6461cd67b1f8ccb93520ed71b2e551dd2b4', 11, 1, 'authToken', '[]', 0, '2019-10-05 07:53:16', '2019-10-05 07:53:16', '2020-10-05 13:23:16'),
('9c6b2f4676e661bff8b705c0102e5eea5d604a32e2b6f5011b25b7e685db842167a175d56659cbb1', 17, 1, 'authToken', '[]', 1, '2019-11-02 15:04:12', '2019-11-02 15:04:12', '2020-11-02 20:34:12'),
('9ceda78f5c149e0c56ca70ae7ad95f19c75bb780db946a14065dd846c4a6972ce1162ad3990f7157', 17, 1, 'authToken', '[]', 1, '2019-11-02 15:07:56', '2019-11-02 15:07:56', '2020-11-02 20:37:56'),
('9de80c0c62ccce57f0d0e81c8c6ac8e188f14854ce0a36e5cd71dc8559dc2febb42f9ce351263a87', 17, 1, 'authToken', '[]', 1, '2019-11-02 14:40:39', '2019-11-02 14:40:39', '2020-11-02 20:10:39'),
('a21612c20cef22ca58fc19ee4f1b9be6a8be80d7c583de4e0b555a15ff88805e0898ad90aedd10b5', 1, 1, 'authToken', '[]', 0, '2019-10-05 10:47:52', '2019-10-05 10:47:52', '2020-10-05 16:17:52'),
('a28bec450aa3a5d19f52df47207e500750b6ad14a10c405c60400b6ac404aac4c7d35241ffeb4f9b', 3, 1, 'authToken', '[]', 1, '2019-10-05 11:16:03', '2019-10-05 11:16:03', '2020-10-05 16:46:03'),
('a2925197c3686955be31e2b9813898facc9eaa345d4eea300bda1a294efd18a5e407301072563d14', 1, 1, 'authToken', '[]', 0, '2019-10-29 08:13:34', '2019-10-29 08:13:34', '2020-10-29 13:43:34'),
('a2adb2989b22c94644bfa7ffd5a9ceed192c72e35740b391f820e9a19a2d1be880912c71429c44ac', 17, 1, 'authToken', '[]', 0, '2019-10-05 11:01:27', '2019-10-05 11:01:27', '2020-10-05 16:31:27'),
('a4dfe25701d619d914ace2954d184a1cfaac2c6509cb99b73c35e1da6af1eea3edd39d492d24d4cf', 17, 1, 'authToken', '[]', 1, '2019-11-02 10:48:42', '2019-11-02 10:48:42', '2020-11-02 16:18:42'),
('a56bbc8a6c21f2038dee9c0085f280740e1fa38915f09420fbbf65143c1a6c8597511c8d64e96205', 4, 1, 'authToken', '[]', 1, '2019-10-05 12:04:02', '2019-10-05 12:04:02', '2020-10-05 17:34:02'),
('abd973a5543f760792cad9260580e3c3cf7181c47b15dc40b42e046c90e4fb44bf570572714fd8b5', 17, 1, 'authToken', '[]', 1, '2019-11-02 14:18:15', '2019-11-02 14:18:15', '2020-11-02 19:48:15'),
('af953f4867c3a6dff877449b8e27912fd04f0a9fc0e017688893b461ee052e1cb005f8387e7da7b7', 17, 1, 'authToken', '[]', 1, '2019-11-02 10:34:23', '2019-11-02 10:34:23', '2020-11-02 16:04:23'),
('b02573559d3ea62d5f935c0f1c1b1bfe5128a5312e96be72d31a9cbf7f3fa304dcda2b72c6585f05', 19, 1, 'authToken', '[]', 0, '2019-11-06 15:03:59', '2019-11-06 15:03:59', '2020-11-06 20:33:59'),
('b684dde87e2dd5c61d7b6bf16a83c511f8e16595eb1b5b14e92c5fa7e9bf7d643cb2f024bcb87e45', 5, 1, 'authToken', '[]', 0, '2019-10-05 05:46:19', '2019-10-05 05:46:19', '2020-10-05 11:16:19'),
('b807a0df47c18b42d8c3f0f52d93186a2518000cb2daa79b1fe4f4bd5541cce3a2d17e93953ef60e', 6, 1, 'authToken', '[]', 1, '2019-11-06 15:47:27', '2019-11-06 15:47:27', '2020-11-06 21:17:27'),
('c1f64b7570ac6508679a17c3c4e164ee257c396e983a6710b81098cbb0c594e46765d42569d17266', 17, 1, 'authToken', '[]', 1, '2019-10-26 13:09:22', '2019-10-26 13:09:22', '2020-10-26 18:39:22'),
('c3f705abc76452d57fb0ea149d7c86c41d6edbb2183cacc23d08b8e64d45cc32f7975ab7432af2cc', 6, 1, 'authToken', '[]', 0, '2019-11-06 13:12:37', '2019-11-06 13:12:37', '2020-11-06 18:42:37'),
('c7f24be2b1e38c1600149dbcc192dbb646c479af03c3f783b1fa5f71bd30b18dd119fea21576088d', 17, 1, 'authToken', '[]', 1, '2019-11-02 15:08:26', '2019-11-02 15:08:26', '2020-11-02 20:38:26'),
('c9c09b78eaf4ddb1501a300ca652944865593ba3bf7f1e7a3056a8e160dda8438a432373e8c87b7e', 17, 1, 'authToken', '[]', 1, '2019-11-02 15:04:32', '2019-11-02 15:04:32', '2020-11-02 20:34:32'),
('ce089f346c1474847b75eb3cd48470e12991b91543ccfd681305a026addd149209a5841bdfdb4fea', 1, 1, 'authToken', '[]', 1, '2019-11-02 11:44:22', '2019-11-02 11:44:22', '2020-11-02 17:14:22'),
('cf4127830104b5e650306a07291f40920cbeb4cbeea2125ee1c2674a64f56122e85c801c508768ed', 17, 1, 'authToken', '[]', 1, '2019-11-02 14:46:07', '2019-11-02 14:46:07', '2020-11-02 20:16:07'),
('d621549e48976c22d5a5b70207be1a06f6d066e70b90946dfba68d18beb8545c5631c5486c39f1c6', 22, 1, 'authToken', '[]', 0, '2019-11-06 15:08:03', '2019-11-06 15:08:03', '2020-11-06 20:38:03'),
('d96bef3dfee27d080471ae74588109fdc8e94c74f7b6bfaa028bed445194b9209d19b52145cb3ceb', 3, 1, 'authToken', '[]', 1, '2019-10-05 12:01:34', '2019-10-05 12:01:34', '2020-10-05 17:31:34'),
('ddcf8b489801c1fe5797d72693c8f846d17ae255939f0ced79dcb0c006cb21722dcbd2af0e9f2ca0', 17, 1, 'authToken', '[]', 1, '2019-10-05 11:56:28', '2019-10-05 11:56:28', '2020-10-05 17:26:28'),
('df1fe772ab7a57f72a8713b7f8623b8a58283e90479b39a2133c3c16be627f6a9b0f239065087f41', 10, 1, 'authToken', '[]', 0, '2019-10-05 07:51:45', '2019-10-05 07:51:45', '2020-10-05 13:21:45'),
('e196655672d34bededb71fe2ad7311339bed4301ed5196241717c70c850f9a09698d424deb6c27e4', 1, 1, 'authToken', '[]', 1, '2019-10-05 11:40:27', '2019-10-05 11:40:27', '2020-10-05 17:10:27'),
('e1cd2f67f07de99cd1509c8e7f377e9140374e816e171778be03825849053c0cc9b854ebef0880a5', 1, 1, 'authToken', '[]', 1, '2019-10-05 10:18:40', '2019-10-05 10:18:40', '2020-10-05 15:48:40'),
('e427d98cc13cac240d5068d7df0b9721b00022a6b07c1554a720fc50902f912a3a07585a465025ce', 17, 1, 'authToken', '[]', 1, '2019-10-05 11:27:06', '2019-10-05 11:27:06', '2020-10-05 16:57:06'),
('e908bb13e82c191889b5705e38a1ec908cf4cbde94b3e1d7594e4f8f1930ffdb32f28cf6a85f09db', 17, 1, 'authToken', '[]', 1, '2019-11-02 14:29:15', '2019-11-02 14:29:15', '2020-11-02 19:59:15'),
('e98b18baee2b3833f01af59efef0eed1010919867a7e3dd026a4c3614817f338970c9e8d043fbd57', 17, 1, 'authToken', '[]', 0, '2019-10-05 10:10:27', '2019-10-05 10:10:27', '2020-10-05 15:40:27'),
('e99785eb661f7ec544ac7a435066834a0440a87d0f57d3136a80c2836a6a79a424b31a4f48ebd5f8', 17, 1, 'authToken', '[]', 1, '2019-11-02 15:07:14', '2019-11-02 15:07:14', '2020-11-02 20:37:14'),
('ea90ca2b82ece9870ea9d97133db30cd9bba5da2b3e9ab14077d3f46d577ea60df05cf78e4f1ed77', 6, 1, 'authToken', '[]', 0, '2019-11-06 13:13:38', '2019-11-06 13:13:38', '2020-11-06 18:43:38'),
('eb3a29514f8092271c2395e1203849ca3047da8939f1f4137e2fba84bec068316e70a9b8ff0f1697', 17, 1, 'authToken', '[]', 1, '2019-10-05 10:20:25', '2019-10-05 10:20:25', '2020-10-05 15:50:25'),
('ec875f15ba7686f42502021a4b060563fb921c9f231a6ca4972a79f955144814f2d826bcf9c4474e', 1, 1, 'authToken', '[]', 0, '2019-10-05 12:26:29', '2019-10-05 12:26:29', '2020-10-05 17:56:29'),
('efe4c868fe15f584861faeec601af94387ac927f80792a8e0a3d7bc1873992e1071394309a336f2f', 17, 1, 'authToken', '[]', 1, '2019-11-02 14:41:22', '2019-11-02 14:41:22', '2020-11-02 20:11:22'),
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
(12, 'Kerala Calling', 'Kerla', 12999, 'Couple', 'Day 1Cherai\r\n\r\nWelcome for Kerala tour.Your tour starts right from your arrival at Cochin airport / Railway Station.\r\nProceed to Cherai.\r\nCheck in to the Resort/Hotel\r\nEvening Spends at the Beach.\r\nOvernight stay at Hotel.\r\n\r\nDay 2Cherai-Munnar\r\n\r\nCheck out from Hotel and proceed to Munnar.\r\nOn the way visit the water falls of Valara and Cheeyappara.\r\nCheck in to the Hotel at Munnar .\r\nOvernight Stay at the Hotel.\r\n\r\nDay 3Munnar\r\n\r\nLocal sight seeing (Mattupetty Dam,Tea Plantation)\r\nSightseeing Munnar - visit Rajamalai to see the Nilgiri Tahrs,Mattupetty where boating facility is available.\r\nThe Echo-point , Kundala lake for boating in Shikara type of boats.\r\nTop Station - The border\r\n\r\nDay 4Munnar - Thekkady\r\n\r\nCheck out from the Hotel and proceed to Thekkady\r\nCheck in to the Hotel  at Thekkady\r\nBoating at Periyar Lake to watch the wild life\r\nOvernight stay at Hotel\r\n\r\nDay 5Thekkady - Alleppey\r\n\r\nAfter Breakfast check out from the Resort and proceed to Alleppey.\r\nCheck in to houseboat for an overnight cruise through the unique back waters of Kerala. \r\nHouseboat will be your transportation for the day and accommodation for the night. \r\nGlide along the narrow canals laced by the infinite greenery imparted by coconut palms, watch the gentle and soothing greenery of paddy fields and the village folk at work. \r\nRelax on board listening\r\n\r\nDay 6 Alleppey-Cochin\r\n\r\nTransfer to Cochin, drop at Airport / Railway station\r\nCheck out from the Hotel and proceed to Cochin, to catch flight/train.', '1573057322-packageImage.jpg', '2019-11-06 10:51:14', '2019-11-06 11:08:34', 'Places: Cherai(2N) → Munnar (1N) → Thekkady (1N) → Alleppey (1N)\nPackage Includes: Accommodation for a couple with Breakfast A/c Indica transportation with all Sightseeing Toll & Parking', 6, 5),
(13, 'Nature\'s Bounty and Leisure in Kerala-Deluxe', 'Kerla', 24000, 'Family', 'Day 1Cochin-Munnar\n\nPick up from Cochin Airport/Railway station proceed to Munnar.\nKerala is blessed with amazing beauty of nature and it can be seen and you will enjoy all throughout your journey.\nOn the way visit the water falls of Valara and Cheeyappara.\nOvernight Stay at  the  Resort.\n \nDay 2Munnar\n\nLocal sight seeing (Mattupetty Dam, Tea Plantation)\nYou are now to experience the beauty of the green paradise on your Munnar vacations.\nSightseeing Munnar - visit Rajamalai to see the Nilgiri Tahrs,Mattupetty where boating facility is available.\nThe Echo-point , Kundala lake for boating in Shikara type of boats.\nTop Station - The border\n\nDay 3Munnar-Thekkady\n\nAfter breakfast drive from Munnar to Thekkady. Check in at the hotel/resort.\nAfternoon sightseeing in surrounding places of Thekkady.\nVisit spice market and boat cruise at Periyar lake.\nOvernight stay at hotel.\n\nDay 4Thekkady-Alleppey\n\nAfter breakfast drive from Thekkady to Alleppey.\nOn arrival at Alleppey board the house boat.\nCruise through the backwaters and inland waterways of Alleppey.\nOvernight on board the house boat anchored in the middle of the backwaters.\n \n\nDay 5Alleppey-Cochin\n\nOn 5th day after Break fast check out from the Houseboat\nTransfer to Airport/Railway Station.', '1573058314-packageImage.jpg', '2019-11-06 11:08:07', '2019-11-06 11:28:34', 'Package Includes:\n1.Accommodation for a couple in Specified Resort with break fast.\n2.Houseboat with all meals.\n3.Flower bed in Munnar Honeymoon cake and Candle light Dinner in Houseboat\n6.A/c Indica for pick up, transfer and sight seeing.\n7.Toll, parking and driver batha\n\nPackage Excludes:\n1.Entry tickets wherever necessary.', 5, 4),
(14, 'Andaman Honeymoon Tour With Dinner Cruise', 'Andaman and Nicobar Islands', 36000, 'Couple', 'About the Destination:\n\nIf you are wondering why you should pick Andamans for your honeymoon, then you are slightly mistaken as the question should be WHY NOT? Packed with scenic wonders, crystal clear waters, coconut grooves, and a plush of beach resorts, this place is just perfect to spend quality time with your beloved.\n\nAbout the tour:\n\nOn this romantic tour, you will be covering the major attractions of Andamans, and can also relish in the soothing vibes of the quarter. From the ever fantastic Carbyn\'s Cove beach to the splendid Light and sound show at Cellular Jail, here you can have it all. Also, you will be touring Havelock and the famous Radhanagar Beach followed by Kalapathar Beach.\n\nWhy Book this package?\n\nThis package adds a new dimension to your love life, with a unique dining experience at the Cruise, which is inclusive in the cost of the package.', '1573059465-packageImage.jpg', '2019-11-06 11:17:05', '2019-11-06 11:27:45', 'Sightseeing\nDaily breakfast at respective hotel.\nCruise Dinner\nFlower Bed Decoration\nAll entry tickets of Boat/Ferry Charges & Forest Area Permit Charges.', 4, 3),
(15, 'Andaman Backpacker Group Tour', 'Andaman and Nicobar Islands', 42000, 'Group', 'A visit to the surreal Andaman and Nicobar Island is a lifetime experience which is sure to stay with you forever. The quaint landscape, crystal clear water and the mouth-watering cuisine, make your trip worth every penny spent.\n\nThis gorgeous island has some of the most beautiful beaches in the world, which makes it a must visit place in the World. From the beaches in Port Blair to the marine life in Havelock Island, Andaman and Nicobar have everything for each kind of traveller. Hence, go through the guide for all the information about your trip to this stunning place.', '1573058877-packageImage.jpg', '2019-11-06 11:27:22', '2019-11-06 11:27:22', 'Sightseeing\nAssistance at the time of arrival and departure.\nTour co-coordinator at all points.\nAll Entry tickets, boat tickets.\nEntry permits and Govt. entry permissions wherever required.', 4, 3),
(16, 'Eastern Delight', 'North East', 52999, 'Group', 'This amazing North East tour package takes you on a ride through some of the most beautiful and mystical lands of the country of India. Lying in the lap of the Himalayas, North East India is surely gifted with so many aspects of beauty that it has emerged out to be a dazzling and mesmerizing choice of a destination, and is a highly coveted place to go to. \n\nYou can expect snow-covered mountains, green-clad hill slopes, waterfalls cascading down and shooting rainbows from them, tribes and tribal people going by their daily lives and living in perfect harmony with each other.\n\nThat is the lesson that the 7 sister states of North East India send out, to live in harmony with your surroundings. And to show you how exactly that happens, this North East package takes you on an amazing tour. The northeast is the home to some of the best and must visit places in India, and that is what you will be witnessing here.', '1573062465-packageImage.jpg', '2019-11-06 12:17:09', '2019-11-06 12:17:45', 'All transport by a dedicated vehicle\r\nAccommodation on twin sharing basis for thirteen nights.\r\nDaily breakfast at hotel.\r\nRestricted Area Permit for entering into Arunachal Pradesh.\r\nEnglish speaking accompanying tour guide throughout the tour.\r\nOne nature walk and one river safari in Nameri National park with park entrances.\r\nOne elephant safari and one jeep safari in Kaziranga National Park with park entrances etc.', 14, 13),
(17, 'Jim Corbett: Know Your Forests', 'Uttarakhand', 36300, 'Group', '\'Know Your Forests - Awesomeness Multiplied\' initiative has a very genuine cause of letting the public be aware of the wildlife collection India has and the critical rationality everyone should put forth in order to preserve the wealth of our forests intact which would in turn affect our lives also.\nA Jim Corbett National Park safari in summer is a four day programme inviting those who wish to spend some quality time amid the immaculate nature during this summer holidays. A perfect destination for families, kids and friends.\nYou have to do just one thing that arrive in Ramnagar and get picked up from there around 06:00 AM. Then your tour kick starts. \nOn the next four days, you will indulge in morning as well as afternoon safaris inside the park to spot the numerous species of wildlife animals, roaming around, may be alone or with their close ones in their natural habitat.\nThe park is rich with green grasslands and great thickets which definitely soothe any heart. Spend ample time in the wilderness and know more about the uncanny behaviour of the forests in detail.\nThe package provides you with meals, accommodation at resorts and guided safaris in the park on all four days. \n\nThe morning safaris start around 05:30 and afternoon safaris will start around 02:00 PM.\nResort check in time is 11:30 AM and check out time is 11:00 AM', '1573063215-packageImage.jpg', '2019-11-06 12:25:44', '2019-11-06 12:30:15', 'National Park safari\ndays with 01 gypsy at complete disposal\njungle safaris - park entry fees, guide fees, vehicle charges\nAn experienced naturalist as the tour facilitator', 4, 3),
(20, 'Adventure Camp In Manali', 'Himachal Pradesh', 32999, 'Group', 'Manali is a heaven for people who love adventure and nature. Nestled in one of the most beautiful valleys in the Himalayas, this city is called the cultural hub of Himachal Pradesh, and rightfully so. Home to many adventures, one of the best things to do in Manali sure has to be river rafting, followed by camping by the riverside.\nThis campsite in Manali, adjacent to the River Beas and set in apple orchards, is one of the best places to set up your tent when in Manali, to experience a perfect combination of an amazing stay and rafting. Complete with all the features and amenities like washrooms, comfortable beds and pillows, fresh linen, electricity, and clean water, the campsite is just 50 steps away from the river, so when you sleep in the night, you will be accompanied by the sound of the flowing river. Enjoy here with your friends and family and experience the thrill of rafting with the calm of living amidst nature.', '1573067600-packageImage.jpg', '2019-11-06 13:40:38', '2019-11-06 13:54:49', 'Rafting, Camping\nCommando Net\nBurma Bridge\nRiver Crossing\nRock Climbing\nTrekking, Fishing\nBonfire', 5, 4),
(21, 'Kaziranga Wildlife Trip', 'North East', 26875, 'Group', '- Home to some of the most stunning natural vistas in the country, Shillong is aptly known as the ‘Scotland of the North East’. With breathtaking waterfalls, limestone caves, wildlife sanctuaries, and amazing trekking trails, a visit here is sure to leave one rejuvenated and relaxed. \n\n- On this journey, you will be going to the major attractions of Shillong, Cherapunjee, Mawlynnong, Dawki, and Kaziranga. In Sikkim, you will visit attractions like Umiam Lake, Nohkalikai falls, Mawsmai cave, Seven sisters’ fall, Shillong peak, Living Root Bridges, Umngot River, Lady Hydari Park, and many other amazing attractions.\n\n- The Kaziranga leg of the journey will allow for adventure and some fun activities that are sure to get the adrenaline pumping. The national park which is well-known for being the home to the famous One-Horned Rhinoceros, Kaziranga is famous for having the kind of rich biodiversity that you cannot find anywhere else. Gifted by floodplains of the river Brahmaputra, the place was once declared to have the highest density of tigers in the world. \n\n- Enjoy the time that you will get to enjoy the majesty of these days spent exploring this amazing Meghalaya tour package with a unique wildlife experience.', '1573068289-packageImage.jpg', '2019-11-06 13:54:03', '2019-11-06 13:54:03', 'Sightseeing\nTrekking,\nExcursion,\nJeep Ride\nBreakfast on all mornings of the tour', 7, 6);

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
(10, 16, '15730625900-packageImage.jpg', '15730625901-packageImage.jpg', '15730625902-packageImage.jpg', '15730625903-packageImage.jpg', '15730625904-packageImage.jpg', '2019-11-06 12:19:50', '2019-11-06 12:19:50'),
(11, 17, '15730633400-packageImage.jpg', '15730633401-packageImage.jpg', '15730633402-packageImage.jpg', '15730633403-packageImage.jpg', '15730633404-packageImage.jpg', '2019-11-06 12:32:20', '2019-11-06 12:32:20'),
(12, 12, '15730642870-packageImage.jpg', '15730642871-packageImage.jpg', '15730642872-packageImage.jpg', '15730642873-packageImage.jpg', '15730642874-packageImage.jpg', '2019-11-06 12:48:07', '2019-11-06 12:48:07'),
(13, 13, '15730644980-packageImage.jpg', '15730644981-packageImage.jpg', '15730644982-packageImage.jpg', '15730644983-packageImage.jpg', '15730644984-packageImage.jpg', '2019-11-06 12:51:38', '2019-11-06 12:51:38'),
(14, 15, '15730648820-packageImage.jpg', '15730648821-packageImage.jpg', '15730648822-packageImage.jpg', '15730648823-packageImage.jpg', '15730648824-packageImage.jpg', '2019-11-06 12:58:02', '2019-11-06 12:58:02'),
(15, 14, '15730654310-packageImage.jpg', '15730654311-packageImage.webp', '15730654312-packageImage.jpg', '15730654313-packageImage.jpg', '15730654314-packageImage.jpeg', '2019-11-06 13:07:11', '2019-11-06 13:07:11'),
(16, 20, '15730678640-packageImage.jpg', '15730678641-packageImage.jpg', '15730678642-packageImage.jpg', '15730678643-packageImage.jpg', '15730678644-packageImage.jpg', '2019-11-06 13:47:44', '2019-11-06 13:47:44');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `user_id`, `author`, `package_name`, `experience`, `tour_date`, `image_1`, `likes`, `status`, `created_at`, `updated_at`, `city`) VALUES
(8, 6, 'Akash', 'Nature\'s Bounty and Leisure in Kerala-Deluxe', 'Hi Friends,\nI would like to share my experience of visiting Kerala.\nI had visited Kerala with my family of 6 in August. Weather was pleasant however my whole trip was a failure to some extent all thanks to my driver.\nWe visited Kochi- Munnar- Thekkaddy- Allappeye-Kovalam- Kochi.. in that order.\nThe most important thing while travelling in a foreign city/state is the mode of transport and your driver. Ours was not at all good. when u plan to make a trip make sure you get a good driver who is available at all times. Ours refused to work after 7pm stating his shift is from 9-7. He never informed us about any good places or restaurants we can have good food. His only job was to drive from one place to another. Reused to pick us up from drop points and we had to walk all the way to parking everywhere.\nBesides that if you are a vegetarian you are in big problem as you will find next to no restaurant that would provide you good quality veg meal. In Munnar you can eat in Sravana Bhawan and in Kochi Sardarji ka Dhaba is good and in Thekkady Coffee routes provides good food however you will need to wait for . minutes for food to be prepared. Rest everywhere food was not good.\nIn munnar you can stay in deepwoods resorts which is good 30 m in away from Munnar but it is worth it. Again you will not get good food here.\nIn Thekkady you can stay in Coffee Routes . Good hotel . A little away form main city but good property. Good food.\nIf you plan to stay in houseboats in Allappeye and you have money to waste than you can book them otherwise you can skip them. You wont be missing anything.\nIn Kovalam, we stayed at Soma palmshore that has a private beach which is only open from December to march. Here the restaurant staff is excellent. no complaints. they will prepare food the way you like. They aim to please. it is a heritage Ayurveda spa. Really good. But i strongly suggest don\'t go into the beach. Water is not good. Too salty. Me and my SIL and nephew all got rashes and got horribly tanned by been in that water for 10 min only.\nOver all my and family\'s experience of Kerala was not good. Kerala is way overrated.', '2019-11-26', '1573070946-StoriesImage.jpg', 4, 'Review', '2019-11-06 14:39:06', '2019-11-06 14:39:06', 'Kerla'),
(10, 6, 'Anand', 'Adventure Camp In Manali', 'Hi,\nI m sharing my experience of my trip to Himachal.\nI m from mumbai and we were three of them. Me ,my sister and my mother. We had pre booked our hotels and transportation online. We had planned a budget trip to manali and dharamshala from mumbai via delhi.\nWe had book garib rath 3 tier for our travel from mumbai to delhi. It could have been better if we atleast booked two tier. The train is full ac but hawkers keep on roaming even at 2 am in the night. that is why ppl do not prefer these kind of trains. We also had pre booked for our tour in delhi. So we had a safe and sound tour in delhi comprising of Qutub minar,Akshardham and India Gate. We boarded our train for Delhi from borivali on 23-Oct-2015 at 1.15 pm and reached delhi on 24-Oct-2015 at 12:30 pm, after which we did our delhi local sightseeing and then boarded hptdc bus for manali on 24Oct-2015 at 7.30 pm. The restaurant very well knew the driver which seems that the driver might be getting commission for halting there. The food was not that great and there were not much options as well.  You can go around mall road if you wish to do some shopping.. Second day i.e 26-Oct we headed early morning at 8 am for rohtang and solang in the cab provided by ashtavinayak again.This was a different driver. Since there was snowfall happening we couldnt go to rohtang pass,gulaba,marhi,rani nala and places leading to rohtang. So my 1500 rs which i had paid extra for rohtang permit/rohtang vehicle went waste. I really donno if rohtang and other places were closed as most of the vehicles were stranded on the road where we were dropped. We had to rely on whatever the driver said. we played with snow and then left for solang where we had cable ride for 500 per person. Then we headed back to hotel as rest of the places couldnt be covered since the way to rothang were closed. Next day i.e 26-Oct we headed to manikaran. Again we had a different car and a different driver. We travelled all the way to manikaran for 2.5 hrs and disappointed to see only a gurudwara which was not neatly maintained. It had a hot water spring also which was again not that great or maintained. We returned from manikaran and on the way wanted to attend the kullu dasshera festvial but kullu was really over crowded and there were police barricades everywhere. Police didnt allow cars in kullu festival area and hence the walk to kullu festival market was of 3 km which led us to drop the market point. Next day i.e 28-Oct we left for dharamshala with the same driver and same car finally. This was a 6 hrs journey. On the way we did visit 2 to 3 temples as the driver insisted us to visit the same. We also visited a tea garden on the way to dharamshala. We had booked sterling dharamshala.Again reviews for the same have been posted seperately. Ashtavinayak travels charged us a whooping total of 20000 bucks for the entire trip from manali to delhi. Please ensure routes and iternary before u start ur long journeys as at times the drivers are not aware of the routes or they prefer longer routes to avoid tolls/taxes etc which are actually covered in the amount u pay.', '2019-12-25', '1573071382-StoriesImage.jpg', 2, 'Review', '2019-11-06 14:46:22', '2019-11-06 14:46:22', 'Himachal Pradesh'),
(11, 6, 'Akahds Majascfs', 'Adventure Camp In Manali', 'Hi,\r\nI m sharing my experience of my trip to Himachal.\r\nI m from mumbai and we were three of them. Me ,my sister and my mother. We had pre booked our hotels and transportation online. We had planned a budget trip to manali and dharamshala from mumbai via delhi.\r\nWe had book garib rath 3 tier for our travel from mumbai to delhi. It could have been better if we atleast booked two tier. The train is full ac but hawkers keep on roaming even at 2 am in the night. that is why ppl do not prefer these kind of trains. We also had pre booked for our tour in delhi. So we had a safe and sound tour in delhi comprising of Qutub minar,Akshardham and India Gate. We boarded our train for Delhi from borivali on 23-Oct-2015 at 1.15 pm and reached delhi on 24-Oct-2015 at 12:30 pm, after which we did our delhi local sightseeing and then boarded hptdc bus for manali on 24Oct-2015 at 7.30 pm. The restaurant very well knew the driver which seems that the driver might be getting commission for halting there. The food was not that great and there were not much options as well.  You can go around mall road if you wish to do some shopping.. Second day i.e 26-Oct we headed early morning at 8 am for rohtang and solang in the cab provided by ashtavinayak again.This was a different driver. Since there was snowfall happening we couldnt go to rohtang pass,gulaba,marhi,rani nala and places leading to rohtang. So my 1500 rs which i had paid extra for rohtang permit/rohtang vehicle went waste. I really donno if rohtang and other places were closed as most of the vehicles were stranded on the road where we were dropped. We had to rely on whatever the driver said. we played with snow and then left for solang where we had cable ride for 500 per person. Then we headed back to hotel as rest of the places couldnt be covered since the way to rothang were closed. Next day i.e 26-Oct we headed to manikaran. Again we had a different car and a different driver. We travelled all the way to manikaran for 2.5 hrs and disappointed to see only a gurudwara which was not neatly maintained. It had a hot water spring also which was again not that great or maintained. We returned from manikaran and on the way wanted to attend the kullu dasshera festvial but kullu was really over crowded and there were police barricades everywhere. Police didnt allow cars in kullu festival area and hence the walk to kullu festival market was of 3 km which led us to drop the market point. Next day i.e 28-Oct we left for dharamshala with the same driver and same car finally. This was a 6 hrs journey. On the way we did visit 2 to 3 temples as the driver insisted us to visit the same. We also visited a tea garden on the way to dharamshala. We had booked sterling dharamshala.Again reviews for the same have been posted seperately. Ashtavinayak travels charged us a whooping total of 20000 bucks for the entire trip from manali to delhi. Please ensure routes and iternary before u start ur long journeys as at times the drivers are not aware of the routes or they prefer longer routes to avoid tolls/taxes etc which are actually covered in the amount u pay.', '2019-12-25', '1573071382-StoriesImage.jpg', 2, 'Review', '2019-11-06 14:46:22', '2019-11-06 14:46:22', 'Himachal Pradesh');

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

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(24, 'mauryaanand10@gmail.com', NULL, NULL),
(25, '1705018@kiit.ac.in', '2019-11-06 15:40:07', '2019-11-06 15:40:07'),
(26, '1705004@kiit.ac.in', '2019-11-06 15:40:30', '2019-11-06 15:40:30');

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
(3, 'Anand Maurya', '1705018@kiit.ac.in', 'anand-10', '1234567890', '$2y$10$ethumDNUeesurUVE8M.FX.Tj9TERblzMRaWwKOuPNKCis4QQqkp5G', '1570290024-AdminProfileImage.jpg', NULL, '2019-10-05 11:10:20', '2019-10-05 11:10:20'),
(4, 'Amisha Patel', '1705016@kiit.ac.in', 'amisha-16', '1234567890', '$2y$10$sRwYKTBjUH/QK.2plapiK.yz/mi8t.7YE0gdLFQf1kLRQ3htCntlO', '1573072438-AdminProfileImage.jpg', NULL, '2019-10-05 12:03:43', '2019-10-05 12:03:43'),
(5, 'Abhirup Dutta', '1705004@kiit.ac.in', 'abhirup-17', '1234567890', '$2y$10$Vp.Nr1QexTtz9FD4qzxtR.PjcXX3GgvoRw3RSkFMgWM4cizbia8n6', '1573072630-AdminProfileImage.png', NULL, '2019-10-05 12:06:39', '2019-10-05 12:06:39'),
(6, 'Akash Pandey', '1705013@kiit.ac.in', 'Kakashi13', '9556055615', '$2y$10$l538TGd1bqb3P3y9mhJ4uuVPocGSml/kXPUW1yNEJPLi1pbl3RMuW', '1573072373-AdminProfileImage.png', NULL, '2019-11-06 13:12:37', '2019-11-06 13:12:37'),
(7, 'Saumya Goyal', '1705071@kiit.ac.in', 'saumya-17', '970262581', '', '1573072682-AdminProfileImage.jpg', NULL, NULL, NULL);

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
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `add_likes`
--
ALTER TABLE `add_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `package_images`
--
ALTER TABLE `package_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
