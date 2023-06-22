-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 02:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Paramparalandmarks`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug_name` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug_name`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Bunglows', 'bunglows', '202306-1769519584.jpg', '2022-01-08 19:09:46', '2023-06-18 07:12:39'),
(3, 'Residential', 'residential', '202306-1703663668.jpg', '2022-01-21 23:46:49', '2023-06-18 07:12:55'),
(9, 'Commercial', 'commercial', '202306-2097213500.jpg', '2022-04-07 04:10:45', '2023-06-18 07:13:10'),
(10, 'Farmhouse', 'farmhouse', '202306-938144331.jpg', '2022-04-07 04:13:26', '2023-06-18 07:12:27'),
(11, 'Shops', 'shops', '202306-1137416553.jpg', '2022-04-07 04:15:20', '2023-06-18 07:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(191) NOT NULL,
  `slug_city` varchar(191) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '1 = active, 0 = disabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `slug_city`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Kathmandu', 'kathmandu', '1', '2023-06-18 22:03:30', '2023-06-18 22:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2, 'home_meta', 'Parampara-Landmarks', '2022-03-11 22:51:08', '2023-06-18 09:28:57'),
(3, 'home_content', '<h2>Welcome to <strong>Parampara-Landmarks</strong>,</h2>\r\n\r\n<h2>Welcome to a world of possibilities. Explore, dream, and discover your perfect property with us. Welcome to our family.</h2>', '2022-03-11 22:51:08', '2023-06-18 09:28:57'),
(4, 'about_title', 'About Us', '2022-03-11 22:51:08', '2022-03-11 23:13:56'),
(5, 'about_meta', 'Parampara-Landmarks', '2022-03-11 22:51:08', '2023-06-18 09:28:57'),
(6, 'about_content', '<h1>About Us</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Who are we?</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Meet the trailblazing young entrepreneur who is making waves in the real estate field. With passion, drive, and a fresh perspective, they are redefining the industry one successful venture at a time. Armed with innovative strategies, a keen eye for emerging trends, and a deep understanding of market dynamics, this enterprising individual is carving a path towards success. Their unwavering commitment to excellence, coupled with their natural flair for negotiation and problem-solving, sets them apart in a competitive landscape. Whether it&#39;s connecting buyers with their dream homes or identifying lucrative investment opportunities, this young entrepreneur is paving the way for a new era of real estate. With an unwavering dedication to delivering exceptional service and a relentless pursuit of excellence, they are shaping the future of the industry and leaving an indelible mark on the real estate world.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<h2>Why choose us?</h2>\r\n\r\n<p>At Parampara-Landmarks, we go beyond the traditional approach. We leverage cutting-edge technology, advanced marketing techniques, and a vast network of industry connections to provide you with a seamless and efficient experience. Whether you are a first-time homebuyer, a seasoned investor, or a seller looking to maximize the value of your property, we have the tools, resources, and dedication to guide you every step of the way.</p>\r\n\r\n<hr />\r\n<h2>What we offer?</h2>\r\n\r\n<p>At Parampara-Landmarks, we offer a comprehensive range of services to cater to all your real estate needs. Our commitment is to provide you with a seamless and rewarding experience throughout your real estate journey. Here&#39;s what we offer:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Buying and Selling: Whether you are looking to buy your dream home or sell your property for the best possible price, we have the expertise to guide you through the entire process. We assist you in finding the perfect property that aligns with your needs and negotiate on your behalf to ensure a smooth transaction.</p>\r\n	</li>\r\n	<li>\r\n	<p>Investment Opportunities: For investors seeking lucrative opportunities, we provide in-depth market analysis and guidance to help you make informed decisions. Our team identifies high-potential investment properties and offers valuable insights to maximize returns on your investment.</p>\r\n	</li>\r\n	<li>\r\n	<p>Property Valuation: Accurate property valuation is crucial for both buyers and sellers. We offer professional appraisal services to determine the fair market value of your property, providing you with an accurate assessment based on market conditions and property characteristics.</p>\r\n	</li>\r\n	<li>\r\n	<p>Property Management: If you are a landlord or property owner, our property management services are designed to relieve you of the day-to-day responsibilities. We handle tenant screening, rent collection, property maintenance, and more, ensuring your investment is well taken care of.</p>\r\n	</li>\r\n	<li>\r\n	<p>Market Insights and Research: Stay ahead of the curve with our comprehensive market insights and research reports. We keep you informed about the latest trends, emerging opportunities, and regulatory changes, empowering you to make informed decisions.</p>\r\n	</li>\r\n	<li>\r\n	<p>Marketing and Advertising: We leverage cutting-edge marketing techniques to showcase your property to a wide audience. From professional photography and virtual tours to targeted online and offline advertising, we ensure maximum exposure for your listing.</p>\r\n	</li>\r\n	<li>\r\n	<p>Financing Assistance: Navigating the complexities of real estate financing can be daunting. We provide guidance and connect you with trusted financial partners who offer competitive mortgage rates and personalized solutions to suit your needs.</p>\r\n	</li>\r\n	<li>\r\n	<p>Relocation Services: If you are moving to a new area, we offer comprehensive relocation services to help you settle in smoothly. From providing local area information to assisting with utility connections and school enrollment, we ensure a hassle-free transition.</p>\r\n	</li>\r\n	<li>\r\n	<p>Client Support: At [Your Real Estate Company Name], we prioritize exceptional customer service. Our dedicated team is always available to address your questions, concerns, and provide personalized assistance throughout your real estate journey.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>', '2022-03-11 22:51:08', '2023-06-18 09:28:57'),
(7, 'faq_title', 'Frequent Questions', '2022-03-11 22:51:08', '2022-04-01 04:40:20'),
(8, 'faq_meta', 'frequenty asked quetions', '2022-03-11 22:51:08', '2023-06-18 09:28:57'),
(9, 'faq_content', '<h1>FAQs</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>How can we list properties on Parampara-Landmarks?</h2>\r\n\r\n<ul>\r\n	<li>Quisque pretium ex convallis bibendum dictum.</li>\r\n	<li>Maecenas sit amet elit ultrices, viverra urna id, posuere ligula.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>Can we pay rent from this platform?</h2>\r\n\r\n<ul>\r\n	<li>Duis eu massa non risus imperdiet iaculis eu in lacus.</li>\r\n	<li>Curabitur dapibus sem a rutrum malesuada.</li>\r\n	<li>Praesent efficitur mauris vel lorem ultrices eleifend.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>Are properties on this website are genuine?</h2>\r\n\r\n<ul>\r\n	<li>Fusce ac leo molestie, aliquam purus in, consectetur tellus.</li>\r\n	<li>Maecenas non quam ac lectus pharetra ornare.</li>\r\n</ul>', '2022-03-11 22:51:08', '2023-06-18 09:28:57'),
(10, 'terms_title', 'Terms & Conditions', '2022-03-11 22:51:08', '2022-03-11 23:20:12'),
(11, 'terms_meta', 'Parampara terms & conditions', '2022-03-11 22:51:08', '2023-06-18 09:28:57'),
(12, 'terms_content', '<h1>Terms</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Sed id laoreet purus. In in libero quis sem gravida posuere quis quis augue. Sed sit amet enim id erat elementum ultrices. Mauris sed sagittis ante. Mauris ut nunc iaculis, maximus nulla quis, porta diam. Quisque tempus, arcu vel imperdiet auctor, nibh nisl faucibus arcu, et accumsan est justo scelerisque erat. Ut facilisis erat turpis, quis suscipit orci tincidunt eget. Nulla nibh mauris, dapibus non mollis at, porta ut arcu. Donec porta turpis velit, vitae iaculis ligula iaculis at. Aenean vel ex auctor, mattis urna sed, hendrerit enim.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Vivamus convallis felis non justo sollicitudin scelerisque. Pellentesque tincidunt iaculis neque, eu iaculis ex gravida eu. Pellentesque nunc diam, dignissim at dui vel, gravida venenatis mi. Mauris eu euismod eros, et mollis felis. Duis egestas pharetra est, a hendrerit metus bibendum eu. Morbi et rhoncus mi. Ut congue elementum purus vitae lobortis. Duis sed lectus sit amet tellus tincidunt cursus vitae maximus libero. Phasellus rhoncus elit a commodo lacinia.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Maecenas ut iaculis metus, et venenatis felis. Donec a augue non ante finibus vulputate ut vitae lectus. Fusce rhoncus purus sit amet sagittis commodo. Sed at efficitur purus. Etiam eros augue, sollicitudin a laoreet at, mattis tempor ex. Proin molestie nisl nec augue malesuada, eu semper quam mattis. Suspendisse dictum nisi leo. Sed pulvinar lacus sit amet ipsum pretium feugiat. Donec non erat tempus, posuere eros vel, finibus dolor. Praesent odio lectus, cursus at rhoncus sed, vehicula id sem. Morbi pharetra dapibus diam, quis rutrum neque lobortis pharetra. Cras pretium, libero eu volutpat porta, odio odio accumsan metus, ac tempus eros leo sodales urna. Sed at orci id quam aliquet imperdiet. In imperdiet non mauris vel pellentesque. Aliquam ut dolor consectetur, dignissim orci et, accumsan purus.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>Conditions</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Mauris tristique arcu rhoncus sapien molestie venenatis. Donec posuere dictum ex, eu imperdiet lacus maximus in. Etiam blandit nibh id aliquet porttitor. Vestibulum non nunc dignissim, porta est nec, porttitor sapien. Integer convallis erat eget ipsum dignissim, ac semper augue lacinia. Quisque sit amet ultrices purus. Mauris vestibulum tortor in urna bibendum, eu scelerisque felis sollicitudin. Phasellus molestie tellus id pulvinar feugiat. Vivamus eleifend pellentesque quam vel iaculis.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Nulla mollis nisi tellus, quis tempus turpis finibus sed. Etiam tempor nec erat egestas aliquet. Donec sed nunc magna. In tempus varius ligula, sed elementum metus volutpat et. Suspendisse potenti. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed purus tortor, volutpat eu faucibus vitae, ornare id quam.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Aenean dignissim quam sit amet neque fermentum suscipit. Nunc mattis sapien sit amet ornare commodo. Quisque vel purus risus. Etiam sit amet mollis erat, ut hendrerit dolor. Praesent vehicula urna odio, ut vestibulum metus rutrum sit amet. Proin nibh tortor, efficitur eget malesuada nec, aliquam egestas turpis. Cras congue viverra consectetur. Vivamus eu ipsum sollicitudin, scelerisque orci eu, porta orci. Praesent eu est aliquet, semper mauris non, dignissim augue. Quisque tempor consectetur felis nec dapibus.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', '2022-03-11 22:51:08', '2022-03-11 23:23:33'),
(13, 'home_image', NULL, '2022-03-11 22:58:29', '2023-06-18 09:40:14'),
(14, 'about_image', '202306-31734465.png', '2022-03-11 23:13:56', '2023-06-18 09:28:57'),
(15, 'home_title', 'Welcome to Parampara-Landmarks', '2022-08-05 18:34:13', '2023-06-18 09:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faci` varchar(191) NOT NULL,
  `slug_faci` varchar(191) NOT NULL,
  `fa` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `faci`, `slug_faci`, `fa`, `color`, `created_at`, `updated_at`) VALUES
(3, 'Swimming Pool', 'swimming-pool', '<i class=\"fas fa-swimming-pool\"></i>', 'primary', '2022-01-07 04:09:27', '2022-01-29 22:00:00'),
(4, 'Gym', 'gym', '<i class=\"fas fa-dumbbell\"></i>', 'dark', '2022-01-07 04:17:25', '2022-03-08 04:19:54'),
(5, 'Children Park', 'children-park', '<i class=\"fas fa-child\"></i>', 'warning', '2022-01-07 04:17:36', '2022-01-29 22:00:24'),
(6, 'Garden', 'garden', '<i class=\"fas fa-leaf\"></i>', 'success', '2022-01-29 19:48:44', '2022-01-29 22:00:30'),
(7, 'Party Plot', 'party-plot', '<i class=\"fas fa-user-friends\"></i>', 'info', '2022-01-29 20:02:01', '2022-01-29 22:01:20'),
(10, 'Wifi', 'wifi', '<i class=\"fas fa-wifi\"></i>', 'primary', '2022-04-07 05:12:10', '2022-04-07 05:12:10'),
(11, 'Shops', 'shops', '<i class=\"fas fa-shopping-bag\"></i>', 'secondary', '2022-04-07 05:13:21', '2022-04-07 05:13:21'),
(12, 'Nurcery', 'nurcery', '<i class=\"fas fa-child\"></i>', 'info', '2022-04-07 05:14:45', '2022-04-07 05:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallaries`
--

CREATE TABLE `gallaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` bigint(20) NOT NULL,
  `gal_image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_user_data_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_06_06_063114_create_properties_table', 1),
(7, '2023_06_06_091034_create_cities_table', 1),
(8, '2023_06_06_123225_create_categories_table', 1),
(9, '2023_06_06_144759_create_facilities_table', 1),
(10, '2023_06_08_040603_create_site_settings_table', 1),
(11, '2023_06_08_113517_create_cms_table', 1),
(12, '2023_06_08_134358_create_reviews_table', 1),
(13, '2023_06_08_150349_create_gallaries_table', 1),
(14, '2023_06_16_142312_create_slider_table', 1),
(15, '2023_06_21_131507_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 1,
  `title` varchar(191) NOT NULL,
  `title_slug` varchar(191) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `purpose` enum('sale','rent','pg') NOT NULL,
  `category` bigint(20) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `fe_image` varchar(191) DEFAULT NULL,
  `faci` varchar(191) DEFAULT NULL,
  `rooms` int(11) NOT NULL,
  `bathrooms` int(11) NOT NULL,
  `city` bigint(20) NOT NULL,
  `address` varchar(191) NOT NULL,
  `cont_ph` varchar(191) DEFAULT NULL,
  `cont_em` varchar(191) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `floorplan` varchar(191) DEFAULT NULL,
  `map` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `public`, `title`, `title_slug`, `price`, `featured`, `purpose`, `category`, `image`, `fe_image`, `faci`, `rooms`, `bathrooms`, `city`, `address`, `cont_ph`, `cont_em`, `area`, `description`, `video`, `floorplan`, `map`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', 'test', 123.00, 1, 'sale', 3, '202306-890689641.jpg', '202306-1773659690.jpg', '[\"children-park\",\"garden\"]', 1, 1, 5, 'Kalanki', '9843929033', 'kattelishor10@gmail.com', 700, NULL, NULL, NULL, 'https://goo.gl/maps/5NjSCZDo5xwuPD11A', '2023-06-20 09:59:39', '2023-06-20 09:59:39'),
(2, 0, 'Hello', 'hello', 111.00, 0, 'sale', 9, '202306-1115933429.jpg', '202306-997644784.png', '[\"swimming-pool\",\"gym\",\"children-park\",\"garden\",\"party-plot\",\"wifi\",\"shops\",\"nurcery\"]', 1, 1, 5, 'Balkot', '9843929033', 'sanskar@gmail.com', 700, NULL, NULL, NULL, NULL, '2023-06-20 20:23:37', '2023-06-20 20:24:56');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` bigint(20) NOT NULL,
  `pro_id` bigint(20) NOT NULL,
  `review` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `u_id`, `pro_id`, `review`, `created_at`, `updated_at`) VALUES
(33, 3, 1, 'Nice', '2023-06-20 10:00:20', '2023-06-20 10:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_title', 'Parampara-Landmarks', '2022-01-21 03:28:22', '2023-06-18 05:59:27'),
(2, 'brand_title', 'Parampara-Landmarks', '2022-01-21 03:28:22', '2023-06-18 05:59:27'),
(3, 'meta_discription', 'Parampara-Landmarks', '2022-01-21 03:28:22', '2023-06-18 05:59:27'),
(4, 'footer_content', '© 2023 Parampara-Landmarks. All rights reserved.', '2022-01-21 03:28:22', '2023-06-18 05:59:27'),
(5, 'site_email', 'Parampara-Landmarks@gmail.com', '2022-01-21 03:28:22', '2023-06-18 05:59:27'),
(6, 'site_contact', '9843929033', '2022-01-21 03:28:22', '2023-06-18 05:59:27'),
(7, 'facebook_url', 'https://www.facebook.com/', '2022-01-21 03:28:22', '2022-01-21 03:59:29'),
(8, 'instagram_url', 'https://www,instagram.com/', '2022-01-21 03:28:22', '2022-01-21 03:59:29'),
(9, 'youtube_url', 'https://www.youtube.com/', '2022-01-21 03:28:22', '2022-01-21 03:46:33'),
(10, 'twitter_url', 'https://www.twitter.com/', '2022-01-21 03:28:22', '2022-03-05 18:55:10'),
(11, 'logo_image', '202306-934276238.png', '2022-01-21 03:38:08', '2023-06-18 05:59:27');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug_name` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `slug_name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Manager', 'manager', '202306-259904457.jpg', '2023-06-19 08:20:14', '2023-06-19 08:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `type` enum('U','R','A') NOT NULL COMMENT 'R=Root, A=Admin, U=User',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kattel Ishor', 'Kattelishor10@gmail.com', '9843929033', NULL, '$2y$10$9rINxmiiZdiPLNvc61SO3.EWxHWEAvukGpD.7CyHI.qP.Lw.jTova', 'R', NULL, '2023-06-20 09:41:25', '2023-06-20 09:41:25'),
(2, 'Manager', 'manager@gmail.com', '9843899991', NULL, '$2y$10$NWV5WG1y/nb8JBFXLHQL4.Km.uAwrPkps/hfx/wgpO54MSCHD968a', 'A', NULL, '2023-06-20 09:44:32', '2023-06-20 09:52:55'),
(3, 'user', 'user@gmail.com', '9818431005', NULL, '$2y$10$WRqKJuaAs5DwEzkkuDADGe0EPO0iNyiC4XY72z4SBWat346FB/FUC', 'U', NULL, '2023-06-20 09:57:36', '2023-06-20 09:57:36'),
(4, 'sanskar', 'sanskar@gmail.com', '9876543211', NULL, '$2y$10$DO9t0JkXa7MxbjzCUaGf.O7RKtjxlaXFlntA6/UOWyJsW6H5ejdki', 'A', NULL, '2023-06-20 20:00:41', '2023-06-20 20:01:30'),
(5, 'Admin', 'kattelishor11@gmail.com', '9843929033', NULL, '$2y$10$LZYopBtZAYLmhAqnXM58nu6s0SmNt5gINcSbHB1aJiijYy5Jmiz6m', 'U', NULL, '2023-06-21 07:27:19', '2023-06-21 07:27:19'),
(6, 'Admin', 'kattelishor1@gmail.com', '9843929033', NULL, '$2y$10$yixzQayo79OMoanizjOrYOIxCPlDt7NtO2qKc82753u6A6o4hq7S.', 'U', NULL, '2023-06-21 07:28:35', '2023-06-21 07:28:35'),
(7, 'test', 'test@mailinator.com', '9807654321', NULL, '$2y$10$U5BxPwR5Osev6SMl5WrfrOEk4YrH7E5Oejb/4anF4XE6w9VfzOFYC', 'U', NULL, '2023-06-22 05:25:38', '2023-06-22 05:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `about` varchar(191) DEFAULT NULL,
  `saved` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `image`, `about`, `saved`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, '2023-06-20 09:41:25', '2023-06-20 09:41:25'),
(2, NULL, NULL, NULL, '2023-06-20 09:44:32', '2023-06-20 09:44:32'),
(3, NULL, NULL, NULL, '2023-06-20 09:57:36', '2023-06-20 09:57:36'),
(4, NULL, NULL, NULL, '2023-06-20 20:00:41', '2023-06-20 20:00:41'),
(5, NULL, NULL, NULL, '2023-06-21 07:27:19', '2023-06-21 07:27:19'),
(6, NULL, NULL, NULL, '2023-06-21 07:28:35', '2023-06-21 07:28:35'),
(7, NULL, NULL, NULL, '2023-06-22 05:25:38', '2023-06-22 05:25:38'),
(15, NULL, 'Hello this is test user', NULL, '2023-06-20 05:50:36', '2023-06-20 05:50:36'),
(16, NULL, NULL, NULL, '2023-06-20 05:24:26', '2023-06-20 05:24:26'),
(17, NULL, NULL, NULL, '2023-06-20 06:00:07', '2023-06-20 06:00:07'),
(18, NULL, NULL, NULL, '2023-06-20 07:14:31', '2023-06-20 07:14:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_city_unique` (`city`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `facilities_faci_unique` (`faci`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gallaries`
--
ALTER TABLE `gallaries`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallaries`
--
ALTER TABLE `gallaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
