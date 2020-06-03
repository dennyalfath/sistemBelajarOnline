-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2020 at 04:32 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_learning`
--

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
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kls_id` int(11) NOT NULL,
  `kls_nama` varchar(100) NOT NULL,
  `kls_id_pemateri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kls_id`, `kls_nama`, `kls_id_pemateri`) VALUES
(1, 'Bahasa Pemograman PHP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `mt_id` int(11) NOT NULL,
  `mt_id_kelas` int(11) NOT NULL,
  `mt_judul` varchar(255) NOT NULL,
  `mt_deskripsi` text NOT NULL,
  `mt_file_materi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`mt_id`, `mt_id_kelas`, `mt_judul`, `mt_deskripsi`, `mt_file_materi`) VALUES
(1, 1, 'Aristektur MVC', 'Berikut materi tentang arsitektur dan konsep dari MVC dalam bahasa pemograman PHP', 'materi.pptx');

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
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
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
('083e4daa9736a4fa72db9c6ff61a4c2ba7edea0f3eb59130f53a0ce1e53af1f320304d944b404364', 3, 1, 'myApp', '[]', 0, '2020-06-03 07:10:33', '2020-06-03 07:10:33', '2021-06-03 14:10:33'),
('1465a0736731977440b9e4aa1106e1848fbae7555b13403378295985979af1f7f48fa78bf9ab398d', 1, 1, 'myApp', '[]', 0, '2020-05-30 02:31:04', '2020-05-30 02:31:04', '2021-05-30 09:31:04'),
('2f0c32e41203468833d6869f0cfa1d8ef189ecea498968939b08067766bbb6260de86532334cb0b4', 1, 1, 'myApp', '[]', 0, '2020-05-30 00:38:12', '2020-05-30 00:38:12', '2021-05-30 07:38:12'),
('384ce462055fe05c5a141fa4088ff91f76c1eb603961a59b84eb7d155a8bd880fc1c205b7e08fa75', 1, 1, 'myApp', '[]', 0, '2020-05-30 00:27:49', '2020-05-30 00:27:49', '2021-05-30 07:27:49'),
('3dbcb98503bfc2380802bc9e3d2c54993021b3ca3f325c62949c206bf76c1f37759d9837c8ac51fd', 1, 1, 'myApp', '[]', 0, '2020-05-30 00:29:03', '2020-05-30 00:29:03', '2021-05-30 07:29:03'),
('42d509754fa384ea61e49e761184514d14ca2f790dc18db06ee46efa11fa43b31ec1ba45a8b80625', 2, 1, 'myApp', '[]', 0, '2020-05-30 23:48:14', '2020-05-30 23:48:14', '2021-05-31 06:48:14'),
('6441987be13eab6030b9411c3e5e554c0f4318f2bf769956f44633bc58bb4a83e708257aa41c8127', 3, 1, 'myApp', '[]', 0, '2020-05-30 23:14:29', '2020-05-30 23:14:29', '2021-05-31 06:14:29'),
('7504ce2d50a0786eb82600b4cd7da09bd0b0f2eb70ed14f5263854291665a58afd0ceb1eff10b21b', 1, 1, 'myApp', '[]', 0, '2020-05-30 21:20:17', '2020-05-30 21:20:17', '2021-05-31 04:20:17'),
('8ac524003545b5c25454fc056482b4b7502f67f8f7fecfffef8fa1cee60ff7e5def4068fd09f7fcb', 3, 1, 'myApp', '[]', 0, '2020-05-30 23:14:16', '2020-05-30 23:14:16', '2021-05-31 06:14:16'),
('98aeee362fba6ea80156905ae4d2826e64f99fcaf441cdc3ad2027718697ba9bb6d8457b8bf3f5fe', 1, 1, 'myApp', '[]', 0, '2020-05-30 23:19:37', '2020-05-30 23:19:37', '2021-05-31 06:19:37'),
('9fc1d1cc1d66f31875d81741a4b57d82d5515a55280929440e86733d9de18705496ef47959d69faa', 3, 1, 'myApp', '[]', 0, '2020-06-03 07:05:08', '2020-06-03 07:05:08', '2021-06-03 14:05:08'),
('b228574eb76c8a1f883eb24e8f4d6feb75afaf8178022642afe7cc87effe8cd61d9816cb3703d9f8', 1, 1, 'myApp', '[]', 0, '2020-05-30 02:44:23', '2020-05-30 02:44:23', '2021-05-30 09:44:23'),
('b8a264dc6d3115ae89669a0229eb4f19f80590e99aa23b06f86e3acfabf733062b4629cc4e8f5626', 1, 1, 'myApp', '[]', 0, '2020-05-31 07:34:23', '2020-05-31 07:34:23', '2021-05-31 14:34:23'),
('c1570622a88b0294dab45ada48cdf3751965eb3e8d3e6de7300b1a87d51f72ea8870045ad4eba21f', 1, 1, 'myApp', '[]', 0, '2020-05-30 23:37:06', '2020-05-30 23:37:06', '2021-05-31 06:37:06'),
('c360357fdb0d6fc7f171623724c09bcdb876d46ad5531f7fd6fdad556ac0e46011aa062989383dc3', 2, 1, 'myApp', '[]', 0, '2020-05-30 23:10:46', '2020-05-30 23:10:46', '2021-05-31 06:10:46'),
('c60575de2b61f6ccf2c7beaf06fdcc4a89208280e67f640cd94958b85d2221a14977101340dc2896', 1, 1, 'myApp', '[]', 0, '2020-05-30 00:28:22', '2020-05-30 00:28:22', '2021-05-30 07:28:22'),
('f9d25d5815ef9782b5ca99d36cf3ef0d9b38a5959c531e6523adb54efa660a69aa73720629cb8f21', 2, 1, 'myApp', '[]', 0, '2020-05-30 23:11:04', '2020-05-30 23:11:04', '2021-05-31 06:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'y3MASqltP6kQgFGyMTxXKpJTJ1DG3MxyEujhfpZI', NULL, 'http://localhost', 1, 0, 0, '2020-05-30 00:12:15', '2020-05-30 00:12:15'),
(2, NULL, 'Laravel Password Grant Client', 'IBUDzWIRZMbvUIzl9J6mWFylnMkKFmPbpDpvQHEq', 'users', 'http://localhost', 0, 1, 0, '2020-05-30 00:12:15', '2020-05-30 00:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-05-30 00:12:15', '2020-05-30 00:12:15');

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
-- Table structure for table `pelajar`
--

CREATE TABLE `pelajar` (
  `plj_id` int(11) NOT NULL,
  `plj_nama` varchar(100) NOT NULL,
  `plj_id_kelas` int(11) NOT NULL,
  `plj_id_user` int(11) NOT NULL,
  `plj_poin_tugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelajar`
--

INSERT INTO `pelajar` (`plj_id`, `plj_nama`, `plj_id_kelas`, `plj_id_user`, `plj_poin_tugas`) VALUES
(1, 'Denny Alfath', 1, 1, NULL),
(2, 'Darius Zackley', 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pemateri`
--

CREATE TABLE `pemateri` (
  `pmt_id` int(11) NOT NULL,
  `pmt_nama` varchar(100) NOT NULL,
  `pmt_id_kelas` int(11) NOT NULL,
  `pmt_id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemateri`
--

INSERT INTO `pemateri` (`pmt_id`, `pmt_nama`, `pmt_id_kelas`, `pmt_id_user`) VALUES
(1, 'Rahmad Fadhillah', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `submit_tugas`
--

CREATE TABLE `submit_tugas` (
  `sbm_id` int(11) NOT NULL,
  `sbm_id_tugas` int(11) NOT NULL,
  `sbm_id_kelas` int(11) NOT NULL,
  `sbm_id_pelajar` int(11) NOT NULL,
  `sbm_is_submit` enum('y','n') NOT NULL DEFAULT 'n',
  `sbm_submit_at` datetime NOT NULL,
  `sbm_file_submit` varchar(100) DEFAULT NULL,
  `sbm_poin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submit_tugas`
--

INSERT INTO `submit_tugas` (`sbm_id`, `sbm_id_tugas`, `sbm_id_kelas`, `sbm_id_pelajar`, `sbm_is_submit`, `sbm_submit_at`, `sbm_file_submit`, `sbm_poin`) VALUES
(1, 1, 1, 1, 'y', '2020-05-31 21:48:48', 'submittugas.docx', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `tg_id` int(11) NOT NULL,
  `tg_nama` varchar(255) NOT NULL,
  `tg_deskripsi` text NOT NULL,
  `tg_id_kelas` int(11) NOT NULL,
  `tg_created_at` datetime NOT NULL,
  `tg_dateline` datetime NOT NULL,
  `tg_poin_max` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`tg_id`, `tg_nama`, `tg_deskripsi`, `tg_id_kelas`, `tg_created_at`, `tg_dateline`, `tg_poin_max`) VALUES
(2, 'Merancang Model', 'Buatlah sebuah model yang bisa digunakan dalam pengerjaan aplikasi menggunakan arsitektur MVC', 1, '2020-06-03 21:25:20', '2020-07-01 13:30:00', 50);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','pemateri','pelajar') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'denny', '$2y$10$bATlXTHkS7/ZTRf4V2YxP.q3sVOPv1NxARHHnTGbs6JiYtU1j1vBq', 'pelajar', NULL, '2020-05-30 23:37:06', '2020-05-30 23:37:06'),
(2, 'rahmad', '$2y$10$Env1jA/SQ5zQ5y8PqveFBuY0rZswNJLrI7pw3HFfhscvSzcO2BIyO', 'pemateri', NULL, '2020-05-30 23:48:14', '2020-05-30 23:48:14'),
(3, 'pengguna', '$2y$10$gyRb.8nSq8DHH7QDWbKKTOAtXLDmBiS2kFXAjilnGfa4t1mtP.2pq', 'pelajar', NULL, '2020-06-03 07:05:06', '2020-06-03 07:05:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kls_id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`mt_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelajar`
--
ALTER TABLE `pelajar`
  ADD PRIMARY KEY (`plj_id`);

--
-- Indexes for table `pemateri`
--
ALTER TABLE `pemateri`
  ADD PRIMARY KEY (`pmt_id`);

--
-- Indexes for table `submit_tugas`
--
ALTER TABLE `submit_tugas`
  ADD PRIMARY KEY (`sbm_id`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`tg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `kls_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `mt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelajar`
--
ALTER TABLE `pelajar`
  MODIFY `plj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pemateri`
--
ALTER TABLE `pemateri`
  MODIFY `pmt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `submit_tugas`
--
ALTER TABLE `submit_tugas`
  MODIFY `sbm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `tg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
