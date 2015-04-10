-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Час створення: Квт 10 2015 р., 20:01
-- Версія сервера: 5.6.21
-- Версія PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База даних: `brand66`
--

-- --------------------------------------------------------

--
-- Структура таблиці `br_commentmeta`
--

CREATE TABLE IF NOT EXISTS `br_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `br_comments`
--

CREATE TABLE IF NOT EXISTS `br_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `br_comments`
--

INSERT INTO `br_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Мистер WordPress', '', 'https://wordpress.org/', '', '2015-04-04 09:34:14', '2015-04-04 09:34:14', 'Привет! Это комментарий.\nЧтобы удалить его, авторизуйтесь и просмотрите комментарии к записи. Там будут ссылки для их изменения или удаления.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `br_es_deliverreport`
--

CREATE TABLE IF NOT EXISTS `br_es_deliverreport` (
`es_deliver_id` int(10) unsigned NOT NULL,
  `es_deliver_sentguid` varchar(255) NOT NULL,
  `es_deliver_emailid` int(10) unsigned NOT NULL,
  `es_deliver_emailmail` varchar(255) NOT NULL,
  `es_deliver_sentdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_deliver_status` varchar(25) NOT NULL,
  `es_deliver_viewdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `br_es_emaillist`
--

CREATE TABLE IF NOT EXISTS `br_es_emaillist` (
`es_email_id` int(10) unsigned NOT NULL,
  `es_email_name` varchar(255) NOT NULL,
  `es_email_mail` varchar(255) NOT NULL,
  `es_email_status` varchar(25) NOT NULL DEFAULT 'Unconfirmed',
  `es_email_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_email_viewcount` varchar(100) NOT NULL,
  `es_email_group` varchar(100) NOT NULL DEFAULT 'Public',
  `es_email_guid` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `br_es_emaillist`
--

INSERT INTO `br_es_emaillist` (`es_email_id`, `es_email_name`, `es_email_mail`, `es_email_status`, `es_email_created`, `es_email_viewcount`, `es_email_group`, `es_email_guid`) VALUES
(1, 'Admin', 'brand66@email.com', 'Confirmed', '2015-04-10 12:08:49', '0', 'Public', 'hpgucj-ejkwrs-qvuasm-ejncps-icpuws'),
(2, 'Example', 'a.example@example.com', 'Confirmed', '2015-04-10 12:08:49', '0', 'Public', 'omwlqf-jcwgsb-xiekay-zwdgyb-urfyst');

-- --------------------------------------------------------

--
-- Структура таблиці `br_es_notification`
--

CREATE TABLE IF NOT EXISTS `br_es_notification` (
`es_note_id` int(10) unsigned NOT NULL,
  `es_note_cat` text,
  `es_note_group` varchar(255) NOT NULL,
  `es_note_templ` int(10) unsigned NOT NULL,
  `es_note_status` varchar(10) NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `br_es_notification`
--

INSERT INTO `br_es_notification` (`es_note_id`, `es_note_cat`, `es_note_group`, `es_note_templ`, `es_note_status`) VALUES
(1, ' ##Без рубрики## ', 'Public', 1, 'Enable');

-- --------------------------------------------------------

--
-- Структура таблиці `br_es_pluginconfig`
--

CREATE TABLE IF NOT EXISTS `br_es_pluginconfig` (
`es_c_id` int(10) unsigned NOT NULL,
  `es_c_fromname` varchar(255) NOT NULL,
  `es_c_fromemail` varchar(255) NOT NULL,
  `es_c_mailtype` varchar(255) NOT NULL,
  `es_c_adminmailoption` varchar(255) NOT NULL,
  `es_c_adminemail` varchar(255) NOT NULL,
  `es_c_adminmailsubject` varchar(255) NOT NULL,
  `es_c_adminmailcontant` text,
  `es_c_usermailoption` varchar(255) NOT NULL,
  `es_c_usermailsubject` varchar(255) NOT NULL,
  `es_c_usermailcontant` text,
  `es_c_optinoption` varchar(255) NOT NULL,
  `es_c_optinsubject` varchar(255) NOT NULL,
  `es_c_optincontent` text,
  `es_c_optinlink` varchar(255) NOT NULL,
  `es_c_unsublink` varchar(255) NOT NULL,
  `es_c_unsubtext` text,
  `es_c_unsubhtml` text,
  `es_c_subhtml` text,
  `es_c_message1` text,
  `es_c_message2` text
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `br_es_pluginconfig`
--

INSERT INTO `br_es_pluginconfig` (`es_c_id`, `es_c_fromname`, `es_c_fromemail`, `es_c_mailtype`, `es_c_adminmailoption`, `es_c_adminemail`, `es_c_adminmailsubject`, `es_c_adminmailcontant`, `es_c_usermailoption`, `es_c_usermailsubject`, `es_c_usermailcontant`, `es_c_optinoption`, `es_c_optinsubject`, `es_c_optincontent`, `es_c_optinlink`, `es_c_unsublink`, `es_c_unsubtext`, `es_c_unsubhtml`, `es_c_subhtml`, `es_c_message1`, `es_c_message2`) VALUES
(1, 'Admin', 'brand66@email.com', 'WP HTML MAIL', 'YES', 'brand66@email.com', 'Brand 66 New email subscription', 'Hi Admin, \r\n\r\nWe have received a request to subscribe new email address to receive emails from our website. \r\n\r\nEmail: ###EMAIL### \r\nName : ###NAME### \r\n\r\nThank You\r\nBrand 66', 'YES', 'Brand 66 Welcome to our newsletter', 'Hi ###NAME###, \r\n\r\nWe have received a request to subscribe this email address to receive newsletter from our website. \r\n\r\nThank You\r\nBrand 66', 'Double Opt In', 'Brand 66 confirm subscription', 'Hi ###NAME###, \r\n\r\nA newsletter subscription request for this email address was received. Please confirm it by <a href=''###LINK###''>clicking here</a>. If you cannot click the link, please use the following link. \r\n\r\n ###LINK### \r\n\r\nThank You\r\nBrand 66', 'http://localhost/brand66/?es=optin&db=###DBID###&email=###EMAIL###&guid=###GUID###', 'http://localhost/brand66/?es=unsubscribe&db=###DBID###&email=###EMAIL###&guid=###GUID###', 'No longer interested email from Brand 66?. Please <a href=''###LINK###''>click here</a> to unsubscribe', 'Thank You, You have been successfully unsubscribed. You will no longer hear from us.', 'Thank You, You have been successfully subscribed to our newsletter.', 'Oops.. This subscription cant be completed, sorry. The email address is blocked or already subscribed. Thank you.', 'Oops.. We are getting some technical error. Please try again or contact admin.');

-- --------------------------------------------------------

--
-- Структура таблиці `br_es_sentdetails`
--

CREATE TABLE IF NOT EXISTS `br_es_sentdetails` (
`es_sent_id` int(10) unsigned NOT NULL,
  `es_sent_guid` varchar(255) NOT NULL,
  `es_sent_qstring` varchar(255) NOT NULL,
  `es_sent_source` varchar(255) NOT NULL,
  `es_sent_starttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_endtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_count` int(10) unsigned NOT NULL,
  `es_sent_preview` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `br_es_templatetable`
--

CREATE TABLE IF NOT EXISTS `br_es_templatetable` (
`es_templ_id` int(10) unsigned NOT NULL,
  `es_templ_heading` varchar(255) NOT NULL,
  `es_templ_body` text,
  `es_templ_status` varchar(25) NOT NULL DEFAULT 'Published',
  `es_email_type` varchar(100) NOT NULL DEFAULT 'Static Template'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `br_es_templatetable`
--

INSERT INTO `br_es_templatetable` (`es_templ_id`, `es_templ_heading`, `es_templ_body`, `es_templ_status`, `es_email_type`) VALUES
(1, 'New post published ###POSTTITLE###', 'Hello ###NAME###,\r\n\r\nWe have published new blog in our website. ###POSTTITLE###\r\n###POSTDESC###\r\nYou may view the latest post at ###POSTLINK###\r\nYou received this e-mail because you asked to be notified when new updates are posted.\r\n\r\nThanks & Regards\r\nAdmin', 'Published', 'Dynamic Template'),
(2, 'Post notification ###POSTTITLE###', 'Hello ###EMAIL###,\r\n\r\nWe have published new blog in our website. ###POSTTITLE###\r\n###POSTIMAGE###\r\n###POSTFULL###\r\nYou may view the latest post at ###POSTLINK###\r\nYou received this e-mail because you asked to be notified when new updates are posted.\r\n\r\nThanks & Regards\r\nAdmin', 'Published', 'Dynamic Template'),
(3, 'Hello World Newsletter', '<strong style="color: #990000"> Email subscribersr</strong><p>Email subscribers plugin has options to send newsletters to subscribers. It has a separate page with HTML editor to create a HTML newsletter. Also have options to send notification email to subscribers when new posts are published to your blog. Separate page available to include and exclude categories to send notifications. Using plugin Import and Export options admins can easily import registered users and commenters to subscriptions list.</p> <strong style="color: #990000">Plugin Features</strong><ol> <li>Send notification email to subscribers when new posts are published.</li> <li>Subscription box.</li><li>Double opt-in and single opt-in facility for subscriber.</li> <li>Email notification to admin when user signs up (Optional).</li> <li>Automatic welcome mail to subscriber (Optional).</li> <li>Unsubscribe link in the mail.</li> <li>Import/Export subscriber emails.</li> <li>HTML editor to compose newsletter.</li> </ol> <p>Plugin live demo and video tutorial available on the official website. Check official website for more information.</p> <strong>Thanks & Regards</strong><br>Admin', 'Published', 'Static Template');

-- --------------------------------------------------------

--
-- Структура таблиці `br_links`
--

CREATE TABLE IF NOT EXISTS `br_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `br_options`
--

CREATE TABLE IF NOT EXISTS `br_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=435 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `br_options`
--

INSERT INTO `br_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/brand66', 'yes'),
(2, 'home', 'http://localhost/brand66', 'yes'),
(3, 'blogname', 'Brand 66', 'yes'),
(4, 'blogdescription', 'Blogpost', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'brand66@email.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:1;s:43:"featured-video-plus/featured-video-plus.php";i:2;s:35:"simple-subscribe/SimpleSubsribe.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '3', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:3:{i:0;s:59:"C:\\xampp\\htdocs\\brand66/wp-content/themes/brand66/style.css";i:1;s:90:"C:\\xampp\\htdocs\\brand66/wp-content/plugins/simple-social-buttons/simple-social-buttons.php";i:3;s:0:"";}', 'no'),
(41, 'template', 'brand66', 'yes'),
(42, 'stylesheet', 'brand66', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:26:"Brand 66: Exploring Design";s:4:"text";s:170:"One small step for step for design blogs. Brand66 is on a mission to uncover design trends and examples of brilliant thinking, be they in distant lands or closer to home.";s:6:"filter";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'br_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'WPLANG', '', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}i:3;a:3:{s:5:"title";s:6:"Recent";s:6:"number";i:30;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:4:{s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:3:{i:0;s:6:"text-2";i:1;s:17:"simplesubscribe-2";i:2;s:14:"recent-posts-3";}s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:7:{i:1428674904;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"6ddc5351ab24c1a949e7ade401a2f69c";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:123;}}}}i:1428675115;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"be3ba537ada6656f04eca44e2e562ec8";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:124;}}}}i:1428684360;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1428701663;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1428744876;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1428750411;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(102, '_transient_random_seed', 'd8528378b5a5162733c17a33f6cbf084', 'yes'),
(111, 'can_compress_scripts', '1', 'yes'),
(113, 'current_theme', 'Brand 66', 'yes'),
(114, 'theme_mods_brand66', 'a:11:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:4:"menu";i:2;}s:16:"header_textcolor";s:6:"002899";s:12:"header_color";b:0;s:15:"change_bg_image";s:65:"http://localhost/brand66/wp-content/uploads/2015/04/header_bg.jpg";s:26:"true_footer_copyright_text";s:15:"Rylander Design";s:13:"color_sidebar";s:7:"#f6f6f6";s:10:"color_site";s:7:"#ffffff";s:16:"footer_copyright";s:15:"Rylander Design";s:15:"color_prefooter";s:7:"#00a2f2";s:12:"color_footer";s:7:"#018dd2";}', 'yes'),
(115, 'theme_switched', '', 'yes'),
(138, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(139, 'category_children', 'a:0:{}', 'yes'),
(150, '_site_transient_timeout_browser_6b25f35effdeb9da73ee9cbe930fa39b', '1428766652', 'yes'),
(151, '_site_transient_browser_6b25f35effdeb9da73ee9cbe930fa39b', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"41.0.2272.118";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(166, '_transient_twentyfifteen_categories', '1', 'yes'),
(167, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1428162735;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(174, '_site_transient_timeout_browser_fca8f5376fb677a4a5de6dff5b9cdff8', '1428938369', 'yes'),
(175, '_site_transient_browser_fca8f5376fb677a4a5de6dff5b9cdff8', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"41.0.2272.89";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(208, 'recently_activated', 'a:6:{s:39:"email-subscribers/email-subscribers.php";i:1428668961;s:38:"mailchimp-subscribe-sm/subcribe-me.php";i:1428667116;s:19:"sharify/sharify.php";i:1428654911;s:80:"wp-share-buttons-analytics-by-getsocial/wp-share-buttons-analytics-getsocial.php";i:1428402733;s:63:"svensoft-social-share-buttons/svensoft-social-share-buttons.php";i:1428402338;s:47:"simple-social-buttons/simple-social-buttons.php";i:1428402000;}', 'yes'),
(214, 'fvp-settings', 'a:10:{s:5:"vimeo";a:4:{s:8:"portrait";i:0;s:5:"title";i:1;s:6:"byline";i:1;s:5:"color";s:6:"00adef";}s:7:"youtube";a:8:{s:5:"theme";s:4:"dark";s:5:"color";s:3:"red";s:4:"info";i:1;s:3:"rel";i:1;s:2:"fs";i:1;s:4:"logo";i:1;s:5:"wmode";s:4:"auto";s:5:"jsapi";i:0;}s:11:"dailymotion";a:6:{s:10:"foreground";s:6:"F7FFFD";s:9:"highlight";s:6:"FFC300";s:10:"background";s:6:"171D1B";s:4:"logo";i:1;s:4:"info";i:1;s:11:"syndication";s:0:"";}s:6:"sizing";a:4:{s:5:"wmode";s:4:"auto";s:5:"hmode";s:4:"auto";s:5:"width";i:560;s:6:"height";i:315;}s:8:"autoplay";s:2:"no";s:5:"align";s:6:"center";s:5:"local";a:3:{s:6:"poster";b:0;s:9:"highlight";s:6:"66a8cc";s:4:"loop";b:0;}s:5:"usage";s:7:"replace";s:8:"issingle";b:0;s:7:"version";s:5:"1.9.1";}', 'yes'),
(228, 'svensoft_social_share_buttons_option', 'a:8:{s:7:"twitter";i:1;s:8:"facebook";i:1;s:4:"size";i:35;s:6:"mailru";i:0;s:13:"odnoklassniki";i:0;s:11:"google-plus";i:0;s:9:"vkontakte";i:0;s:11:"livejournal";i:0;}', 'yes'),
(247, 'display_button_vkt', '0', 'yes'),
(258, 'sharify_remove_data', '1', 'yes'),
(280, 'display_button_pinterest', '', 'yes'),
(342, '_transient_timeout_plugin_slugs', '1428758706', 'no'),
(343, '_transient_plugin_slugs', 'a:5:{i:0;s:19:"akismet/akismet.php";i:1;s:43:"featured-video-plus/featured-video-plus.php";i:2;s:9:"hello.php";i:3;s:47:"simple-social-buttons/simple-social-buttons.php";i:4;s:35:"simple-subscribe/SimpleSubsribe.php";}', 'no'),
(359, '_site_transient_timeout_available_translations', '1428603427', 'yes'),
(360, '_site_transient_available_translations', 'a:53:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-01 13:21:43";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:15:41";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:19:26";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:22:49";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:24:48";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:30:22";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:32:23";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:34:24";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:38:25";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:40:46";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:44:26";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:46:15";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:42:35";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:48:12";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:54:32";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:56:31";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:50:12";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-27 08:55:29";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:03:17";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-18 08:12:21";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:08:29";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:14:57";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.1/haz.zip";s:3:"iso";a:2:{i:1;s:3:"haz";i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-08 22:28:26";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:25:25";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:27:28";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:29:34";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-15 22:23:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:33:39";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:35:42";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:43:18";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:47:56";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:7:"Burmese";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:59:41";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:02:30";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:07:08";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:11:07";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:14:41";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-27 14:48:56";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:19:48";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:23:44";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:30:35";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:33:33";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-27 00:00:51";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:43:10";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-09 01:16:40";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:55:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.1";s:7:"updated";s:19:"2014-12-26 02:21:02";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(380, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.1.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.1.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.1.1";s:7:"version";s:5:"4.1.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1428667920;s:15:"version_checked";s:5:"4.1.1";s:12:"translations";a:0:{}}', 'yes'),
(382, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1428667928;s:7:"checked";a:4:{s:7:"brand66";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.3";s:14:"twentythirteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(383, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(384, 'widget_mynewwidget', 'a:2:{i:2;N;s:12:"_multiwidget";i:1;}', 'yes'),
(385, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(391, '_transient_timeout_sharify_cached_count_twitter_102', '1428656597', 'no'),
(392, '_transient_sharify_cached_count_twitter_102', '0', 'no'),
(393, '_transient_timeout_sharify_cached_count_share_102', '1428656597', 'no'),
(394, '_transient_sharify_cached_count_share_102', '0', 'no'),
(395, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1428698098', 'no'),
(396, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(405, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1428670111', 'yes'),
(406, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"4916";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3078";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3022";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2529";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2346";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1892";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1729";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1680";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1678";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1676";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1612";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1609";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1505";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1322";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1276";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1175";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1171";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1083";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1079";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"918";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"905";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"874";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"843";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"837";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"794";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"758";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"748";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"709";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"700";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"692";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"682";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"657";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"649";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"642";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"642";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"623";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"620";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"605";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"600";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"593";}}', 'yes'),
(410, 'ssm_mailchimp_api_key', '11', 'yes'),
(411, 'ssm_mailchimp_list_id', '11', 'yes'),
(412, '_transient_timeout_settings_errors', '1428667018', 'no'),
(413, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:"setting";s:7:"general";s:4:"code";s:16:"settings_updated";s:7:"message";s:15:"Settings saved.";s:4:"type";s:7:"updated";}}', 'no'),
(415, '_site_transient_timeout_theme_roots', '1428669501', 'yes'),
(416, '_site_transient_theme_roots', 'a:4:{s:7:"brand66";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(418, 'email-subscribers', '1.0', 'yes'),
(419, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1428672253;s:7:"checked";a:7:{s:19:"akismet/akismet.php";s:5:"3.0.4";s:39:"email-subscribers/email-subscribers.php";s:3:"2.7";s:43:"featured-video-plus/featured-video-plus.php";s:5:"1.9.1";s:9:"hello.php";s:3:"1.6";s:47:"simple-social-buttons/simple-social-buttons.php";s:5:"1.7.8";s:35:"simple-subscribe/SimpleSubsribe.php";s:5:"1.8.2";s:38:"mailchimp-subscribe-sm/subcribe-me.php";s:3:"1.2";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.1.1.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:6:{s:39:"email-subscribers/email-subscribers.php";O:8:"stdClass":7:{s:2:"id";s:5:"50170";s:4:"slug";s:17:"email-subscribers";s:6:"plugin";s:39:"email-subscribers/email-subscribers.php";s:11:"new_version";s:3:"2.7";s:14:"upgrade_notice";s:300:"Up to plugin version 2.6 only administrator level users can manage this plugin in dashboard. From this version I have introduced new feature  called Roles. The user role can be selected using this Roles Menu. For example, If you want to give Send Email feature to Editor. Go to plugin Roles menu usin";s:3:"url";s:48:"https://wordpress.org/plugins/email-subscribers/";s:7:"package";s:59:"http://downloads.wordpress.org/plugin/email-subscribers.zip";}s:43:"featured-video-plus/featured-video-plus.php";O:8:"stdClass":6:{s:2:"id";s:5:"36956";s:4:"slug";s:19:"featured-video-plus";s:6:"plugin";s:43:"featured-video-plus/featured-video-plus.php";s:11:"new_version";s:5:"1.9.1";s:3:"url";s:50:"https://wordpress.org/plugins/featured-video-plus/";s:7:"package";s:67:"http://downloads.wordpress.org/plugin/featured-video-plus.1.9.1.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:47:"simple-social-buttons/simple-social-buttons.php";O:8:"stdClass":6:{s:2:"id";s:5:"25772";s:4:"slug";s:21:"simple-social-buttons";s:6:"plugin";s:47:"simple-social-buttons/simple-social-buttons.php";s:11:"new_version";s:5:"1.7.8";s:3:"url";s:52:"https://wordpress.org/plugins/simple-social-buttons/";s:7:"package";s:69:"http://downloads.wordpress.org/plugin/simple-social-buttons.1.7.8.zip";}s:35:"simple-subscribe/SimpleSubsribe.php";O:8:"stdClass":7:{s:2:"id";s:5:"45560";s:4:"slug";s:16:"simple-subscribe";s:6:"plugin";s:35:"simple-subscribe/SimpleSubsribe.php";s:11:"new_version";s:5:"1.8.2";s:14:"upgrade_notice";s:50:"Get larger blog post for daily digest\nCode cleanup";s:3:"url";s:47:"https://wordpress.org/plugins/simple-subscribe/";s:7:"package";s:64:"http://downloads.wordpress.org/plugin/simple-subscribe.1.8.2.zip";}s:38:"mailchimp-subscribe-sm/subcribe-me.php";O:8:"stdClass":6:{s:2:"id";s:5:"53353";s:4:"slug";s:22:"mailchimp-subscribe-sm";s:6:"plugin";s:38:"mailchimp-subscribe-sm/subcribe-me.php";s:11:"new_version";s:3:"1.2";s:3:"url";s:53:"https://wordpress.org/plugins/mailchimp-subscribe-sm/";s:7:"package";s:68:"http://downloads.wordpress.org/plugin/mailchimp-subscribe-sm.1.2.zip";}}}', 'yes'),
(420, 'simpleSubscribe', 's:429:"a:6:{s:4:"misc";a:3:{s:10:"senderName";s:8:"Brand 66";s:11:"senderEmail";s:17:"brand66@email.com";s:3:"log";s:1:"1";}s:3:"val";a:2:{s:2:"js";s:1:"1";s:3:"css";s:1:"1";}s:5:"email";a:1:{s:4:"type";s:1:"1";}s:3:"cat";a:1:{i:0;s:1:"1";}s:11:"emailDesign";a:4:{s:12:"colourBodyBg";s:7:"#ececec";s:8:"colourBg";s:7:"#f5f5f5";s:11:"colourTitle";s:7:"#000000";s:11:"colourLinks";s:7:"#000000";}s:9:"emailType";a:1:{s:4:"type";s:1:"1";}}";', 'yes'),
(421, 'readygraph_connect_notice', 'false', 'yes'),
(423, 'readygraph_tutorial', 'true', 'yes'),
(424, 'readygraph_enable_sidebar', 'false', 'yes'),
(425, 'readygraph_auto_select_all', 'true', 'yes'),
(426, 'readygraph_enable_branding', 'false', 'yes'),
(427, 'readygraph_send_blog_updates', 'true', 'yes'),
(428, 'readygraph_send_real_time_post_updates', 'false', 'yes'),
(429, 'readygraph_popup_template', 'default-template', 'yes'),
(430, 'readygraph_upgrade_notice', 'true', 'yes'),
(431, 'readygraph_site_url', 'http://localhost/brand66', 'yes'),
(432, 'widget_email-subscribers', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(433, 'widget_simplesubscriberemove', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(434, 'widget_simplesubscribe', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблиці `br_postmeta`
--

CREATE TABLE IF NOT EXISTS `br_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `br_postmeta`
--

INSERT INTO `br_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2015/04/header_bg.jpg'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1164;s:6:"height";i:417;s:4:"file";s:21:"2015/04/header_bg.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"header_bg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"header_bg-300x107.jpg";s:5:"width";i:300;s:6:"height";i:107;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"header_bg-1024x367.jpg";s:5:"width";i:1024;s:6:"height";i:367;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(4, 5, '_wp_attached_file', '2015/04/left_arrow.png'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:16;s:6:"height";i:31;s:4:"file";s:22:"2015/04/left_arrow.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(6, 6, '_wp_attached_file', '2015/04/right_arrow.png'),
(7, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:16;s:6:"height";i:31;s:4:"file";s:23:"2015/04/right_arrow.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(8, 7, '_wp_attached_file', '2015/04/search_arrow.png'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:16;s:6:"height";i:16;s:4:"file";s:24:"2015/04/search_arrow.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(10, 8, '_wp_attached_file', '2015/04/social_icon.png'),
(11, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:155;s:6:"height";i:42;s:4:"file";s:23:"2015/04/social_icon.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"social_icon-150x42.png";s:5:"width";i:150;s:6:"height";i:42;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(12, 9, '_wp_attached_file', '2015/04/sprite.png'),
(13, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:155;s:6:"height";i:135;s:4:"file";s:18:"2015/04/sprite.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"sprite-150x135.png";s:5:"width";i:150;s:6:"height";i:135;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(14, 10, '_wp_attached_file', '2015/04/tick.png'),
(15, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:18;s:6:"height";i:14;s:4:"file";s:16:"2015/04/tick.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(16, 11, '_wp_attached_file', '2015/04/woman.jpg'),
(17, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:627;s:6:"height";i:627;s:4:"file";s:17:"2015/04/woman.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"woman-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"woman-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(18, 1, '_wp_trash_meta_status', 'publish'),
(19, 1, '_wp_trash_meta_time', '1428145608'),
(20, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(21, 13, '_edit_last', '1'),
(22, 13, '_edit_lock', '1428604107:1'),
(25, 15, '_edit_last', '1'),
(26, 15, '_edit_lock', '1428604126:1'),
(39, 13, '_oembed_6087c3eb0324229ae93fc8bd1909f823', '<iframe width="500" height="281" src="https://www.youtube.com/embed/DzXtTdsJLtQ?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(42, 13, '_oembed_time_6087c3eb0324229ae93fc8bd1909f823', '1428603996'),
(47, 23, '_menu_item_type', 'custom'),
(48, 23, '_menu_item_menu_item_parent', '0'),
(49, 23, '_menu_item_object_id', '23'),
(50, 23, '_menu_item_object', 'custom'),
(51, 23, '_menu_item_target', ''),
(52, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 23, '_menu_item_xfn', ''),
(54, 23, '_menu_item_url', 'http://localhost/brand66/'),
(55, 23, '_menu_item_orphaned', '1428153070'),
(56, 24, '_menu_item_type', 'post_type'),
(57, 24, '_menu_item_menu_item_parent', '0'),
(58, 24, '_menu_item_object_id', '2'),
(59, 24, '_menu_item_object', 'page'),
(60, 24, '_menu_item_target', ''),
(61, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(62, 24, '_menu_item_xfn', ''),
(63, 24, '_menu_item_url', ''),
(64, 24, '_menu_item_orphaned', '1428153070'),
(65, 25, '_edit_last', '1'),
(66, 25, '_edit_lock', '1428152961:1'),
(67, 27, '_edit_last', '1'),
(68, 27, '_edit_lock', '1428152973:1'),
(69, 29, '_edit_last', '1'),
(70, 29, '_edit_lock', '1428598577:1'),
(71, 31, '_edit_last', '1'),
(72, 31, '_edit_lock', '1428153004:1'),
(73, 33, '_menu_item_type', 'custom'),
(74, 33, '_menu_item_menu_item_parent', '0'),
(75, 33, '_menu_item_object_id', '33'),
(76, 33, '_menu_item_object', 'custom'),
(77, 33, '_menu_item_target', ''),
(78, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 33, '_menu_item_xfn', ''),
(80, 33, '_menu_item_url', 'http://localhost/brand66/'),
(82, 34, '_menu_item_type', 'post_type'),
(83, 34, '_menu_item_menu_item_parent', '0'),
(84, 34, '_menu_item_object_id', '29'),
(85, 34, '_menu_item_object', 'page'),
(86, 34, '_menu_item_target', ''),
(87, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(88, 34, '_menu_item_xfn', ''),
(89, 34, '_menu_item_url', ''),
(91, 35, '_menu_item_type', 'post_type'),
(92, 35, '_menu_item_menu_item_parent', '0'),
(93, 35, '_menu_item_object_id', '27'),
(94, 35, '_menu_item_object', 'page'),
(95, 35, '_menu_item_target', ''),
(96, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(97, 35, '_menu_item_xfn', ''),
(98, 35, '_menu_item_url', ''),
(100, 36, '_menu_item_type', 'post_type'),
(101, 36, '_menu_item_menu_item_parent', '0'),
(102, 36, '_menu_item_object_id', '31'),
(103, 36, '_menu_item_object', 'page'),
(104, 36, '_menu_item_target', ''),
(105, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(106, 36, '_menu_item_xfn', ''),
(107, 36, '_menu_item_url', ''),
(109, 37, '_menu_item_type', 'post_type'),
(110, 37, '_menu_item_menu_item_parent', '0'),
(111, 37, '_menu_item_object_id', '25'),
(112, 37, '_menu_item_object', 'page'),
(113, 37, '_menu_item_target', ''),
(114, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(115, 37, '_menu_item_xfn', ''),
(116, 37, '_menu_item_url', ''),
(118, 38, '_menu_item_type', 'post_type'),
(119, 38, '_menu_item_menu_item_parent', '0'),
(120, 38, '_menu_item_object_id', '2'),
(121, 38, '_menu_item_object', 'page'),
(122, 38, '_menu_item_target', ''),
(123, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 38, '_menu_item_xfn', ''),
(125, 38, '_menu_item_url', ''),
(126, 38, '_menu_item_orphaned', '1428153153'),
(135, 13, '_oembed_2d11a9f3a3ad4bbb43b1d5a8596e1982', '<iframe width="660" height="371" src="https://www.youtube.com/embed/DzXtTdsJLtQ?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(136, 13, '_oembed_time_2d11a9f3a3ad4bbb43b1d5a8596e1982', '1428162466'),
(137, 2, '_wp_trash_meta_status', 'publish'),
(138, 2, '_wp_trash_meta_time', '1428162698'),
(139, 11, '_wp_attachment_image_alt', 'woman'),
(140, 15, '_thumbnail_id', '11'),
(150, 13, '_fvp_video', 'a:8:{s:4:"full";s:27:"http://youtu.be/DzXtTdsJLtQ";s:2:"id";s:11:"DzXtTdsJLtQ";s:3:"sec";s:0:"";s:3:"img";i:120;s:4:"prov";s:7:"youtube";s:4:"time";i:0;s:8:"end_time";i:0;s:5:"valid";b:1;}'),
(165, 13, '_ssb_hide', 'false'),
(172, 62, '_edit_last', '1'),
(176, 62, '_edit_lock', '1428603375:1'),
(177, 64, '_edit_last', '1'),
(181, 64, '_edit_lock', '1428603393:1'),
(182, 66, '_edit_last', '1'),
(186, 66, '_edit_lock', '1428603413:1'),
(187, 68, '_edit_last', '1'),
(191, 68, '_edit_lock', '1428603434:1'),
(192, 70, '_edit_last', '1'),
(196, 70, '_edit_lock', '1428603449:1'),
(197, 72, '_edit_last', '1'),
(201, 72, '_edit_lock', '1428603462:1'),
(202, 74, '_edit_last', '1'),
(206, 74, '_edit_lock', '1428603479:1'),
(207, 76, '_edit_last', '1'),
(211, 76, '_edit_lock', '1428603498:1'),
(212, 78, '_edit_last', '1'),
(216, 78, '_edit_lock', '1428603515:1'),
(217, 80, '_edit_last', '1'),
(221, 80, '_edit_lock', '1428603535:1'),
(222, 82, '_edit_last', '1'),
(226, 82, '_edit_lock', '1428603546:1'),
(227, 84, '_edit_last', '1'),
(231, 84, '_edit_lock', '1428603558:1'),
(232, 86, '_edit_last', '1'),
(236, 86, '_edit_lock', '1428603575:1'),
(237, 88, '_edit_last', '1'),
(241, 88, '_edit_lock', '1428603592:1'),
(242, 90, '_edit_last', '1'),
(246, 90, '_edit_lock', '1428603603:1'),
(247, 92, '_edit_last', '1'),
(251, 92, '_edit_lock', '1428603618:1'),
(252, 94, '_edit_last', '1'),
(256, 94, '_edit_lock', '1428603629:1'),
(257, 96, '_edit_last', '1'),
(261, 96, '_edit_lock', '1428603641:1'),
(262, 98, '_edit_last', '1'),
(266, 98, '_edit_lock', '1428603664:1'),
(267, 100, '_edit_last', '1'),
(271, 100, '_edit_lock', '1428603675:1'),
(272, 102, '_edit_last', '1'),
(276, 102, '_edit_lock', '1428603686:1'),
(277, 104, '_edit_last', '1'),
(281, 104, '_edit_lock', '1428603696:1'),
(282, 106, '_edit_last', '1'),
(286, 106, '_edit_lock', '1428603708:1'),
(287, 108, '_edit_last', '1'),
(291, 108, '_edit_lock', '1428603741:1'),
(292, 110, '_edit_last', '1'),
(296, 110, '_edit_lock', '1428603751:1'),
(297, 112, '_edit_last', '1'),
(301, 112, '_edit_lock', '1428603763:1'),
(302, 114, '_edit_last', '1'),
(306, 114, '_edit_lock', '1428603779:1'),
(307, 116, '_edit_last', '1'),
(311, 116, '_edit_lock', '1428603795:1'),
(331, 120, '_wp_attached_file', '2015/04/Lights-Out.Bachs-Jesu-Joy-of-Mans-DesiringTouchwood-SH-08C.jpg'),
(332, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:360;s:4:"file";s:70:"2015/04/Lights-Out.Bachs-Jesu-Joy-of-Mans-DesiringTouchwood-SH-08C.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:70:"Lights-Out.Bachs-Jesu-Joy-of-Mans-DesiringTouchwood-SH-08C-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:70:"Lights-Out.Bachs-Jesu-Joy-of-Mans-DesiringTouchwood-SH-08C-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:11:"DzXtTdsJLtQ";s:6:"camera";s:7:"youtube";s:7:"caption";s:92:"lights,out,bach,joy,of,mans,desiring,touchwood,sh08c,cell,phone,mobile,automated,performance";s:17:"created_timestamp";s:10:"1428604244";s:9:"copyright";s:9:"SG55OVCam";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:63:"Lights Out.Bach''s  Jesu, Joy of Man''s Desiring,Touchwood SH-08C";}}'),
(333, 120, '_fvp_image', 'youtube?DzXtTdsJLtQ'),
(334, 13, '_thumbnail_id', '120'),
(337, 122, '_edit_last', '1'),
(339, 122, 'ssm_select_data_save_method', '<form id="sm_form" action=http://localhost/brand66/wp-content/plugins/mailchimp-subscribe-sm/data.php?savedata=1 method="post" >'),
(340, 122, 'ssm_select_form_template', 'form_1.php'),
(341, 122, '_edit_lock', '1428666879:1'),
(343, 122, 'sm_form_header', 'Subscribe'),
(344, 122, 'sm_form_content', '    '),
(345, 122, 'sm_form_cta_text', ''),
(346, 122, 'sm_form_footer_msg', '');

-- --------------------------------------------------------

--
-- Структура таблиці `br_posts`
--

CREATE TABLE IF NOT EXISTS `br_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `br_posts`
--

INSERT INTO `br_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-04-04 09:34:14', '2015-04-04 09:34:14', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2015-04-04 14:06:48', '2015-04-04 11:06:48', '', 0, 'http://localhost/brand66/?p=1', 0, 'post', '', 1),
(2, 1, '2015-04-04 09:34:14', '2015-04-04 09:34:14', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://localhost/brand66/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2015-04-04 18:51:38', '2015-04-04 15:51:38', '', 0, 'http://localhost/brand66/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-04-04 12:34:36', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-04 12:34:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?p=3', 0, 'post', '', 0),
(4, 1, '2015-04-04 14:06:35', '2015-04-04 11:06:35', '', 'header_bg', '', 'inherit', 'open', 'open', '', 'header_bg', '', '', '2015-04-04 14:06:35', '2015-04-04 11:06:35', '', 0, 'http://localhost/brand66/wp-content/uploads/2015/04/header_bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2015-04-04 14:06:37', '2015-04-04 11:06:37', '', 'left_arrow', '', 'inherit', 'open', 'open', '', 'left_arrow', '', '', '2015-04-04 14:06:37', '2015-04-04 11:06:37', '', 0, 'http://localhost/brand66/wp-content/uploads/2015/04/left_arrow.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2015-04-04 14:06:38', '2015-04-04 11:06:38', '', 'right_arrow', '', 'inherit', 'open', 'open', '', 'right_arrow', '', '', '2015-04-04 14:06:38', '2015-04-04 11:06:38', '', 0, 'http://localhost/brand66/wp-content/uploads/2015/04/right_arrow.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2015-04-04 14:06:38', '2015-04-04 11:06:38', '', 'search_arrow', '', 'inherit', 'open', 'open', '', 'search_arrow', '', '', '2015-04-04 14:06:38', '2015-04-04 11:06:38', '', 0, 'http://localhost/brand66/wp-content/uploads/2015/04/search_arrow.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2015-04-04 14:06:39', '2015-04-04 11:06:39', '', 'social_icon', '', 'inherit', 'open', 'open', '', 'social_icon', '', '', '2015-04-04 14:06:39', '2015-04-04 11:06:39', '', 0, 'http://localhost/brand66/wp-content/uploads/2015/04/social_icon.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2015-04-04 14:06:40', '2015-04-04 11:06:40', '', 'sprite', '', 'inherit', 'open', 'open', '', 'sprite', '', '', '2015-04-04 14:06:40', '2015-04-04 11:06:40', '', 0, 'http://localhost/brand66/wp-content/uploads/2015/04/sprite.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2015-04-04 14:06:40', '2015-04-04 11:06:40', '', 'tick', '', 'inherit', 'open', 'open', '', 'tick', '', '', '2015-04-04 14:06:40', '2015-04-04 11:06:40', '', 0, 'http://localhost/brand66/wp-content/uploads/2015/04/tick.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2015-04-04 14:06:41', '2015-04-04 11:06:41', '', 'woman', '', 'inherit', 'open', 'open', '', 'woman', '', '', '2015-04-07 11:46:38', '2015-04-07 08:46:38', '', 15, 'http://localhost/brand66/wp-content/uploads/2015/04/woman.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2015-04-04 14:06:48', '2015-04-04 11:06:48', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-04-04 14:06:48', '2015-04-04 11:06:48', '', 1, 'http://localhost/brand66/?p=12', 0, 'revision', '', 0),
(13, 1, '2015-04-09 21:29:35', '2015-04-09 18:29:35', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span style="color: #0084ff;">Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\n[embed]http://www.youtube.com/embed/DzXtTdsJLtQ[/embed]\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'Wooden performance', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span>Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'publish', 'open', 'open', '', 'wooden-performance', '', '', '2015-04-09 21:30:44', '2015-04-09 18:30:44', '', 0, 'http://localhost/brand66/?p=13', 0, 'post', '', 0),
(14, 1, '2015-04-04 14:08:35', '2015-04-04 11:08:35', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'Wooden performance', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-04-04 14:08:35', '2015-04-04 11:08:35', '', 13, 'http://localhost/brand66/?p=14', 0, 'revision', '', 0),
(15, 1, '2015-04-09 21:28:22', '2015-04-09 18:28:22', 'While window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.\r\n\r\n<a href="http://localhost/brand66/wp-content/uploads/2015/04/woman.jpg"><img class="alignnone size-medium wp-image-11" src="http://localhost/brand66/wp-content/uploads/2015/04/woman-300x300.jpg" alt="woman" width="300" height="300" /></a>\r\n\r\nWhile window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.\r\n\r\nWhile window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.\r\n\r\nWhile window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.\r\n\r\nWhile window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.', 'Jack Crossing', 'While window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.', 'publish', 'open', 'open', '', 'jack-crossing', '', '', '2015-04-09 21:31:03', '2015-04-09 18:31:03', '', 0, 'http://localhost/brand66/?p=15', 0, 'post', '', 0),
(16, 1, '2015-04-04 14:09:22', '2015-04-04 11:09:22', 'While window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.\r\n\r\nWhile window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.\r\n\r\nWhile window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.\r\n\r\nWhile window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.\r\n\r\nWhile window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.', 'Jack Crossing', 'While window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-04-04 14:09:22', '2015-04-04 11:09:22', '', 15, 'http://localhost/brand66/?p=16', 0, 'revision', '', 0),
(17, 1, '2015-04-04 14:31:13', '2015-04-04 11:31:13', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span style="color: #0084ff;">Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”[embed]http://www.youtube.com/embed/DzXtTdsJLtQ[/embed]\n\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\n\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\n\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\n\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'Wooden performance', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span>Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'inherit', 'open', 'open', '', '13-autosave-v1', '', '', '2015-04-04 14:31:13', '2015-04-04 11:31:13', '', 13, 'http://localhost/brand66/?p=17', 0, 'revision', '', 0),
(18, 1, '2015-04-04 14:19:28', '2015-04-04 11:19:28', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span style="color: #00ccff;">Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'Wooden performance', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-04-04 14:19:28', '2015-04-04 11:19:28', '', 13, 'http://localhost/brand66/?p=18', 0, 'revision', '', 0),
(19, 1, '2015-04-04 14:22:45', '2015-04-04 11:22:45', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span style="color: #0084ff;">Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'Wooden performance', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-04-04 14:22:45', '2015-04-04 11:22:45', '', 13, 'http://localhost/brand66/?p=19', 0, 'revision', '', 0),
(20, 1, '2015-04-04 14:25:09', '2015-04-04 11:25:09', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span style="color: #0084ff;">Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'Wooden performance', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span>Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-04-04 14:25:09', '2015-04-04 11:25:09', '', 13, 'http://localhost/brand66/?p=20', 0, 'revision', '', 0),
(21, 1, '2015-04-04 14:31:40', '2015-04-04 11:31:40', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span style="color: #0084ff;">Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\n[embed]http://www.youtube.com/embed/DzXtTdsJLtQ[/embed]\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'Wooden performance', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span>Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-04-04 14:31:40', '2015-04-04 11:31:40', '', 13, 'http://localhost/brand66/?p=21', 0, 'revision', '', 0),
(22, 1, '2015-04-04 16:08:27', '2015-04-04 13:08:27', 'While window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.\r\n\r\n<a href="http://localhost/brand66/wp-content/uploads/2015/04/woman.jpg"><img class="alignnone size-medium wp-image-11" src="http://localhost/brand66/wp-content/uploads/2015/04/woman-300x300.jpg" alt="woman" width="300" height="300" /></a>\r\n\r\nWhile window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.\r\n\r\nWhile window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.\r\n\r\nWhile window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.\r\n\r\nWhile window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.', 'Jack Crossing', 'While window shopping this morning on Behance, I ran across some stunning photographic pieces by designer Jack Crossing. Very nice, surreal imagery. Makes me long for the days of album art.', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-04-04 16:08:27', '2015-04-04 13:08:27', '', 15, 'http://localhost/brand66/?p=22', 0, 'revision', '', 0),
(23, 1, '2015-04-04 16:11:09', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-04 16:11:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2015-04-04 16:11:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-04 16:11:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2015-04-04 16:11:41', '2015-04-04 13:11:41', '', 'Work', '', 'publish', 'open', 'open', '', 'work', '', '', '2015-04-04 16:11:41', '2015-04-04 13:11:41', '', 0, 'http://localhost/brand66/?page_id=25', 0, 'page', '', 0),
(26, 1, '2015-04-04 16:11:41', '2015-04-04 13:11:41', '', 'Work', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2015-04-04 16:11:41', '2015-04-04 13:11:41', '', 25, 'http://localhost/brand66/?p=26', 0, 'revision', '', 0),
(27, 1, '2015-04-04 16:11:54', '2015-04-04 13:11:54', '', 'Clients', '', 'publish', 'open', 'open', '', 'clients', '', '', '2015-04-04 16:11:54', '2015-04-04 13:11:54', '', 0, 'http://localhost/brand66/?page_id=27', 0, 'page', '', 0),
(28, 1, '2015-04-04 16:11:54', '2015-04-04 13:11:54', '', 'Clients', '', 'inherit', 'open', 'open', '', '27-revision-v1', '', '', '2015-04-04 16:11:54', '2015-04-04 13:11:54', '', 27, 'http://localhost/brand66/?p=28', 0, 'revision', '', 0),
(29, 1, '2015-04-04 16:12:08', '2015-04-04 13:12:08', '', 'Blog', '', 'publish', 'open', 'open', '', 'blog', '', '', '2015-04-04 16:12:08', '2015-04-04 13:12:08', '', 0, 'http://localhost/brand66/?page_id=29', 0, 'page', '', 0),
(30, 1, '2015-04-04 16:12:08', '2015-04-04 13:12:08', '', 'Blog', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2015-04-04 16:12:08', '2015-04-04 13:12:08', '', 29, 'http://localhost/brand66/?p=30', 0, 'revision', '', 0),
(31, 1, '2015-04-04 16:12:22', '2015-04-04 13:12:22', '', 'Connect', '', 'publish', 'open', 'open', '', 'connect', '', '', '2015-04-04 16:12:22', '2015-04-04 13:12:22', '', 0, 'http://localhost/brand66/?page_id=31', 0, 'page', '', 0),
(32, 1, '2015-04-04 16:12:22', '2015-04-04 13:12:22', '', 'Connect', '', 'inherit', 'open', 'open', '', '31-revision-v1', '', '', '2015-04-04 16:12:22', '2015-04-04 13:12:22', '', 31, 'http://localhost/brand66/?p=32', 0, 'revision', '', 0),
(33, 1, '2015-04-04 16:13:18', '2015-04-04 13:13:18', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-04-04 16:17:03', '2015-04-04 13:17:03', '', 0, 'http://localhost/brand66/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2015-04-04 16:13:18', '2015-04-04 13:13:18', ' ', '', '', 'publish', 'open', 'open', '', '34', '', '', '2015-04-04 16:17:03', '2015-04-04 13:17:03', '', 0, 'http://localhost/brand66/?p=34', 4, 'nav_menu_item', '', 0),
(35, 1, '2015-04-04 16:13:18', '2015-04-04 13:13:18', ' ', '', '', 'publish', 'open', 'open', '', '35', '', '', '2015-04-04 16:17:03', '2015-04-04 13:17:03', '', 0, 'http://localhost/brand66/?p=35', 3, 'nav_menu_item', '', 0),
(36, 1, '2015-04-04 16:13:19', '2015-04-04 13:13:19', ' ', '', '', 'publish', 'open', 'open', '', '36', '', '', '2015-04-04 16:17:03', '2015-04-04 13:17:03', '', 0, 'http://localhost/brand66/?p=36', 5, 'nav_menu_item', '', 0),
(37, 1, '2015-04-04 16:13:18', '2015-04-04 13:13:18', ' ', '', '', 'publish', 'open', 'open', '', '37', '', '', '2015-04-04 16:17:03', '2015-04-04 13:17:03', '', 0, 'http://localhost/brand66/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2015-04-04 16:12:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-04 16:12:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2015-04-04 17:50:30', '2015-04-04 14:50:30', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span style="color: #0084ff;">Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\n[embed]http://www.youtube.com/embed/DzXtTdsJLtQ[/embed]\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'Wooden performance', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span>Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n[embed]http://www.youtube.com/embed/DzXtTdsJLtQ[/embed]', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-04-04 17:50:30', '2015-04-04 14:50:30', '', 13, 'http://localhost/brand66/?p=39', 0, 'revision', '', 0),
(40, 1, '2015-04-04 17:52:03', '2015-04-04 14:52:03', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span style="color: #0084ff;">Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\n[embed]http://www.youtube.com/embed/DzXtTdsJLtQ[/embed]\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'Wooden performance', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span>Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n<div class="embed-responsive embed-responsive-16by9">\r\nhttp://www.youtube.com/embed/DzXtTdsJLtQ\r\n</div>', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-04-04 17:52:03', '2015-04-04 14:52:03', '', 13, 'http://localhost/brand66/?p=40', 0, 'revision', '', 0),
(41, 1, '2015-04-04 17:52:55', '2015-04-04 14:52:55', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span style="color: #0084ff;">Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\n[embed]http://www.youtube.com/embed/DzXtTdsJLtQ[/embed]\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'Wooden performance', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span>Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n<div class="embed-responsive embed-responsive-16by9">\r\n<iframe class="embed-responsive-item" width="560" height="315" src="https://www.youtube.com/embed/DzXtTdsJLtQ"\r\n	                     frameborder="0" allowfullscreen></iframe>\r\n</div>', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-04-04 17:52:55', '2015-04-04 14:52:55', '', 13, 'http://localhost/brand66/?p=41', 0, 'revision', '', 0),
(42, 1, '2015-04-04 18:01:54', '2015-04-04 15:01:54', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span style="color: #0084ff;">Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\n[embed]http://www.youtube.com/embed/DzXtTdsJLtQ[/embed]\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”\r\n\r\nIf an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a Japanese mobile phone manufacturer. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'Wooden performance', 'If an advertiser drops a ball in the forest, does it make a sound? This conundrum seems to have been cleared up by a <span>Japanese mobile phone manufacturer</span>. In this automated extravaganza, a tiny wooden ball descends a wooden ramp. The result is an amazing rendition of Bach’s Jesu, Joy of Man’s Desiring. All this to promote a kidney-shaped smartphone with the tagline, “Touch Wood.”', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-04-04 18:01:54', '2015-04-04 15:01:54', '', 13, 'http://localhost/brand66/?p=42', 0, 'revision', '', 0),
(43, 1, '2015-04-04 18:02:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-04 18:02:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?p=43', 0, 'post', '', 0),
(44, 1, '2015-04-04 18:02:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-04 18:02:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?p=44', 0, 'post', '', 0),
(45, 1, '2015-04-04 18:02:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-04 18:02:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?p=45', 0, 'post', '', 0),
(46, 1, '2015-04-04 18:03:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-04 18:03:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?p=46', 0, 'post', '', 0),
(47, 1, '2015-04-04 18:51:38', '2015-04-04 15:51:38', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://localhost/brand66/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-04 18:51:38', '2015-04-04 15:51:38', '', 2, 'http://localhost/brand66/?p=47', 0, 'revision', '', 0),
(54, 1, '2015-04-09 19:46:19', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-09 19:46:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?post_type=news&p=54', 0, 'news', '', 0),
(55, 1, '2015-04-09 19:46:46', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-09 19:46:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?post_type=news&p=55', 0, 'news', '', 0),
(56, 1, '2015-04-09 19:47:20', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-09 19:47:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?p=56', 0, 'post', '', 0),
(57, 1, '2015-04-09 19:47:31', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-09 19:47:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?post_type=news&p=57', 0, 'news', '', 0),
(58, 1, '2015-04-09 19:49:23', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-09 19:49:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?post_type=news&p=58', 0, 'news', '', 0),
(59, 1, '2015-04-09 19:54:33', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-09 19:54:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?p=59', 0, 'post', '', 0),
(60, 1, '2015-04-09 19:58:41', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-09 19:58:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?post_type=news&p=60', 0, 'news', '', 0),
(61, 1, '2015-04-09 20:03:15', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-09 20:03:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/brand66/?post_type=news&p=61', 0, 'news', '', 0),
(62, 1, '2015-04-09 21:18:33', '2015-04-09 18:18:33', '', '007', '', 'publish', 'open', 'open', '', '007', '', '', '2015-04-09 21:18:33', '2015-04-09 18:18:33', '', 0, 'http://localhost/brand66/?p=62', 0, 'post', '', 0),
(63, 1, '2015-04-09 21:18:33', '2015-04-09 18:18:33', '', '007', '', 'inherit', 'open', 'open', '', '62-revision-v1', '', '', '2015-04-09 21:18:33', '2015-04-09 18:18:33', '', 62, 'http://localhost/brand66/?p=63', 0, 'revision', '', 0),
(64, 1, '2015-04-09 21:18:52', '2015-04-09 18:18:52', '', 'Electronic shoes', '', 'publish', 'open', 'open', '', 'electronic-shoes', '', '', '2015-04-09 21:18:52', '2015-04-09 18:18:52', '', 0, 'http://localhost/brand66/?p=64', 0, 'post', '', 0),
(65, 1, '2015-04-09 21:18:52', '2015-04-09 18:18:52', '', 'Electronic shoes', '', 'inherit', 'open', 'open', '', '64-revision-v1', '', '', '2015-04-09 21:18:52', '2015-04-09 18:18:52', '', 64, 'http://localhost/brand66/?p=65', 0, 'revision', '', 0),
(66, 1, '2015-04-09 21:19:09', '2015-04-09 18:19:09', '', 'Moonrise GIF', '', 'publish', 'open', 'open', '', 'moonrise-gif', '', '', '2015-04-09 21:19:09', '2015-04-09 18:19:09', '', 0, 'http://localhost/brand66/?p=66', 0, 'post', '', 0),
(67, 1, '2015-04-09 21:19:09', '2015-04-09 18:19:09', '', 'Moonrise GIF', '', 'inherit', 'open', 'open', '', '66-revision-v1', '', '', '2015-04-09 21:19:09', '2015-04-09 18:19:09', '', 66, 'http://localhost/brand66/?p=67', 0, 'revision', '', 0);
INSERT INTO `br_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(68, 1, '2015-04-09 21:19:29', '2015-04-09 18:19:29', '', 'Green Automobiles', '', 'publish', 'open', 'open', '', 'green-automobiles', '', '', '2015-04-09 21:19:29', '2015-04-09 18:19:29', '', 0, 'http://localhost/brand66/?p=68', 0, 'post', '', 0),
(69, 1, '2015-04-09 21:19:29', '2015-04-09 18:19:29', '', 'Green Automobiles', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2015-04-09 21:19:29', '2015-04-09 18:19:29', '', 68, 'http://localhost/brand66/?p=69', 0, 'revision', '', 0),
(70, 1, '2015-04-09 21:19:44', '2015-04-09 18:19:44', '', 'Reinventing a not-so-fab logo', '', 'publish', 'open', 'open', '', 'reinventing-a-not-so-fab-logo', '', '', '2015-04-09 21:19:44', '2015-04-09 18:19:44', '', 0, 'http://localhost/brand66/?p=70', 0, 'post', '', 0),
(71, 1, '2015-04-09 21:19:44', '2015-04-09 18:19:44', '', 'Reinventing a not-so-fab logo', '', 'inherit', 'open', 'open', '', '70-revision-v1', '', '', '2015-04-09 21:19:44', '2015-04-09 18:19:44', '', 70, 'http://localhost/brand66/?p=71', 0, 'revision', '', 0),
(72, 1, '2015-04-09 21:20:01', '2015-04-09 18:20:01', '', 'Rocking Knit', '', 'publish', 'open', 'open', '', 'rocking-knit', '', '', '2015-04-09 21:20:01', '2015-04-09 18:20:01', '', 0, 'http://localhost/brand66/?p=72', 0, 'post', '', 0),
(73, 1, '2015-04-09 21:20:01', '2015-04-09 18:20:01', '', 'Rocking Knit', '', 'inherit', 'open', 'open', '', '72-revision-v1', '', '', '2015-04-09 21:20:01', '2015-04-09 18:20:01', '', 72, 'http://localhost/brand66/?p=73', 0, 'revision', '', 0),
(74, 1, '2015-04-09 21:20:13', '2015-04-09 18:20:13', '', 'Minimalist castles', '', 'publish', 'open', 'open', '', 'minimalist-castles', '', '', '2015-04-09 21:20:13', '2015-04-09 18:20:13', '', 0, 'http://localhost/brand66/?p=74', 0, 'post', '', 0),
(75, 1, '2015-04-09 21:20:13', '2015-04-09 18:20:13', '', 'Minimalist castles', '', 'inherit', 'open', 'open', '', '74-revision-v1', '', '', '2015-04-09 21:20:13', '2015-04-09 18:20:13', '', 74, 'http://localhost/brand66/?p=75', 0, 'revision', '', 0),
(76, 1, '2015-04-09 21:20:29', '2015-04-09 18:20:29', '', 'Gummy luminescence', '', 'publish', 'open', 'open', '', 'gummy-luminescence', '', '', '2015-04-09 21:20:29', '2015-04-09 18:20:29', '', 0, 'http://localhost/brand66/?p=76', 0, 'post', '', 0),
(77, 1, '2015-04-09 21:20:29', '2015-04-09 18:20:29', '', 'Gummy luminescence', '', 'inherit', 'open', 'open', '', '76-revision-v1', '', '', '2015-04-09 21:20:29', '2015-04-09 18:20:29', '', 76, 'http://localhost/brand66/?p=77', 0, 'revision', '', 0),
(78, 1, '2015-04-09 21:20:49', '2015-04-09 18:20:49', '', 'Skullboard', '', 'publish', 'open', 'open', '', 'skullboard', '', '', '2015-04-09 21:20:49', '2015-04-09 18:20:49', '', 0, 'http://localhost/brand66/?p=78', 0, 'post', '', 0),
(79, 1, '2015-04-09 21:20:49', '2015-04-09 18:20:49', '', 'Skullboard', '', 'inherit', 'open', 'open', '', '78-revision-v1', '', '', '2015-04-09 21:20:49', '2015-04-09 18:20:49', '', 78, 'http://localhost/brand66/?p=79', 0, 'revision', '', 0),
(80, 1, '2015-04-09 21:21:07', '2015-04-09 18:21:07', '', 'Pentagram’s romantic side', '', 'publish', 'open', 'open', '', 'pentagrams-romantic-side', '', '', '2015-04-09 21:21:07', '2015-04-09 18:21:07', '', 0, 'http://localhost/brand66/?p=80', 0, 'post', '', 0),
(81, 1, '2015-04-09 21:21:07', '2015-04-09 18:21:07', '', 'Pentagram’s romantic side', '', 'inherit', 'open', 'open', '', '80-revision-v1', '', '', '2015-04-09 21:21:07', '2015-04-09 18:21:07', '', 80, 'http://localhost/brand66/?p=81', 0, 'revision', '', 0),
(82, 1, '2015-04-09 21:21:25', '2015-04-09 18:21:25', '', 'More GIF fun', '', 'publish', 'open', 'open', '', 'more-gif-fun', '', '', '2015-04-09 21:21:25', '2015-04-09 18:21:25', '', 0, 'http://localhost/brand66/?p=82', 0, 'post', '', 0),
(83, 1, '2015-04-09 21:21:25', '2015-04-09 18:21:25', '', 'More GIF fun', '', 'inherit', 'open', 'open', '', '82-revision-v1', '', '', '2015-04-09 21:21:25', '2015-04-09 18:21:25', '', 82, 'http://localhost/brand66/?p=83', 0, 'revision', '', 0),
(84, 1, '2015-04-09 21:21:36', '2015-04-09 18:21:36', '', 'H2 oh my', '', 'publish', 'open', 'open', '', 'h2-oh-my', '', '', '2015-04-09 21:21:36', '2015-04-09 18:21:36', '', 0, 'http://localhost/brand66/?p=84', 0, 'post', '', 0),
(85, 1, '2015-04-09 21:21:36', '2015-04-09 18:21:36', '', 'H2 oh my', '', 'inherit', 'open', 'open', '', '84-revision-v1', '', '', '2015-04-09 21:21:36', '2015-04-09 18:21:36', '', 84, 'http://localhost/brand66/?p=85', 0, 'revision', '', 0),
(86, 1, '2015-04-09 21:21:48', '2015-04-09 18:21:48', '', '3 Ways Apple Innovates', '', 'publish', 'open', 'open', '', '3-ways-apple-innovates', '', '', '2015-04-09 21:21:48', '2015-04-09 18:21:48', '', 0, 'http://localhost/brand66/?p=86', 0, 'post', '', 0),
(87, 1, '2015-04-09 21:21:48', '2015-04-09 18:21:48', '', '3 Ways Apple Innovates', '', 'inherit', 'open', 'open', '', '86-revision-v1', '', '', '2015-04-09 21:21:48', '2015-04-09 18:21:48', '', 86, 'http://localhost/brand66/?p=87', 0, 'revision', '', 0),
(88, 1, '2015-04-09 21:22:04', '2015-04-09 18:22:04', '', 'Nike window display madness', '', 'publish', 'open', 'open', '', 'nike-window-display-madness', '', '', '2015-04-09 21:22:04', '2015-04-09 18:22:04', '', 0, 'http://localhost/brand66/?p=88', 0, 'post', '', 0),
(89, 1, '2015-04-09 21:22:04', '2015-04-09 18:22:04', '', 'Nike window display madness', '', 'inherit', 'open', 'open', '', '88-revision-v1', '', '', '2015-04-09 21:22:04', '2015-04-09 18:22:04', '', 88, 'http://localhost/brand66/?p=89', 0, 'revision', '', 0),
(90, 1, '2015-04-09 21:22:22', '2015-04-09 18:22:22', '', 'Tattoo illusion', '', 'publish', 'open', 'open', '', 'tattoo-illusion', '', '', '2015-04-09 21:22:22', '2015-04-09 18:22:22', '', 0, 'http://localhost/brand66/?p=90', 0, 'post', '', 0),
(91, 1, '2015-04-09 21:22:22', '2015-04-09 18:22:22', '', 'Tattoo illusion', '', 'inherit', 'open', 'open', '', '90-revision-v1', '', '', '2015-04-09 21:22:22', '2015-04-09 18:22:22', '', 90, 'http://localhost/brand66/?p=91', 0, 'revision', '', 0),
(92, 1, '2015-04-09 21:22:33', '2015-04-09 18:22:33', '', 'Chromatic Typewriter', '', 'publish', 'open', 'open', '', 'chromatic-typewriter', '', '', '2015-04-09 21:22:33', '2015-04-09 18:22:33', '', 0, 'http://localhost/brand66/?p=92', 0, 'post', '', 0),
(93, 1, '2015-04-09 21:22:33', '2015-04-09 18:22:33', '', 'Chromatic Typewriter', '', 'inherit', 'open', 'open', '', '92-revision-v1', '', '', '2015-04-09 21:22:33', '2015-04-09 18:22:33', '', 92, 'http://localhost/brand66/?p=93', 0, 'revision', '', 0),
(94, 1, '2015-04-09 21:22:49', '2015-04-09 18:22:49', '', 'Big Data walks the red carpet', '', 'publish', 'open', 'open', '', 'big-data-walks-the-red-carpet', '', '', '2015-04-09 21:22:49', '2015-04-09 18:22:49', '', 0, 'http://localhost/brand66/?p=94', 0, 'post', '', 0),
(95, 1, '2015-04-09 21:22:49', '2015-04-09 18:22:49', '', 'Big Data walks the red carpet', '', 'inherit', 'open', 'open', '', '94-revision-v1', '', '', '2015-04-09 21:22:49', '2015-04-09 18:22:49', '', 94, 'http://localhost/brand66/?p=95', 0, 'revision', '', 0),
(96, 1, '2015-04-09 21:23:00', '2015-04-09 18:23:00', '', 'MRI goes organic', '', 'publish', 'open', 'open', '', 'mri-goes-organic', '', '', '2015-04-09 21:23:00', '2015-04-09 18:23:00', '', 0, 'http://localhost/brand66/?p=96', 0, 'post', '', 0),
(97, 1, '2015-04-09 21:23:00', '2015-04-09 18:23:00', '', 'MRI goes organic', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-04-09 21:23:00', '2015-04-09 18:23:00', '', 96, 'http://localhost/brand66/?p=97', 0, 'revision', '', 0),
(98, 1, '2015-04-09 21:23:12', '2015-04-09 18:23:12', '', 'A novel vase', '', 'publish', 'open', 'open', '', 'a-novel-vase', '', '', '2015-04-09 21:23:12', '2015-04-09 18:23:12', '', 0, 'http://localhost/brand66/?p=98', 0, 'post', '', 0),
(99, 1, '2015-04-09 21:23:12', '2015-04-09 18:23:12', '', 'A novel vase', '', 'inherit', 'open', 'open', '', '98-revision-v1', '', '', '2015-04-09 21:23:12', '2015-04-09 18:23:12', '', 98, 'http://localhost/brand66/?p=99', 0, 'revision', '', 0),
(100, 1, '2015-04-09 21:23:34', '2015-04-09 18:23:34', '', 'Neon leaves the pool hall', '', 'publish', 'open', 'open', '', 'neon-leaves-the-pool-hall', '', '', '2015-04-09 21:23:34', '2015-04-09 18:23:34', '', 0, 'http://localhost/brand66/?p=100', 0, 'post', '', 0),
(101, 1, '2015-04-09 21:23:34', '2015-04-09 18:23:34', '', 'Neon leaves the pool hall', '', 'inherit', 'open', 'open', '', '100-revision-v1', '', '', '2015-04-09 21:23:34', '2015-04-09 18:23:34', '', 100, 'http://localhost/brand66/?p=101', 0, 'revision', '', 0),
(102, 1, '2015-04-09 21:23:45', '2015-04-09 18:23:45', '', 'Just a Pinch', '', 'publish', 'open', 'open', '', 'just-a-pinch', '', '', '2015-04-09 21:23:45', '2015-04-09 18:23:45', '', 0, 'http://localhost/brand66/?p=102', 0, 'post', '', 0),
(103, 1, '2015-04-09 21:23:45', '2015-04-09 18:23:45', '', 'Just a Pinch', '', 'inherit', 'open', 'open', '', '102-revision-v1', '', '', '2015-04-09 21:23:45', '2015-04-09 18:23:45', '', 102, 'http://localhost/brand66/?p=103', 0, 'revision', '', 0),
(104, 1, '2015-04-09 21:23:55', '2015-04-09 18:23:55', '', 'Water', '', 'publish', 'open', 'open', '', 'water', '', '', '2015-04-09 21:23:55', '2015-04-09 18:23:55', '', 0, 'http://localhost/brand66/?p=104', 0, 'post', '', 0),
(105, 1, '2015-04-09 21:23:55', '2015-04-09 18:23:55', '', 'Water', '', 'inherit', 'open', 'open', '', '104-revision-v1', '', '', '2015-04-09 21:23:55', '2015-04-09 18:23:55', '', 104, 'http://localhost/brand66/?p=105', 0, 'revision', '', 0),
(106, 1, '2015-04-09 21:24:06', '2015-04-09 18:24:06', '', 'Toronto Film Festival poster', '', 'publish', 'open', 'open', '', 'toronto-film-festival-poster', '', '', '2015-04-09 21:24:06', '2015-04-09 18:24:06', '', 0, 'http://localhost/brand66/?p=106', 0, 'post', '', 0),
(107, 1, '2015-04-09 21:24:06', '2015-04-09 18:24:06', '', 'Toronto Film Festival poster', '', 'inherit', 'open', 'open', '', '106-revision-v1', '', '', '2015-04-09 21:24:06', '2015-04-09 18:24:06', '', 106, 'http://localhost/brand66/?p=107', 0, 'revision', '', 0),
(108, 1, '2015-04-09 21:24:22', '2015-04-09 18:24:22', '', 'The other Facetime', '', 'publish', 'open', 'open', '', 'the-other-facetime', '', '', '2015-04-09 21:24:22', '2015-04-09 18:24:22', '', 0, 'http://localhost/brand66/?p=108', 0, 'post', '', 0),
(109, 1, '2015-04-09 21:24:22', '2015-04-09 18:24:22', '', 'The other Facetime', '', 'inherit', 'open', 'open', '', '108-revision-v1', '', '', '2015-04-09 21:24:22', '2015-04-09 18:24:22', '', 108, 'http://localhost/brand66/?p=109', 0, 'revision', '', 0),
(110, 1, '2015-04-09 21:24:51', '2015-04-09 18:24:51', '', 'Packaging in quarter notes', '', 'publish', 'open', 'open', '', 'packaging-in-quarter-notes', '', '', '2015-04-09 21:24:51', '2015-04-09 18:24:51', '', 0, 'http://localhost/brand66/?p=110', 0, 'post', '', 0),
(111, 1, '2015-04-09 21:24:51', '2015-04-09 18:24:51', '', 'Packaging in quarter notes', '', 'inherit', 'open', 'open', '', '110-revision-v1', '', '', '2015-04-09 21:24:51', '2015-04-09 18:24:51', '', 110, 'http://localhost/brand66/?p=111', 0, 'revision', '', 0),
(112, 1, '2015-04-09 21:25:02', '2015-04-09 18:25:02', '', 'HUSH The Series', '', 'publish', 'open', 'open', '', 'hush-the-series', '', '', '2015-04-09 21:25:02', '2015-04-09 18:25:02', '', 0, 'http://localhost/brand66/?p=112', 0, 'post', '', 0),
(113, 1, '2015-04-09 21:25:02', '2015-04-09 18:25:02', '', 'HUSH The Series', '', 'inherit', 'open', 'open', '', '112-revision-v1', '', '', '2015-04-09 21:25:02', '2015-04-09 18:25:02', '', 112, 'http://localhost/brand66/?p=113', 0, 'revision', '', 0),
(114, 1, '2015-04-09 21:25:13', '2015-04-09 18:25:13', '', 'Pint-sized food trucks', '', 'publish', 'open', 'open', '', 'pint-sized-food-trucks', '', '', '2015-04-09 21:25:13', '2015-04-09 18:25:13', '', 0, 'http://localhost/brand66/?p=114', 0, 'post', '', 0),
(115, 1, '2015-04-09 21:25:13', '2015-04-09 18:25:13', '', 'Pint-sized food trucks', '', 'inherit', 'open', 'open', '', '114-revision-v1', '', '', '2015-04-09 21:25:13', '2015-04-09 18:25:13', '', 114, 'http://localhost/brand66/?p=115', 0, 'revision', '', 0),
(116, 1, '2015-04-09 21:25:29', '2015-04-09 18:25:29', '', 'The world’s hippest sculptures', '', 'publish', 'open', 'open', '', 'the-worlds-hippest-sculptures', '', '', '2015-04-09 21:25:29', '2015-04-09 18:25:29', '', 0, 'http://localhost/brand66/?p=116', 0, 'post', '', 0),
(117, 1, '2015-04-09 21:25:29', '2015-04-09 18:25:29', '', 'The world’s hippest sculptures', '', 'inherit', 'open', 'open', '', '116-revision-v1', '', '', '2015-04-09 21:25:29', '2015-04-09 18:25:29', '', 116, 'http://localhost/brand66/?p=117', 0, 'revision', '', 0),
(120, 1, '2015-04-09 21:30:46', '2015-04-09 18:30:46', 'lights,out,bach,joy,of,mans,desiring,touchwood,sh08c,cell,phone,mobile,automated,performance', 'Lights Out.Bach''s  Jesu, Joy of Man''s Desiring,Touchwood SH-08C', '', 'inherit', 'open', 'open', '', 'lights-out-bachs-jesu-joy-of-mans-desiringtouchwood-sh-08c', '', '', '2015-04-09 21:30:46', '2015-04-09 18:30:46', '', 13, 'http://localhost/brand66/wp-content/uploads/2015/04/Lights-Out.Bachs-Jesu-Joy-of-Mans-DesiringTouchwood-SH-08C.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2015-04-10 13:42:02', '2015-04-10 10:42:02', '', 'Subscribe', '', 'publish', 'closed', 'closed', '', '122', '', '', '2015-04-10 13:53:28', '2015-04-10 10:53:28', '', 0, 'http://localhost/brand66/?post_type=subscribe_me_forms&#038;p=122', 0, 'subscribe_me_forms', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `br_subscribers`
--

CREATE TABLE IF NOT EXISTS `br_subscribers` (
`id` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT '0',
  `email` varchar(120) NOT NULL,
  `firstName` varchar(100) NOT NULL DEFAULT '',
  `lastName` varchar(120) NOT NULL DEFAULT '',
  `age` varchar(10) NOT NULL DEFAULT '',
  `interests` varchar(250) NOT NULL DEFAULT '',
  `location` varchar(250) NOT NULL DEFAULT '',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` char(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `br_subscribers`
--

INSERT INTO `br_subscribers` (`id`, `active`, `email`, `firstName`, `lastName`, `age`, `interests`, `location`, `date`, `ip`) VALUES
(1, 0, 'mail@mail.com', '', '', '', '', '', '2015-04-10 12:28:03', '::1');

-- --------------------------------------------------------

--
-- Структура таблиці `br_subscribers_log`
--

CREATE TABLE IF NOT EXISTS `br_subscribers_log` (
`id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` tinyint(1) DEFAULT '0',
  `message` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `br_terms`
--

CREATE TABLE IF NOT EXISTS `br_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `br_terms`
--

INSERT INTO `br_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `br_term_relationships`
--

CREATE TABLE IF NOT EXISTS `br_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `br_term_relationships`
--

INSERT INTO `br_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 1, 0),
(15, 1, 0),
(33, 2, 0),
(34, 2, 0),
(35, 2, 0),
(36, 2, 0),
(37, 2, 0),
(62, 1, 0),
(64, 1, 0),
(66, 1, 0),
(68, 1, 0),
(70, 1, 0),
(72, 1, 0),
(74, 1, 0),
(76, 1, 0),
(78, 1, 0),
(80, 1, 0),
(82, 1, 0),
(84, 1, 0),
(86, 1, 0),
(88, 1, 0),
(90, 1, 0),
(92, 1, 0),
(94, 1, 0),
(96, 1, 0),
(98, 1, 0),
(100, 1, 0),
(102, 1, 0),
(104, 1, 0),
(106, 1, 0),
(108, 1, 0),
(110, 1, 0),
(112, 1, 0),
(114, 1, 0),
(116, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `br_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `br_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `br_term_taxonomy`
--

INSERT INTO `br_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 30),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблиці `br_usermeta`
--

CREATE TABLE IF NOT EXISTS `br_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `br_usermeta`
--

INSERT INTO `br_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'midnight'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'br_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'br_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:3:{s:64:"4a134b5a9fd9facead8c75a039d0df881cd603e03c7f88a12f3a18e0f0b7223f";a:4:{s:10:"expiration";i:1428679290;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428506490;}s:64:"4b3060eaa30bcf4dbc5c00ab3eba7f59358170a5d6e03a9ee1e882547dc3f3e3";a:4:{s:10:"expiration";i:1428746676;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428573876;}s:64:"7269a6a98168f12818a628bdb03c4767ded60662d0d31b536dea835a3f44a18e";a:4:{s:10:"expiration";i:1428757057;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428584257;}}'),
(15, 1, 'br_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'closedpostboxes_post', 'a:0:{}'),
(17, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"categorydiv";i:1;s:16:"tagsdiv-post_tag";i:2;s:13:"trackbacksdiv";i:3;s:10:"postcustom";i:4;s:16:"commentstatusdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(18, 1, 'meta-box-order_post', 'a:3:{s:4:"side";s:51:"submitdiv,categorydiv,tagsdiv-post_tag,postimagediv";s:6:"normal";s:96:"postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,slugdiv,authordiv,revisionsdiv,commentsdiv";s:8:"advanced";s:0:"";}'),
(19, 1, 'screen_layout_post', '2'),
(20, 1, 'br_user-settings', 'hidetb=1&editor=tinymce&post_dfw=off&libraryContent=browse&widgets_access=off'),
(21, 1, 'br_user-settings-time', '1428602075'),
(22, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'meta-box-order_news', 'a:3:{s:4:"side";s:33:"submitdiv,featured_video_plus-box";s:6:"normal";s:7:"slugdiv";s:8:"advanced";s:0:"";}'),
(26, 1, 'screen_layout_news', '2'),
(27, 1, 'closedpostboxes_news', 'a:3:{i:0;s:9:"submitdiv";i:1;s:23:"featured_video_plus-box";i:2;s:13:"pageparentdiv";}'),
(28, 1, 'metaboxhidden_news', 'a:1:{i:0;s:7:"slugdiv";}'),
(29, 1, 'closedpostboxes_subscribe_me_forms', 'a:0:{}'),
(30, 1, 'metaboxhidden_subscribe_me_forms', 'a:1:{i:0;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Структура таблиці `br_users`
--

CREATE TABLE IF NOT EXISTS `br_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `br_users`
--

INSERT INTO `br_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bck8r5fiwDYhB7YdUq.5tK4EBKZemo0', 'admin', 'brand66@email.com', '', '2015-04-04 09:34:13', '', 0, 'admin');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `br_commentmeta`
--
ALTER TABLE `br_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Індекси таблиці `br_comments`
--
ALTER TABLE `br_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Індекси таблиці `br_es_deliverreport`
--
ALTER TABLE `br_es_deliverreport`
 ADD PRIMARY KEY (`es_deliver_id`);

--
-- Індекси таблиці `br_es_emaillist`
--
ALTER TABLE `br_es_emaillist`
 ADD PRIMARY KEY (`es_email_id`);

--
-- Індекси таблиці `br_es_notification`
--
ALTER TABLE `br_es_notification`
 ADD PRIMARY KEY (`es_note_id`);

--
-- Індекси таблиці `br_es_pluginconfig`
--
ALTER TABLE `br_es_pluginconfig`
 ADD PRIMARY KEY (`es_c_id`);

--
-- Індекси таблиці `br_es_sentdetails`
--
ALTER TABLE `br_es_sentdetails`
 ADD PRIMARY KEY (`es_sent_id`);

--
-- Індекси таблиці `br_es_templatetable`
--
ALTER TABLE `br_es_templatetable`
 ADD PRIMARY KEY (`es_templ_id`);

--
-- Індекси таблиці `br_links`
--
ALTER TABLE `br_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Індекси таблиці `br_options`
--
ALTER TABLE `br_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Індекси таблиці `br_postmeta`
--
ALTER TABLE `br_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Індекси таблиці `br_posts`
--
ALTER TABLE `br_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Індекси таблиці `br_subscribers`
--
ALTER TABLE `br_subscribers`
 ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `br_subscribers_log`
--
ALTER TABLE `br_subscribers_log`
 ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `br_terms`
--
ALTER TABLE `br_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Індекси таблиці `br_term_relationships`
--
ALTER TABLE `br_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Індекси таблиці `br_term_taxonomy`
--
ALTER TABLE `br_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Індекси таблиці `br_usermeta`
--
ALTER TABLE `br_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Індекси таблиці `br_users`
--
ALTER TABLE `br_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `br_commentmeta`
--
ALTER TABLE `br_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `br_comments`
--
ALTER TABLE `br_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `br_es_deliverreport`
--
ALTER TABLE `br_es_deliverreport`
MODIFY `es_deliver_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `br_es_emaillist`
--
ALTER TABLE `br_es_emaillist`
MODIFY `es_email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `br_es_notification`
--
ALTER TABLE `br_es_notification`
MODIFY `es_note_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `br_es_pluginconfig`
--
ALTER TABLE `br_es_pluginconfig`
MODIFY `es_c_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `br_es_sentdetails`
--
ALTER TABLE `br_es_sentdetails`
MODIFY `es_sent_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `br_es_templatetable`
--
ALTER TABLE `br_es_templatetable`
MODIFY `es_templ_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблиці `br_links`
--
ALTER TABLE `br_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `br_options`
--
ALTER TABLE `br_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=435;
--
-- AUTO_INCREMENT для таблиці `br_postmeta`
--
ALTER TABLE `br_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=347;
--
-- AUTO_INCREMENT для таблиці `br_posts`
--
ALTER TABLE `br_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT для таблиці `br_subscribers`
--
ALTER TABLE `br_subscribers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `br_subscribers_log`
--
ALTER TABLE `br_subscribers_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `br_terms`
--
ALTER TABLE `br_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `br_term_taxonomy`
--
ALTER TABLE `br_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `br_usermeta`
--
ALTER TABLE `br_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблиці `br_users`
--
ALTER TABLE `br_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
