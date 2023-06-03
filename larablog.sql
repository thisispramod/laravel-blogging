-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 02, 2023 at 08:26 AM
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
(11, 'PHP', 'convert-all-input-type-text-in-to-span-tag-jquery-with-example', '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: pre-wrap; background-color: rgb(247, 247, 248);\">In this example, the jQuery code selects all input elements with type \"text\" and iterates through them using the </span><code style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; white-space: pre-wrap; background-color: rgb(247, 247, 248); font-family: &quot;Söhne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !important;\">each()</code><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: pre-wrap; background-color: rgb(247, 247, 248);\"> method. For each input element, it gets the text value using the </span><code style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; white-space: pre-wrap; background-color: rgb(247, 247, 248); font-family: &quot;Söhne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !important;\">val()</code><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: pre-wrap; background-color: rgb(247, 247, 248);\"> method and creates a new span element using the </span><code style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; white-space: pre-wrap; background-color: rgb(247, 247, 248); font-family: &quot;Söhne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !important;\">$(\'&lt;span&gt;\')</code><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: pre-wrap; background-color: rgb(247, 247, 248);\"> syntax. The text value is set as the text content of the span element using the </span><code style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; white-space: pre-wrap; background-color: rgb(247, 247, 248); font-family: &quot;Söhne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !important;\">text()</code><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: pre-wrap; background-color: rgb(247, 247, 248);\"> method. Finally, the input element is replaced with the new span element using the </span><code style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; white-space: pre-wrap; background-color: rgb(247, 247, 248); font-family: &quot;Söhne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !important;\">replaceWith()</code><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: pre-wrap; background-color: rgb(247, 247, 248);\"> method.</span><br></p>', '1685599656.png', 'how to replace all span tag to span tag, Convert all input type text in to span tag jquery with example', 'In this post we will explain all about the Convert all input type text in to span tag jquery with example.', 'php, jquery, bootstrap.', 0, 0, 2, '2023-05-30 06:55:12', '2023-06-01 00:37:36'),
(12, 'Jquery', 'all-about-jquery', '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space: pre-wrap; background-color: rgb(247, 247, 248);\">jQuery is a fast and concise JavaScript library that simplifies HTML document traversal, event handling, animating, and AJAX interactions for rapid web development. It provides an easy-to-use API for manipulating HTML elements, making AJAX requests, handling events, and creating animations.</span><br></p>', '1685599765.png', 'How to learn jquery, all about jquery.', 'jQuery is a fast and concise JavaScript library that simplifies HTML document traversal, event handling, As for the title, description, and meta keywords, these are HTML tags used for SEO (Search Engine Optimization) purposes:', 'jquery, javascript, php , latest tech of jquery', 0, 0, 2, '2023-05-30 06:58:53', '2023-06-01 00:39:25'),
(13, 'How to', 'how-to', '<p>how to&nbsp;</p>', '1685597159.png', 'how to , how even , how , how to do , how to work, how to make', 'In this post we will know how to work like , how to make , how to do.', 'How to, how to make , how , to , how to even', 0, 0, 2, '2023-05-31 23:55:59', '2023-05-31 23:55:59');

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

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment_body`, `created_at`, `updated_at`) VALUES
(3, 1, 3, 'awesome post created!', '2023-05-29 01:59:31', '2023-05-29 01:59:31'),
(4, 5, 3, 'Very awesome post. and good knowledge.', '2023-05-29 03:30:35', '2023-05-29 03:30:35'),
(8, 12, 2, 'df', '2023-05-29 07:04:39', '2023-05-29 07:04:39'),
(23, 7, 3, 'sadf', '2023-05-29 23:42:53', '2023-05-29 23:42:53'),
(25, 12, 3, 'df', '2023-05-30 01:39:59', '2023-05-30 01:39:59'),
(28, 10, 2, 'dfsdf', '2023-05-31 00:54:37', '2023-05-31 00:54:37'),
(30, 8, 2, 'Leave a comment', '2023-05-31 04:04:46', '2023-05-31 04:04:46'),
(33, 14, 2, 'very nice post.', '2023-06-01 00:12:32', '2023-06-01 00:12:32'),
(34, 16, 2, 'Nice post', '2023-06-01 01:18:56', '2023-06-01 01:18:56');

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
(11, '2023_05_25_125815_create_comments_table', 6),
(12, '2023_05_30_051825_create_settings_table', 7);

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
(1, 1, 'something then the page is reloaded on 1st-page default.', 'something-then-the-page-is-reloaded-on-1st-page-default', '<u>something then the page is reloaded on 1st-page default.</u>', 'https://youtube.com/todospecial', 'something then the page is reloaded.', 'Reload - when the user working on page no 6 updating something then the page is reloaded on 1st-page default.', 'Reload - when the user working on page no 6 updating something then the page is reloaded on 1st-page default.', 0, 2, '2023-05-15 05:19:13', '2023-05-23 07:29:43'),
(5, 1, 'How to delete data from mysql table.', 'how-to-delete-data-from-mysql-table', 'How to delete data from mysql table.\r\n\r\nIn this post we will learn about how to delete data from mysql table.', 'https://youtube.com/todospecial', 'youtube family', '<p><b>How to delete data from mysql table.</b></p><p><br></p><p>In this post we will learn about how to delete data from <b>mysql table. </b></p>', 'how to search and delete mysql \r\nmysql with php', 0, 2, '2023-05-22 03:36:48', '2023-05-23 07:29:23'),
(6, 1, 'How to delete data from mysql table.', 'how-to-delete-data-from-mysql-table', 'How to delete data from mysql table.\r\n\r\nIn this post we will learn about how to delete data from mysql table.', 'youtube.com/techtips', 'php myadmin', 'How to delete data from mysql table.  In this post we will learn about how to delete data from mysql table.', 'How to delete data from mysql table.\r\n\r\nIn this post we will learn about how to delete data from mysql table.', 0, 2, '2023-05-22 03:38:15', '2023-05-23 07:29:15'),
(7, 1, 'What is java', 'what-is-java', '<p><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\"><b>Java</b> is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible</span><br></p>', 'https://www.google.com', 'what is java', 'what is java. how to use java language', 'java, programming language', 0, 2, '2023-05-23 07:24:56', '2023-05-23 07:26:34'),
(8, 1, 'MyEclipse IDE', 'myeclipse-ide', '<h3><span style=\"font-family: Inter, sans-serif; font-size: 17.6px;\"><b>MyEclipse IDE</b> is a full-stack IDE for creating powerful and dynamic Java Enterprise Edition (Java EE) and web applications with the help of the latest technologies. MyEclipse is built upon the Eclipse platform.</span></h3>', 'https://youtube.com/todospecial', 'what is java. what is MyEclipse IDE', 'MyEclipse is built upon the Eclipse platform', 'MyEclipse , Java , programming language.', 0, 2, '2023-05-24 04:39:27', '2023-05-24 04:39:27'),
(10, 1, 'First on Java', 'what-is-java-and-how-to-learn-java', '<div style=\"color: rgb(204, 204, 204); background-color: rgb(31, 31, 31); font-family: &quot;MonaLisa &quot;, Consolas, &quot;Courier New&quot;, monospace; font-size: 20px; line-height: 27px; white-space: pre;\"><div><span style=\"color: #d7ba7d;\">.bg-gray</span> {</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">background-color</span>: <span style=\"color: #ce9178;\">#ddd</span>;</div><div>}</div><br><div><span style=\"color: #d7ba7d;\">.post-description</span> {</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">overflow-y</span>: <span style=\"color: #ce9178;\">scroll</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">scrollbar-width</span>: <span style=\"color: #ce9178;\">none</span>;</div><div>}</div><br><div><span style=\"color: #d7ba7d;\">.post-code-bg</span> {</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">width</span>: <span style=\"color: #ce9178;\">fit-content</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">min-width</span>: <span style=\"color: #b5cea8;\">100%</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">background-color</span>: <span style=\"color: #ce9178;\">#212121</span> <span style=\"color: #569cd6;\">!important</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">width</span>: <span style=\"color: #b5cea8;\">100%</span> <span style=\"color: #569cd6;\">!important</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">overflow-x</span>: <span style=\"color: #ce9178;\">scroll</span> <span style=\"color: #569cd6;\">!important</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">position</span>: <span style=\"color: #ce9178;\">relative</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">padding</span>: <span style=\"color: #b5cea8;\">1rem</span> <span style=\"color: #b5cea8;\">1rem</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">margin-bottom</span>: <span style=\"color: #b5cea8;\">1rem</span>;</div><div>&nbsp; &nbsp; <span style=\"color: #9cdcfe;\">border-radius</span>: <span style=\"color: #b5cea8;\">0.25rem</span>;</div><div>}</div></div>', 'https://youtube.com/todospecial', 'what is java', 'In this post we will learn about java', 'java , java programming language , java all about', 0, 2, '2023-05-25 06:19:54', '2023-05-25 06:19:54'),
(11, 1, 'cdn links', 'cdn-links-for-develop', '<h6><font color=\"#808080\"><b>Step 1 :</b> Please copy and paste it into the code. </font></h6><p><font color=\"#808080\"><br></font></p><div style=\"color: rgb(204, 204, 204); background-color: rgb(31, 31, 31); font-family: \"MonaLisa \", Consolas, \"Courier New\", monospace; font-size: 20px; line-height: 27px; white-space: pre;\"><div><span style=\"color: #808080;\"><</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #9cdcfe;\">src</span><span style=\"color: #d4d4d4;\">=</span><span style=\"color: #ce9178;\">\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"</span><span style=\"color: #808080;\">></</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #808080;\">></span></div><div>    <span style=\"color: #808080;\"><</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #9cdcfe;\">src</span><span style=\"color: #d4d4d4;\">=</span><span style=\"color: #ce9178;\">\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js\"</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #808080;\">></</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #808080;\">></span></div><div>    <span style=\"color: #808080;\"><</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #9cdcfe;\">src</span><span style=\"color: #d4d4d4;\">=</span><span style=\"color: #ce9178;\">\"{{ asset(\'js/owl.carousel.min.js\') }}\"</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #808080;\">></</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #808080;\">></span>  </div><div>    <span style=\"color: #808080;\"><</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #9cdcfe;\">src</span><span style=\"color: #d4d4d4;\">=</span><span style=\"color: #ce9178;\">\"https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js\"</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #808080;\">></</span><span style=\"color: #569cd6;\">script</span><span style=\"color: #808080;\">></span></div><div>    </div></div>', 'https://youtube.com/todospecial', 'cdn links', 'all about cdn link', 'cdn links', 0, 2, '2023-05-25 06:22:28', '2023-05-25 06:53:17'),
(12, 1, 'Dashboard', 'dashboard-controller', '<p>Step 1: How to make dashboard&nbsp;</p><div style=\"color: rgb(204, 204, 204); background-color: rgb(31, 31, 31); font-family: &quot;MonaLisa &quot;, Consolas, &quot;Courier New&quot;, monospace; font-size: 20px; line-height: 27px; white-space: pre;\"><div><span style=\"color: #569cd6;\">&lt;?php</span></div><br><div><span style=\"color: #569cd6;\">namespace</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #4ec9b0;\">App\\Http\\Controllers\\Admin</span><span style=\"color: #d4d4d4;\">;</span></div><br><div><span style=\"color: #569cd6;\">use</span><span style=\"color: #d4d4d4;\"> App\\Models\\</span><span style=\"color: #4ec9b0;\">User</span><span style=\"color: #d4d4d4;\">;</span></div><div><span style=\"color: #569cd6;\">use</span><span style=\"color: #d4d4d4;\"> App\\Models\\</span><span style=\"color: #4ec9b0;\">Post</span><span style=\"color: #d4d4d4;\">;</span></div><div><span style=\"color: #569cd6;\">use</span><span style=\"color: #d4d4d4;\"> App\\Models\\</span><span style=\"color: #4ec9b0;\">Category</span><span style=\"color: #d4d4d4;\">;</span></div><div><span style=\"color: #569cd6;\">use</span><span style=\"color: #d4d4d4;\"> App\\Http\\Controllers\\</span><span style=\"color: #4ec9b0;\">Controller</span><span style=\"color: #d4d4d4;\">;</span></div><div><span style=\"color: #569cd6;\">use</span><span style=\"color: #d4d4d4;\"> Illuminate\\Http\\</span><span style=\"color: #4ec9b0;\">Request</span><span style=\"color: #d4d4d4;\">;</span></div><br><div><span style=\"color: #569cd6;\">class</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #4ec9b0;\">DashboardController</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #569cd6;\">extends</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #4ec9b0;\">Controller</span></div><div><span style=\"color: #d4d4d4;\">{</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; </span><span style=\"color: #569cd6;\">public</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #569cd6;\">function</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #dcdcaa;\">index</span><span style=\"color: #d4d4d4;\">()</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; {</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"color: #9cdcfe;\">$categories</span><span style=\"color: #d4d4d4;\"> = </span><span style=\"color: #4ec9b0;\">Category</span><span style=\"color: #d4d4d4;\">::</span><span style=\"color: #dcdcaa;\">count</span><span style=\"color: #d4d4d4;\">();</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"color: #9cdcfe;\">$posts</span><span style=\"color: #d4d4d4;\"> = </span><span style=\"color: #4ec9b0;\">Post</span><span style=\"color: #d4d4d4;\">::</span><span style=\"color: #dcdcaa;\">count</span><span style=\"color: #d4d4d4;\">();</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"color: #9cdcfe;\">$users</span><span style=\"color: #d4d4d4;\"> = </span><span style=\"color: #4ec9b0;\">User</span><span style=\"color: #d4d4d4;\">::</span><span style=\"color: #dcdcaa;\">where</span><span style=\"color: #d4d4d4;\">(</span><span style=\"color: #ce9178;\">\'role_as\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'0\'</span><span style=\"color: #d4d4d4;\">)-&gt;</span><span style=\"color: #dcdcaa;\">count</span><span style=\"color: #d4d4d4;\">();</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"color: #9cdcfe;\">$admins</span><span style=\"color: #d4d4d4;\"> = </span><span style=\"color: #4ec9b0;\">User</span><span style=\"color: #d4d4d4;\">::</span><span style=\"color: #dcdcaa;\">where</span><span style=\"color: #d4d4d4;\">(</span><span style=\"color: #ce9178;\">\'role_as\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'1\'</span><span style=\"color: #d4d4d4;\">)-&gt;</span><span style=\"color: #dcdcaa;\">count</span><span style=\"color: #d4d4d4;\">();</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"color: #c586c0;\">return</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #dcdcaa;\">view</span><span style=\"color: #d4d4d4;\">(</span><span style=\"color: #ce9178;\">\'admin.dashboard\'</span><span style=\"color: #d4d4d4;\">, </span><span style=\"color: #dcdcaa;\">compact</span><span style=\"color: #d4d4d4;\">(</span><span style=\"color: #ce9178;\">\'categories\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'posts\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'users\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'admins\'</span><span style=\"color: #d4d4d4;\">));</span></div><div><span style=\"color: #d4d4d4;\">&nbsp; &nbsp; }</span></div><div><span style=\"color: #d4d4d4;\">&nbsp;</span></div><div><span style=\"color: #d4d4d4;\">}</span></div><br></div>', 'https://youtube.com/todospecial', 'how to create dashbaord', 'In this post we design a dashboard', 'dashboard code', 0, 2, '2023-05-25 06:54:49', '2023-05-25 06:54:49'),
(13, 13, 'how to make money online.', 'how-to-make-money-online', '<div><b>In today\'s digital era,</b> the internet has opened up vast opportunities for individuals to work online and earn a living. Whether you\'re looking for a side gig or a full-time career, the online realm offers a diverse range of options. This guide aims to provide you with a comprehensive understanding of how to work online for money, exploring various avenues, skills, and strategies to help you succeed. By following these steps and implementing the right approach, you can unlock the potential to earn income remotely and enjoy the flexibility and freedom that online work provides.</div><div><br></div><div><b>Section 1: </b>Assessing Your Skills and Interests  Before diving into the world of online work, it\'s essential to evaluate your skills, interests, and passions. Identify your strengths, whether they lie in writing, graphic design, programming, marketing, teaching, or any other field. Additionally, consider your personal interests and hobbies that could potentially be monetized. By aligning your online work with your existing skills and interests, you\'ll be more motivated and likely to succeed.</div><div><br></div><div><b>Section 2:</b> Identifying Online Work Opportunities The online job market is vast, and understanding the various work opportunities available is crucial. Here are some popular options:</div><div><br></div><div><b>Freelancing:</b> Offer your skills and services as a freelancer on platforms like Upwork, Freelancer, or Fiverr.</div><div>Remote Employment: Seek out remote job positions on dedicated websites such as Remote.co, <b>FlexJobs</b>, or LinkedIn.</div><div>Online Marketplaces: Sell products or crafts on platforms like Etsy, eBay, or <b>Amazon</b>.</div><div>Content Creation: Start a blog, YouTube channel, or podcast and monetize your content through <b>advertising, sponsorships, or donations.</b></div><div>Online Tutoring: Teach languages, academic subjects, or specialized skills through online tutoring platforms like <b>VIPKid </b>or <b>Udemy</b>.</div><div><b>Virtual Assistance:</b> Provide administrative or personal assistance remotely to businesses or individuals.</div><div><b>Affiliate Marketing</b>: Promote products or services and earn a commission on sales through affiliate programs.</div><div><b>E-commerce: </b>Set up an online store and sell products directly to customers.</div><div>Transcription and Translation: Convert audio or written content into text or translate content between languages.</div><div>Online Surveys and Microtasks: Participate in paid surveys or complete small online tasks on websites like Amazon Mechanical Turk or <b>Swagbucks</b>.</div><div><b>Section 3:</b> Depending on your chosen field, you may need to acquire or enhance specific skills to increase your employability and earning potential. Here are some ways to do so:</div><div><br></div><div><b>Online Courses:</b> Enroll in online courses or programs offered by reputable platforms like <b>Coursera, Udemy, or LinkedIn </b>Learning to develop new skills.</div><div>Skill-based Websites: Utilize websites like <b>Codecademy</b>, Khan Academy, or <b>Skillshare</b>, which offer a wide range of tutorials and resources on various skills.</div><div><b>Professional Certifications:</b> Obtain industry-recognized certifications relevant to your field, which can help establish your credibility.</div><div><b>Networking: </b>Engage with online communities, forums, and social media groups related to your field of interest. Networking can lead to valuable connections, job opportunities, and mentorship.</div><div>Practice and Portfolio Development: Hone your skills by working on personal projects, building a portfolio, or contributing to open-source initiatives. A strong portfolio demonstrates your expertise to potential clients or employers.</div>', 'https://youtube.com/todospecial', 'how to make money , how to earn money, how to work online for money', 'In this post we will learn about How to make money online. with easy step', 'make money ,  earn money, work online for money', 0, 2, '2023-06-01 00:01:28', '2023-06-01 00:51:36'),
(14, 13, 'how to earn money from amazon affiliate program', 'how-to-earn-money-from-amazon-affiliate-program', '<p>In this post we will know more how to earn money from <b>amazon affiliate</b> program</p><p>Amazon Affiliate Marketing is a popular and potentially lucrative method to earn money online. By partnering with the world\'s largest e-commerce platform, you can promote products and earn commissions for every sale made through your referral links. This guide will walk you through the process of setting up an Amazon Affiliate account, choosing the right products, and implementing effective marketing strategies to maximize your earnings.</p><p><br></p><p><b>Step 1:</b> Sign up for the Amazon Affiliate Program </p><p><br></p><p>Visit the Amazon Associates website and sign up for a free account.</p><p>Fill out the necessary information, including your website or app details and preferred payment method.</p><p>Read and accept the program\'s terms and conditions.</p><p><b>Step 2:</b> Choose a Profitable Niche </p><p><br></p><p>Identify a niche that aligns with your interests, expertise, and target audience.</p><p>Research popular product categories on Amazon and assess their profitability and demand.</p><p>Consider the competition and potential commission rates for different niches.</p><p><b>Step 3:</b> Build an Engaging Website or Blog </p><p><br></p><p>Choose a domain name and register it with a reliable hosting provider.</p><p>Install a content management system (CMS) like WordPress to build your website.</p><p>Create high-quality, engaging content that provides value to your audience.</p><p>Optimize your website for search engines by using relevant keywords and implementing SEO best practices.</p><p><b>Step 4:</b> Select and Promote Relevant Amazon Products </p><p><br></p><p>Use the Amazon Associates dashboard to search for products related to your niche.</p><p>Analyze product reviews, ratings, and sales rank to select high-quality products.</p><p>Incorporate affiliate links into your content strategically, such as product reviews, comparison articles, or product recommendations.</p><p>Leverage various promotional techniques, including banners, widgets, and text links, to drive traffic to Amazon.</p><p><b>Step 5:</b> Implement Effective Marketing Strategies </p><p><br></p><p>Utilize social media platforms to promote your affiliate links and engage with your audience.</p><p>Create compelling product-focused content, such as tutorials, gift guides, or \"best of\" lists.</p><p>Develop an email list and send regular newsletters featuring Amazon product recommendations.</p><p>Collaborate with influencers or other websites in your niche to expand your reach.</p><p>Implement SEO strategies to increase organic traffic to your website.</p><p><b>Step 6:</b> Analyze and Optimize Your Performance </p><p><br></p><p>Track your affiliate links and monitor their performance using Amazon Associates reporting tools.</p><p>Analyze conversion rates, click-through rates, and earnings to identify top-performing products and optimize your marketing efforts.</p><p>Experiment with different strategies, promotional techniques, and content formats to find what works best for your audience.</p><p>Continuously update your website with fresh content and stay informed about industry trends and new product releases.</p><p><b>Conclusion </b></p><p>With dedication, strategic planning, and consistent effort, Amazon Affiliate Marketing can be a lucrative source of income. By following the steps outlined in this guide, you can establish a successful affiliate marketing business and earn commissions for promoting Amazon products. Remember to stay updated with Amazon\'s policies, optimize your website for conversions, and always prioritize providing value to your audience. With time and persistence, you can unlock the potential of this online money-making opportunity.</p>', 'https://www.youtube.com/todospecial', 'how to earn money from amazon affiliate program, how to make money from amazon affiliate, how to make money, amazon affiliate. share amazon product from amazon', 'In this post I written all about the how to make money from amazon affiliate marketing.', 'amazon affiliate , how to make amazon affiliate, online money', 0, 2, '2023-06-01 00:10:34', '2023-06-01 00:11:36'),
(15, 13, 'how to make money with Google\'s Blogging Program', 'how-to-make-money-with-googles-blogging-program', '<p><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">In this post I explain all about how to make money from google blogging program. so let start the blog.</span></p><p><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Google offers a blogging program called </span><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>Google AdSense</b></span><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">, which allows website owners to monetize their blogs through targeted advertisements. By leveraging the power of Google\'s advertising network, you can earn money from your blog based on ad impressions and clicks. This guide aims to provide you with a step-by-step process to start earning money from Google\'s blogging program, covering aspects such as creating a blog, optimizing content, implementing ads, and maximizing your revenue potential.</span><br></p><p><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>Step 1:</b></span><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> Create a Blog&nbsp;</span></p><p>Choose a blogging platform such as Blogger or WordPress.</p><p>Select a domain name that reflects your blog\'s niche or topic.</p><p>Customize the design and layout to create a visually appealing and user-friendly blog.</p><p><b>Step 2: </b>Produce High-Quality Content&nbsp;</p><p><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Identify your target audience and research popular topics within your niche.</span><br></p><p>Create original, engaging, and informative content that provides value to your readers.</p><p>Optimize your blog posts for search engines by incorporating relevant keywords and meta tags.</p><p><b>Step 3:</b> Sign Up for Google AdSense&nbsp;</p><p><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Visit the Google AdSense website and sign up for an account.</span><br></p><p>Provide accurate information about your blog, including its URL and content category.</p><p>Wait for Google\'s approval, which may take a few days.</p><p><b>Step 4:</b> Implement Advertisements on Your Blog&nbsp;</p><p><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Once approved, access your Google AdSense account and generate ad codes.</span><br></p><p>Insert the ad codes into your blog\'s HTML or by using plugins or widgets.</p><p>Place ads strategically to maximize visibility without compromising the user experience.</p><p>Experiment with various ad formats such as display ads, text ads, or responsive ads.</p><p><b>Step 5:</b> Drive Traffic to Your Blog&nbsp;</p><p><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Utilize SEO techniques to improve your blog\'s visibility in search engine results.</span><br></p><p>Promote your blog through social media channels, email newsletters, and online communities.</p><p>Engage with your audience by responding to comments, encouraging discussions, and sharing your content on relevant platforms.</p><p><b>Step 6:</b> Analyze Performance and Optimize&nbsp;</p><p><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Monitor your Google AdSense dashboard to track ad performance, impressions, clicks, and earnings.</span><br></p><p>Analyze the data to identify high-performing ad placements, demographics, and content categories.</p><p>Experiment with ad placement, sizes, and formats to optimize your revenue.</p><p>Consider using A/B testing to compare different ad configurations and determine the most effective strategies.</p><p><b>Step 7: </b>Comply with Google AdSense Policies&nbsp;</p><p><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Familiarize yourself with Google AdSense policies to ensure compliance.</span><br></p><p>Avoid engaging in fraudulent activities, click baiting, or manipulating ad placements.</p><p>Monitor your blog\'s content regularly to ensure it adheres to Google\'s guidelines.</p><p>Conclusion&nbsp;</p><p><b>Google AdSense offers bloggers an opportunity to monetize</b> their content and earn money through targeted advertisements. By following the steps outlined in this guide, including creating quality content, implementing ads strategically, driving traffic, and optimizing performance, you can maximize your earnings potential with Google\'s blogging program. Remember to consistently produce valuable content, engage with your audience, and stay updated with Google\'s policies to maintain a successful and sustainable revenue stream from your blog.</p>', 'https://youtube.com/todospecial', 'how to make money with Google\'s Blogging Program', 'In this post I explain all about how to make money from google blogging program. so let start the blog.', 'google blogger , making money from google blogger, google blogspots, way to earn from google blogspot', 0, 2, '2023-06-01 00:27:24', '2023-06-01 00:27:24'),
(16, 13, 'how to earn money from facebook account', 'how-to-earn-money-from-facebook-account', '<p>We will explore the strategies to earn money from Facebook. With its vast user base and extensive reach, Facebook offers numerous opportunities for individuals and businesses to monetize their presence on the platform.<br></p><p><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>Facebook</b></span><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">, with its massive user base and extensive reach, offers various opportunities for individuals to earn money. Whether you\'re a business owner, content creator, or someone looking for additional income, this guide will walk you through different methods and strategies to monetize your presence on Facebook.</span></p><p><br></p><p><b>Step 1:</b> Build a Engaged Audience&nbsp;</p><p><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\"><b>Create a Facebook Page</b></span><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> or Group focused on a specific niche or topic.</span><br></p><p>Consistently share high-quality content that resonates with your target audience.</p><p>Engage with your audience by responding to comments, messages, and posts.</p><p>Encourage likes, shares, and followers by running contests, giveaways, or incentives.</p><p><b>Step 2:</b> Monetize Your Facebook Page&nbsp;</p><p><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Partner with Brands: Collaborate with relevant brands for sponsored posts, product endorsements, or influencer marketing campaigns.</span><br></p><p><b>Facebook Ads:</b> Utilize Facebook\'s ad platform to promote your own products, services, or affiliate offers.</p><p><b>Affiliate Marketing:</b> Join affiliate programs and promote products or services on your Facebook Page, earning a commission for each sale made through your referral.</p><p><b>Instant Articles:</b> If you\'re a publisher or content creator, monetize your articles through Facebook\'s Instant Articles feature, which displays ads within your content.</p><p><b>Step 3:</b> Sell Products or Services&nbsp;</p><p><br></p><p><b>Facebook Shop:</b> Set up a Facebook Shop and sell physical or digital products directly to your audience.</p><p>E-commerce Integration: Integrate your online store with Facebook using platforms like Shopify, WooCommerce, or BigCommerce, allowing customers to browse and purchase products without leaving the platform.</p><p><b>Services Marketplace:</b> List your services on Facebook\'s Services Marketplace, targeting users looking for specific services in their local area.</p><p><b>Facebook Groups:</b> Create a community around your products or services and engage with potential customers in a Facebook Group.</p><p><b>Step 4:</b> Content Monetization&nbsp;</p><p><br></p><p><b>Video Monetization: </b>If you create videos, join the Facebook Partner Program (FPP) and monetize your videos through in-stream ads, fan subscriptions, or branded content.</p><p><b>Paid Online Events:</b> Host virtual events, workshops, or webinars on Facebook and charge attendees for access.</p><p><b>Fan Subscriptions:</b> Offer exclusive content or perks to your most dedicated fans through the Facebook Fan Subscriptions feature, where users pay a monthly fee to access premium content.</p><p><b>Branded Content:</b> Collaborate with brands to create sponsored content, where you feature their products or services in your posts or videos.</p><p><b>Step 5:</b> Facebook Fundraising and Donations&nbsp;</p><p><b style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\">Non-Profit Fundraising:</b><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> If you represent a non-profit organization, use Facebook\'s fundraising tools to collect donations from supporters.</span><br></p><p>Personal Fundraising: Raise funds for personal causes or emergencies by creating a Facebook Fundraiser and sharing it with your network.</p><p><b>Step 6: </b>Insights, Analytics, and Optimization&nbsp;</p><p><br></p><p>Utilize Facebook Insights to understand your audience demographics, engagement metrics, and post performance.</p><p>Analyze data to identify the most successful types of content and optimize your strategies accordingly.</p><p>Experiment with different posting times, content formats, and engagement techniques to maximize reach and engagement.</p><p><b>Conclusion&nbsp;</b></p><p>Facebook provides numerous avenues for individuals and businesses to earn money. By building an engaged audience, leveraging Facebook\'s advertising and monetization features, selling products or services, and utilizing content monetization tools, you can turn your Facebook presence into a profitable venture. Keep in mind that consistency, quality content, and audience engagement are key factors in achieving success</p>', 'https://youtube.com/todospecial', 'earning money from facebook, how to make money from facebook account, what is facebook and how it provide money', 'In this post we will explore the strategies to earn money from Facebook. With its vast user base and extensive reach, Facebook offers numerous opportunities for individuals and businesses to monetize their presence on the platform.', 'facebook, earn money from facebook, facebook for student, make money with facebook account.', 0, 2, '2023-06-01 01:02:17', '2023-06-01 01:02:17'),
(17, 11, 'how to reverse a array in php', 'how-to-reverse-a-array-in-php', '<p>In this post I explain a program that is reverse a array in php. </p><div style=\"color: rgb(204, 204, 204); background-color: rgb(31, 31, 31); font-family: \"MonaLisa \", Consolas, \"Courier New\", monospace; font-size: 20px; line-height: 27px; white-space: pre;\"><div style=\"line-height: 27px;\"><div><span style=\"color: #9cdcfe;\">$arr</span><span style=\"color: #d4d4d4;\"> = </span><span style=\"color: #dcdcaa;\">array</span><span style=\"color: #d4d4d4;\">(</span><span style=\"color: #ce9178;\">\'5\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'6\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'7\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'66\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'33\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'16\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'7\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'9\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'7\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'10\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'11\'</span><span style=\"color: #d4d4d4;\">,</span><span style=\"color: #ce9178;\">\'13\'</span><span style=\"color: #d4d4d4;\">);  </span></div><div><span style=\"color: #6a9955;\">// sort in assecending order</span></div><br><div><span style=\"color: #c586c0;\">for</span><span style=\"color: #d4d4d4;\">(</span><span style=\"color: #9cdcfe;\">$i</span><span style=\"color: #d4d4d4;\"> = </span><span style=\"color: #b5cea8;\">0</span><span style=\"color: #d4d4d4;\"> ; </span><span style=\"color: #9cdcfe;\">$i</span><span style=\"color: #d4d4d4;\"> < </span><span style=\"color: #dcdcaa;\">count</span><span style=\"color: #d4d4d4;\">(</span><span style=\"color: #9cdcfe;\">$arr</span><span style=\"color: #d4d4d4;\">); </span><span style=\"color: #9cdcfe;\">$i</span><span style=\"color: #d4d4d4;\">++){</span></div><div><span style=\"color: #d4d4d4;\">    </span><span style=\"color: #c586c0;\">for</span><span style=\"color: #d4d4d4;\">(</span><span style=\"color: #9cdcfe;\">$j</span><span style=\"color: #d4d4d4;\"> = </span><span style=\"color: #b5cea8;\">0</span><span style=\"color: #d4d4d4;\">; </span><span style=\"color: #9cdcfe;\">$j</span><span style=\"color: #d4d4d4;\"> < </span><span style=\"color: #dcdcaa;\">count</span><span style=\"color: #d4d4d4;\">(</span><span style=\"color: #9cdcfe;\">$arr</span><span style=\"color: #d4d4d4;\">) -</span><span style=\"color: #b5cea8;\">1</span><span style=\"color: #d4d4d4;\"> ; </span><span style=\"color: #9cdcfe;\">$j</span><span style=\"color: #d4d4d4;\">++){</span></div><div><span style=\"color: #d4d4d4;\">        </span><span style=\"color: #c586c0;\">if</span><span style=\"color: #d4d4d4;\">(</span><span style=\"color: #9cdcfe;\">$arr</span><span style=\"color: #d4d4d4;\">[</span><span style=\"color: #9cdcfe;\">$j</span><span style=\"color: #d4d4d4;\">] > </span><span style=\"color: #9cdcfe;\">$arr</span><span style=\"color: #d4d4d4;\">[</span><span style=\"color: #9cdcfe;\">$j</span><span style=\"color: #d4d4d4;\">+</span><span style=\"color: #b5cea8;\">1</span><span style=\"color: #d4d4d4;\">]){</span></div><div><span style=\"color: #d4d4d4;\">            </span><span style=\"color: #9cdcfe;\">$temp</span><span style=\"color: #d4d4d4;\"> = </span><span style=\"color: #9cdcfe;\">$arr</span><span style=\"color: #d4d4d4;\">[</span><span style=\"color: #9cdcfe;\">$j</span><span style=\"color: #d4d4d4;\"> +</span><span style=\"color: #b5cea8;\">1</span><span style=\"color: #d4d4d4;\">];</span></div><div><span style=\"color: #d4d4d4;\">            </span><span style=\"color: #9cdcfe;\">$arr</span><span style=\"color: #d4d4d4;\">[</span><span style=\"color: #9cdcfe;\">$j</span><span style=\"color: #d4d4d4;\">+</span><span style=\"color: #b5cea8;\">1</span><span style=\"color: #d4d4d4;\">] = </span><span style=\"color: #9cdcfe;\">$arr</span><span style=\"color: #d4d4d4;\">[</span><span style=\"color: #9cdcfe;\">$j</span><span style=\"color: #d4d4d4;\">];</span></div><div><span style=\"color: #d4d4d4;\">            </span><span style=\"color: #9cdcfe;\">$arr</span><span style=\"color: #d4d4d4;\">[</span><span style=\"color: #9cdcfe;\">$j</span><span style=\"color: #d4d4d4;\">] = </span><span style=\"color: #9cdcfe;\">$temp</span><span style=\"color: #d4d4d4;\">;</span></div><br><div><span style=\"color: #d4d4d4;\">        }</span></div><div><span style=\"color: #d4d4d4;\">    }</span></div><div><span style=\"color: #d4d4d4;\">}</span></div><div><span style=\"color: #dcdcaa;\">echo</span><span style=\"color: #d4d4d4;\"> </span><span style=\"color: #ce9178;\">\"<pre>\"</span><span style=\"color: #d4d4d4;\">; </span><span style=\"color: #6a9955;\">// pre order form</span></div><div><span style=\"color: #dcdcaa;\">print_r</span><span style=\"color: #d4d4d4;\"> ( </span><span style=\"color: #9cdcfe;\">$arr</span><span style=\"color: #d4d4d4;\">); </span></div></div></div>', NULL, 'sorting array in php', 'In this post you will see sorting array in php', 'php array, php array sorting', 0, 2, '2023-06-01 01:38:05', '2023-06-01 01:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `logo`, `favicon`, `description`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Todospecial yt', '1685444456.png', '1685444456.png', NULL, 'Todospecial yt', 'Technology, blogging, programming, web development, cybersecurity, youtube video, mobile error.', 'Welcome to Tech Review Mobile, the go-to destination for comprehensive mobile reviews and detailed gadget descriptions. Our platform offers concise and unbiased assessments of the latest smartphones and gadgets, ensuring that you make informed purchasing decisions.', '2023-05-30 04:27:08', '2023-05-30 05:30:56');

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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
