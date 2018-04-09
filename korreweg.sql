-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 30 mrt 2018 om 12:16
-- Serverversie: 10.1.30-MariaDB
-- PHP-versie: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `korreweg`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-03-27 11:26:11', '2018-03-27 11:26:11'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-03-27 11:26:11', '2018-03-27 11:26:11');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, NULL, 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, NULL, 3),
(29, 3, 'password', 'password', 'password', 1, 0, 0, 1, 1, 0, NULL, 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, NULL, 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, NULL, 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(53, 3, 'role_id', 'text', 'role_id', 0, 1, 1, 1, 1, 1, NULL, 9),
(54, 3, 'forename', 'text', 'Forename', 0, 1, 1, 1, 1, 1, NULL, 10),
(55, 3, 'lastname', 'text', 'Lastname', 0, 1, 1, 1, 1, 1, NULL, 11),
(56, 3, 'street', 'text', 'Street', 0, 1, 1, 1, 1, 1, NULL, 12),
(57, 3, 'streetnumber', 'text', 'Streetnumber', 0, 1, 1, 1, 1, 1, NULL, 13),
(58, 3, 'zipcode', 'text', 'Zipcode', 0, 1, 1, 1, 1, 1, NULL, 14),
(59, 3, 'place', 'text', 'Place', 0, 1, 1, 1, 1, 1, NULL, 15),
(60, 3, 'telephone', 'number', 'Telephone', 0, 1, 1, 1, 1, 1, NULL, 16),
(61, 3, 'enabled', 'checkbox', 'Enabled', 0, 1, 1, 1, 1, 1, NULL, 17),
(74, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(75, 11, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 2),
(76, 11, 'body', 'rich_text_box', 'Body', 1, 1, 1, 1, 1, 1, NULL, 3),
(77, 11, 'cover_image', 'image', 'Cover Image', 1, 1, 1, 1, 1, 1, NULL, 4),
(78, 11, 'subtitle', 'text', 'Subtitle', 1, 1, 1, 1, 1, 1, NULL, 5),
(79, 11, 'subtext', 'rich_text_box', 'Subtext', 1, 1, 1, 1, 1, 1, NULL, 6),
(80, 11, 'disabled', 'checkbox', 'Disabled', 1, 1, 1, 1, 1, 1, NULL, 7),
(81, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 8),
(82, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 9),
(83, 11, 'user_id', 'number', 'User Id', 1, 1, 1, 1, 1, 1, NULL, 10);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-03-27 11:26:10', '2018-03-27 11:26:10'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', NULL, NULL, 1, 0, '2018-03-27 11:26:10', '2018-03-28 05:55:00'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-03-27 11:26:10', '2018-03-27 11:26:10'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-03-27 11:26:10', '2018-03-27 11:26:10'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-03-27 11:26:10', '2018-03-27 11:26:10'),
(11, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'App\\Post', NULL, 'PostsController', NULL, 1, 1, '2018-03-28 11:09:52', '2018-03-29 10:33:04');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-03-27 11:26:10', '2018-03-27 11:26:10');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-03-27 11:26:10', '2018-03-27 11:26:10', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2018-03-27 11:26:10', '2018-03-28 07:02:51', 'voyager.media.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 2, '2018-03-27 11:26:10', '2018-03-28 06:34:08', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2018-03-27 11:26:10', '2018-03-28 07:02:51', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2018-03-27 11:26:10', '2018-03-28 07:02:51', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2018-03-27 11:26:10', '2018-03-28 07:02:51', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-03-27 11:26:10', '2018-03-28 07:02:51', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-03-27 11:26:10', '2018-03-28 06:34:01', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2018-03-27 11:26:10', '2018-03-28 06:34:01', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2018-03-27 11:26:10', '2018-03-28 06:34:01', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2018-03-27 11:26:10', '2018-03-28 07:02:51', 'voyager.settings.index', NULL),
(13, 1, 'Seniors', '/', '_self', 'voyager-people', '#000000', NULL, 3, '2018-03-28 07:02:29', '2018-03-28 07:02:51', NULL, ''),
(15, 1, 'Posts', '/admin/posts', '_self', NULL, NULL, NULL, 11, '2018-03-28 11:09:52', '2018-03-28 11:09:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(73, '2014_10_12_000000_create_users_table', 1),
(74, '2014_10_12_100000_create_password_resets_table', 1),
(75, '2016_01_01_000000_add_voyager_user_fields', 1),
(76, '2016_01_01_000000_create_data_types_table', 1),
(77, '2016_01_01_000000_create_pages_table', 1),
(78, '2016_01_01_000000_create_posts_table', 1),
(79, '2016_02_15_204651_create_categories_table', 1),
(80, '2016_05_19_173453_create_menu_table', 1),
(81, '2016_10_21_190000_create_roles_table', 1),
(82, '2016_10_21_190000_create_settings_table', 1),
(83, '2016_11_30_135954_create_permission_table', 1),
(84, '2016_11_30_141208_create_permission_role_table', 1),
(85, '2016_12_26_201236_data_types__add__server_side', 1),
(86, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(87, '2017_01_14_005015_create_translations_table', 1),
(88, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(89, '2017_01_15_000000_create_permission_groups_table', 1),
(90, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(91, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(92, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(93, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(94, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(95, '2017_08_05_000000_add_group_to_settings_table', 1),
(96, '2018_03_22_161706_add_credentials_to_users', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(2, 'browse_database', NULL, '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(3, 'browse_media', NULL, '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(4, 'browse_compass', NULL, '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(5, 'browse_menus', 'menus', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(6, 'read_menus', 'menus', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(7, 'edit_menus', 'menus', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(8, 'add_menus', 'menus', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(9, 'delete_menus', 'menus', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(10, 'browse_pages', 'pages', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(11, 'read_pages', 'pages', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(12, 'edit_pages', 'pages', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(13, 'add_pages', 'pages', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(14, 'delete_pages', 'pages', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(15, 'browse_roles', 'roles', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(16, 'read_roles', 'roles', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(17, 'edit_roles', 'roles', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(18, 'add_roles', 'roles', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(19, 'delete_roles', 'roles', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(20, 'browse_users', 'users', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(21, 'read_users', 'users', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(22, 'edit_users', 'users', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(23, 'add_users', 'users', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(24, 'delete_users', 'users', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(30, 'browse_categories', 'categories', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(31, 'read_categories', 'categories', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(32, 'edit_categories', 'categories', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(33, 'add_categories', 'categories', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(34, 'delete_categories', 'categories', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(35, 'browse_settings', 'settings', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(36, 'read_settings', 'settings', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(37, 'edit_settings', 'settings', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(38, 'add_settings', 'settings', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(39, 'delete_settings', 'settings', '2018-03-27 11:26:10', '2018-03-27 11:26:10', NULL),
(45, 'browse_posts', 'posts', '2018-03-28 11:09:52', '2018-03-28 11:09:52', NULL),
(46, 'read_posts', 'posts', '2018-03-28 11:09:52', '2018-03-28 11:09:52', NULL),
(47, 'edit_posts', 'posts', '2018-03-28 11:09:52', '2018-03-28 11:09:52', NULL),
(48, 'add_posts', 'posts', '2018-03-28 11:09:52', '2018-03-28 11:09:52', NULL),
(49, 'delete_posts', 'posts', '2018-03-28 11:09:52', '2018-03-28 11:09:52', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `cover_image` varchar(50) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `subtext` varchar(400) NOT NULL,
  `disabled` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `cover_image`, `subtitle`, `subtext`, `disabled`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Asphyx', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_Rack_(album)\" title=\"The Rack (album)\" target=\"_blank\">The Rack</a></i> (1991, <a href=\"https://en.wikipedia.org/wiki/Century_Media_Records\" title=\"Century Media Records\" target=\"_blank\">Century Media</a>)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Last_One_on_Earth\" title=\"Last One on Earth\" target=\"_blank\">Last One on Earth</a></i> (1992, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Asphyx_(album)\" title=\"Asphyx (album)\" target=\"_blank\">Asphyx</a></i> (1994, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/God_Cries\" title=\"God Cries\" target=\"_blank\">God Cries</a></i> (1996, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Embrace_the_Death\" title=\"Embrace the Death\" target=\"_blank\">Embrace the Death</a></i> (1996, Century Media; recorded in 1990)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/On_the_Wings_of_Inferno\" title=\"On the Wings of Inferno\" target=\"_blank\">On the Wings of Inferno</a></i> (2000, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Death...The_Brutal_Way\" title=\"Death...The Brutal Way\" target=\"_blank\">Death...The Brutal Way</a></i> (2009, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Deathhammer\" title=\"Deathhammer\" target=\"_blank\">Deathhammer</a></i> (2012, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Incoming_Death\" class=\"mw-redirect\" title=\"Incoming Death\" target=\"_blank\">Incoming Death</a></i> (2016, Century Media)</li>\r\n</ul>', 'Asphyx.jpg', 'Discography Asphyx', 'subtext1', 1, '2018-01-31 17:00:00', '2018-01-31 17:00:00', 1),
(2, 'At The Gates', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_Red_in_the_Sky_Is_Ours\" title=\"The Red in the Sky Is Ours\" target=\"_blank\">The Red in the Sky Is Ours</a></i> (1992)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/With_Fear_I_Kiss_the_Burning_Darkness\" title=\"With Fear I Kiss the Burning Darkness\" target=\"_blank\">With Fear I Kiss the Burning Darkness</a></i> (1993)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Terminal_Spirit_Disease\" title=\"Terminal Spirit Disease\" target=\"_blank\">Terminal Spirit Disease</a></i> (1994)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Slaughter_of_the_Soul\" title=\"Slaughter of the Soul\" target=\"_blank\">Slaughter of the Soul</a></i> (1995)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/At_War_with_Reality\" title=\"At War with Reality\" target=\"_blank\">At War with Reality</a></i> (2014)</li>\r\n<li><i><a href=\"/w/index.php?title=To_Drink_from_the_Night_Itself&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"To Drink from the Night Itself (page does not exist)\" target=\"_blank\">To Drink from the Night Itself</a></i> (2018)</li>\r\n</ul>', 'At_The_Gates.jpg', 'Discography At The Gates', 'subtext2', 1, '2018-02-01 17:00:00', '2018-02-01 17:00:00', 1),
(3, 'August Burns Red', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Thrill_Seeker\" title=\"Thrill Seeker\" target=\"_blank\">Thrill Seeker</a></i> (2005)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Messengers_(album)\" title=\"Messengers (album)\" target=\"_blank\">Messengers</a></i> (2007)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Constellations_(August_Burns_Red_album)\" title=\"Constellations (August Burns Red album)\" target=\"_blank\">Constellations</a></i> (2009)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Leveler_(album)\" title=\"Leveler (album)\" target=\"_blank\">Leveler</a></i> (2011)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/August_Burns_Red_Presents:_Sleddin%27_Hill\" title=\"August Burns Red Presents: Sleddin Hill\" target=\"_blank\">Sleddin Hill</a></i> (2012)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Rescue_%26_Restore\" title=\"Rescue &amp; Restore\" target=\"_blank\">Rescue &amp; Restore</a></i> (2013)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Found_in_Far_Away_Places\" title=\"Found in Far Away Places\" target=\"_blank\">Found in Far Away Places</a></i> (2015)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Phantom_Anthem\" title=\"Phantom Anthem\" target=\"_blank\">Phantom Anthem</a></i> (2017)</li>\r\n</ul>', 'August_Burns_Red.jpg', 'Discography August Burns Red', 's3', 1, '2018-02-02 17:00:00', '2018-02-02 17:00:00', 1),
(4, 'Autopsy', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Severed_Survival\" title=\"Severed Survival\" target=\"_blank\">Severed Survival</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Mental_Funeral\" title=\"Mental Funeral\" target=\"_blank\">Mental Funeral</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Acts_of_the_Unspeakable\" title=\"Acts of the Unspeakable\" target=\"_blank\">Acts of the Unspeakable</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Shitfun\" title=\"Shitfun\" target=\"_blank\">Shitfun</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Macabre_Eternal\" title=\"Macabre Eternal\" target=\"_blank\">Macabre Eternal</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_Headless_Ritual\" title=\"The Headless Ritual\" target=\"_blank\">The Headless Ritual</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Tourniquets,_Hacksaws_and_Graves\" title=\"Tourniquets, Hacksaws and Graves\" target=\"_blank\">Tourniquets, Hacksaws and Graves</a></i></li>\r\n</ul>', 'Autopsy.jpg', 'Discography Autopsy', 's4', 1, '2018-02-03 20:00:00', '2018-02-03 20:00:00', 1),
(5, 'Brutal Truth', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Extreme_Conditions_Demand_Extreme_Responses\" title=\"Extreme Conditions Demand Extreme Responses\" target=\"_blank\">Extreme Conditions Demand Extreme Responses</a></i> (1992)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Need_to_Control\" title=\"Need to Control\" target=\"_blank\">Need to Control</a></i> (1994)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Kill_Trend_Suicide\" title=\"Kill Trend Suicide\" target=\"_blank\">Kill Trend Suicide</a></i> (1996)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Sounds_of_the_Animal_Kingdom\" title=\"Sounds of the Animal Kingdom\" target=\"_blank\">Sounds of the Animal Kingdom</a></i> (1997)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Evolution_Through_Revolution\" title=\"Evolution Through Revolution\" target=\"_blank\">Evolution Through Revolution</a></i> (2009)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/End_Time_(album)\" title=\"End Time (album)\" target=\"_blank\">End Time</a></i> (2011)</li>\r\n</ul>', 'brutal-truth.jpg', 'Discography Brutal Truth', 's5', 1, '2018-02-05 14:05:00', '2018-02-05 14:05:00', 1),
(6, 'Zo werkt het', '<h2>Blog: nieuw artikel uploaden:</h2>\r\n<p>Titel Blog, Text Blog en Categorie zijn verplicht in te vullen.<br />\r\nSubtitel en Subtext zijn optioneel.<br />\r\nSelecteer vervolgens eerst een foto en druk daarna op \'Upload naar Website\'.<br />\r\nP.S. Je kunt ook geen foto selecteren!</p>\r\n<p>De text in de blog kun je opmaken met <u>HTML!</u><br />\r\nVoor een goede snelle cursus ga naar: <a href=\"https://www.w3schools.com/html/\" target=\"_blank\">w3schools.com</a></p>', '', 'De Blogmaster', 's6', 1, '2018-02-06 21:46:30', '2018-02-06 21:46:30', 1),
(7, 'Fleshgod Apocalypse', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Oracles_(album)\" title=\"Oracles (album)\" target=\"_blank\">Oracles</a></i> (2009)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Agony_(Fleshgod_Apocalypse_album)\" title=\"Agony (Fleshgod Apocalypse album)\" target=\"_blank\">Agony</a></i> (2011)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Labyrinth_(Fleshgod_Apocalypse_album)\" title=\"Labyrinth (Fleshgod Apocalypse album)\" target=\"_blank\">Labyrinth</a></i> (2013)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/King_(Fleshgod_Apocalypse_album)\" title=\"King (Fleshgod Apocalypse album)\" target=\"_blank\">King</a></i> (2016)</li>\r\n</ul>', '113185_photo.jpg', 'Discography Fleshgod Apocalypse', 's7', 1, '2018-02-09 11:06:30', '2018-02-09 11:06:30', 1),
(8, 'Immortal', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Diabolical_Fullmoon_Mysticism\" title=\"Diabolical Fullmoon Mysticism\" target=\"_blank\">Diabolical Fullmoon Mysticism</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Pure_Holocaust\" title=\"Pure Holocaust\" target=\"_blank\">Pure Holocaust</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Battles_in_the_North\" title=\"Battles in the North\" target=\"_blank\">Battles in the North</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Blizzard_Beasts\" title=\"Blizzard Beasts\" target=\"_blank\">Blizzard Beasts</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/At_the_Heart_of_Winter\" title=\"At the Heart of Winter\" target=\"_blank\">At the Heart of Winter</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Damned_in_Black\" title=\"Damned in Black\" target=\"_blank\">Damned in Black</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Sons_of_Northern_Darkness\" title=\"Sons of Northern Darkness\" target=\"_blank\">Sons of Northern Darkness</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/All_Shall_Fall\" title=\"All Shall Fall\" target=\"_blank\">All Shall Fall</a></i></li>\r\n</ul>\r\n', 'immortal.jpg', 'Discography Immortal', 's8', 1, '2018-02-12 20:27:15', '2018-02-12 20:27:15', 1),
(9, 'Strapping Young Lad', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Heavy_as_a_Really_Heavy_Thing\" title=\"Heavy as a Really Heavy Thing\" target=\"_blank\">Heavy as a Really Heavy Thing</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/City_(Strapping_Young_Lad_album)\" title=\"City (Strapping Young Lad album)\" target=\"_blank\">City</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Strapping_Young_Lad_(album)\" title=\"Strapping Young Lad (album)\" target=\"_blank\">Strapping Young Lad</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Alien_(Strapping_Young_Lad_album)\" title=\"Alien (Strapping Young Lad album)\" target=\"_blank\">Alien</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_New_Black\" title=\"The New Black\" target=\"_blank\">The New Black</a></i></li>\r\n</ul>\r\n', 'StrappingYoungLad.jpg', 'Discography Strapping Young Lad', 's9', 1, '2018-02-16 20:20:00', '2018-02-16 20:20:00', 1),
(10, 'Neurosis', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Pain_of_Mind\" title=\"Pain of Mind\" target=\"_blank\">Pain of Mind</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_Word_as_Law\" title=\"The Word as Law\" target=\"_blank\">The Word as Law</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Souls_at_Zero\" title=\"Souls at Zero\" target=\"_blank\">Souls at Zero</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Enemy_of_the_Sun\" title=\"Enemy of the Sun\" target=\"_blank\">Enemy of the Sun</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Through_Silver_in_Blood\" title=\"Through Silver in Blood\" target=\"_blank\">Through Silver in Blood</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Times_of_Grace_(album)\" title=\"Times of Grace (album)\" target=\"_blank\">Times of Grace</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/A_Sun_That_Never_Sets\" title=\"A Sun That Never Sets\" target=\"_blank\">A Sun That Never Sets</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Neurosis_%26_Jarboe_(album)\" class=\"mw-redirect\" title=\"Neurosis & Jarboe (album)\" target=\"_blank\">Neurosis & Jarboe</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_Eye_of_Every_Storm\" title=\"The Eye of Every Storm\" target=\"_blank\">The Eye of Every Storm</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Given_to_the_Rising\" title=\"Given to the Rising\" target=\"_blank\">Given to the Rising</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Honor_Found_in_Decay\" title=\"Honor Found in Decay\" target=\"_blank\">Honor Found in Decay</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Fires_Within_Fires\" title=\"Fires Within Fires\" target=\"_blank\">Fires Within Fires</a></i></li>\r\n</ul>\r\n', 'neurosis.jpg', 'Discography Neurosis', 's10', 1, '2018-02-16 21:32:31', '2018-02-16 21:32:31', 1),
(33, 'August Burns Red', '<h2>Discography[<a href=\"https://en.wikipedia.org/w/index.php?title=August_Burns_Red&amp;action=edit&amp;section=14\">edit</a>]</h2>\r\n\r\n<p>Main article:&nbsp;<a href=\"https://en.wikipedia.org/wiki/August_Burns_Red_discography\">August Burns Red discography</a></p>\r\n\r\n<ul>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Thrill_Seeker\">Thrill Seeker</a></em>&nbsp;(2005)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Messengers_(album)\">Messengers</a></em>&nbsp;(2007)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Constellations_(August_Burns_Red_album)\">Constellations</a></em>&nbsp;(2009)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Leveler_(album)\">Leveler</a></em>&nbsp;(2011)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/August_Burns_Red_Presents:_Sleddin%27_Hill\">August Burns Red Presents: Sleddin&#39; Hill</a></em>&nbsp;(2012)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Rescue_%26_Restore\">Rescue &amp; Restore</a></em>&nbsp;(2013)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Found_in_Far_Away_Places\">Found in Far Away Places</a></em>&nbsp;(2015)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Phantom_Anthem\">Phantom Anthem</a></em>&nbsp;(2017)</li>\r\n</ul>', '1024px-AugustBurnsRed_April_2011_1520539696.jpg', 'A little heavy for a christian rock band!', 'This is my second post on this speedcore thrash band from  Lancaster, Pennsylvania.', 1, '2018-03-08 19:08:16', '2018-03-08 19:08:16', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `post_category`
--

CREATE TABLE `post_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-03-27 11:26:10', '2018-03-27 11:26:10'),
(2, 'user', 'Normal User', '2018-03-27 11:26:10', '2018-03-27 11:26:10'),
(3, 'senior', 'Senior', '2018-03-28 06:18:44', '2018-03-28 06:18:44'),
(4, 'medewerker', 'Medewerker', '2018-03-28 06:19:40', '2018-03-28 06:19:40');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `forename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `streetnumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`, `forename`, `lastname`, `street`, `streetnumber`, `zipcode`, `place`, `telephone`, `enabled`) VALUES
(1, 1, 'Lieuwe Jelle van der Meulen', 'l.j.van.der.meulen@gmail.com', 'users/March2018/ZmaidURXTTZum4wjOe3z.jpg', '$2y$10$cWBncqxMTmDpckOqTVMAGel9RWC3QI2lRl6pKxnpMmBrQHexCFxmq', 'CvC3QfdG7lv0YBzFfjt6XzKzZhYsswypKs54W0JBIHSjQEnlheQulkA2cDHg', '2018-03-27 11:26:11', '2018-03-28 06:16:41', 'Lieuwe Jelle', 'van der Meulen', 'Bedumerweg 84', '84', '9716AG', 'Groningen', 613521248, 1);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexen voor tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexen voor tabel `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexen voor tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexen voor tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexen voor tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexen voor tabel `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexen voor tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexen voor tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexen voor tabel `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT voor een tabel `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT voor een tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT voor een tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT voor een tabel `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT voor een tabel `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
