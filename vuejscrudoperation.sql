-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2024 at 08:48 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vuejscrudoperation`
--

-- --------------------------------------------------------

--
-- Table structure for table `crud_operation_models`
--

CREATE TABLE `crud_operation_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_operation_models`
--

INSERT INTO `crud_operation_models` (`id`, `name`, `address`, `phone`, `quantity`, `product`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'Delwar', 'Dhaka', '01797384242', '567', '78', '567', NULL, NULL),
(2, 'Hossain', 'Cumilla', '01797384242', '567', '78', '567', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_models`
--

CREATE TABLE `customer_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_models`
--

INSERT INTO `customer_models` (`id`, `name`, `phone`, `purchase_id`, `created_at`, `updated_at`) VALUES
(1, 'rasel hasan', '01797384242', 1, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(2, 'foysal', '09876754322', 7, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(3, 'hasan', '998776655', 8, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(4, 'mehadi', '7899000', 9, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(5, 'kamal', '98876655', 3, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(6, 'jewel', '7897987', 5, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(7, 'hasan', '998776655', 10, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(8, 'mehadi', '7899000', 9, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(9, 'kamal', '98876655', 7, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(10, 'jewel', '7897987', 6, '2022-04-26 18:00:00', '2022-04-26 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `data_models`
--

CREATE TABLE `data_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_models`
--

INSERT INTO `data_models` (`id`, `name`, `address`, `phone`, `quantity`, `product`, `amount`, `created_at`, `updated_at`) VALUES
(3, 'Rasel Hasan', 'cumilla', '01797384241', '567', '678', '5467', '2022-04-26 04:59:30', '2022-04-26 05:24:04'),
(5, 'Clarke Holt', 'Est ex aliquid place', '+1 (662) 227-7732', '257', 'Unde est veritatis e', 'Anim libero dolore s', '2022-04-26 05:48:14', '2022-04-26 05:48:14'),
(6, 'Clarke Holtn', 'Est ex aliquid place', '+1 (662) 227-7732', '257', 'Unde est veritatis e', 'Anim libero dolore s', '2022-04-26 05:48:44', '2022-05-06 00:39:15'),
(9, 'John Hyde', 'Magni mollit numquam', '+1 (748) 883-6967', '246', 'Excepteur dolore sed', 'Reprehenderit aut la', '2022-04-26 10:16:39', '2022-04-26 10:16:39'),
(10, 'Colorado Delgado', 'Culpa qui non debiti', '+1 (496) 953-7401', '17', 'Occaecat qui sint te', 'Ipsa sint sed nobis', '2022-04-26 10:20:01', '2022-04-26 10:20:01'),
(13, 'Castor Woods', 'Sunt tenetur consec', '+1 (576) 934-7656', '741', 'Velit qui laudantiu', 'Possimus sit enim', '2022-05-05 00:02:33', '2022-05-05 00:02:33');

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
-- Table structure for table `final_vue_data_table_models`
--

CREATE TABLE `final_vue_data_table_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `final_vue_data_table_models`
--

INSERT INTO `final_vue_data_table_models` (`id`, `name`, `address`, `phone`, `quantity`, `product`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'rasel hasan', 'cumilla', '01797384242', '567', 'Lux Savan', '789', 'no', '2024-04-08 10:12:52', '2024-04-08 10:12:52'),
(2, 'foysal', 'khulna', '09876754322', '67', 'samphoo', '789', 'no', '2024-04-08 10:12:52', '2024-04-08 10:12:52'),
(3, 'hasan', 'dhaka', '998776655', '89', 'Lux Savan', '67', 'no', '2024-04-08 10:12:52', '2024-04-08 10:12:52'),
(4, 'kamal', 'dhaka', '98876655', '098', 'ball', '678', 'no', '2024-04-08 10:12:52', '2024-04-08 10:12:52'),
(5, 'hasan', 'dhaka', '998776655', '89', 'Lux Savan', '67', 'no', '2024-04-08 10:12:52', '2024-04-08 10:12:52'),
(6, 'kamal', 'khulna', '98876655', '67', 'samphoo', '789', 'no', '2024-04-08 10:12:52', '2024-04-08 10:12:52'),
(7, 'jewel', 'chittagon', '7897987', '099', 'khata', '678', 'no', '2024-04-08 10:12:52', '2024-04-08 10:12:52'),
(8, 'rasel hasan', 'cumilla', '01797384242', '567', 'Lux Savan', '789', 'no', '2024-04-08 10:13:44', '2024-04-08 10:13:44'),
(9, 'foysal', 'khulna', '09876754322', '67', 'samphoo', '789', 'no', '2024-04-08 10:13:44', '2024-04-08 10:13:44'),
(10, 'hasan', 'dhaka', '998776655', '89', 'Lux Savan', '67', 'no', '2024-04-08 10:13:44', '2024-04-08 10:13:44'),
(11, 'kamal', 'dhaka', '98876655', '098', 'ball', '678', 'no', '2024-04-08 10:13:44', '2024-04-08 10:13:44'),
(12, 'hasan', 'dhaka', '998776655', '89', 'Lux Savan', '67', 'no', '2024-04-08 10:13:44', '2024-04-08 10:13:44'),
(13, 'kamal', 'khulna', '98876655', '67', 'samphoo', '789', 'no', '2024-04-08 10:13:44', '2024-04-08 10:13:44'),
(14, 'jewel', 'chittagon', '7897987', '099', 'khata', '678', 'no', '2024-04-08 10:13:44', '2024-04-08 10:13:44'),
(15, 'rasel hasan', 'cumilla', '01797384242', '567', 'Lux Savan', '789', 'no', '2024-04-08 10:14:44', '2024-04-08 10:14:44'),
(16, 'foysal', 'khulna', '09876754322', '67', 'samphoo', '789', 'no', '2024-04-08 10:14:44', '2024-04-08 10:14:44'),
(17, 'hasan', 'dhaka', '998776655', '89', 'Lux Savan', '67', 'no', '2024-04-08 10:14:44', '2024-04-08 10:14:44'),
(18, 'kamal', 'dhaka', '98876655', '098', 'ball', '678', 'no', '2024-04-08 10:14:44', '2024-04-08 10:14:44'),
(19, 'hasan', 'dhaka', '998776655', '89', 'Lux Savan', '67', 'no', '2024-04-08 10:14:44', '2024-04-08 10:14:44'),
(20, 'kamal', 'khulna', '98876655', '67', 'samphoo', '789', 'no', '2024-04-08 10:14:44', '2024-04-08 10:14:44'),
(21, 'jewel', 'chittagon', '7897987', '099', 'khata', '678', 'no', '2024-04-08 10:14:44', '2024-04-08 10:14:44'),
(22, 'rasel hasan', 'cumilla', '01797384242', '567', 'Lux Savan', '789', 'no', '2024-04-08 10:14:59', '2024-04-08 10:14:59'),
(23, 'foysal', 'khulna', '09876754322', '67', 'samphoo', '789', 'no', '2024-04-08 10:14:59', '2024-04-08 10:14:59'),
(24, 'hasan', 'dhaka', '998776655', '89', 'Lux Savan', '67', 'no', '2024-04-08 10:14:59', '2024-04-08 10:14:59'),
(25, 'kamal', 'dhaka', '98876655', '098', 'ball', '678', 'no', '2024-04-08 10:14:59', '2024-04-08 10:14:59'),
(26, 'hasan', 'dhaka', '998776655', '89', 'Lux Savan', '67', 'no', '2024-04-08 10:14:59', '2024-04-08 10:14:59'),
(27, 'kamal', 'khulna', '98876655', '67', 'samphoo', '789', 'no', '2024-04-08 10:14:59', '2024-04-08 10:14:59'),
(28, 'jewel', 'chittagon', '7897987', '099', 'khata', '678', 'no', '2024-04-08 10:14:59', '2024-04-08 10:14:59');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_04_25_194810_create_crud_operation_models_table', 1),
(5, '2022_04_25_222850_create_data_models_table', 2),
(8, '2022_04_26_213430_create_product_models_table', 3),
(9, '2022_04_26_223258_create_purchase_models_table', 3),
(10, '2022_04_26_223512_create_customer_models_table', 3),
(13, '2022_05_02_033419_create_final_vue_data_table_models_table', 4);

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
-- Table structure for table `product_models`
--

CREATE TABLE `product_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_models`
--

INSERT INTO `product_models` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Lux Savan', '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(2, 'khata', '2022-04-26 18:00:00', '2022-04-26 23:03:21'),
(3, 'samphoo', '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(4, 'ball', '2022-04-26 18:00:00', '2022-04-26 23:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_models`
--

CREATE TABLE `purchase_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_models`
--

INSERT INTO `purchase_models` (`id`, `qantity`, `address`, `amount`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '567', 'cumilla', '789', 1, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(2, '567', NULL, '789', 1, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(3, '098', 'dhaka', '678', 4, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(4, '099', NULL, '678', 2, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(5, '098', NULL, '678', 4, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(6, '099', 'chittagon', '678', 2, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(7, '67', 'khulna', '789', 3, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(8, '89', 'dhaka', '67', 1, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(9, '67', NULL, '789', 3, '2022-04-26 18:00:00', '2022-04-26 18:00:00'),
(10, '89', 'dhaka', '67', 1, '2022-04-26 18:00:00', '2022-04-26 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'delwar', 'delowar.hossion@mbm.group', NULL, '$2y$10$yuK5LKCl4AfTLATJQQr4kuDRvJ239vUz1ZbBh7faayvnkbz.CRiiW', NULL, '2024-04-08 09:11:24', '2024-04-08 09:11:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crud_operation_models`
--
ALTER TABLE `crud_operation_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_models`
--
ALTER TABLE `customer_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_models_purchase_id_foreign` (`purchase_id`);

--
-- Indexes for table `data_models`
--
ALTER TABLE `data_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_vue_data_table_models`
--
ALTER TABLE `final_vue_data_table_models`
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
-- Indexes for table `product_models`
--
ALTER TABLE `product_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_models`
--
ALTER TABLE `purchase_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_models_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `crud_operation_models`
--
ALTER TABLE `crud_operation_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_models`
--
ALTER TABLE `customer_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_models`
--
ALTER TABLE `data_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `final_vue_data_table_models`
--
ALTER TABLE `final_vue_data_table_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_models`
--
ALTER TABLE `product_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase_models`
--
ALTER TABLE `purchase_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_models`
--
ALTER TABLE `customer_models`
  ADD CONSTRAINT `customer_models_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchase_models` (`id`);

--
-- Constraints for table `purchase_models`
--
ALTER TABLE `purchase_models`
  ADD CONSTRAINT `purchase_models_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product_models` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
