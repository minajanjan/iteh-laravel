-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 02:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twitter`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_11_231953_create_tweets_table', 1),
(6, '2023_01_11_232020_create_tags_table', 1),
(7, '2023_01_11_233032_add_user_id_to_tweets_table', 1),
(8, '2023_01_11_233123_add_tweet_id_to_tags_table', 1),
(9, '2023_01_11_233834_add_username_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 6, 'auth_token', '025e69384abbf3e87d3b9b499fb1df04b073a164101270bef5b6226afe2da7a2', '[\"*\"]', NULL, NULL, '2023-01-11 23:54:14', '2023-01-11 23:54:14'),
(2, 'App\\Models\\User', 6, 'auth_token', 'cf0e98d7b12c362f1fcd32f0886d89696b66a73deb18baeaf765e0452004237f', '[\"*\"]', '2023-01-11 23:57:17', NULL, '2023-01-11 23:54:50', '2023-01-11 23:57:17');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tweet_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`, `tweet_id`) VALUES
(1, 'ut', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 1),
(2, 'aliquam', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 1),
(3, 'est', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 1),
(4, 'cupiditate', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 2),
(5, 'magni', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 2),
(6, 'aliquid', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 2),
(7, 'eum', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 3),
(8, 'aut', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 3),
(9, 'rerum', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 3),
(10, 'nulla', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 4),
(11, 'omnis', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 4),
(12, 'veritatis', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 4),
(13, 'vero', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 5),
(14, 'soluta', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 5),
(15, 'natus', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 5),
(16, 'est', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 6),
(17, 'officiis', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 6),
(18, 'qui', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 6),
(19, 'quisquam', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 7),
(20, 'quisquam', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 7),
(21, 'porro', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 7),
(22, 'qui', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 8),
(23, 'maxime', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 8),
(24, 'quia', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 8),
(25, 'voluptas', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 9),
(26, 'maiores', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 9),
(27, 'aliquam', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 9),
(28, 'illo', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 10),
(29, 'voluptatem', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 10),
(30, 'voluptatem', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 10),
(31, 'officia', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 11),
(32, 'et', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 11),
(33, 'et', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 11),
(34, 'et', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 12),
(35, 'occaecati', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 12),
(36, 'voluptatem', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 12),
(37, 'esse', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 13),
(38, 'doloribus', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 13),
(39, 'vel', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 13),
(40, 'natus', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 14),
(41, 'ipsa', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 14),
(42, 'ratione', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 14),
(43, 'et', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 15),
(44, 'in', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 15),
(45, 'soluta', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 15),
(46, 'sunt', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 16),
(47, 'id', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 16),
(48, 'provident', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 16),
(49, 'minus', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 17),
(50, 'commodi', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 17),
(51, 'voluptatibus', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 17),
(52, 'ipsum', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 18),
(53, 'deleniti', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 18),
(54, 'est', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 18),
(55, 'qui', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 19),
(56, 'in', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 19),
(57, 'ducimus', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 19),
(58, 'et', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 20),
(59, 'illum', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 20),
(60, 'recusandae', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 20),
(61, 'unde', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 21),
(62, 'ullam', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 21),
(63, 'cupiditate', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 21),
(64, 'aut', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 22),
(65, 'nisi', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 22),
(66, 'aperiam', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 22),
(67, 'numquam', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 23),
(68, 'officiis', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 23),
(69, 'quibusdam', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 23),
(70, 'veritatis', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 24),
(71, 'est', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 24),
(72, 'eum', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 24),
(73, 'omnis', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 25),
(74, 'sed', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 25),
(75, 'magni', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 25),
(76, 'tag1', '2023-01-11 23:56:20', '2023-01-11 23:56:20', 26),
(77, 'tag2', '2023-01-11 23:56:20', '2023-01-11 23:56:20', 26),
(78, 'tag3', '2023-01-11 23:56:20', '2023-01-11 23:56:20', 26),
(79, 'tag1', '2023-01-11 23:57:17', '2023-01-11 23:57:17', 27),
(80, 'tag2', '2023-01-11 23:57:17', '2023-01-11 23:57:17', 27),
(81, 'tag3', '2023-01-11 23:57:17', '2023-01-11 23:57:17', 27);

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `content`, `theme`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Quos nostrum explicabo maxime provident molestias. Et delectus voluptates velit fugit delectus perspiciatis autem. Vel veniam ut voluptates nobis. Dolorum magni tempore similique dolores.', 'accusamus', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 1),
(2, 'Eum eaque exercitationem aliquam et omnis. Sunt natus est labore qui. Enim tempore atque possimus doloremque. Ullam est ut aut est quo quos ea exercitationem.', 'qui', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 1),
(3, 'Neque quia nemo sapiente et odit. Ut dicta aspernatur quibusdam vel. Quidem quo excepturi cumque cupiditate. Voluptas provident voluptas ut.', 'iure', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 1),
(4, 'Necessitatibus provident harum quae veniam doloribus. Quaerat dignissimos sed nihil possimus velit dignissimos. Et officia et est corrupti autem sunt neque. Ex qui odit deserunt dicta et non. Pariatur consequatur modi ut voluptatum.', 'iusto', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 1),
(5, 'Asperiores laborum sit maxime necessitatibus omnis est qui. Atque sapiente ea odit natus aut. Hic tempore voluptas natus dolor sint aut ut voluptatem.', 'qui', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 1),
(6, 'At neque et dolorem aut ratione maiores. Laudantium blanditiis eos amet vitae est. Corporis quasi repellendus repellat. Qui itaque id nulla nisi porro facere repellendus.', 'ipsa', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 2),
(7, 'Vel ut quia vero mollitia sit aut aperiam rerum. Sit cupiditate distinctio quia ullam voluptatem nulla quia.', 'modi', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 2),
(8, 'Aliquam autem ipsa vel est labore aut. Quaerat magni aspernatur sequi quis dolores doloribus debitis. Magni cupiditate consequuntur vitae. Provident consequatur non placeat sed eum et. Vitae autem consequatur animi dicta odit.', 'repudiandae', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 2),
(9, 'In expedita nostrum molestiae eum provident id soluta numquam. Est rerum doloremque ut rerum id et. Nihil est architecto sunt quis. Voluptas molestiae voluptatem quia laudantium.', 'fugiat', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 2),
(10, 'Consequatur consequuntur eos dolorum inventore consequatur deleniti magni inventore. Quaerat voluptas consequatur voluptates repudiandae ad deleniti. Suscipit vel ut accusamus qui sunt.', 'excepturi', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 2),
(11, 'Ut mollitia expedita nisi et quas sequi aliquid. Expedita sequi id est animi. Voluptas reiciendis dolorem consequatur voluptatem aliquam. Ad nesciunt sit eos sit asperiores hic repellendus. Consectetur odio facere excepturi omnis.', 'explicabo', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 3),
(12, 'Distinctio qui porro eos itaque ut. Veniam eum impedit eos nulla quas. Neque sint ad sit ullam. Laboriosam architecto vel quo voluptas quia. Tempore dolores ducimus ex quae pariatur quidem voluptatibus sequi. Earum aliquid officia fuga nobis ipsum.', 'officiis', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 3),
(13, 'Porro in sed enim sint. Saepe quisquam ut asperiores vero enim voluptas. Vel illum animi adipisci aut sed voluptatum minus. Libero illum facere in.', 'accusamus', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 3),
(14, 'Deleniti earum repellendus quidem repellendus nisi. Sit aliquid fuga dolore optio. In natus dolor et tempore. Fugit reprehenderit quos nihil quo adipisci. Sed quas neque atque ex.', 'et', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 3),
(15, 'Debitis repellendus ea dolor nam temporibus sequi vero. Non maxime ut tempore ut quia nulla est quia. Modi et maxime esse nobis iste corporis sed.', 'aliquam', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 3),
(16, 'Aut voluptatem qui consequatur autem. Id maxime aliquam enim saepe cupiditate dolorem et. Tempora sit alias facere rerum sed doloribus nulla id. Non officiis sunt recusandae. Qui unde labore reprehenderit repudiandae accusamus quod.', 'et', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 4),
(17, 'Sit et voluptatem itaque aspernatur soluta. Assumenda provident fugiat qui et dolorum non. Labore cumque esse porro dignissimos est minus vitae. Ut provident dolores beatae mollitia autem repudiandae.', 'atque', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 4),
(18, 'Enim dolore facere possimus dolores ipsam mollitia iusto. Aliquid consectetur ipsam repudiandae quibusdam quidem. Et est excepturi velit nobis eos ab illum. Repellat molestiae in est mollitia.', 'quia', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 4),
(19, 'Adipisci reiciendis aliquid assumenda. Nulla perferendis tempore in dicta. Aliquid nisi numquam voluptatem possimus laborum expedita delectus. Inventore ut repellendus iure illum.', 'ut', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 4),
(20, 'Ipsa at cupiditate nulla distinctio voluptas deleniti. Praesentium culpa est est omnis non suscipit et. Vero consequuntur quidem dolorum soluta inventore animi quasi. Molestiae accusantium labore eum nisi eveniet quasi a.', 'aperiam', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 4),
(21, 'Dolores quisquam saepe dolores sapiente illo perspiciatis quia. Sed doloribus quidem sit repellendus. Id et ea blanditiis dolorem. Et voluptates assumenda laudantium voluptas.', 'inventore', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 5),
(22, 'Dolorem autem ut nisi non consequuntur iusto. Fuga explicabo ipsum dolore omnis. Alias aliquid quia accusamus quo minima voluptatem quam.', 'facere', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 5),
(23, 'Illum in autem voluptatum quis totam laudantium. Est iusto et dicta dolores necessitatibus officia.', 'aut', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 5),
(24, 'Vitae qui quod omnis dolor mollitia neque. Et vitae vero similique impedit eos in. Quia et ex incidunt mollitia impedit. Sit et ut tempore sed est. Totam veritatis quia et qui totam. Sed esse reiciendis dolor repudiandae praesentium et.', 'libero', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 5),
(25, 'Asperiores consequatur ratione ea enim quisquam. Atque eveniet sunt recusandae possimus ducimus. Natus commodi impedit nostrum voluptate et.', 'ducimus', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 5),
(26, 'Mihajlo\'s content', 'Mihajlo\'s content', '2023-01-11 23:56:20', '2023-01-11 23:56:20', 6),
(27, 'Mihajlo\'s content', 'Mihajlo\'s content', '2023-01-11 23:57:17', '2023-01-11 23:57:17', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`) VALUES
(1, 'Mr. Mustafa Walker MD', 'harmon.schowalter@example.org', '2023-01-11 22:40:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zMwsMFPS5g', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 'ycorkery'),
(2, 'Zita Johnson', 'duncan25@example.com', '2023-01-11 22:40:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fAb9R25ZDP', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 'pagac.alfonso'),
(3, 'Rosina Mueller', 'nbradtke@example.com', '2023-01-11 22:40:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lsm8zikXAw', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 'bart31'),
(4, 'Bonita Cummerata', 'marshall71@example.net', '2023-01-11 22:40:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '30UU1CDqp6', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 'jerel.bergstrom'),
(5, 'Gregory Krajcik', 'rippin.vivian@example.com', '2023-01-11 22:40:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TIPcVW1qox', '2023-01-11 22:40:28', '2023-01-11 22:40:28', 'helen49'),
(6, 'Mina Janic', 'mj20180065@student.fon.bg.ac.rs', NULL, '$2y$10$dosSA1ZUSoK8Jumub5yrneqxXcp/H8C7KCpeWi/YgTAQbncGKaK4e', NULL, '2023-01-11 23:54:14', '2023-01-11 23:54:14', 'mina');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
