-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 26, 2023 at 01:46 PM
-- Server version: 10.3.16-MariaDB
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
-- Database: `larablog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `navbar_status` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `meta_title`, `meta_description`, `meta_keyword`, `navbar_status`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Java', 'What-is-Java', 'In this blog we will learn about Java', '1683714462.jpg', 'Java tag', 'Java tag Meta Description', 'Java Meta Keywords', 0, 0, 2, '2023-05-09 03:23:51', '2023-05-10 04:57:42'),
(6, 'Static-Function.', 'static-function', 'Description', '1685077590.jpg', 'Seo Tags', 'Meta DescriptionMeta DescriptionMeta DescriptionMeta DescriptionMeta Description', 'Meta Keywords', 0, 0, 2, '2023-05-15 01:27:09', '2023-05-25 23:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_08_093438_add_role_as_to_users_table', 2),
(6, '2023_05_08_094032_add_role_as_to_users_table', 3),
(7, '2023_05_08_120643_create_categories_table', 4),
(10, '2023_05_10_110915_create_posts_table', 5),
(11, '2023_05_25_125815_create_comments_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$gI9m5lUQ0absNZOc9dWUMeS8KxvH8Aicksnb702hNWkZDkOkIHmyW', '2023-05-22 03:01:47');

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

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `yt_iframe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `name`, `slug`, `description`, `yt_iframe`, `meta_title`, `meta_description`, `meta_keyword`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'something then the page is reloaded on 1st-page default.', 'something-then-the-page-is-reloaded-on-1st-page-default', '<u>something then the page is reloaded on 1st-page default.</u>', 'something then the page is reloaded.', 'something then the page is reloaded.', 'Reload - when the user working on page no 6 updating something then the page is reloaded on 1st-page default.', 'Reload - when the user working on page no 6 updating something then the page is reloaded on 1st-page default.', 0, 2, '2023-05-15 05:19:13', '2023-05-23 07:29:43'),
(5, 1, 'How to delete data from mysql table.', 'how-to-delete-data-from-mysql-table', 'How to delete data from mysql table.\r\n\r\nIn this post we will learn about how to delete data from mysql table.', 'https://youtube.com/todospecial', 'youtube family', '<p><b>How to delete data from mysql table.</b></p><p><br></p><p>In this post we will learn about how to delete data from <b>mysql table. </b></p>', 'how to search and delete mysql \r\nmysql with php', 0, 2, '2023-05-22 03:36:48', '2023-05-23 07:29:23'),
(6, 1, 'How to delete data from mysql table.', 'how-to-delete-data-from-mysql-table', 'How to delete data from mysql table.\r\n\r\nIn this post we will learn about how to delete data from mysql table.', 'youtube.com/techtips', 'php myadmin', 'How to delete data from mysql table.  In this post we will learn about how to delete data from mysql table.', 'How to delete data from mysql table.\r\n\r\nIn this post we will learn about how to delete data from mysql table.', 0, 2, '2023-05-22 03:38:15', '2023-05-23 07:29:15'),
(7, 1, 'What is java', 'what-is-java', '<p><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\"><b>Java</b> is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible</span><br></p>', 'https://www.google.com', 'what is java', 'what is java. how to use java language', 'java, programming language', 0, 2, '2023-05-23 07:24:56', '2023-05-23 07:26:34'),
(8, 1, 'MyEclipse IDE', 'myeclipse-ide', '<h3><span style=\"font-family: Inter, sans-serif; font-size: 17.6px;\"><b>MyEclipse IDE</b> is a full-stack IDE for creating powerful and dynamic Java Enterprise Edition (Java EE) and web applications with the help of the latest technologies. MyEclipse is built upon the Eclipse platform.</span></h3>', 'https://youtube.com/todospecial', 'what is java. what is MyEclipse IDE', 'MyEclipse is built upon the Eclipse platform', 'MyEclipse , Java , programming language.', 0, 2, '2023-05-24 04:39:27', '2023-05-24 04:39:27'),
(10, 1, 'First on Java', 'what-is-java-and-how-to-learn-java', '<div style=\"color: rgb(204, 204, 204); background-color: rgb(31, 31, 31); font-family: &quot;MonaLisa &quot;, Consolas, &quot;Courier New&quot;, monospace; font-size: 20px; line-height: 27px; white-space: pre;\"><div><span style=\"color: #d7ba7d;\">.bg-gray</span> {</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">background-color</span>: <span style=\"color: #ce9178;\">#ddd</span>;</div><div>}</div><br><div><span style=\"color: #d7ba7d;\">.post-description</span> {</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">overflow-y</span>: <span style=\"color: #ce9178;\">scroll</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">scrollbar-width</span>: <span style=\"color: #ce9178;\">none</span>;</div><div>}</div><br><div><span style=\"color: #d7ba7d;\">.post-code-bg</span> {</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">width</span>: <span style=\"color: #ce9178;\">fit-content</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">min-width</span>: <span style=\"color: #b5cea8;\">100%</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">background-color</span>: <span style=\"color: #ce9178;\">#212121</span> <span style=\"color: #569cd6;\">!important</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">width</span>: <span style=\"color: #b5cea8;\">100%</span> <span style=\"color: #569cd6;\">!important</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">overflow-x</span>: <span style=\"color: #ce9178;\">scroll</span> <span style=\"color: #569cd6;\">!important</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">position</span>: <span style=\"color: #ce9178;\">relative</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">padding</span>: <span style=\"color: #b5cea8;\">1rem</span> <span style=\"color: #b5cea8;\">1rem</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">margin-bottom</span>: <span style=\"color: #b5cea8;\">1rem</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">border-radius</span>: <span style=\"color: #b5cea8;\">0.25rem</span>;</div><div>}</div></div>', NULL, 'what is java', 'In this post we will learn about java', 'java , java programming language , java all about', 0, 2, '2023-05-25 06:19:54', '2023-05-25 06:19:54'),
(11, 1, 'cdn links', 'cdn-links-for-develop', '<h6><font color=\"#808080\"><b>Step 1 :</b> Please copy and paste it into the code. </font></h6><p><font color=\"#808080\"><br></font></p><div style=\"color: rgb(204, 204, 204); background-color: rgb(31, 31, 31); font-family: \"MonaLisa \", Consolas, \"Courier New\", monospace; font-size: 20px; line-height: 27px; white-space: pre;\"><div><span style=\"color: #808080;\"><</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #9cdcfe;\">src</span><span style=\"color: #d4d4d4;\">=</span><span style=\"color: #ce9178;\">\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"</span><span style=\"color: #808080;\">></</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #808080;\">></span></div><div>    <span style=\"color: #808080;\"><</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #9cdcfe;\">src</span><span style=\"color: #d4d4d4;\">=</span><span style=\"color: #ce9178;\">\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js\"</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #808080;\">></</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #808080;\">></span></div><div>    <span style=\"color: #808080;\"><</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #9cdcfe;\">src</span><span style=\"color: #d4d4d4;\">=</span><span style=\"color: #ce9178;\">\"{{ asset(\'js/owl.carousel.min.js\') }}\"</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #808080;\">></</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #808080;\">></span>  </div><div>    <span style=\"color: #808080;\"><</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #9cdcfe;\">src</span><span style=\"color: #d4d4d4;\">=</span><span style=\"color: #ce9178;\">\"https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js\"</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #808080;\">></</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #808080;\">></span></div><div>    </div></div>', NULL, 'cdn links', 'all about cdn link', 'cdn links', 0, 2, '2023-05-25 06:22:28', '2023-05-25 06:53:17'),
(12, 1, 'Dashboard', 'dashboard-controller', '<p>Step 1: How to make dashboard&nbsp;</p><div style=\"color: rgb(204, 204, 204); background-color: rgb(31, 31, 31); font-family: &quot;MonaLisa &quot;, Consolas, &quot;Courier New&quot;, monospace; font-size: 20px; line-height: 27px; white-space: pre;\"><div><span style=\"color: #569cd6;\">&lt;?php</span></div><br><div><span style=\"color: #569cd6;\">namespace</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #4ec9b0;\">App\\Http\\Controllers\\Admin</span><span style=\"color: #d4d4d4;\">;</span></div><br><div><span style=\"color: #569cd6;\">use</span><span style=\"color: #d4d4d4;\"> App\\Models\\</span><span style=\"color: #4ec9b0;\">User</span><span style=\"color: #d4d4d4;\">;</span></div><div><span style=\"color: #569cd6;\">use</span><span style=\"color: #d4d4d4;\"> App\\Models\\</span><span style=\"color: #4ec9b0;\">Post</span><span style=\"color: #d4d4d4;\">;</span></div><div><span style=\"color: #569cd6;\">use</span><span style=\"color: #d4d4d4;\"> App\\Models\\</span><span style=\"color: #4ec9b0;\">Category</span><span style=\"color: #d4d4d4;\">;</span></div><div><span style=\"color: #569cd6;\">use</span><span style=\"color: #d4d4d4;\"> App\\Http\\Controllers\\</span><span style=\"color: #4ec9b0;\">Controller</span><span style=\"color: #d4d4d4;\">;</span></div><div><span style=\"color: #569cd6;\">use</span><span style=\"color: #d4d4d4;\"> Illuminate\\Http\\</span><span style=\"color: #4ec9b0;\">Request</span><span style=\"color: #d4d4d4;\">;</span></div><br><div><span style=\"color: #569cd6;\">class</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #4ec9b0;\">DashboardController</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #569cd6;\">extends</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #4ec9b0;\">Controller</span></div><div><span style=\"color: #d4d4d4;\">{</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; </span><span style=\"color: #569cd6;\">public</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #569cd6;\">function</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #dcdcaa;\">index</span><span style=\"color: #d4d4d4;\">()</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; {</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"color: #9cdcfe;\">$categories</span><span style=\"color: #d4d4d4;\"> = </span><span style=\"color: #4ec9b0;\">Category</span><span style=\"color: #d4d4d4;\">::</span><span style=\"color: #dcdcaa;\">count</span><span style=\"color: #d4d4d4;\">();</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"color: #9cdcfe;\">$posts</span><span style=\"color: #d4d4d4;\"> = </span><span style=\"color: #4ec9b0;\">Post</span><span style=\"color: #d4d4d4;\">::</span><span style=\"color: #dcdcaa;\">count</span><span style=\"color: #d4d4d4;\">();</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"color: #9cdcfe;\">$users</span><span style=\"color: #d4d4d4;\"> = </span><span style=\"color: #4ec9b0;\">User</span><span style=\"color: #d4d4d4;\">::</span><span style=\"color: #dcdcaa;\">where</span><span style=\"color: #d4d4d4;\">(</span><span style=\"color: #ce9178;\">\'role_as\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'0\'</span><span style=\"color: #d4d4d4;\">)-&gt;</span><span style=\"color: #dcdcaa;\">count</span><span style=\"color: #d4d4d4;\">();</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"color: #9cdcfe;\">$admins</span><span style=\"color: #d4d4d4;\"> = </span><span style=\"color: #4ec9b0;\">User</span><span style=\"color: #d4d4d4;\">::</span><span style=\"color: #dcdcaa;\">where</span><span style=\"color: #d4d4d4;\">(</span><span style=\"color: #ce9178;\">\'role_as\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'1\'</span><span style=\"color: #d4d4d4;\">)-&gt;</span><span style=\"color: #dcdcaa;\">count</span><span style=\"color: #d4d4d4;\">();</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"color: #c586c0;\">return</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #dcdcaa;\">view</span><span style=\"color: #d4d4d4;\">(</span><span style=\"color: #ce9178;\">\'admin.dashboard\'</span><span style=\"color: #d4d4d4;\">, </span><span style=\"color: #dcdcaa;\">compact</span><span style=\"color: #d4d4d4;\">(</span><span style=\"color: #ce9178;\">\'categories\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'posts\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'users\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'admins\'</span><span style=\"color: #d4d4d4;\">));</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; }</span></div><div><span style=\"color: #d4d4d4;\">&nbsp;</span></div><div><span style=\"color: #d4d4d4;\">}</span></div><br></div>', 'youtube', 'how to create dashbaord', 'In this post we design a dashboard', 'dashboard code', 0, 2, '2023-05-25 06:54:49', '2023-05-25 06:54:49');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_as`) VALUES
(1, 'Pramod', 'pramod@gmail.com', NULL, '$2y$10$9JgLnrk5bFWBJ5WmampbEu4MkTKoujshG1gBOphVob3pDC1XCsJba', NULL, '2023-05-08 01:41:16', '2023-05-08 01:41:16', 0),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$GKMbxbuagRcaeJj3kLpwJusQOi/Ulu/90WYR2uGwEF8lMMD1hxNja', NULL, '2023-05-08 04:42:34', '2023-05-22 02:00:44', 1),
(3, 'user', 'user@gmail.com', NULL, '$2y$10$BCjC/h7b.tad.KRC6w2HaOQQkIwpFVog4Yqf/MhiUwh9QXtzPeODy', NULL, '2023-05-08 06:10:15', '2023-05-22 02:00:19', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
