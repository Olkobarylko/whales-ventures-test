-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Бер 29 2024 р., 00:34
-- Версія сервера: 8.0.30
-- Версія PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `whales-ventures-test_db`
--

-- --------------------------------------------------------

--
-- Структура таблиці `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_trash_meta_status', '1'),
(2, 2, '_wp_trash_meta_time', '1711574787');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 23, 'admin', 'test@test.test', 'http://whales-ventures-test', '127.0.0.1', '2024-03-27 21:26:07', '2024-03-27 21:26:07', 'фівіфвф\r\nвіаіва\r\nІФаіфва', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'comment', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://whales-ventures-test', 'yes'),
(2, 'home', 'http://whales-ventures-test', 'yes'),
(3, 'blogname', 'Test Blog', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'test@test.test', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:24:\"wordpress-seo/wp-seo.php\";i:3;s:35:\"wp-fastest-cache/wpFastestCache.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'test-theme', 'yes'),
(41, 'stylesheet', 'test-theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'author', 'yes'),
(46, 'db_version', '56657', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '6', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1727117152', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '56657', 'yes'),
(101, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'user_count', '2', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:11:{i:1711662353;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1711663971;a:1:{s:27:\"wpseo_indexable_index_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:15:\"fifteen_minutes\";s:4:\"args\";a:0:{}s:8:\"interval\";i:900;}}}i:1711694753;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1711694771;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1711737953;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1711737971;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1711737972;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1711746151;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1712171061;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1712256353;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.4.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(123, 'recovery_keys', 'a:1:{s:22:\"QB6dfWwXXVbVCtsE8b8L6p\";a:2:{s:10:\"hashed_key\";s:34:\"$P$Bsn5OD/P6Mz65IHeGG5Yr0KP/yA7CG0\";s:10:\"created_at\";i:1711566610;}}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.3\";s:7:\"version\";s:5:\"6.4.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1711652752;s:15:\"version_checked\";s:5:\"6.4.3\";s:12:\"translations\";a:0:{}}', 'no'),
(125, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1711565530;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(130, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1711652753;s:7:\"checked\";a:4:{s:10:\"test-theme\";s:0:\"\";s:16:\"twentytwentyfour\";s:3:\"1.0\";s:17:\"twentytwentythree\";s:3:\"1.3\";s:15:\"twentytwentytwo\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.0.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.3.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.6.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(132, '_site_transient_timeout_browser_5e705226acd7a97aa6ee95ab188632d6', '1712169971', 'no'),
(133, '_site_transient_browser_5e705226acd7a97aa6ee95ab188632d6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"123.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(134, '_site_transient_timeout_php_check_2f5acf219326a8bc5331ee302b9812f4', '1712169972', 'no'),
(135, '_site_transient_php_check_2f5acf219326a8bc5331ee302b9812f4', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(139, 'can_compress_scripts', '1', 'yes'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(153, 'current_theme', 'Wordpress Theme', 'yes'),
(154, 'theme_mods_test-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:5;s:4:\"menu\";i:5;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(155, 'theme_switched', '', 'yes'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(167, 'recovery_mode_email_last_sent', '1711566609', 'yes'),
(168, 'acf_version', '6.0.7', 'yes'),
(170, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(178, 'category_children', 'a:0:{}', 'yes'),
(185, '_transient_timeout_acf_plugin_updates', '1711746120', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(186, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.5\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20240227\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.7\";}}', 'no'),
(191, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"22.3\";}', 'yes'),
(192, 'wpseo', 'a:110:{s:8:\"tracking\";b:0;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"22.3\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:19:\"enable_ai_generator\";b:1;s:22:\"ai_enabled_pre_default\";b:0;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1711573351;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:36:\"/%year%/%monthnum%/%day%/%postname%/\";s:8:\"home_url\";s:27:\"http://whales-ventures-test\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:3:{i:0;s:18:\"siteRepresentation\";i:1;s:14:\"socialProfiles\";i:2;s:19:\"personalPreferences\";}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:0;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1711573352;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:20:\"deny_adsbot_crawling\";b:0;s:19:\"deny_ccbot_crawling\";b:0;s:29:\"deny_google_extended_crawling\";b:0;s:20:\"deny_gptbot_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:28:\"last_known_public_taxonomies\";a:3:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";}s:23:\"last_known_no_unindexed\";a:3:{s:40:\"wpseo_total_unindexed_post_type_archives\";i:1711573352;s:31:\"wpseo_unindexed_post_link_count\";i:1711645347;s:31:\"wpseo_unindexed_term_link_count\";i:1711645396;}s:14:\"new_post_types\";a:0:{}s:14:\"new_taxonomies\";a:0:{}s:34:\"show_new_content_type_notification\";b:0;}', 'yes'),
(193, 'wpseo_titles', 'a:129:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:9:\"Test Blog\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:69:\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-3.jpg\";s:12:\"company_name\";s:12:\"Organization\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";i:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:24:\"publishing_principles_id\";i:0;s:25:\"ownership_funding_info_id\";i:0;s:29:\"actionable_feedback_policy_id\";i:0;s:21:\"corrections_policy_id\";i:0;s:16:\"ethics_policy_id\";i:0;s:19:\"diversity_policy_id\";i:0;s:28:\"diversity_staffing_report_id\";i:0;s:15:\"org-description\";s:0:\"\";s:9:\"org-email\";s:0:\"\";s:9:\"org-phone\";s:0:\"\";s:14:\"org-legal-name\";s:0:\"\";s:17:\"org-founding-date\";s:0:\"\";s:20:\"org-number-employees\";s:0:\"\";s:10:\"org-vat-id\";s:0:\"\";s:10:\"org-tax-id\";s:0:\"\";s:7:\"org-iso\";s:0:\"\";s:8:\"org-duns\";s:0:\"\";s:11:\"org-leicode\";s:0:\"\";s:9:\"org-naics\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:24;s:17:\"company_logo_meta\";a:10:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:8:\"filesize\";i:601976;s:3:\"url\";s:69:\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-3.jpg\";s:4:\"path\";s:81:\"D:\\OSPanel\\domains\\whales-ventures-test/wp-content/uploads/2024/03/post-img-3.jpg\";s:4:\"size\";s:4:\"full\";s:2:\"id\";i:24;s:3:\"alt\";s:0:\"\";s:6:\"pixels\";i:2457600;s:4:\"type\";s:10:\"image/jpeg\";}s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(194, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:25:\"https://www.facebook.com/\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:4:\"home\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}', 'yes'),
(204, '_transient_timeout_wpseo_total_unindexed_general_items', '1711731796', 'no'),
(205, '_transient_wpseo_total_unindexed_general_items', '0', 'no'),
(243, '_transient_timeout_wpseo_unindexed_post_link_count', '1711731747', 'no'),
(244, '_transient_wpseo_unindexed_post_link_count', '0', 'no'),
(252, '_transient_timeout_wpseo_unindexed_term_link_count', '1711731796', 'no'),
(253, '_transient_wpseo_unindexed_term_link_count', '0', 'no'),
(264, '_site_transient_timeout_available_translations', '1711658796', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(265, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.7\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.7/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-13 12:49:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2023-10-19 09:22:30\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.3/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.25/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-07 20:18:03\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-20 15:12:22\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.4\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.4/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-17 08:06:22\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-05 18:59:01\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-01 14:45:04\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-11 13:58:40\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-01 07:57:24\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-10 11:20:46\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.4.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2023-11-08 18:40:24\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-02 15:15:47\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2023-11-08 18:40:48\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.4.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.4\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.4/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-05 11:30:47\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-23 01:49:45\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-10 16:46:25\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-25 06:37:33\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2023-08-28 15:58:51\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-01-30 17:36:08\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-29 21:55:55\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-01-31 03:32:51\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-12 14:01:59\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-18 19:36:30\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2023-11-08 20:42:04\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.4\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.4/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.9/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.9/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.15/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.20\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.20/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-17 18:41:12\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2023-10-05 10:16:58\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-01-12 17:31:37\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-15 06:10:53\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-11 12:20:17\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2023-11-09 09:46:35\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2023-11-29 13:35:45\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-29 08:00:23\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.4\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.4/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-13 00:00:51\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-01 06:52:39\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.32\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.32/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.4\";s:7:\"updated\";s:19:\"2024-03-07 03:26:04\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-25 08:05:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-01-03 21:54:15\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.4\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.4/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-01-22 12:40:26\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-01 12:30:59\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.25/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-06 21:07:25\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-03 13:53:06\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.25/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-23 06:35:46\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.4\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.4/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.25/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.20\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.20/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.5\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.5/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2023-10-19 07:05:28\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-09 09:24:08\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.3/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-01-30 17:48:58\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.3/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-15 12:14:45\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-19 07:50:47\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.7\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-23 19:36:11\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-01-28 08:03:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-19 14:16:42\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.14\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.14/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.37\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.37/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-18 07:19:21\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-24 13:40:33\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-18 15:34:57\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-24 08:15:12\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2023-10-14 13:34:08\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.4.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-05 20:19:54\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.33\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.33/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-07 10:22:34\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2023-08-21 12:17:05\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-03 14:03:53\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-07 10:24:39\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.4.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-19 18:28:05\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-27 21:49:30\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.15/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-06 05:36:48\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-12 10:29:16\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-14 12:47:33\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-28 19:14:34\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-01-05 20:51:57\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-12 21:39:28\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-16 11:09:57\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.37\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.37/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.9/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.24/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-11 09:10:19\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-02-03 03:47:06\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-03-06 18:52:07\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.15/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.2.4\";s:7:\"updated\";s:19:\"2023-07-15 15:30:50\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.4/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-01-30 22:23:09\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.4.3\";s:7:\"updated\";s:19:\"2024-01-31 01:18:24\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.4\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.4/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(266, 'WPLANG', '', 'yes'),
(267, 'new_admin_email', 'test@test.test', 'yes'),
(275, '_site_transient_timeout_theme_roots', '1711654546', 'no'),
(276, '_site_transient_theme_roots', 'a:4:{s:10:\"test-theme\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(277, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(278, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":5,\"critical\":1}', 'yes'),
(280, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1711661575;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.5\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20240227\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:35:\"wp-fastest-cache/wpFastestCache.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/wp-fastest-cache\";s:4:\"slug\";s:16:\"wp-fastest-cache\";s:6:\"plugin\";s:35:\"wp-fastest-cache/wpFastestCache.php\";s:11:\"new_version\";s:5:\"1.2.4\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wp-fastest-cache/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wp-fastest-cache.1.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-fastest-cache/assets/icon-256x256.png?rev=2064586\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-fastest-cache/assets/icon-128x128.png?rev=1068904\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/wp-fastest-cache/assets/banner-772x250.jpg?rev=1064099\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"22.3\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.22.3.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.3\";}}}', 'no'),
(293, '_transient_timeout_wpseo_total_unindexed_terms_limited', '1711660288', 'no'),
(294, '_transient_wpseo_total_unindexed_terms_limited', '0', 'no'),
(295, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(299, '_transient_timeout_wpseo_total_unindexed_posts_limited', '1711662473', 'no'),
(300, '_transient_wpseo_total_unindexed_posts_limited', '2', 'no');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 6, '_edit_lock', '1711661001:1'),
(5, 8, '_edit_last', '1'),
(6, 8, '_edit_lock', '1711660474:1'),
(7, 10, '_edit_last', '1'),
(8, 10, '_edit_lock', '1711566813:1'),
(9, 6, '_edit_last', '1'),
(14, 6, 'blocks', 'a:2:{i:0;s:13:\"authorization\";i:1;s:12:\"recent_posts\";}'),
(15, 6, '_blocks', 'field_66046fbf7cf54'),
(16, 7, 'blocks_0_title', 'Title'),
(17, 7, '_blocks_0_title', 'field_6604705b80880_field_66047003a681b'),
(18, 7, 'blocks_0_text', 'Text'),
(19, 7, '_blocks_0_text', 'field_6604705b80880_field_66047012a681c'),
(20, 7, 'blocks', 'a:1:{i:0;s:12:\"recent_posts\";}'),
(21, 7, '_blocks', 'field_66046fbf7cf54'),
(22, 14, 'blocks_0_title', 'Recents Posts'),
(23, 14, '_blocks_0_title', 'field_6604705b80880_field_66047003a681b'),
(24, 14, 'blocks_0_text', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(25, 14, '_blocks_0_text', 'field_6604705b80880_field_66047012a681c'),
(26, 14, 'blocks', 'a:1:{i:0;s:12:\"recent_posts\";}'),
(27, 14, '_blocks', 'field_66046fbf7cf54'),
(28, 15, '_edit_last', '1'),
(29, 15, '_edit_lock', '1711574564:1'),
(31, 15, 'blocks', ''),
(32, 15, '_blocks', 'field_66046fbf7cf54'),
(34, 16, 'blocks', 'a:1:{i:0;s:12:\"recent_posts\";}'),
(35, 16, '_blocks', 'field_66046fbf7cf54'),
(36, 17, '_wp_attached_file', '2024/03/post-img-1.jpg'),
(37, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:22:\"2024/03/post-img-1.jpg\";s:8:\"filesize\";i:263201;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"post-img-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11341;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"post-img-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63066;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"post-img-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6206;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"post-img-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40095;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"post-img-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:120744;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 15, '_thumbnail_id', '17'),
(45, 16, 'blocks_0_title', 'Recent Posts'),
(46, 16, '_blocks_0_title', 'field_6604705b80880_field_66047003a681b'),
(47, 16, 'blocks_0_text', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s'),
(48, 16, '_blocks_0_text', 'field_6604705b80880_field_66047012a681c'),
(50, 18, 'blocks', ''),
(51, 18, '_blocks', 'field_66046fbf7cf54'),
(52, 20, '_edit_last', '1'),
(53, 20, '_edit_lock', '1711574565:1'),
(54, 21, '_wp_attached_file', '2024/03/post-img-2.jpg'),
(55, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1919;s:6:\"height\";i:1281;s:4:\"file\";s:22:\"2024/03/post-img-2.jpg\";s:8:\"filesize\";i:296182;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"post-img-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10738;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"post-img-2-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:65592;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"post-img-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6448;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"post-img-2-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40703;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"post-img-2-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:133364;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 20, '_thumbnail_id', '21'),
(58, 20, 'blocks', ''),
(59, 20, '_blocks', 'field_66046fbf7cf54'),
(60, 23, '_edit_last', '1'),
(61, 23, '_edit_lock', '1711574252:1'),
(62, 24, '_wp_attached_file', '2024/03/post-img-3.jpg'),
(63, 24, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:22:\"2024/03/post-img-3.jpg\";s:8:\"filesize\";i:601976;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"post-img-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17691;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"post-img-3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:139306;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"post-img-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9660;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"post-img-3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:83780;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"post-img-3-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:277153;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 23, '_thumbnail_id', '24'),
(66, 23, 'blocks', ''),
(67, 23, '_blocks', 'field_66046fbf7cf54'),
(69, 25, 'blocks', ''),
(70, 25, '_blocks', 'field_66046fbf7cf54'),
(72, 22, 'blocks', ''),
(73, 22, '_blocks', 'field_66046fbf7cf54'),
(75, 19, 'blocks', ''),
(76, 19, '_blocks', 'field_66046fbf7cf54'),
(77, 30, '_edit_last', '1'),
(78, 30, 'blocks', ''),
(79, 30, '_blocks', 'field_66046fbf7cf54'),
(80, 30, '_edit_lock', '1711660958:1'),
(81, 32, 'blocks', ''),
(82, 32, '_blocks', 'field_66046fbf7cf54'),
(83, 30, '_wp_page_template', 'page-info.php'),
(84, 33, 'blocks', ''),
(85, 33, '_blocks', 'field_66046fbf7cf54'),
(86, 34, 'blocks', ''),
(87, 34, '_blocks', 'field_66046fbf7cf54'),
(88, 35, 'blocks', ''),
(89, 35, '_blocks', 'field_66046fbf7cf54'),
(91, 26, 'blocks', ''),
(92, 26, '_blocks', 'field_66046fbf7cf54'),
(93, 23, '_yoast_wpseo_primary_category', ''),
(94, 23, '_yoast_wpseo_focuskw', 'post news'),
(95, 23, '_yoast_wpseo_metadesc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has post news industry\'s standard dummy text ever'),
(96, 23, '_yoast_wpseo_linkdex', '75'),
(97, 23, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(98, 23, '_yoast_wpseo_wordproof_timestamp', ''),
(100, 37, 'blocks', ''),
(101, 37, '_blocks', 'field_66046fbf7cf54'),
(102, 23, '_yoast_wpseo_content_score', '60'),
(104, 23, '_yoast_wpseo_title', '%%title%% %%page%% %%sep%% %%sitename%% news post'),
(106, 28, 'blocks', ''),
(107, 28, '_blocks', 'field_66046fbf7cf54'),
(108, 15, '_yoast_wpseo_primary_category', ''),
(109, 15, '_yoast_wpseo_focuskw', 'post news'),
(110, 15, '_yoast_wpseo_title', '%%title%% %%page%% %%sep%% %%sitename%% post news'),
(111, 15, '_yoast_wpseo_metadesc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has post news industry\'s standard dummy text ever'),
(112, 15, '_yoast_wpseo_linkdex', '73'),
(113, 15, '_yoast_wpseo_content_score', '60'),
(114, 15, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(115, 15, '_yoast_wpseo_wordproof_timestamp', ''),
(117, 27, 'blocks', ''),
(118, 27, '_blocks', 'field_66046fbf7cf54'),
(119, 20, '_yoast_wpseo_primary_category', ''),
(120, 20, '_yoast_wpseo_focuskw', 'post news'),
(121, 20, '_yoast_wpseo_title', '%%title%% %%page%% %%sep%% %%sitename%% post news'),
(122, 20, '_yoast_wpseo_metadesc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has post news industry\'s standard dummy text ever'),
(123, 20, '_yoast_wpseo_linkdex', '73'),
(124, 20, '_yoast_wpseo_content_score', '60'),
(125, 20, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(126, 20, '_yoast_wpseo_wordproof_timestamp', ''),
(128, 39, 'blocks', ''),
(129, 39, '_blocks', 'field_66046fbf7cf54'),
(137, 87, '_wp_trash_meta_status', 'pending'),
(138, 87, '_wp_trash_meta_time', '1711647538'),
(139, 87, '_wp_desired_post_slug', ''),
(140, 86, '_wp_trash_meta_status', 'pending'),
(141, 86, '_wp_trash_meta_time', '1711647538'),
(142, 86, '_wp_desired_post_slug', ''),
(143, 85, '_wp_trash_meta_status', 'pending'),
(144, 85, '_wp_trash_meta_time', '1711647538'),
(145, 85, '_wp_desired_post_slug', ''),
(146, 84, '_wp_trash_meta_status', 'pending'),
(147, 84, '_wp_trash_meta_time', '1711647538'),
(148, 84, '_wp_desired_post_slug', ''),
(149, 83, '_wp_trash_meta_status', 'pending'),
(150, 83, '_wp_trash_meta_time', '1711647538'),
(151, 83, '_wp_desired_post_slug', ''),
(152, 82, '_wp_trash_meta_status', 'pending'),
(153, 82, '_wp_trash_meta_time', '1711647538'),
(154, 82, '_wp_desired_post_slug', ''),
(155, 81, '_wp_trash_meta_status', 'pending'),
(156, 81, '_wp_trash_meta_time', '1711647538'),
(157, 81, '_wp_desired_post_slug', ''),
(158, 80, '_wp_trash_meta_status', 'pending'),
(159, 80, '_wp_trash_meta_time', '1711647538'),
(160, 80, '_wp_desired_post_slug', ''),
(161, 79, '_wp_trash_meta_status', 'pending'),
(162, 79, '_wp_trash_meta_time', '1711647538'),
(163, 79, '_wp_desired_post_slug', ''),
(164, 78, '_wp_trash_meta_status', 'pending'),
(165, 78, '_wp_trash_meta_time', '1711647538'),
(166, 78, '_wp_desired_post_slug', ''),
(167, 77, '_wp_trash_meta_status', 'pending'),
(168, 77, '_wp_trash_meta_time', '1711647538'),
(169, 77, '_wp_desired_post_slug', ''),
(170, 76, '_wp_trash_meta_status', 'pending'),
(171, 76, '_wp_trash_meta_time', '1711647538'),
(172, 76, '_wp_desired_post_slug', ''),
(173, 75, '_wp_trash_meta_status', 'pending'),
(174, 75, '_wp_trash_meta_time', '1711647538'),
(175, 75, '_wp_desired_post_slug', ''),
(176, 74, '_wp_trash_meta_status', 'pending'),
(177, 74, '_wp_trash_meta_time', '1711647538'),
(178, 74, '_wp_desired_post_slug', ''),
(179, 73, '_wp_trash_meta_status', 'pending'),
(180, 73, '_wp_trash_meta_time', '1711647538'),
(181, 73, '_wp_desired_post_slug', ''),
(182, 72, '_wp_trash_meta_status', 'pending'),
(183, 72, '_wp_trash_meta_time', '1711647539'),
(184, 72, '_wp_desired_post_slug', ''),
(185, 71, '_wp_trash_meta_status', 'pending'),
(186, 71, '_wp_trash_meta_time', '1711647539'),
(187, 71, '_wp_desired_post_slug', ''),
(188, 70, '_wp_trash_meta_status', 'pending'),
(189, 70, '_wp_trash_meta_time', '1711647539'),
(190, 70, '_wp_desired_post_slug', ''),
(191, 69, '_wp_trash_meta_status', 'pending'),
(192, 69, '_wp_trash_meta_time', '1711647539'),
(193, 69, '_wp_desired_post_slug', ''),
(194, 68, '_wp_trash_meta_status', 'pending'),
(195, 68, '_wp_trash_meta_time', '1711647539'),
(196, 68, '_wp_desired_post_slug', ''),
(197, 67, '_wp_trash_meta_status', 'pending'),
(198, 67, '_wp_trash_meta_time', '1711647546'),
(199, 67, '_wp_desired_post_slug', ''),
(200, 66, '_wp_trash_meta_status', 'pending'),
(201, 66, '_wp_trash_meta_time', '1711647546'),
(202, 66, '_wp_desired_post_slug', ''),
(203, 65, '_wp_trash_meta_status', 'pending'),
(204, 65, '_wp_trash_meta_time', '1711647546'),
(205, 65, '_wp_desired_post_slug', ''),
(206, 64, '_wp_trash_meta_status', 'pending'),
(207, 64, '_wp_trash_meta_time', '1711647546'),
(208, 64, '_wp_desired_post_slug', ''),
(209, 63, '_wp_trash_meta_status', 'pending'),
(210, 63, '_wp_trash_meta_time', '1711647546'),
(211, 63, '_wp_desired_post_slug', ''),
(212, 62, '_wp_trash_meta_status', 'pending'),
(213, 62, '_wp_trash_meta_time', '1711647546'),
(214, 62, '_wp_desired_post_slug', ''),
(215, 61, '_wp_trash_meta_status', 'pending'),
(216, 61, '_wp_trash_meta_time', '1711647546'),
(217, 61, '_wp_desired_post_slug', ''),
(218, 60, '_wp_trash_meta_status', 'pending'),
(219, 60, '_wp_trash_meta_time', '1711647546'),
(220, 60, '_wp_desired_post_slug', ''),
(221, 59, '_wp_trash_meta_status', 'pending'),
(222, 59, '_wp_trash_meta_time', '1711647546'),
(223, 59, '_wp_desired_post_slug', ''),
(224, 58, '_wp_trash_meta_status', 'pending'),
(225, 58, '_wp_trash_meta_time', '1711647546'),
(226, 58, '_wp_desired_post_slug', ''),
(227, 57, '_wp_trash_meta_status', 'pending'),
(228, 57, '_wp_trash_meta_time', '1711647546'),
(229, 57, '_wp_desired_post_slug', ''),
(230, 56, '_wp_trash_meta_status', 'pending'),
(231, 56, '_wp_trash_meta_time', '1711647546'),
(232, 56, '_wp_desired_post_slug', ''),
(233, 55, '_wp_trash_meta_status', 'pending'),
(234, 55, '_wp_trash_meta_time', '1711647546'),
(235, 55, '_wp_desired_post_slug', ''),
(236, 54, '_wp_trash_meta_status', 'pending'),
(237, 54, '_wp_trash_meta_time', '1711647546'),
(238, 54, '_wp_desired_post_slug', ''),
(239, 53, '_wp_trash_meta_status', 'pending'),
(240, 53, '_wp_trash_meta_time', '1711647546'),
(241, 53, '_wp_desired_post_slug', ''),
(242, 52, '_wp_trash_meta_status', 'pending'),
(243, 52, '_wp_trash_meta_time', '1711647546'),
(244, 52, '_wp_desired_post_slug', ''),
(245, 51, '_wp_trash_meta_status', 'pending'),
(246, 51, '_wp_trash_meta_time', '1711647546'),
(247, 51, '_wp_desired_post_slug', ''),
(248, 50, '_wp_trash_meta_status', 'pending'),
(249, 50, '_wp_trash_meta_time', '1711647546'),
(250, 50, '_wp_desired_post_slug', ''),
(251, 49, '_wp_trash_meta_status', 'pending'),
(252, 49, '_wp_trash_meta_time', '1711647547'),
(253, 49, '_wp_desired_post_slug', ''),
(254, 48, '_wp_trash_meta_status', 'pending'),
(255, 48, '_wp_trash_meta_time', '1711647547'),
(256, 48, '_wp_desired_post_slug', ''),
(257, 47, '_wp_trash_meta_status', 'pending'),
(258, 47, '_wp_trash_meta_time', '1711647556'),
(259, 47, '_wp_desired_post_slug', ''),
(260, 46, '_wp_trash_meta_status', 'pending'),
(261, 46, '_wp_trash_meta_time', '1711647556'),
(262, 46, '_wp_desired_post_slug', ''),
(263, 45, '_wp_trash_meta_status', 'pending'),
(264, 45, '_wp_trash_meta_time', '1711647556'),
(265, 45, '_wp_desired_post_slug', ''),
(266, 133, '_wp_trash_meta_status', 'pending'),
(267, 133, '_wp_trash_meta_time', '1711649220'),
(268, 133, '_wp_desired_post_slug', ''),
(269, 132, '_wp_trash_meta_status', 'pending'),
(270, 132, '_wp_trash_meta_time', '1711649221'),
(271, 132, '_wp_desired_post_slug', ''),
(272, 131, '_wp_trash_meta_status', 'pending'),
(273, 131, '_wp_trash_meta_time', '1711649221'),
(274, 131, '_wp_desired_post_slug', ''),
(275, 138, '_edit_lock', '1711660972:1'),
(276, 138, '_edit_last', '1'),
(277, 138, '_wp_page_template', 'page-blog.php'),
(278, 138, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(279, 138, '_yoast_wpseo_wordproof_timestamp', ''),
(280, 140, '_menu_item_type', 'post_type'),
(281, 140, '_menu_item_menu_item_parent', '0'),
(282, 140, '_menu_item_object_id', '6'),
(283, 140, '_menu_item_object', 'page'),
(284, 140, '_menu_item_target', ''),
(285, 140, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(286, 140, '_menu_item_xfn', ''),
(287, 140, '_menu_item_url', ''),
(289, 141, '_menu_item_type', 'post_type'),
(290, 141, '_menu_item_menu_item_parent', '0'),
(291, 141, '_menu_item_object_id', '30'),
(292, 141, '_menu_item_object', 'page'),
(293, 141, '_menu_item_target', ''),
(294, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(295, 141, '_menu_item_xfn', ''),
(296, 141, '_menu_item_url', ''),
(298, 142, '_menu_item_type', 'post_type'),
(299, 142, '_menu_item_menu_item_parent', '0'),
(300, 142, '_menu_item_object_id', '138'),
(301, 142, '_menu_item_object', 'page'),
(302, 142, '_menu_item_target', ''),
(303, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(304, 142, '_menu_item_xfn', ''),
(305, 142, '_menu_item_url', ''),
(307, 143, '_edit_lock', '1711660268:1'),
(308, 143, '_edit_last', '1'),
(309, 6, '_wp_page_template', 'default'),
(310, 6, 'blocks_0_title', 'Authorization'),
(311, 6, '_blocks_0_title', 'field_6605dd85a0a33_field_6605dd55a26c6'),
(312, 6, 'blocks_0_log_in_text', 'Log In'),
(313, 6, '_blocks_0_log_in_text', 'field_6605dd85a0a33_field_6605dd5ba26c7'),
(314, 6, 'blocks_0_sign_up_text', 'Sign Up'),
(315, 6, '_blocks_0_sign_up_text', 'field_6605dd85a0a33_field_6605dd65a26c8'),
(316, 6, 'blocks_1_title', 'Recents Posts'),
(317, 6, '_blocks_1_title', 'field_6604705b80880_field_66047003a681b'),
(318, 6, 'blocks_1_text', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(319, 6, '_blocks_1_text', 'field_6604705b80880_field_66047012a681c'),
(320, 29, 'blocks', 'a:2:{i:0;s:13:\"authorization\";i:1;s:12:\"recent_posts\";}'),
(321, 29, '_blocks', 'field_66046fbf7cf54'),
(322, 29, 'blocks_0_title', 'Authorization'),
(323, 29, '_blocks_0_title', 'field_6605dd85a0a33_field_6605dd55a26c6'),
(324, 29, 'blocks_0_log_in_text', 'Log In'),
(325, 29, '_blocks_0_log_in_text', 'field_6605dd85a0a33_field_6605dd5ba26c7'),
(326, 29, 'blocks_0_sign_up_text', 'Sign Up'),
(327, 29, '_blocks_0_sign_up_text', 'field_6605dd85a0a33_field_6605dd65a26c8'),
(328, 29, 'blocks_1_title', 'Recents Posts'),
(329, 29, '_blocks_1_title', 'field_6604705b80880_field_66047003a681b'),
(330, 29, 'blocks_1_text', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(331, 29, '_blocks_1_text', 'field_6604705b80880_field_66047012a681c'),
(332, 6, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(333, 6, '_yoast_wpseo_wordproof_timestamp', ''),
(334, 149, 'blocks', 'a:2:{i:0;s:13:\"authorization\";i:1;s:12:\"recent_posts\";}'),
(335, 149, '_blocks', 'field_66046fbf7cf54'),
(336, 149, 'blocks_0_title', 'Authorization'),
(337, 149, '_blocks_0_title', 'field_6605dd85a0a33_field_6605dd55a26c6'),
(338, 149, 'blocks_0_log_in_text', 'Log In'),
(339, 149, '_blocks_0_log_in_text', 'field_6605dd85a0a33_field_6605dd5ba26c7'),
(340, 149, 'blocks_0_sign_up_text', 'Sign Up'),
(341, 149, '_blocks_0_sign_up_text', 'field_6605dd85a0a33_field_6605dd65a26c8'),
(342, 149, 'blocks_1_title', 'Recents Posts'),
(343, 149, '_blocks_1_title', 'field_6604705b80880_field_66047003a681b'),
(344, 149, 'blocks_1_text', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(345, 149, '_blocks_1_text', 'field_6604705b80880_field_66047012a681c'),
(346, 6, '_yoast_wpseo_focuskw', 'Home Test'),
(347, 6, '_yoast_wpseo_title', '%%title%% %%page%% %%sep%% %%sitename%% Home Test'),
(348, 6, '_yoast_wpseo_metadesc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Home Test'),
(349, 6, '_yoast_wpseo_linkdex', '43'),
(356, 138, '_yoast_wpseo_focuskw', 'Blog Test'),
(357, 138, '_yoast_wpseo_title', '%%title%% %%page%% %%sep%% %%sitename%% Blog Test'),
(358, 138, '_yoast_wpseo_metadesc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Blog Test'),
(359, 138, '_yoast_wpseo_linkdex', '42'),
(360, 30, '_yoast_wpseo_focuskw', 'About Us'),
(361, 30, '_yoast_wpseo_metadesc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard About Us'),
(362, 30, '_yoast_wpseo_linkdex', '80'),
(363, 30, '_yoast_wpseo_content_score', '60'),
(364, 30, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(365, 30, '_yoast_wpseo_wordproof_timestamp', ''),
(366, 152, 'blocks', ''),
(367, 152, '_blocks', 'field_66046fbf7cf54');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 0, '2024-03-27 18:45:54', '2024-03-27 18:45:54', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-03-27 18:45:54', '2024-03-27 18:45:54', '', 0, 'http://whales-ventures-test/2024/03/27/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2024-03-27 18:46:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-03-27 18:46:12', '0000-00-00 00:00:00', '', 0, 'http://whales-ventures-test/?p=5', 0, 'post', '', 0),
(6, 1, '2024-03-27 18:55:52', '2024-03-27 18:55:52', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-03-28 21:25:44', '2024-03-28 21:25:44', '', 0, 'http://whales-ventures-test/?page_id=6', 0, 'page', '', 0),
(7, 1, '2024-03-27 18:55:52', '2024-03-27 18:55:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2024-03-27 18:55:52', '2024-03-27 18:55:52', '', 6, 'http://whales-ventures-test/?p=7', 0, 'revision', '', 0),
(8, 1, '2024-03-27 19:14:07', '2024-03-27 19:14:07', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Blocks', 'blocks', 'publish', 'closed', 'closed', '', 'group_66046fbf3118f', '', '', '2024-03-28 21:14:51', '2024-03-28 21:14:51', '', 0, 'http://whales-ventures-test/?post_type=acf-field-group&#038;p=8', 0, 'acf-field-group', '', 0),
(9, 1, '2024-03-27 19:14:07', '2024-03-27 19:14:07', 'a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:3:{s:20:\"layout_66046fe849d53\";a:6:{s:3:\"key\";s:20:\"layout_66046fe849d53\";s:5:\"label\";s:0:\"\";s:4:\"name\";s:0:\"\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_660470528087e\";a:6:{s:3:\"key\";s:20:\"layout_660470528087e\";s:5:\"label\";s:12:\"Recent Posts\";s:4:\"name\";s:12:\"recent_posts\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_6605dd83a0a31\";a:6:{s:3:\"key\";s:20:\"layout_6605dd83a0a31\";s:5:\"label\";s:13:\"Authorization\";s:4:\"name\";s:13:\"authorization\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";}', 'Blocks', 'blocks', 'publish', 'closed', 'closed', '', 'field_66046fbf7cf54', '', '', '2024-03-28 21:13:55', '2024-03-28 21:13:55', '', 8, 'http://whales-ventures-test/?post_type=acf-field&#038;p=9', 0, 'acf-field', '', 0),
(10, 1, '2024-03-27 19:14:58', '2024-03-27 19:14:58', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:5:\"block\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"all\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Recent Posts', 'recent-posts', 'publish', 'closed', 'closed', '', 'group_66047003906cc', '', '', '2024-03-27 19:14:58', '2024-03-27 19:14:58', '', 0, 'http://whales-ventures-test/?post_type=acf-field-group&#038;p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2024-03-27 19:14:58', '2024-03-27 19:14:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_66047003a681b', '', '', '2024-03-27 19:14:58', '2024-03-27 19:14:58', '', 10, 'http://whales-ventures-test/?post_type=acf-field&p=11', 0, 'acf-field', '', 0),
(12, 1, '2024-03-27 19:14:58', '2024-03-27 19:14:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_66047012a681c', '', '', '2024-03-27 19:14:58', '2024-03-27 19:14:58', '', 10, 'http://whales-ventures-test/?post_type=acf-field&p=12', 1, 'acf-field', '', 0),
(13, 1, '2024-03-27 19:15:51', '2024-03-27 19:15:51', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"clone\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_660470528087e\";s:5:\"clone\";a:1:{i:0;s:19:\"group_66047003906cc\";}s:7:\"display\";s:8:\"seamless\";s:6:\"layout\";s:5:\"block\";s:12:\"prefix_label\";i:0;s:11:\"prefix_name\";i:0;}', 'Recent Posts', 'recent_posts', 'publish', 'closed', 'closed', '', 'field_6604705b80880', '', '', '2024-03-27 19:15:51', '2024-03-27 19:15:51', '', 9, 'http://whales-ventures-test/?post_type=acf-field&p=13', 0, 'acf-field', '', 0),
(14, 1, '2024-03-27 19:16:10', '2024-03-27 19:16:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2024-03-27 19:16:10', '2024-03-27 19:16:10', '', 6, 'http://whales-ventures-test/?p=14', 0, 'revision', '', 0),
(15, 1, '2024-03-27 19:28:58', '2024-03-27 19:28:58', '<a href=\"http://whales-ventures-test/2024/03/27/blog-post-2/\"><strong>Lorem Ipsum</strong></a> is simply post dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type post and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release post news of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<a href=\"http://whales-ventures-test/2024/03/27/blog-post-1/\"><strong>Lorem Ipsum</strong></a> is simply dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets  containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<a href=\"https://www.facebook.com/\"><strong>Lorem Ipsum</strong></a> is simply dummy text news of the printing and typesetting industry. Lorem post Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It post news has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with news the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Blog Post #3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'publish', 'open', 'open', '', 'blog-post-3', '', '', '2024-03-27 21:19:44', '2024-03-27 21:19:44', '', 0, 'http://whales-ventures-test/?p=15', 0, 'post', '', 0),
(16, 1, '2024-03-27 19:28:58', '2024-03-27 19:28:58', '', 'Blog Post #3', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-03-27 19:28:58', '2024-03-27 19:28:58', '', 15, 'http://whales-ventures-test/?p=16', 0, 'revision', '', 0),
(17, 1, '2024-03-27 19:30:07', '2024-03-27 19:30:07', '', 'post-img-1', '', 'inherit', 'open', 'closed', '', 'post-img-1', '', '', '2024-03-27 19:30:07', '2024-03-27 19:30:07', '', 15, 'http://whales-ventures-test/wp-content/uploads/2024/03/post-img-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2024-03-27 19:31:12', '2024-03-27 19:31:12', '', 'Blog Post #3', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-03-27 19:31:12', '2024-03-27 19:31:12', '', 15, 'http://whales-ventures-test/?p=18', 0, 'revision', '', 0),
(19, 1, '2024-03-27 19:31:25', '2024-03-27 19:31:25', '', 'Blog Post #3', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-03-27 19:31:25', '2024-03-27 19:31:25', '', 15, 'http://whales-ventures-test/?p=19', 0, 'revision', '', 0),
(20, 1, '2024-03-27 19:33:11', '2024-03-27 19:33:11', '<a href=\"http://whales-ventures-test/2024/03/27/blog-post-2/\"><strong>Lorem Ipsum</strong></a> is simply post dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type post and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release post news of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<a href=\"http://whales-ventures-test/2024/03/27/blog-post-1/\"><strong>Lorem Ipsum</strong></a> is simply dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets  containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<a href=\"https://www.facebook.com/\"><strong>Lorem Ipsum</strong></a> is simply dummy text news of the printing and typesetting industry. Lorem post Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It post news has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with news the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Blog Post #2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'publish', 'open', 'open', '', 'blog-post-2', '', '', '2024-03-27 21:19:46', '2024-03-27 21:19:46', '', 0, 'http://whales-ventures-test/?p=20', 0, 'post', '', 0),
(21, 1, '2024-03-27 19:33:06', '2024-03-27 19:33:06', '', 'post-img-2', '', 'inherit', 'open', 'closed', '', 'post-img-2', '', '', '2024-03-27 19:33:06', '2024-03-27 19:33:06', '', 20, 'http://whales-ventures-test/wp-content/uploads/2024/03/post-img-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2024-03-27 19:33:11', '2024-03-27 19:33:11', '', 'Blog Post #2', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2024-03-27 19:33:11', '2024-03-27 19:33:11', '', 20, 'http://whales-ventures-test/?p=22', 0, 'revision', '', 0),
(23, 1, '2024-03-27 19:34:25', '2024-03-27 19:34:25', '<a href=\"http://whales-ventures-test/2024/03/27/blog-post-2/\"><strong>Lorem Ipsum</strong></a> is simply post dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type post and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release post news of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<a href=\"http://whales-ventures-test/2024/03/27/blog-post-1/\"><strong>Lorem Ipsum</strong></a> is simply dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets  containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<a href=\"https://www.facebook.com/\"><strong>Lorem Ipsum</strong></a> is simply dummy text news of the printing and typesetting industry. Lorem post Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It post news has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with news the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Blog Post #1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into post electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s', 'publish', 'open', 'open', '', 'blog-post-1', '', '', '2024-03-27 21:19:49', '2024-03-27 21:19:49', '', 0, 'http://whales-ventures-test/?p=23', 0, 'post', '', 0),
(24, 1, '2024-03-27 19:34:22', '2024-03-27 19:34:22', '', 'post-img-3', '', 'inherit', 'open', 'closed', '', 'post-img-3', '', '', '2024-03-27 19:34:22', '2024-03-27 19:34:22', '', 23, 'http://whales-ventures-test/wp-content/uploads/2024/03/post-img-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2024-03-27 19:34:25', '2024-03-27 19:34:25', '', 'Blog Post #1', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2024-03-27 19:34:25', '2024-03-27 19:34:25', '', 23, 'http://whales-ventures-test/?p=25', 0, 'revision', '', 0),
(26, 1, '2024-03-27 19:44:43', '2024-03-27 19:44:43', '', 'Blog Post #1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2024-03-27 19:44:43', '2024-03-27 19:44:43', '', 23, 'http://whales-ventures-test/?p=26', 0, 'revision', '', 0),
(27, 1, '2024-03-27 19:44:53', '2024-03-27 19:44:53', '', 'Blog Post #2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2024-03-27 19:44:53', '2024-03-27 19:44:53', '', 20, 'http://whales-ventures-test/?p=27', 0, 'revision', '', 0),
(28, 1, '2024-03-27 19:45:03', '2024-03-27 19:45:03', '', 'Blog Post #3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-03-27 19:45:03', '2024-03-27 19:45:03', '', 15, 'http://whales-ventures-test/?p=28', 0, 'revision', '', 0),
(29, 1, '2024-03-27 20:09:19', '2024-03-27 20:09:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2024-03-27 20:09:19', '2024-03-27 20:09:19', '', 6, 'http://whales-ventures-test/?p=29', 0, 'revision', '', 0),
(30, 1, '2024-03-27 20:53:31', '2024-03-27 20:53:31', '<h2>About Us</h2>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem <a href=\"http://whales-ventures-test/2024/03/27/blog-post-1/\">Ipsum</a>. About Us\r\n\r\n<img class=\"alignnone wp-image-21 size-large\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-2-1024x684.jpg\" alt=\"\" width=\"1024\" height=\"684\" />\r\n<h3>Heading 3</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy <a href=\"https://www.lipsum.com/\">text</a> of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class=\"alignnone wp-image-24 size-large\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-3-1024x683.jpg\" alt=\"\" width=\"1024\" height=\"683\" />\r\n<h3>Heading 4</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class=\"alignnone wp-image-17 size-large\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-1-1024x683.jpg\" alt=\"\" width=\"1024\" height=\"683\" />\r\n\r\n&nbsp;', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2024-03-28 21:25:00', '2024-03-28 21:25:00', '', 0, 'http://whales-ventures-test/?page_id=30', 0, 'page', '', 0),
(31, 1, '2024-03-27 20:53:31', '2024-03-27 20:53:31', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2024-03-27 20:53:31', '2024-03-27 20:53:31', '', 30, 'http://whales-ventures-test/?p=31', 0, 'revision', '', 0),
(32, 1, '2024-03-28 21:24:08', '2024-03-28 21:24:08', '<h2>About Us</h2>\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n<img class=\"alignnone wp-image-21 size-large\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-2-1024x684.jpg\" alt=\"\" width=\"1024\" height=\"684\" />\n<h3>Heading 3</h3>\n<strong>Lorem Ipsum</strong> is simply dummy <a href=\"https://www.lipsum.com/\">text</a> of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n<img class=\"alignnone wp-image-24 size-large\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-3-1024x683.jpg\" alt=\"\" width=\"1024\" height=\"683\" />\n<h3>Heading 4</h3>\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n<img class=\"alignnone wp-image-17 size-large\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-1-1024x683.jpg\" alt=\"\" width=\"1024\" height=\"683\" />\n\n&nbsp;', 'About Us', '', 'inherit', 'closed', 'closed', '', '30-autosave-v1', '', '', '2024-03-28 21:24:08', '2024-03-28 21:24:08', '', 30, 'http://whales-ventures-test/?p=32', 0, 'revision', '', 0),
(33, 1, '2024-03-27 20:54:51', '2024-03-27 20:54:51', '<h2>About Us</h2>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Heading 3</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Heading 4</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;', 'About Us', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2024-03-27 20:54:51', '2024-03-27 20:54:51', '', 30, 'http://whales-ventures-test/?p=33', 0, 'revision', '', 0),
(34, 1, '2024-03-27 21:00:21', '2024-03-27 21:00:21', '<h2>About Us</h2>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class=\"alignnone size-medium wp-image-21\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-2-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />\r\n<h3>Heading 3</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class=\"alignnone size-medium wp-image-24\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-3-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />\r\n<h3>Heading 4</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class=\"alignnone size-medium wp-image-17\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-1-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />\r\n\r\n&nbsp;', 'About Us', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2024-03-27 21:00:21', '2024-03-27 21:00:21', '', 30, 'http://whales-ventures-test/?p=34', 0, 'revision', '', 0),
(35, 1, '2024-03-27 21:01:02', '2024-03-27 21:01:02', '<h2>About Us</h2>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class=\"alignnone wp-image-21\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-2-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />\r\n<h3>Heading 3</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class=\"alignnone wp-image-24\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-3-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />\r\n<h3>Heading 4</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class=\"alignnone wp-image-17\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-1-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />\r\n\r\n&nbsp;', 'About Us', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2024-03-27 21:01:02', '2024-03-27 21:01:02', '', 30, 'http://whales-ventures-test/?p=35', 0, 'revision', '', 0),
(36, 1, '2024-03-27 21:01:35', '2024-03-27 21:01:35', '<h2>About Us</h2>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class=\"alignnone wp-image-21 size-large\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-2-1024x684.jpg\" alt=\"\" width=\"1024\" height=\"684\" />\r\n<h3>Heading 3</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class=\"alignnone wp-image-24 size-large\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-3-1024x683.jpg\" alt=\"\" width=\"1024\" height=\"683\" />\r\n<h3>Heading 4</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class=\"alignnone wp-image-17 size-large\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-1-1024x683.jpg\" alt=\"\" width=\"1024\" height=\"683\" />\r\n\r\n&nbsp;', 'About Us', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2024-03-27 21:01:35', '2024-03-27 21:01:35', '', 30, 'http://whales-ventures-test/?p=36', 0, 'revision', '', 0),
(37, 1, '2024-03-27 21:18:21', '2024-03-27 21:18:21', '<a href=\"http://whales-ventures-test/2024/03/27/blog-post-2/\"><strong>Lorem Ipsum</strong></a> is simply post dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type post and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release post news of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n<a href=\"http://whales-ventures-test/2024/03/27/blog-post-1/\"><strong>Lorem Ipsum</strong></a> is simply dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets  containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n<a href=\"https://www.facebook.com/\"><strong>Lorem Ipsum</strong></a> is simply dummy text news of the printing and typesetting industry. Lorem post Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It post news has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with news the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Blog Post #1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into post electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s', 'inherit', 'closed', 'closed', '', '23-autosave-v1', '', '', '2024-03-27 21:18:21', '2024-03-27 21:18:21', '', 23, 'http://whales-ventures-test/?p=37', 0, 'revision', '', 0),
(38, 1, '2024-03-27 21:14:56', '2024-03-27 21:14:56', '<a href=\"http://whales-ventures-test/2024/03/27/blog-post-2/\"><strong>Lorem Ipsum</strong></a> is simply dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<a href=\"http://whales-ventures-test/2024/03/27/blog-post-1/\"><strong>Lorem Ipsum</strong></a> is simply dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<a href=\"https://www.facebook.com/\"><strong>Lorem Ipsum</strong></a> is simply dummy text news of the printing and typesetting industry. Lorem post Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with news the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Blog Post #1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into post electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2024-03-27 21:14:56', '2024-03-27 21:14:56', '', 23, 'http://whales-ventures-test/?p=38', 0, 'revision', '', 0),
(39, 1, '2024-03-27 21:19:00', '2024-03-27 21:19:00', '<a href=\"http://whales-ventures-test/2024/03/27/blog-post-2/\"><strong>Lorem Ipsum</strong></a> is simply post dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type post and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release post news of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<a href=\"http://whales-ventures-test/2024/03/27/blog-post-1/\"><strong>Lorem Ipsum</strong></a> is simply dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets  containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<a href=\"https://www.facebook.com/\"><strong>Lorem Ipsum</strong></a> is simply dummy text news of the printing and typesetting industry. Lorem post Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It post news has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with news the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Blog Post #1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into post electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2024-03-27 21:19:00', '2024-03-27 21:19:00', '', 23, 'http://whales-ventures-test/?p=39', 0, 'revision', '', 0),
(40, 1, '2024-03-27 21:19:44', '2024-03-27 21:19:44', '<a href=\"http://whales-ventures-test/2024/03/27/blog-post-2/\"><strong>Lorem Ipsum</strong></a> is simply post dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type post and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release post news of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<a href=\"http://whales-ventures-test/2024/03/27/blog-post-1/\"><strong>Lorem Ipsum</strong></a> is simply dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets  containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<a href=\"https://www.facebook.com/\"><strong>Lorem Ipsum</strong></a> is simply dummy text news of the printing and typesetting industry. Lorem post Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It post news has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with news the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Blog Post #3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-03-27 21:19:44', '2024-03-27 21:19:44', '', 15, 'http://whales-ventures-test/?p=40', 0, 'revision', '', 0),
(41, 1, '2024-03-27 21:19:46', '2024-03-27 21:19:46', '<a href=\"http://whales-ventures-test/2024/03/27/blog-post-2/\"><strong>Lorem Ipsum</strong></a> is simply post dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type post and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release post news of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<a href=\"http://whales-ventures-test/2024/03/27/blog-post-1/\"><strong>Lorem Ipsum</strong></a> is simply dummy post text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets  containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<a href=\"https://www.facebook.com/\"><strong>Lorem Ipsum</strong></a> is simply dummy text news of the printing and typesetting industry. Lorem post Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It post news has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with news the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Blog Post #2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2024-03-27 21:19:46', '2024-03-27 21:19:46', '', 20, 'http://whales-ventures-test/?p=41', 0, 'revision', '', 0),
(45, 1, '2024-03-28 17:39:16', '2024-03-28 17:39:16', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-43', '', '', '2024-03-28 17:39:16', '2024-03-28 17:39:16', '', 0, 'http://whales-ventures-test/?p=45', 0, 'post', '', 0),
(46, 1, '2024-03-28 17:39:16', '2024-03-28 17:39:16', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-42', '', '', '2024-03-28 17:39:16', '2024-03-28 17:39:16', '', 0, 'http://whales-ventures-test/?p=46', 0, 'post', '', 0),
(47, 1, '2024-03-28 17:39:16', '2024-03-28 17:39:16', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-41', '', '', '2024-03-28 17:39:16', '2024-03-28 17:39:16', '', 0, 'http://whales-ventures-test/?p=47', 0, 'post', '', 0),
(48, 1, '2024-03-28 17:39:07', '2024-03-28 17:39:07', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-40', '', '', '2024-03-28 17:39:07', '2024-03-28 17:39:07', '', 0, 'http://whales-ventures-test/?p=48', 0, 'post', '', 0),
(49, 1, '2024-03-28 17:39:07', '2024-03-28 17:39:07', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-39', '', '', '2024-03-28 17:39:07', '2024-03-28 17:39:07', '', 0, 'http://whales-ventures-test/?p=49', 0, 'post', '', 0),
(50, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-38', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=50', 0, 'post', '', 0),
(51, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-37', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=51', 0, 'post', '', 0),
(52, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-36', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=52', 0, 'post', '', 0),
(53, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-35', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=53', 0, 'post', '', 0),
(54, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-34', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=54', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(55, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-33', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=55', 0, 'post', '', 0),
(56, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-32', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=56', 0, 'post', '', 0),
(57, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-31', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=57', 0, 'post', '', 0),
(58, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-30', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=58', 0, 'post', '', 0),
(59, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-29', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=59', 0, 'post', '', 0),
(60, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-28', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=60', 0, 'post', '', 0),
(61, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-27', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=61', 0, 'post', '', 0),
(62, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-26', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=62', 0, 'post', '', 0),
(63, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-25', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=63', 0, 'post', '', 0),
(64, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-24', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=64', 0, 'post', '', 0),
(65, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-23', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=65', 0, 'post', '', 0),
(66, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-22', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=66', 0, 'post', '', 0),
(67, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-21', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 0, 'http://whales-ventures-test/?p=67', 0, 'post', '', 0),
(68, 1, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-20', '', '', '2024-03-28 17:38:59', '2024-03-28 17:38:59', '', 0, 'http://whales-ventures-test/?p=68', 0, 'post', '', 0),
(69, 1, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-19', '', '', '2024-03-28 17:38:59', '2024-03-28 17:38:59', '', 0, 'http://whales-ventures-test/?p=69', 0, 'post', '', 0),
(70, 1, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-18', '', '', '2024-03-28 17:38:59', '2024-03-28 17:38:59', '', 0, 'http://whales-ventures-test/?p=70', 0, 'post', '', 0),
(71, 1, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-17', '', '', '2024-03-28 17:38:59', '2024-03-28 17:38:59', '', 0, 'http://whales-ventures-test/?p=71', 0, 'post', '', 0),
(72, 1, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-16', '', '', '2024-03-28 17:38:59', '2024-03-28 17:38:59', '', 0, 'http://whales-ventures-test/?p=72', 0, 'post', '', 0),
(73, 1, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-15', '', '', '2024-03-28 17:38:59', '2024-03-28 17:38:59', '', 0, 'http://whales-ventures-test/?p=73', 0, 'post', '', 0),
(74, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-14', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 0, 'http://whales-ventures-test/?p=74', 0, 'post', '', 0),
(75, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-13', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 0, 'http://whales-ventures-test/?p=75', 0, 'post', '', 0),
(76, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-12', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 0, 'http://whales-ventures-test/?p=76', 0, 'post', '', 0),
(77, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-11', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 0, 'http://whales-ventures-test/?p=77', 0, 'post', '', 0),
(78, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-10', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 0, 'http://whales-ventures-test/?p=78', 0, 'post', '', 0),
(79, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-9', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 0, 'http://whales-ventures-test/?p=79', 0, 'post', '', 0),
(80, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-8', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 0, 'http://whales-ventures-test/?p=80', 0, 'post', '', 0),
(81, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-7', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 0, 'http://whales-ventures-test/?p=81', 0, 'post', '', 0),
(82, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-6', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 0, 'http://whales-ventures-test/?p=82', 0, 'post', '', 0),
(83, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-5', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 0, 'http://whales-ventures-test/?p=83', 0, 'post', '', 0),
(84, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-4', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 0, 'http://whales-ventures-test/?p=84', 0, 'post', '', 0),
(85, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-3', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 0, 'http://whales-ventures-test/?p=85', 0, 'post', '', 0),
(86, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed-2', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 0, 'http://whales-ventures-test/?p=86', 0, 'post', '', 0),
(87, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 0, 'http://whales-ventures-test/?p=87', 0, 'post', '', 0),
(88, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 87, 'http://whales-ventures-test/?p=88', 0, 'revision', '', 0),
(89, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 86, 'http://whales-ventures-test/?p=89', 0, 'revision', '', 0),
(90, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 85, 'http://whales-ventures-test/?p=90', 0, 'revision', '', 0),
(91, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 84, 'http://whales-ventures-test/?p=91', 0, 'revision', '', 0),
(92, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 83, 'http://whales-ventures-test/?p=92', 0, 'revision', '', 0),
(93, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 82, 'http://whales-ventures-test/?p=93', 0, 'revision', '', 0),
(94, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 81, 'http://whales-ventures-test/?p=94', 0, 'revision', '', 0),
(95, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 80, 'http://whales-ventures-test/?p=95', 0, 'revision', '', 0),
(96, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 79, 'http://whales-ventures-test/?p=96', 0, 'revision', '', 0),
(97, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 78, 'http://whales-ventures-test/?p=97', 0, 'revision', '', 0),
(98, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 77, 'http://whales-ventures-test/?p=98', 0, 'revision', '', 0),
(99, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 76, 'http://whales-ventures-test/?p=99', 0, 'revision', '', 0),
(100, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 75, 'http://whales-ventures-test/?p=100', 0, 'revision', '', 0),
(101, 1, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2024-03-28 17:38:58', '2024-03-28 17:38:58', '', 74, 'http://whales-ventures-test/?p=101', 0, 'revision', '', 0),
(102, 1, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2024-03-28 17:38:59', '2024-03-28 17:38:59', '', 73, 'http://whales-ventures-test/?p=102', 0, 'revision', '', 0),
(103, 1, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2024-03-28 17:38:59', '2024-03-28 17:38:59', '', 72, 'http://whales-ventures-test/?p=103', 0, 'revision', '', 0),
(104, 1, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2024-03-28 17:38:59', '2024-03-28 17:38:59', '', 71, 'http://whales-ventures-test/?p=104', 0, 'revision', '', 0),
(105, 1, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2024-03-28 17:38:59', '2024-03-28 17:38:59', '', 70, 'http://whales-ventures-test/?p=105', 0, 'revision', '', 0),
(106, 1, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2024-03-28 17:38:59', '2024-03-28 17:38:59', '', 69, 'http://whales-ventures-test/?p=106', 0, 'revision', '', 0),
(107, 1, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2024-03-28 17:38:59', '2024-03-28 17:38:59', '', 68, 'http://whales-ventures-test/?p=107', 0, 'revision', '', 0),
(108, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 67, 'http://whales-ventures-test/?p=108', 0, 'revision', '', 0),
(109, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 66, 'http://whales-ventures-test/?p=109', 0, 'revision', '', 0),
(110, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 65, 'http://whales-ventures-test/?p=110', 0, 'revision', '', 0),
(111, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 64, 'http://whales-ventures-test/?p=111', 0, 'revision', '', 0),
(112, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 63, 'http://whales-ventures-test/?p=112', 0, 'revision', '', 0),
(113, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 62, 'http://whales-ventures-test/?p=113', 0, 'revision', '', 0),
(114, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 61, 'http://whales-ventures-test/?p=114', 0, 'revision', '', 0),
(115, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 60, 'http://whales-ventures-test/?p=115', 0, 'revision', '', 0),
(116, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 59, 'http://whales-ventures-test/?p=116', 0, 'revision', '', 0),
(117, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 58, 'http://whales-ventures-test/?p=117', 0, 'revision', '', 0),
(118, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 57, 'http://whales-ventures-test/?p=118', 0, 'revision', '', 0),
(119, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 56, 'http://whales-ventures-test/?p=119', 0, 'revision', '', 0),
(120, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 55, 'http://whales-ventures-test/?p=120', 0, 'revision', '', 0),
(121, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 54, 'http://whales-ventures-test/?p=121', 0, 'revision', '', 0),
(122, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 53, 'http://whales-ventures-test/?p=122', 0, 'revision', '', 0),
(123, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 52, 'http://whales-ventures-test/?p=123', 0, 'revision', '', 0),
(124, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 51, 'http://whales-ventures-test/?p=124', 0, 'revision', '', 0),
(125, 1, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2024-03-28 17:39:06', '2024-03-28 17:39:06', '', 50, 'http://whales-ventures-test/?p=125', 0, 'revision', '', 0),
(126, 1, '2024-03-28 17:39:07', '2024-03-28 17:39:07', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2024-03-28 17:39:07', '2024-03-28 17:39:07', '', 49, 'http://whales-ventures-test/?p=126', 0, 'revision', '', 0),
(127, 1, '2024-03-28 17:39:07', '2024-03-28 17:39:07', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2024-03-28 17:39:07', '2024-03-28 17:39:07', '', 48, 'http://whales-ventures-test/?p=127', 0, 'revision', '', 0),
(128, 1, '2024-03-28 17:39:16', '2024-03-28 17:39:16', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2024-03-28 17:39:16', '2024-03-28 17:39:16', '', 47, 'http://whales-ventures-test/?p=128', 0, 'revision', '', 0),
(129, 1, '2024-03-28 17:39:16', '2024-03-28 17:39:16', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2024-03-28 17:39:16', '2024-03-28 17:39:16', '', 46, 'http://whales-ventures-test/?p=129', 0, 'revision', '', 0),
(130, 1, '2024-03-28 17:39:16', '2024-03-28 17:39:16', 'sad fsd fasd fsadsdafS\r\nDFsadfsadf\r\nSDAfsdafsdafS\r\nDfsad', 'Title 1', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2024-03-28 17:39:16', '2024-03-28 17:39:16', '', 45, 'http://whales-ventures-test/?p=130', 0, 'revision', '', 0),
(131, 1, '2024-03-28 18:07:01', '2024-03-28 18:07:01', 'Test 123 123', 'Title 123', '', 'trash', 'open', 'open', '', '__trashed-46', '', '', '2024-03-28 18:07:01', '2024-03-28 18:07:01', '', 0, 'http://whales-ventures-test/?p=131', 0, 'post', '', 0),
(132, 1, '2024-03-28 18:07:01', '2024-03-28 18:07:01', 'йцуйцу йцу йцу йцу йцу', 'йцуцйу', '', 'trash', 'open', 'open', '', '__trashed-45', '', '', '2024-03-28 18:07:01', '2024-03-28 18:07:01', '', 0, 'http://whales-ventures-test/?p=132', 0, 'post', '', 0),
(133, 2, '2024-03-28 18:07:00', '2024-03-28 18:07:00', 'вфівфів', 'фівфі', '', 'trash', 'open', 'open', '', '__trashed-44', '', '', '2024-03-28 18:07:00', '2024-03-28 18:07:00', '', 0, 'http://whales-ventures-test/?p=133', 0, 'post', '', 0),
(134, 1, '2024-03-28 18:07:00', '2024-03-28 18:07:00', 'вфівфів', 'фівфі', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2024-03-28 18:07:00', '2024-03-28 18:07:00', '', 133, 'http://whales-ventures-test/?p=134', 0, 'revision', '', 0),
(135, 1, '2024-03-28 18:07:01', '2024-03-28 18:07:01', 'йцуйцу йцу йцу йцу йцу', 'йцуцйу', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2024-03-28 18:07:01', '2024-03-28 18:07:01', '', 132, 'http://whales-ventures-test/?p=135', 0, 'revision', '', 0),
(136, 1, '2024-03-28 18:07:01', '2024-03-28 18:07:01', 'Test 123 123', 'Title 123', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2024-03-28 18:07:01', '2024-03-28 18:07:01', '', 131, 'http://whales-ventures-test/?p=136', 0, 'revision', '', 0),
(137, 1, '2024-03-28 19:50:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-03-28 19:50:06', '0000-00-00 00:00:00', '', 0, 'http://whales-ventures-test/?page_id=137', 0, 'page', '', 0),
(138, 1, '2024-03-28 19:54:17', '2024-03-28 19:54:17', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2024-03-28 21:23:02', '2024-03-28 21:23:02', '', 0, 'http://whales-ventures-test/?page_id=138', 0, 'page', '', 0),
(139, 1, '2024-03-28 19:54:17', '2024-03-28 19:54:17', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2024-03-28 19:54:17', '2024-03-28 19:54:17', '', 138, 'http://whales-ventures-test/?p=139', 0, 'revision', '', 0),
(140, 1, '2024-03-28 21:02:04', '2024-03-28 21:02:04', ' ', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2024-03-28 21:02:04', '2024-03-28 21:02:04', '', 0, 'http://whales-ventures-test/?p=140', 1, 'nav_menu_item', '', 0),
(141, 1, '2024-03-28 21:02:04', '2024-03-28 21:02:04', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2024-03-28 21:02:04', '2024-03-28 21:02:04', '', 0, 'http://whales-ventures-test/?p=141', 3, 'nav_menu_item', '', 0),
(142, 1, '2024-03-28 21:02:04', '2024-03-28 21:02:04', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2024-03-28 21:02:04', '2024-03-28 21:02:04', '', 0, 'http://whales-ventures-test/?p=142', 2, 'nav_menu_item', '', 0),
(143, 1, '2024-03-28 21:13:21', '2024-03-28 21:13:21', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:5:\"block\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Authorization', 'authorization', 'publish', 'closed', 'closed', '', 'group_6605dd5485576', '', '', '2024-03-28 21:13:21', '2024-03-28 21:13:21', '', 0, 'http://whales-ventures-test/?post_type=acf-field-group&#038;p=143', 0, 'acf-field-group', '', 0),
(144, 1, '2024-03-28 21:13:21', '2024-03-28 21:13:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_6605dd55a26c6', '', '', '2024-03-28 21:13:21', '2024-03-28 21:13:21', '', 143, 'http://whales-ventures-test/?post_type=acf-field&p=144', 0, 'acf-field', '', 0),
(145, 1, '2024-03-28 21:13:21', '2024-03-28 21:13:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Log In Text', 'log_in_text', 'publish', 'closed', 'closed', '', 'field_6605dd5ba26c7', '', '', '2024-03-28 21:13:21', '2024-03-28 21:13:21', '', 143, 'http://whales-ventures-test/?post_type=acf-field&p=145', 1, 'acf-field', '', 0),
(146, 1, '2024-03-28 21:13:21', '2024-03-28 21:13:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Sign Up Text', 'sign_up_text', 'publish', 'closed', 'closed', '', 'field_6605dd65a26c8', '', '', '2024-03-28 21:13:21', '2024-03-28 21:13:21', '', 143, 'http://whales-ventures-test/?post_type=acf-field&p=146', 2, 'acf-field', '', 0),
(147, 1, '2024-03-28 21:13:55', '2024-03-28 21:13:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"clone\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6605dd83a0a31\";s:5:\"clone\";a:1:{i:0;s:19:\"group_6605dd5485576\";}s:7:\"display\";s:8:\"seamless\";s:6:\"layout\";s:5:\"block\";s:12:\"prefix_label\";i:0;s:11:\"prefix_name\";i:0;}', 'Authorization', 'authorization', 'publish', 'closed', 'closed', '', 'field_6605dd85a0a33', '', '', '2024-03-28 21:13:55', '2024-03-28 21:13:55', '', 9, 'http://whales-ventures-test/?post_type=acf-field&p=147', 0, 'acf-field', '', 0),
(148, 1, '2024-03-28 21:14:26', '2024-03-28 21:14:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2024-03-28 21:14:26', '2024-03-28 21:14:26', '', 6, 'http://whales-ventures-test/?p=148', 0, 'revision', '', 0),
(149, 1, '2024-03-28 21:21:58', '2024-03-28 21:21:58', 'Text asd sadas', 'Home', '', 'inherit', 'closed', 'closed', '', '6-autosave-v1', '', '', '2024-03-28 21:21:58', '2024-03-28 21:21:58', '', 6, 'http://whales-ventures-test/?p=149', 0, 'revision', '', 0),
(152, 1, '2024-03-28 21:24:34', '2024-03-28 21:24:34', '<h2>About Us</h2>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem <a href=\"http://whales-ventures-test/2024/03/27/blog-post-1/\">Ipsum</a>.\r\n\r\n<img class=\"alignnone wp-image-21 size-large\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-2-1024x684.jpg\" alt=\"\" width=\"1024\" height=\"684\" />\r\n<h3>Heading 3</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy <a href=\"https://www.lipsum.com/\">text</a> of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class=\"alignnone wp-image-24 size-large\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-3-1024x683.jpg\" alt=\"\" width=\"1024\" height=\"683\" />\r\n<h3>Heading 4</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class=\"alignnone wp-image-17 size-large\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-1-1024x683.jpg\" alt=\"\" width=\"1024\" height=\"683\" />\r\n\r\n&nbsp;', 'About Us', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2024-03-28 21:24:34', '2024-03-28 21:24:34', '', 30, 'http://whales-ventures-test/?p=152', 0, 'revision', '', 0),
(153, 1, '2024-03-28 21:25:00', '2024-03-28 21:25:00', '<h2>About Us</h2>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem <a href=\"http://whales-ventures-test/2024/03/27/blog-post-1/\">Ipsum</a>. About Us\r\n\r\n<img class=\"alignnone wp-image-21 size-large\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-2-1024x684.jpg\" alt=\"\" width=\"1024\" height=\"684\" />\r\n<h3>Heading 3</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy <a href=\"https://www.lipsum.com/\">text</a> of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class=\"alignnone wp-image-24 size-large\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-3-1024x683.jpg\" alt=\"\" width=\"1024\" height=\"683\" />\r\n<h3>Heading 4</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class=\"alignnone wp-image-17 size-large\" src=\"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-1-1024x683.jpg\" alt=\"\" width=\"1024\" height=\"683\" />\r\n\r\n&nbsp;', 'About Us', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2024-03-28 21:25:00', '2024-03-28 21:25:00', '', 30, 'http://whales-ventures-test/?p=153', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Category 3', 'category-3', 0),
(3, 'Category 2', 'category-2', 0),
(4, 'Category 1', 'category-1', 0),
(5, 'Header Menu', 'header-menu', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(15, 2, 0),
(20, 3, 0),
(23, 4, 0),
(45, 1, 0),
(46, 1, 0),
(47, 1, 0),
(48, 1, 0),
(49, 1, 0),
(50, 1, 0),
(51, 1, 0),
(52, 1, 0),
(53, 1, 0),
(54, 1, 0),
(55, 1, 0),
(56, 1, 0),
(57, 1, 0),
(58, 1, 0),
(59, 1, 0),
(60, 1, 0),
(61, 1, 0),
(62, 1, 0),
(63, 1, 0),
(64, 1, 0),
(65, 1, 0),
(66, 1, 0),
(67, 1, 0),
(68, 1, 0),
(69, 1, 0),
(70, 1, 0),
(71, 1, 0),
(72, 1, 0),
(73, 1, 0),
(74, 1, 0),
(75, 1, 0),
(76, 1, 0),
(77, 1, 0),
(78, 1, 0),
(79, 1, 0),
(80, 1, 0),
(81, 1, 0),
(82, 1, 0),
(83, 1, 0),
(84, 1, 0),
(85, 1, 0),
(86, 1, 0),
(87, 1, 0),
(131, 1, 0),
(132, 1, 0),
(133, 1, 0),
(140, 5, 0),
(141, 5, 0),
(142, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"7f0b4b06c4d07f44a964d1db495ec7f9f2c755d9a500487abf09356ea3913749\";a:4:{s:10:\"expiration\";i:1712774771;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36\";s:5:\"login\";i:1711565171;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-03-27T18:55:48.739Z\";}'),
(20, 1, 'closedpostboxes_post', 'a:0:{}'),
(21, 1, 'metaboxhidden_post', 'a:5:{i:0;s:13:\"trackbacksdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1711567821'),
(24, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:355:\"<p>You can speed up your site and get insight into your internal linking structure by letting us perform a few optimizations to the way SEO data is stored. </p><p>We estimate this will take less than a minute.</p><a class=\"button\" href=\"http://whales-ventures-test/wp-admin/admin.php?page=wpseo_tools&start-indexation=true\">Start SEO data optimization</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:7:\"user_id\";i:1;s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:481:\"<p><strong>Huge SEO Issue: You&#039;re blocking access to robots.</strong> If you want search engines to show this site in their results, you must <a href=\"http://whales-ventures-test/wp-admin/options-reading.php\">go to your Reading Settings</a> and uncheck the box for Search Engine Visibility. <button type=\"button\" id=\"robotsmessage-dismiss-button\" class=\"button-link hide-if-no-js\" data-nonce=\"1f84660d94\">I don&#039;t want this site to show in the search results.</button></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-search-engines-discouraged\";s:7:\"user_id\";i:1;s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(25, 2, 'nickname', 'qwe'),
(26, 2, 'first_name', ''),
(27, 2, 'last_name', ''),
(28, 2, 'description', ''),
(29, 2, 'rich_editing', 'true'),
(30, 2, 'syntax_highlighting', 'true'),
(31, 2, 'comment_shortcuts', 'false'),
(32, 2, 'admin_color', 'fresh'),
(33, 2, 'use_ssl', '0'),
(34, 2, 'show_admin_bar_front', 'true'),
(35, 2, 'locale', ''),
(36, 2, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(37, 2, 'wp_user_level', '2'),
(38, 2, '_yoast_wpseo_profile_updated', '1711649072'),
(40, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(41, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bu9tV7PxwEdqwkCJulKZY1cThwuW4j1', 'admin', 'test@test.test', 'http://whales-ventures-test', '2024-03-27 18:45:53', '', 0, 'admin'),
(2, 'qwe', '$P$BcMr7kyrxZgwvhUOpAG84Z7r4IT.dz/', 'qwe', 'qwe@123.123', '', '2024-03-28 18:04:32', '', 0, 'qwe');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `post_parent` bigint DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int DEFAULT NULL,
  `readability_score` int DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int DEFAULT NULL,
  `incoming_link_count` int DEFAULT NULL,
  `prominent_words_version` int UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int DEFAULT NULL,
  `version` int DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`, `inclusive_language_score`) VALUES
(1, 'http://whales-ventures-test/2024/03/27/blog-post-1/', '51:1784c592fb9f9d75ce22b8336448ae62', 23, 'post', 'post', 1, 0, '%%title%% %%page%% %%sep%% %%sitename%% news post', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has post news industry\'s standard dummy text ever', 'Blog Post #1', 'publish', NULL, 0, NULL, NULL, NULL, 'post news', 75, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://whales-ventures-test/wp-content/uploads/2024/03/post-img-3.jpg', NULL, '24', 'featured-image', NULL, NULL, 'http://whales-ventures-test/wp-content/uploads/2024/03/post-img-3.jpg', '24', 'featured-image', '{\n    \"width\": 1920,\n    \"height\": 1280,\n    \"filesize\": 601976,\n    \"url\": \"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-3.jpg\",\n    \"path\": \"D:\\\\OSPanel\\\\domains\\\\whales-ventures-test/wp-content/uploads/2024/03/post-img-3.jpg\",\n    \"size\": \"full\",\n    \"id\": 24,\n    \"alt\": \"\",\n    \"pixels\": 2457600,\n    \"type\": \"image/jpeg\"\n}', 1, 3, NULL, '2024-03-27 21:08:42', '2024-03-28 21:24:34', 1, NULL, NULL, NULL, NULL, 0, 2, 2, '2024-03-27 21:19:49', '2024-03-27 19:34:25', 0),
(2, 'http://whales-ventures-test/author/admin/', '41:e14d1a5697a2d8d067d628c1bb0bcdcb', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://1.gravatar.com/avatar/dd46a756faad4727fb679320751f6dea?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://1.gravatar.com/avatar/dd46a756faad4727fb679320751f6dea?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2024-03-27 21:08:42', '2024-03-28 18:25:44', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-03-28 21:25:44', '2024-03-27 18:45:53', NULL),
(3, 'http://whales-ventures-test/2024/03/27/blog-post-2/', '51:74198d6aba7e288b7de9cad849e03eb3', 20, 'post', 'post', 1, 0, '%%title%% %%page%% %%sep%% %%sitename%% post news', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has post news industry\'s standard dummy text ever', 'Blog Post #2', 'publish', NULL, 0, NULL, NULL, NULL, 'post news', 73, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://whales-ventures-test/wp-content/uploads/2024/03/post-img-2.jpg', NULL, '21', 'featured-image', NULL, NULL, 'http://whales-ventures-test/wp-content/uploads/2024/03/post-img-2.jpg', '21', 'featured-image', '{\n    \"width\": 1919,\n    \"height\": 1281,\n    \"filesize\": 296182,\n    \"url\": \"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-2.jpg\",\n    \"path\": \"D:\\\\OSPanel\\\\domains\\\\whales-ventures-test/wp-content/uploads/2024/03/post-img-2.jpg\",\n    \"size\": \"full\",\n    \"id\": 21,\n    \"alt\": \"\",\n    \"pixels\": 2458239,\n    \"type\": \"image/jpeg\"\n}', 1, 2, NULL, '2024-03-27 21:08:42', '2024-03-28 18:09:33', 1, NULL, NULL, NULL, NULL, 0, 2, 2, '2024-03-27 21:19:46', '2024-03-27 19:33:11', 0),
(4, 'http://whales-ventures-test/2024/03/27/blog-post-3/', '51:b8fa419958fef0fe3b484af4ddc81f34', 15, 'post', 'post', 1, 0, '%%title%% %%page%% %%sep%% %%sitename%% post news', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has post news industry\'s standard dummy text ever', 'Blog Post #3', 'publish', NULL, 0, NULL, NULL, NULL, 'post news', 73, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://whales-ventures-test/wp-content/uploads/2024/03/post-img-1.jpg', NULL, '17', 'featured-image', NULL, NULL, 'http://whales-ventures-test/wp-content/uploads/2024/03/post-img-1.jpg', '17', 'featured-image', '{\n    \"width\": 1920,\n    \"height\": 1280,\n    \"filesize\": 263201,\n    \"url\": \"http://whales-ventures-test/wp-content/uploads/2024/03/post-img-1.jpg\",\n    \"path\": \"D:\\\\OSPanel\\\\domains\\\\whales-ventures-test/wp-content/uploads/2024/03/post-img-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 17,\n    \"alt\": \"\",\n    \"pixels\": 2457600,\n    \"type\": \"image/jpeg\"\n}', 2, NULL, NULL, '2024-03-27 21:08:42', '2024-03-28 18:17:00', 1, NULL, NULL, NULL, NULL, 0, 2, 2, '2024-03-27 21:19:44', '2024-03-27 19:28:58', 0),
(6, 'http://whales-ventures-test/', '28:9bfab4172dc4f9887ac53fe4652b2e9a', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2024-03-27 21:20:31', '2024-03-28 18:25:44', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-03-28 21:25:44', '2024-03-27 19:28:58', NULL),
(7, 'http://whales-ventures-test/about-us/', '37:a4a84c8a9ea4e6c937503a380240435e', 30, 'post', 'page', 1, 0, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard About Us', 'About Us', 'publish', NULL, 0, NULL, NULL, NULL, 'About Us', 80, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://whales-ventures-test/wp-content/uploads/2024/03/post-img-2-1024x684.jpg', NULL, NULL, 'first-content-image', NULL, NULL, 'http://whales-ventures-test/wp-content/uploads/2024/03/post-img-2-1024x684.jpg', NULL, 'first-content-image', NULL, 1, NULL, NULL, '2024-03-27 21:25:12', '2024-03-28 18:25:00', 1, NULL, NULL, NULL, NULL, 0, 2, 2, '2024-03-28 21:25:00', '2024-03-27 20:53:31', 0),
(8, 'http://whales-ventures-test/', '28:9bfab4172dc4f9887ac53fe4652b2e9a', 6, 'post', 'page', 1, 0, '%%title%% %%page%% %%sep%% %%sitename%% Home Test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Home Test', 'Home', 'publish', NULL, 0, NULL, NULL, NULL, 'Home Test', 43, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-03-27 21:25:12', '2024-03-28 18:25:44', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-03-28 21:25:44', '2024-03-27 18:55:52', 0),
(11, NULL, NULL, 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-03-28 17:02:27', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL),
(12, NULL, NULL, 2, 'term', 'category', NULL, NULL, NULL, NULL, 'Category 3', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-03-28 17:02:27', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-27 21:19:44', '2024-03-27 19:28:58', NULL),
(13, NULL, NULL, 3, 'term', 'category', NULL, NULL, NULL, NULL, 'Category 2', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-03-28 17:02:27', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-27 21:19:46', '2024-03-27 19:33:11', NULL),
(14, NULL, NULL, 4, 'term', 'category', NULL, NULL, NULL, NULL, 'Category 1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-03-28 17:02:27', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-27 21:19:49', '2024-03-27 19:34:25', NULL),
(15, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:02:27', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL),
(16, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:02:27', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL),
(17, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:02:27', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL),
(19, NULL, NULL, 45, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:23:37', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:16', '2024-03-28 17:39:16', 0),
(20, NULL, NULL, 46, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:23:44', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:16', '2024-03-28 17:39:16', 0),
(21, NULL, NULL, 47, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:25:22', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:16', '2024-03-28 17:39:16', 0),
(22, NULL, NULL, 48, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:25:24', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:07', '2024-03-28 17:39:07', 0),
(23, NULL, NULL, 49, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:25:25', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:07', '2024-03-28 17:39:07', 0),
(24, NULL, NULL, 50, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:25:26', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(25, NULL, NULL, 51, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:25:44', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(26, NULL, NULL, 52, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:25:51', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(27, NULL, NULL, 53, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:25:52', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(28, NULL, NULL, 54, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:25:55', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(29, NULL, NULL, 55, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:26:30', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(30, NULL, NULL, 56, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:26:31', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(31, NULL, NULL, 57, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:26:35', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(32, NULL, NULL, 58, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:27:18', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(33, NULL, NULL, 59, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:27:19', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(34, NULL, NULL, 60, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:27:23', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(35, NULL, NULL, 61, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:27:24', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(36, NULL, NULL, 62, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:27:28', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(37, NULL, NULL, 63, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:27:29', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(38, NULL, NULL, 64, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:27:30', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(39, NULL, NULL, 65, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:27:34', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(40, NULL, NULL, 66, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:27:35', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(41, NULL, NULL, 67, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:27:51', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:39:06', '2024-03-28 17:39:06', 0),
(42, NULL, NULL, 68, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:27:52', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 0),
(43, NULL, NULL, 69, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:28:09', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 0),
(44, NULL, NULL, 70, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:28:10', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 0),
(45, NULL, NULL, 71, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:28:25', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 0),
(46, NULL, NULL, 72, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:33:07', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 0),
(47, NULL, NULL, 73, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:33:25', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:59', '2024-03-28 17:38:59', 0),
(48, NULL, NULL, 74, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:33:31', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 0),
(49, NULL, NULL, 75, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:33:45', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 0),
(50, NULL, NULL, 76, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:33:50', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 0),
(51, NULL, NULL, 77, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:34:05', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 0),
(52, NULL, NULL, 78, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:34:07', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 0),
(53, NULL, NULL, 79, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:34:14', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 0),
(54, NULL, NULL, 80, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:34:16', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 0),
(55, NULL, NULL, 81, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:34:22', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 0),
(56, NULL, NULL, 82, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:34:24', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 0),
(57, NULL, NULL, 83, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:34:26', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 0),
(58, NULL, NULL, 84, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:34:27', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 0),
(59, NULL, NULL, 85, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:34:29', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 0),
(60, NULL, NULL, 86, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:34:30', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 0),
(61, NULL, NULL, 87, 'post', 'post', 1, 0, NULL, NULL, 'Title 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:34:37', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 17:38:58', '2024-03-28 17:38:58', 0),
(62, NULL, NULL, 131, 'post', 'post', 1, 0, NULL, NULL, 'Title 123', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:41:26', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 18:07:01', '2024-03-28 18:07:01', 0),
(63, NULL, NULL, 132, 'post', 'post', 1, 0, NULL, NULL, 'йцуцйу', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 17:41:40', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 18:07:01', '2024-03-28 18:07:01', 0),
(64, NULL, NULL, 133, 'post', 'post', 2, 0, NULL, NULL, 'фівфі', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 18:06:34', '2024-03-28 21:02:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2024-03-28 18:07:00', '2024-03-28 18:07:00', 0),
(65, 'http://whales-ventures-test/blog/', '33:13d396434ef7a6259a21be893d23b970', 138, 'post', 'page', 1, 0, '%%title%% %%page%% %%sep%% %%sitename%% Blog Test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Blog Test', 'Blog', 'publish', NULL, 0, NULL, NULL, NULL, 'Blog Test', 42, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-03-28 19:54:17', '2024-03-28 18:23:02', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-03-28 21:23:02', '2024-03-28 19:54:17', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int UNSIGNED NOT NULL,
  `ancestor_id` int UNSIGNED NOT NULL,
  `depth` int UNSIGNED DEFAULT NULL,
  `blog_id` bigint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(19, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 0, 0, 1),
(25, 0, 0, 1),
(26, 0, 0, 1),
(27, 0, 0, 1),
(28, 0, 0, 1),
(29, 0, 0, 1),
(30, 0, 0, 1),
(31, 0, 0, 1),
(32, 0, 0, 1),
(33, 0, 0, 1),
(34, 0, 0, 1),
(35, 0, 0, 1),
(36, 0, 0, 1),
(37, 0, 0, 1),
(38, 0, 0, 1),
(39, 0, 0, 1),
(40, 0, 0, 1),
(41, 0, 0, 1),
(42, 0, 0, 1),
(43, 0, 0, 1),
(44, 0, 0, 1),
(45, 0, 0, 1),
(46, 0, 0, 1),
(47, 0, 0, 1),
(48, 0, 0, 1),
(49, 0, 0, 1),
(50, 0, 0, 1),
(51, 0, 0, 1),
(52, 0, 0, 1),
(53, 0, 0, 1),
(54, 0, 0, 1),
(55, 0, 0, 1),
(56, 0, 0, 1),
(57, 0, 0, 1),
(58, 0, 0, 1),
(59, 0, 0, 1),
(60, 0, 0, 1),
(61, 0, 0, 1),
(62, 0, 0, 1),
(63, 0, 0, 1),
(64, 0, 0, 1),
(65, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404'),
(24, '20230417083836');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int UNSIGNED NOT NULL,
  `post_id` bigint DEFAULT NULL,
  `term_id` bigint DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint UNSIGNED DEFAULT NULL,
  `target_post_id` bigint UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int UNSIGNED DEFAULT NULL,
  `target_indexable_id` int UNSIGNED DEFAULT NULL,
  `height` int UNSIGNED DEFAULT NULL,
  `width` int UNSIGNED DEFAULT NULL,
  `size` int UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп даних таблиці `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(1, 'http://whales-ventures-test/2024/03/27/blog-post-2/', 23, 20, 'internal', 1, 3, NULL, NULL, NULL, NULL, NULL),
(2, 'https://www.facebook.com/', 23, NULL, 'external', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'http://whales-ventures-test/2024/03/27/blog-post-2/', 15, 20, 'internal', 4, 3, NULL, NULL, NULL, NULL, NULL),
(4, 'http://whales-ventures-test/2024/03/27/blog-post-1/', 15, 23, 'internal', 4, 1, NULL, NULL, NULL, NULL, NULL),
(5, 'https://www.facebook.com/', 15, NULL, 'external', 4, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'http://whales-ventures-test/2024/03/27/blog-post-1/', 20, 23, 'internal', 3, 1, NULL, NULL, NULL, NULL, NULL),
(7, 'https://www.facebook.com/', 20, NULL, 'external', 3, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'http://whales-ventures-test/wp-content/uploads/2024/03/post-img-2-1024x684.jpg', 30, 21, 'image-in', 7, NULL, 1281, 1919, 296182, NULL, NULL),
(10, 'http://whales-ventures-test/wp-content/uploads/2024/03/post-img-3-1024x683.jpg', 30, 24, 'image-in', 7, NULL, 1280, 1920, 601976, NULL, NULL),
(11, 'http://whales-ventures-test/wp-content/uploads/2024/03/post-img-1-1024x683.jpg', 30, 17, 'image-in', 7, NULL, 1280, 1920, 263201, NULL, NULL),
(12, 'http://whales-ventures-test/2024/03/27/blog-post-1/', 30, 23, 'internal', 7, 1, NULL, NULL, NULL, NULL, NULL),
(13, 'https://www.lipsum.com/', 30, NULL, 'external', 7, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Індекси таблиці `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Індекси таблиці `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Індекси таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Індекси таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Індекси таблиці `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Індекси таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Індекси таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Індекси таблиці `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Індекси таблиці `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Індекси таблиці `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Індекси таблиці `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Індекси таблиці `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT для таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT для таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT для таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблиці `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблиці `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблиці `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
