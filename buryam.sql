-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2022 at 08:55 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buryam`
--

-- --------------------------------------------------------

--
-- Table structure for table `alamat_pengiriman`
--

CREATE TABLE `alamat_pengiriman` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_penerima` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodepos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alamat_pengiriman`
--

INSERT INTO `alamat_pengiriman` (`id`, `user_id`, `status`, `nama_penerima`, `no_tlp`, `alamat`, `provinsi`, `kota`, `kecamatan`, `kelurahan`, `kodepos`, `created_at`, `updated_at`) VALUES
(1, 2, 'utama', 'Aulia Miftahul Zanah', '0822-4506-1687', 'DUSUN PANDAN RT.2 RW 5 DESA KEMBIRITAN KECAMATAN GENTENG', 'Prov. Jawa Timur', 'Kab. Banyuwangi', 'Genteng', 'Kembiritan', '68465', '2022-11-27 20:13:23', '2022-11-27 20:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `no_invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_cart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pengiriman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_resi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ekspedisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` double(12,2) NOT NULL DEFAULT 0.00,
  `ongkir` double(12,2) NOT NULL DEFAULT 0.00,
  `diskon` double(12,2) NOT NULL DEFAULT 0.00,
  `total` double(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE `cart_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `produk_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `qty` double(12,2) NOT NULL DEFAULT 0.00,
  `harga` double(12,2) NOT NULL DEFAULT 0.00,
  `diskon` double(12,2) NOT NULL DEFAULT 0.00,
  `subtotal` double(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `user_id`, `url`, `created_at`, `updated_at`) VALUES
(40, 2, 'files/kVg9NlPRd9arCaEdOGgYrsPVytQSCU7DivGsc0LV.png', '2022-12-12 22:05:50', '2022-12-12 22:05:50'),
(41, 2, 'files/2HMTOBi75MOoWll3mV1uZ9qq0iyIrkmd7TGoyifO.png', '2022-12-12 22:28:02', '2022-12-12 22:28:02'),
(42, 2, 'files/kRgoju2qIZCudB3cKhl8gbuvybp8a1o1F6URvw1N.png', '2022-12-12 22:31:08', '2022-12-12 22:31:08'),
(43, 2, 'files/0MYwlWQEnM7fZmZwIe9JnhQQOLQmalTiCCtdGukC.png', '2022-12-12 22:34:02', '2022-12-12 22:34:02'),
(44, 2, 'files/JZJQPUEALLGFEAfNHvsvHe5J1I0QPbbVCs34IMZF.png', '2022-12-12 22:36:37', '2022-12-12 22:36:37'),
(45, 2, 'files/qk6VdtoSDFUjcBJwsc6TUVbqdtN0yEU9RxPUAdIS.png', '2022-12-12 22:38:31', '2022-12-12 22:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kode_kategori`, `nama_kategori`, `slug_kategori`, `status`, `foto`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'Bubur', 'Bubur', 'Buryam', 'publish', 'files/kVg9NlPRd9arCaEdOGgYrsPVytQSCU7DivGsc0LV.png', 2, '2022-08-16 04:46:09', '2022-12-12 22:10:37'),
(9, 'Sate - 01', 'sate', 'sate', 'publish', 'files/2HMTOBi75MOoWll3mV1uZ9qq0iyIrkmd7TGoyifO.png', 2, '2022-12-12 22:27:47', '2022-12-12 22:28:02');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_06_05_042656_create_kategoris_table', 1),
(11, '2022_06_05_043025_create_produks_table', 1),
(12, '2022_06_05_120637_create_images_table', 1),
(13, '2022_06_05_124702_create_produk_images_table', 1),
(14, '2022_06_05_131944_create_slideshows_table', 1),
(15, '2022_06_05_133531_create_produk_promos_table', 1),
(16, '2022_06_06_042057_create_wishlists_table', 1),
(17, '2022_06_06_044354_create_carts_table', 1),
(18, '2022_06_06_044724_create_cart_details_table', 1),
(19, '2022_06_06_090631_create_alamat_pengirimen_table', 1),
(20, '2022_06_06_091731_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
('11236b3150815d8f67742657bd7a94eeb8d97fb428e43a22fa891a92807cbea8fc0c0588ac0f39c4', 8, '970bf4a3-7ba0-4e89-8a3f-2ac7da431aa1', 'accessToken', '[]', 0, '2022-09-07 23:31:12', '2022-09-07 23:31:12', '2023-09-08 06:31:12'),
('13b9af340c50af99a775567aa839c190550f8616c12af915b5b91825dfe09bf2049285f17481ca71', 8, '970bf4a3-7ba0-4e89-8a3f-2ac7da431aa1', 'accessToken', '[]', 0, '2022-09-07 23:16:02', '2022-09-07 23:16:02', '2023-09-08 06:16:02'),
('3045e88109891febf79b394543825a07bced7852c2d31eeb158acea4cc9f3a464c41e580af098cc4', 8, '970bf4a3-7ba0-4e89-8a3f-2ac7da431aa1', 'accessToken', '[]', 0, '2022-09-07 23:44:31', '2022-09-07 23:44:31', '2023-09-08 06:44:31'),
('80f27e19cbc8ab2a46816cb5f6deaf3407d5be791a84b1b7aba966447839c6012a7e6c4551be9269', 8, '970bf4a3-7ba0-4e89-8a3f-2ac7da431aa1', 'accessToken', '[]', 0, '2022-09-07 23:23:19', '2022-09-07 23:23:19', '2023-09-08 06:23:19'),
('82c9158f62064fda0e4a9de45f9204905d635972f9ce97bf99407b7964fd6147fff18fdf3ea38b97', 8, '970bf4a3-7ba0-4e89-8a3f-2ac7da431aa1', 'accessToken', '[]', 0, '2022-08-18 05:12:09', '2022-08-18 05:12:09', '2023-08-18 12:12:09'),
('94558777caa1257a0bca1a7d60c23abf9cf3bea9f39db545a5a214e9fd8d3c54c5e6b084a24f1321', 8, '970bf4a3-7ba0-4e89-8a3f-2ac7da431aa1', 'accessToken', '[]', 0, '2022-11-16 23:59:51', '2022-11-16 23:59:51', '2023-11-17 06:59:51'),
('97b7595195b8a475635ecc4f5d7e16b41263bcf7457f290fb98f6264b97e79ad3b017720cf005b47', 8, '970bf4a3-7ba0-4e89-8a3f-2ac7da431aa1', 'accessToken', '[]', 0, '2022-09-07 18:43:53', '2022-09-07 18:43:53', '2023-09-08 01:43:53'),
('b48193ca7427edb79076e48c0c2ebe4cc4bb7df1d5b17d6b12f77e102b1fc5c0f1c81a3b350624cf', 8, '970bf4a3-7ba0-4e89-8a3f-2ac7da431aa1', 'accessToken', '[]', 0, '2022-09-07 23:33:28', '2022-09-07 23:33:28', '2023-09-08 06:33:28'),
('f41248b601193c3371764337bf772eae79d3d6f4a26cc0353f65502379a996827de26c30c9d4a34d', 8, '970bf4a3-7ba0-4e89-8a3f-2ac7da431aa1', NULL, '[]', 0, '2022-08-18 05:11:55', '2022-08-18 05:11:55', '2023-08-18 12:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('96e7f73b-271d-4fe8-a4a0-2d5ae57fc510', NULL, 'Laravel Personal Access Client', 'BSRoC2Z1InKCsPQkcNqj5yMEGVECJd7ydJjqBraO', NULL, 'http://localhost', 1, 0, 0, '2022-07-30 18:18:14', '2022-07-30 18:18:14'),
('96e7f73b-78ae-43df-82b5-976ecb3b5c3c', NULL, 'Laravel Password Grant Client', '6scPrX7MzAt2EUybtv6lIZt4tv5UlmYvGzrM0o6y', 'users', 'http://localhost', 0, 1, 0, '2022-07-30 18:18:14', '2022-07-30 18:18:14'),
('970bf4a3-7ba0-4e89-8a3f-2ac7da431aa1', NULL, 'Laravel Personal Access Client', 'D2cKigRFnku1EVyH9JuyWLp1PZmw2kv451XEeMLe', NULL, 'http://localhost', 1, 0, 0, '2022-08-17 15:40:47', '2022-08-17 15:40:47'),
('970bf4a3-a2af-4c4b-a206-b6ecec9157d9', NULL, 'Laravel Password Grant Client', '9antPfaDKaQTgIv9bTmTkBFfQGIGUUKMg2iyQtds', 'users', 'http://localhost', 0, 1, 0, '2022-08-17 15:40:47', '2022-08-17 15:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '96e7f73b-271d-4fe8-a4a0-2d5ae57fc510', '2022-07-30 18:18:14', '2022-07-30 18:18:14'),
(2, '970bf4a3-7ba0-4e89-8a3f-2ac7da431aa1', '2022-08-17 15:40:47', '2022-08-17 15:40:47');

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
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `nama_penerima` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodepos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 8, 'AccessToken', 'e42f5ce212fdfeeac624f8c36e361ed0bb2f5aaf801b151b32116d987cf7fd4d', '[\"*\"]', NULL, '2022-08-18 04:03:42', '2022-08-18 04:03:42'),
(2, 'App\\Models\\User', 8, 'AccessToken', 'f8df5b6efea01e8b5844e3d1465bc1f3c94eb6a40e3072c44e15547be57e50ed', '[\"*\"]', NULL, '2022-08-18 04:05:55', '2022-08-18 04:05:55'),
(3, 'App\\Models\\User', 8, 'AccessToken', '58e6a49541c320291098227d19b3faf264ce00ec673c08430d2723d1c64e8dc1', '[\"*\"]', NULL, '2022-08-18 04:06:58', '2022-08-18 04:06:58'),
(4, 'App\\Models\\User', 8, 'AccessToken', 'fc977c1caa3605482bff9fcc34d9461f4d9ab2aa9bc7f0d3ace2ea7408fc718f', '[\"*\"]', NULL, '2022-08-18 04:07:33', '2022-08-18 04:07:33'),
(5, 'App\\Models\\User', 8, 'AccessToken', 'cbad602388909df07770cf23052b43419081b34dad1d69c01663db58d04b01bc', '[\"*\"]', NULL, '2022-08-18 04:08:29', '2022-08-18 04:08:29'),
(6, 'App\\Models\\User', 8, 'AccessToken', 'b215fdc03e0e8c70a35ac4c735b3b4654be889ec842e0a043b64b1d3234008d9', '[\"*\"]', NULL, '2022-08-18 04:08:48', '2022-08-18 04:08:48'),
(7, 'App\\Models\\User', 8, 'AccessToken', '02bc805298767a31035fec2b31ebb9eb1291377e79451ceadebb6eee34d7f696', '[\"*\"]', NULL, '2022-08-18 04:09:34', '2022-08-18 04:09:34'),
(8, 'App\\Models\\User', 8, 'AccessToken', '213344e9b44c4adeb7a4156c1ba3bb5ea212328d92343ed1644ead7926407e1e', '[\"*\"]', NULL, '2022-08-18 04:09:49', '2022-08-18 04:09:49'),
(9, 'App\\Models\\User', 8, 'AccessToken', '9d5a70f35cc1704a4c1cec65c94a5376ea55cea648332bc39fd51cdb6b3891a8', '[\"*\"]', NULL, '2022-08-18 04:10:41', '2022-08-18 04:10:41'),
(10, 'App\\Models\\User', 8, 'accessToken', '2514412cfdab8943ce6a79549328902d4c27bfc3cb1f57d642eaeb692d50892d', '[\"*\"]', NULL, '2022-08-18 04:13:51', '2022-08-18 04:13:51'),
(11, 'App\\Models\\User', 8, 'accessToken', '4de646b5f8e4ec14d8431490df05f603ae4b9a46b85e681b09922e591ea488a8', '[\"*\"]', NULL, '2022-08-18 04:40:34', '2022-08-18 04:40:34'),
(12, 'App\\Models\\User', 8, 'accessToken', '0864c0ff481625edb12634caebbab89db55b7b145e2999a1aab8e51372d40a20', '[\"*\"]', NULL, '2022-08-18 04:41:54', '2022-08-18 04:41:54'),
(13, 'App\\Models\\User', 8, 'accessToken', 'd60e8282af4db04d92736a5c807a6a89ee327d2b1860dd4709c3a1d64ca561cb', '[\"*\"]', NULL, '2022-08-18 04:42:35', '2022-08-18 04:42:35'),
(14, 'App\\Models\\User', 8, 'accessToken', 'e6ea178fb193ba11864d3a14ce311a41a35a0d59b3c0cc95b5b570ad520c9781', '[\"*\"]', NULL, '2022-08-18 04:44:09', '2022-08-18 04:44:09'),
(15, 'App\\Models\\User', 8, 'accessToken', '32ac27b9772bc67564a41830fbdd71d931e9a9e04f80a8ac78b8f1341feb672a', '[\"*\"]', NULL, '2022-08-18 04:45:13', '2022-08-18 04:45:13'),
(16, 'App\\Models\\User', 8, 'accessToken', '423cc39db414f91f2281cb90ad2e3f6d01d51941448f3e1af60add80bd5f1298', '[\"*\"]', NULL, '2022-08-18 04:48:35', '2022-08-18 04:48:35'),
(17, 'App\\Models\\User', 8, 'accessToken', 'ea2d21ca9f58e40eecc710a606517e237009fb96a91d662c516a417cc86212e5', '[\"*\"]', NULL, '2022-08-18 05:08:14', '2022-08-18 05:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `kode_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_produk` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double(12,2) NOT NULL DEFAULT 0.00,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` double(12,2) NOT NULL DEFAULT 0.00,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `user_id`, `kode_produk`, `nama_produk`, `slug_produk`, `deskripsi_produk`, `foto`, `qty`, `satuan`, `harga`, `status`, `created_at`, `updated_at`) VALUES
(20, 5, 2, 'bubur-02', 'BUBUR AYAM', 'bubur', 'Bubur ayam enak', 'files/kRgoju2qIZCudB3cKhl8gbuvybp8a1o1F6URvw1N.png', 10.00, 'porsi', 8000.00, 'publish', '2022-12-12 22:30:12', '2022-12-12 22:31:08'),
(21, 9, 2, 'sate-02', 'Sate Usus', 'sate', 'Sate usus', 'files/0MYwlWQEnM7fZmZwIe9JnhQQOLQmalTiCCtdGukC.png', 20.00, 'tusuk', 1000.00, 'publish', '2022-12-12 22:33:28', '2022-12-12 22:34:02'),
(22, 9, 2, 'sate-03', 'Sate Telur Puyuh', 'sate', 'Sate telur puyuh enak', 'files/JZJQPUEALLGFEAfNHvsvHe5J1I0QPbbVCs34IMZF.png', 10.00, 'tusuk', 1000.00, 'publish', '2022-12-12 22:35:45', '2022-12-12 22:36:37'),
(23, 9, 2, 'sate-04', 'Sate Hati', 'sate', 'Sate hati enak', 'files/qk6VdtoSDFUjcBJwsc6TUVbqdtN0yEU9RxPUAdIS.png', 10.00, 'tusuk', 1000.00, 'publish', '2022-12-12 22:38:04', '2022-12-12 22:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `produk_images`
--

CREATE TABLE `produk_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `produk_id` int(10) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk_images`
--

INSERT INTO `produk_images` (`id`, `produk_id`, `foto`, `created_at`, `updated_at`) VALUES
(21, 20, 'files/kRgoju2qIZCudB3cKhl8gbuvybp8a1o1F6URvw1N.png', '2022-12-12 22:31:08', '2022-12-12 22:31:08'),
(22, 21, 'files/0MYwlWQEnM7fZmZwIe9JnhQQOLQmalTiCCtdGukC.png', '2022-12-12 22:34:02', '2022-12-12 22:34:02'),
(23, 22, 'files/JZJQPUEALLGFEAfNHvsvHe5J1I0QPbbVCs34IMZF.png', '2022-12-12 22:36:37', '2022-12-12 22:36:37'),
(24, 23, 'files/qk6VdtoSDFUjcBJwsc6TUVbqdtN0yEU9RxPUAdIS.png', '2022-12-12 22:38:31', '2022-12-12 22:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `produk_promo`
--

CREATE TABLE `produk_promo` (
  `id` int(10) UNSIGNED NOT NULL,
  `produk_id` int(10) UNSIGNED NOT NULL,
  `harga_awal` decimal(16,2) NOT NULL DEFAULT 0.00,
  `harga_akhir` decimal(16,2) NOT NULL DEFAULT 0.00,
  `diskon_persen` int(11) NOT NULL DEFAULT 0,
  `diskon_nominal` decimal(16,2) NOT NULL DEFAULT 0.00,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(10) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`id`, `foto`, `caption_title`, `caption_content`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'files/1p2hbxw6vZvDq8tSB1gZhvzcWCveLxwSiYqjzRVh.png', NULL, NULL, 2, '2022-12-12 20:14:55', '2022-12-12 20:14:55'),
(7, 'files/sDnJxmN1SenQKPqITPtusqzLItEVfZ4X0aWzLqRu.png', NULL, NULL, 2, '2022-12-12 21:47:02', '2022-12-12 21:47:02'),
(8, 'files/TmqDznEl99zJJxbvDnM8jljDDWScOVbUNC5V9bfg.png', NULL, NULL, 2, '2022-12-12 21:47:41', '2022-12-12 21:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `alamat`, `role`, `foto`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fadlur Rohman', 'fadloer@gmail.com', NULL, '$2y$10$99ssTkEGGWrqa50pH.C.TucR1IqeeluyYaFipMtbY4KN8CC7lWz5m', '085852527575', 'Bulung Kulon Rt 03 Rw 05', 'admin', NULL, 'aktif', NULL, '2022-07-26 23:49:35', '2022-07-26 23:49:35'),
(2, 'Aulia Miftahul Zanah', 'auliamif009@gmail.com', NULL, '$2y$10$L//EzEmji/dlwoSU1/YQnuEc9oFcKVnEjbVJ14iKsR/HiLzeWsv.K', '082245061687', NULL, 'member', NULL, 'aktif', NULL, '2022-07-30 03:50:14', '2022-07-30 03:50:14'),
(8, 'test', 'test@gmail.com', NULL, '$2y$10$90ccHneFyilPoqGEvtjkAe6h5o3i6gwyOyQuHCLzTqYbqJJfNkIFe', NULL, NULL, 'member', NULL, 'aktif', NULL, '2022-08-18 04:02:50', '2022-08-18 04:02:50'),
(9, 'test', 'saya@gmail.com', NULL, '$2y$10$J8eZwb2YgNZKxxPRP2z/5uD6doLvQLQcX0ikA6na70IsG2zVsVxF6', NULL, NULL, 'member', NULL, 'aktif', NULL, '2022-09-07 23:34:43', '2022-09-07 23:34:43'),
(10, 'test', 'cek@gmail.com', NULL, '$2y$10$9fEyt.Huz8dB6bfWuTI6sePdY9lbzeEYhpGeWp.81YfLjM0PqboXy', NULL, NULL, 'member', NULL, 'aktif', NULL, '2022-11-16 23:57:54', '2022-11-16 23:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `produk_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alamat_pengiriman`
--
ALTER TABLE `alamat_pengiriman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alamat_pengiriman_user_id_foreign` (`user_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_user_id_foreign` (`user_id`);

--
-- Indexes for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_detail_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_detail_produk_id_foreign` (`produk_id`);

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
  ADD KEY `images_user_id_foreign` (`user_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_user_id_foreign` (`user_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_cart_id_foreign` (`cart_id`);

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
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_user_id_foreign` (`user_id`),
  ADD KEY `produk_kategori_id_foreign` (`kategori_id`);

--
-- Indexes for table `produk_images`
--
ALTER TABLE `produk_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_images_produk_id_foreign` (`produk_id`);

--
-- Indexes for table `produk_promo`
--
ALTER TABLE `produk_promo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_promo_user_id_foreign` (`user_id`),
  ADD KEY `produk_promo_produk_id_foreign` (`produk_id`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slideshow_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_user_id_foreign` (`user_id`),
  ADD KEY `wishlist_produk_id_foreign` (`produk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alamat_pengiriman`
--
ALTER TABLE `alamat_pengiriman`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `produk_images`
--
ALTER TABLE `produk_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `produk_promo`
--
ALTER TABLE `produk_promo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alamat_pengiriman`
--
ALTER TABLE `alamat_pengiriman`
  ADD CONSTRAINT `alamat_pengiriman_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD CONSTRAINT `cart_detail_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `cart_detail_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `kategori`
--
ALTER TABLE `kategori`
  ADD CONSTRAINT `kategori_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`);

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `produk_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `produk_images`
--
ALTER TABLE `produk_images`
  ADD CONSTRAINT `produk_images_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`);

--
-- Constraints for table `produk_promo`
--
ALTER TABLE `produk_promo`
  ADD CONSTRAINT `produk_promo_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`),
  ADD CONSTRAINT `produk_promo_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD CONSTRAINT `slideshow_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`),
  ADD CONSTRAINT `wishlist_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
