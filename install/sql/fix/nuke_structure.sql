-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2023 at 12:57 AM
-- Server version: 10.3.38-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpnukecoders_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `nuke_admin_fc`
--

CREATE TABLE `nuke_admin_fc` (
  `fc_datetime` varchar(25) NOT NULL DEFAULT '',
  `fc_ip` varchar(255) NOT NULL DEFAULT '',
  `fc_attempts` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_antiflood`
--

CREATE TABLE `nuke_antiflood` (
  `ip_addr` varchar(48) NOT NULL,
  `time` varchar(14) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_authors`
--

CREATE TABLE `nuke_authors` (
  `aid` varchar(25) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `pwd` varchar(40) DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT 0,
  `radminsuper` tinyint(1) NOT NULL DEFAULT 1,
  `admlanguage` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_autonews`
--

CREATE TABLE `nuke_autonews` (
  `anid` int(11) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT 0,
  `aid` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` varchar(19) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `bodytext` text NOT NULL,
  `topic` int(3) NOT NULL DEFAULT 1,
  `informant` varchar(20) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  `ihome` int(1) NOT NULL DEFAULT 0,
  `alanguage` varchar(30) NOT NULL DEFAULT '',
  `acomm` int(1) NOT NULL DEFAULT 0,
  `associated` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_banner`
--

CREATE TABLE `nuke_banner` (
  `bid` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `alttext` varchar(255) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `dateend` datetime DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `ad_class` varchar(5) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `ad_width` int(11) DEFAULT 0,
  `ad_height` int(11) DEFAULT 0,
  `type` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_banner_clients`
--

CREATE TABLE `nuke_banner_clients` (
  `cid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `contact` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `login` varchar(10) NOT NULL DEFAULT '',
  `passwd` varchar(10) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_banner_plans`
--

CREATE TABLE `nuke_banner_plans` (
  `pid` int(10) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `delivery` varchar(10) NOT NULL DEFAULT '',
  `delivery_type` varchar(25) NOT NULL DEFAULT '',
  `price` varchar(25) NOT NULL DEFAULT '0',
  `buy_links` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_banner_positions`
--

CREATE TABLE `nuke_banner_positions` (
  `apid` int(10) NOT NULL,
  `position_number` int(5) NOT NULL DEFAULT 0,
  `position_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_banner_terms`
--

CREATE TABLE `nuke_banner_terms` (
  `terms_body` text NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbadvanced_username_color`
--

CREATE TABLE `nuke_bbadvanced_username_color` (
  `nuke_group_id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(255) NOT NULL DEFAULT '',
  `group_color` varchar(6) NOT NULL DEFAULT '',
  `group_weight` smallint(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbarcade`
--

CREATE TABLE `nuke_bbarcade` (
  `arcade_name` varchar(255) NOT NULL DEFAULT '',
  `arcade_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbarcade_categories`
--

CREATE TABLE `nuke_bbarcade_categories` (
  `arcade_catid` mediumint(8) UNSIGNED NOT NULL,
  `arcade_cattitle` varchar(100) NOT NULL DEFAULT '',
  `arcade_nbelmt` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `arcade_catorder` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `arcade_catauth` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbarcade_comments`
--

CREATE TABLE `nuke_bbarcade_comments` (
  `game_id` mediumint(8) NOT NULL DEFAULT 0,
  `comments_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbarcade_fav`
--

CREATE TABLE `nuke_bbarcade_fav` (
  `order` mediumint(8) NOT NULL DEFAULT 0,
  `user_id` mediumint(8) NOT NULL DEFAULT 0,
  `game_id` mediumint(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbattachments`
--

CREATE TABLE `nuke_bbattachments` (
  `attach_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `privmsgs_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_id_1` mediumint(8) NOT NULL DEFAULT 0,
  `user_id_2` mediumint(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbattachments_config`
--

CREATE TABLE `nuke_bbattachments_config` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbattachments_desc`
--

CREATE TABLE `nuke_bbattachments_desc` (
  `attach_id` mediumint(8) UNSIGNED NOT NULL,
  `physical_filename` varchar(255) NOT NULL DEFAULT '',
  `real_filename` varchar(255) NOT NULL DEFAULT '',
  `download_count` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `comment` varchar(255) DEFAULT NULL,
  `extension` varchar(100) DEFAULT NULL,
  `mimetype` varchar(100) DEFAULT NULL,
  `filesize` int(20) NOT NULL DEFAULT 0,
  `filetime` int(11) NOT NULL DEFAULT 0,
  `thumbnail` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbattach_quota`
--

CREATE TABLE `nuke_bbattach_quota` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `nuke_group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `quota_type` smallint(2) NOT NULL DEFAULT 0,
  `quota_limit_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbauth_access`
--

CREATE TABLE `nuke_bbauth_access` (
  `nuke_group_id` mediumint(8) NOT NULL DEFAULT 0,
  `forum_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `auth_view` tinyint(1) NOT NULL DEFAULT 0,
  `auth_read` tinyint(1) NOT NULL DEFAULT 0,
  `auth_post` tinyint(1) NOT NULL DEFAULT 0,
  `auth_reply` tinyint(1) NOT NULL DEFAULT 0,
  `auth_edit` tinyint(1) NOT NULL DEFAULT 0,
  `auth_delete` tinyint(1) NOT NULL DEFAULT 0,
  `auth_sticky` tinyint(1) NOT NULL DEFAULT 0,
  `auth_announce` tinyint(1) NOT NULL DEFAULT 0,
  `auth_globalannounce` tinyint(1) NOT NULL DEFAULT 0,
  `auth_vote` tinyint(1) NOT NULL DEFAULT 0,
  `auth_pollcreate` tinyint(1) NOT NULL DEFAULT 0,
  `auth_attachments` tinyint(1) NOT NULL DEFAULT 0,
  `auth_mod` tinyint(1) NOT NULL DEFAULT 0,
  `auth_download` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbauth_arcade_access`
--

CREATE TABLE `nuke_bbauth_arcade_access` (
  `nuke_group_id` mediumint(8) NOT NULL DEFAULT 0,
  `arcade_catid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbbanlist`
--

CREATE TABLE `nuke_bbbanlist` (
  `ban_id` mediumint(8) UNSIGNED NOT NULL,
  `ban_userid` mediumint(8) NOT NULL DEFAULT 0,
  `ban_ip` varchar(8) NOT NULL DEFAULT '',
  `ban_email` varchar(255) DEFAULT NULL,
  `ban_time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbcategories`
--

CREATE TABLE `nuke_bbcategories` (
  `cat_id` mediumint(8) UNSIGNED NOT NULL,
  `cat_title` varchar(100) DEFAULT NULL,
  `cat_order` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbconfig`
--

CREATE TABLE `nuke_bbconfig` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbdisallow`
--

CREATE TABLE `nuke_bbdisallow` (
  `disallow_id` mediumint(8) UNSIGNED NOT NULL,
  `disallow_username` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbextensions`
--

CREATE TABLE `nuke_bbextensions` (
  `ext_id` mediumint(8) UNSIGNED NOT NULL,
  `nuke_group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `extension` varchar(100) NOT NULL DEFAULT '',
  `comment` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbextension_groups`
--

CREATE TABLE `nuke_bbextension_groups` (
  `nuke_group_id` mediumint(8) NOT NULL,
  `group_name` varchar(20) NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT 0,
  `allow_group` tinyint(1) NOT NULL DEFAULT 0,
  `download_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `upload_icon` varchar(100) DEFAULT '',
  `max_filesize` int(20) NOT NULL DEFAULT 0,
  `forum_permissions` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbflags`
--

CREATE TABLE `nuke_bbflags` (
  `flag_id` int(10) NOT NULL,
  `flag_name` varchar(50) DEFAULT NULL,
  `flag_image` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbforbidden_extensions`
--

CREATE TABLE `nuke_bbforbidden_extensions` (
  `ext_id` mediumint(8) UNSIGNED NOT NULL,
  `extension` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbforums`
--

CREATE TABLE `nuke_bbforums` (
  `forum_id` smallint(5) UNSIGNED NOT NULL,
  `cat_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_name` varchar(150) DEFAULT NULL,
  `forum_desc` text DEFAULT NULL,
  `forum_status` tinyint(4) NOT NULL DEFAULT 0,
  `forum_order` mediumint(8) UNSIGNED NOT NULL DEFAULT 1,
  `forum_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_topics` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_last_post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `prune_next` int(11) DEFAULT NULL,
  `prune_enable` tinyint(1) NOT NULL DEFAULT 1,
  `auth_view` tinyint(2) NOT NULL DEFAULT 0,
  `auth_read` tinyint(2) NOT NULL DEFAULT 0,
  `auth_post` tinyint(2) NOT NULL DEFAULT 0,
  `auth_reply` tinyint(2) NOT NULL DEFAULT 0,
  `auth_edit` tinyint(2) NOT NULL DEFAULT 0,
  `auth_delete` tinyint(2) NOT NULL DEFAULT 0,
  `auth_sticky` tinyint(2) NOT NULL DEFAULT 0,
  `auth_announce` tinyint(2) NOT NULL DEFAULT 0,
  `auth_globalannounce` tinyint(2) NOT NULL DEFAULT 3,
  `auth_vote` tinyint(2) NOT NULL DEFAULT 0,
  `auth_pollcreate` tinyint(2) NOT NULL DEFAULT 0,
  `auth_attachments` tinyint(2) NOT NULL DEFAULT 0,
  `forum_display_sort` tinyint(1) NOT NULL DEFAULT 0,
  `forum_display_order` tinyint(1) NOT NULL DEFAULT 0,
  `auth_download` tinyint(2) NOT NULL DEFAULT 0,
  `forum_parent` int(11) NOT NULL DEFAULT 0,
  `forum_color` varchar(6) NOT NULL DEFAULT '',
  `title_is_link` tinyint(1) NOT NULL DEFAULT 0,
  `weblink` varchar(200) NOT NULL,
  `forum_link_icon` varchar(200) NOT NULL,
  `forum_link_count` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_link_target` tinyint(1) NOT NULL DEFAULT 0,
  `forum_icon` varchar(255) DEFAULT NULL,
  `forum_thank` tinyint(1) NOT NULL DEFAULT 0,
  `forum_password` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbforum_prune`
--

CREATE TABLE `nuke_bbforum_prune` (
  `prune_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `prune_days` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `prune_freq` tinyint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbgamehash`
--

CREATE TABLE `nuke_bbgamehash` (
  `gamehash_id` char(32) NOT NULL,
  `game_id` mediumint(8) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `hash_date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbgames`
--

CREATE TABLE `nuke_bbgames` (
  `game_id` mediumint(8) NOT NULL,
  `game_pic` varchar(50) NOT NULL DEFAULT '',
  `game_desc` longtext DEFAULT NULL,
  `game_highscore` int(11) NOT NULL DEFAULT 0,
  `game_highdate` int(11) NOT NULL DEFAULT 0,
  `game_highuser` mediumint(8) NOT NULL DEFAULT 0,
  `game_name` varchar(50) NOT NULL DEFAULT '',
  `game_swf` varchar(50) NOT NULL DEFAULT '',
  `game_scorevar` varchar(50) NOT NULL DEFAULT '',
  `game_type` tinyint(4) NOT NULL DEFAULT 0,
  `game_width` mediumint(5) NOT NULL DEFAULT 550,
  `game_height` varchar(5) NOT NULL DEFAULT '380',
  `game_order` mediumint(8) NOT NULL DEFAULT 0,
  `game_set` mediumint(8) NOT NULL DEFAULT 0,
  `arcade_catid` mediumint(8) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbgroups`
--

CREATE TABLE `nuke_bbgroups` (
  `nuke_group_id` mediumint(8) NOT NULL,
  `group_type` tinyint(4) NOT NULL DEFAULT 1,
  `group_name` varchar(40) NOT NULL DEFAULT '',
  `group_description` varchar(255) NOT NULL DEFAULT '',
  `group_moderator` mediumint(8) NOT NULL DEFAULT 0,
  `group_single_user` tinyint(1) NOT NULL DEFAULT 1,
  `group_allow_pm` tinyint(2) NOT NULL DEFAULT 5,
  `group_color` varchar(15) NOT NULL DEFAULT '',
  `group_rank` varchar(5) NOT NULL DEFAULT '0',
  `max_inbox` mediumint(10) NOT NULL DEFAULT 100,
  `max_sentbox` mediumint(10) NOT NULL DEFAULT 100,
  `max_savebox` mediumint(10) NOT NULL DEFAULT 100,
  `override_max_inbox` tinyint(1) NOT NULL DEFAULT 0,
  `override_max_sentbox` tinyint(1) NOT NULL DEFAULT 0,
  `override_max_savebox` tinyint(1) NOT NULL DEFAULT 0,
  `group_count` int(4) UNSIGNED DEFAULT 99999999,
  `group_count_max` int(4) UNSIGNED DEFAULT 99999999,
  `group_count_enable` smallint(2) UNSIGNED DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbhackgame`
--

CREATE TABLE `nuke_bbhackgame` (
  `user_id` mediumint(8) NOT NULL,
  `game_id` mediumint(8) NOT NULL,
  `date_hack` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbinline_ads`
--

CREATE TABLE `nuke_bbinline_ads` (
  `ad_id` tinyint(5) NOT NULL,
  `ad_code` text NOT NULL,
  `ad_name` char(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bblogs`
--

CREATE TABLE `nuke_bblogs` (
  `log_id` mediumint(10) NOT NULL,
  `mode` varchar(50) DEFAULT '',
  `topic_id` mediumint(10) DEFAULT 0,
  `user_id` mediumint(8) DEFAULT 0,
  `username` varchar(255) DEFAULT '',
  `user_ip` varchar(8) NOT NULL DEFAULT '0',
  `time` int(11) DEFAULT 0,
  `new_topic_id` mediumint(10) NOT NULL DEFAULT 0,
  `forum_id` mediumint(10) NOT NULL DEFAULT 0,
  `new_forum_id` mediumint(10) NOT NULL DEFAULT 0,
  `last_post_id` mediumint(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bblogs_config`
--

CREATE TABLE `nuke_bblogs_config` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbposts`
--

CREATE TABLE `nuke_bbposts` (
  `post_id` mediumint(8) UNSIGNED NOT NULL,
  `topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `poster_id` mediumint(8) NOT NULL DEFAULT 0,
  `post_time` int(11) NOT NULL DEFAULT 0,
  `poster_ip` varchar(8) NOT NULL DEFAULT '',
  `post_username` varchar(25) DEFAULT NULL,
  `enable_bbcode` tinyint(1) NOT NULL DEFAULT 1,
  `enable_html` tinyint(1) NOT NULL DEFAULT 0,
  `enable_smilies` tinyint(1) NOT NULL DEFAULT 1,
  `enable_sig` tinyint(1) NOT NULL DEFAULT 1,
  `post_edit_time` int(11) DEFAULT NULL,
  `post_edit_count` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `post_attachment` tinyint(1) NOT NULL DEFAULT 0,
  `post_move` tinyint(1) NOT NULL DEFAULT 0,
  `post_icon` tinyint(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbposts_text`
--

CREATE TABLE `nuke_bbposts_text` (
  `post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `bbcode_uid` varchar(10) NOT NULL DEFAULT '',
  `post_subject` varchar(120) DEFAULT NULL,
  `post_text` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbpost_reports`
--

CREATE TABLE `nuke_bbpost_reports` (
  `report_id` mediumint(8) NOT NULL,
  `post_id` mediumint(8) NOT NULL DEFAULT 0,
  `reporter_id` mediumint(8) NOT NULL DEFAULT 0,
  `report_status` tinyint(1) NOT NULL DEFAULT 0,
  `report_time` int(11) NOT NULL DEFAULT 0,
  `report_comments` text DEFAULT NULL,
  `last_action_user_id` mediumint(8) DEFAULT 0,
  `last_action_time` int(11) NOT NULL DEFAULT 0,
  `last_action_comments` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbprivmsgs`
--

CREATE TABLE `nuke_bbprivmsgs` (
  `privmsgs_id` mediumint(8) UNSIGNED NOT NULL,
  `privmsgs_type` tinyint(4) NOT NULL DEFAULT 0,
  `privmsgs_subject` varchar(255) NOT NULL DEFAULT '0',
  `privmsgs_from_userid` mediumint(8) NOT NULL DEFAULT 0,
  `privmsgs_to_userid` mediumint(8) NOT NULL DEFAULT 0,
  `privmsgs_date` int(11) NOT NULL DEFAULT 0,
  `privmsgs_ip` varchar(8) NOT NULL DEFAULT '',
  `privmsgs_enable_bbcode` tinyint(1) NOT NULL DEFAULT 1,
  `privmsgs_enable_html` tinyint(1) NOT NULL DEFAULT 0,
  `privmsgs_enable_smilies` tinyint(1) NOT NULL DEFAULT 1,
  `privmsgs_attach_sig` tinyint(1) NOT NULL DEFAULT 1,
  `privmsgs_attachment` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbprivmsgs_archive`
--

CREATE TABLE `nuke_bbprivmsgs_archive` (
  `privmsgs_id` mediumint(8) UNSIGNED NOT NULL,
  `privmsgs_type` tinyint(4) NOT NULL DEFAULT 0,
  `privmsgs_subject` varchar(255) NOT NULL DEFAULT '0',
  `privmsgs_from_userid` mediumint(8) NOT NULL DEFAULT 0,
  `privmsgs_to_userid` mediumint(8) NOT NULL DEFAULT 0,
  `privmsgs_date` int(11) NOT NULL DEFAULT 0,
  `privmsgs_ip` varchar(8) NOT NULL DEFAULT '',
  `privmsgs_enable_bbcode` tinyint(1) NOT NULL DEFAULT 1,
  `privmsgs_enable_html` tinyint(1) NOT NULL DEFAULT 0,
  `privmsgs_enable_smilies` tinyint(1) NOT NULL DEFAULT 1,
  `privmsgs_attach_sig` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbprivmsgs_text`
--

CREATE TABLE `nuke_bbprivmsgs_text` (
  `privmsgs_text_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `privmsgs_bbcode_uid` varchar(10) NOT NULL DEFAULT '0',
  `privmsgs_text` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbquicksearch`
--

CREATE TABLE `nuke_bbquicksearch` (
  `search_id` mediumint(8) UNSIGNED NOT NULL,
  `search_name` varchar(255) NOT NULL DEFAULT '',
  `search_url1` varchar(255) NOT NULL DEFAULT '',
  `search_url2` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbquota_limits`
--

CREATE TABLE `nuke_bbquota_limits` (
  `quota_limit_id` mediumint(8) UNSIGNED NOT NULL,
  `quota_desc` varchar(20) NOT NULL DEFAULT '',
  `quota_limit` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbranks`
--

CREATE TABLE `nuke_bbranks` (
  `rank_id` smallint(5) UNSIGNED NOT NULL,
  `rank_title` varchar(100) NOT NULL DEFAULT '',
  `rank_min` mediumint(8) NOT NULL DEFAULT 0,
  `rank_special` tinyint(1) DEFAULT 0,
  `rank_image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbreputation`
--

CREATE TABLE `nuke_bbreputation` (
  `user_id` mediumint(8) NOT NULL DEFAULT 0,
  `user_id_2` mediumint(8) NOT NULL DEFAULT 0,
  `post_id` mediumint(8) NOT NULL DEFAULT 0,
  `rep_sum` float NOT NULL DEFAULT 0,
  `rep_neg` tinyint(1) NOT NULL DEFAULT 0,
  `rep_comment` varchar(200) NOT NULL DEFAULT '',
  `rep_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbreputation_config`
--

CREATE TABLE `nuke_bbreputation_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbscores`
--

CREATE TABLE `nuke_bbscores` (
  `game_id` mediumint(8) NOT NULL DEFAULT 0,
  `user_id` mediumint(8) NOT NULL DEFAULT 0,
  `score_game` int(11) NOT NULL DEFAULT 0,
  `score_date` int(11) NOT NULL DEFAULT 0,
  `score_time` int(11) NOT NULL DEFAULT 0,
  `score_set` mediumint(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbsearch_rebuild`
--

CREATE TABLE `nuke_bbsearch_rebuild` (
  `rebuild_session_id` mediumint(8) UNSIGNED NOT NULL,
  `start_post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `end_post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` int(11) NOT NULL DEFAULT 0,
  `end_time` int(11) NOT NULL DEFAULT 0,
  `last_cycle_time` int(11) NOT NULL DEFAULT 0,
  `session_time` int(11) NOT NULL DEFAULT 0,
  `session_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `session_cycles` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `search_size` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rebuild_session_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbsearch_results`
--

CREATE TABLE `nuke_bbsearch_results` (
  `search_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `session_id` varchar(32) NOT NULL DEFAULT '',
  `search_array` text NOT NULL,
  `search_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbsearch_wordlist`
--

CREATE TABLE `nuke_bbsearch_wordlist` (
  `word_text` varchar(255) NOT NULL DEFAULT '',
  `word_id` mediumint(8) UNSIGNED NOT NULL,
  `word_common` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbsearch_wordmatch`
--

CREATE TABLE `nuke_bbsearch_wordmatch` (
  `post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `word_id` mediumint(8) UNSIGNED NOT NULL,
  `title_match` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbsessions`
--

CREATE TABLE `nuke_bbsessions` (
  `session_id` varchar(32) NOT NULL DEFAULT '',
  `session_user_id` mediumint(8) NOT NULL DEFAULT 0,
  `session_start` int(11) NOT NULL DEFAULT 0,
  `session_time` int(11) NOT NULL DEFAULT 0,
  `session_ip` varchar(8) NOT NULL DEFAULT '0',
  `session_page` int(11) NOT NULL DEFAULT 0,
  `session_logged_in` tinyint(1) NOT NULL DEFAULT 0,
  `session_admin` tinyint(2) NOT NULL DEFAULT 0,
  `session_url_qs` varchar(255) NOT NULL DEFAULT '',
  `session_url_ps` varchar(255) NOT NULL DEFAULT '',
  `session_url_specific` int(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbsessions_keys`
--

CREATE TABLE `nuke_bbsessions_keys` (
  `key_id` varchar(32) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT 0,
  `last_ip` varchar(8) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbsmilies`
--

CREATE TABLE `nuke_bbsmilies` (
  `smilies_id` smallint(5) UNSIGNED NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `smile_url` varchar(100) DEFAULT NULL,
  `emoticon` varchar(75) DEFAULT NULL,
  `smile_stat` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbstats_config`
--

CREATE TABLE `nuke_bbstats_config` (
  `config_name` varchar(100) NOT NULL DEFAULT '',
  `config_value` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbstats_modules`
--

CREATE TABLE `nuke_bbstats_modules` (
  `module_id` mediumint(8) UNSIGNED NOT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `update_time` mediumint(8) NOT NULL DEFAULT 0,
  `module_order` mediumint(8) NOT NULL DEFAULT 0,
  `active` tinyint(2) NOT NULL DEFAULT 0,
  `perm_all` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `perm_reg` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `perm_mod` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `perm_admin` tinyint(2) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbstats_module_admin_panel`
--

CREATE TABLE `nuke_bbstats_module_admin_panel` (
  `module_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` varchar(255) NOT NULL DEFAULT '',
  `config_type` varchar(20) NOT NULL DEFAULT '',
  `config_title` varchar(100) NOT NULL DEFAULT '',
  `config_explain` varchar(100) DEFAULT NULL,
  `config_trigger` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbstats_module_cache`
--

CREATE TABLE `nuke_bbstats_module_cache` (
  `module_id` mediumint(8) NOT NULL DEFAULT 0,
  `module_cache_time` int(12) NOT NULL DEFAULT 0,
  `db_cache` text NOT NULL,
  `priority` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbstats_module_group_auth`
--

CREATE TABLE `nuke_bbstats_module_group_auth` (
  `module_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `nuke_group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbstats_module_info`
--

CREATE TABLE `nuke_bbstats_module_info` (
  `module_id` mediumint(8) NOT NULL DEFAULT 0,
  `long_name` varchar(100) NOT NULL DEFAULT '',
  `author` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `version` varchar(10) NOT NULL DEFAULT '',
  `update_site` varchar(100) DEFAULT NULL,
  `extra_info` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbstats_smilies_index`
--

CREATE TABLE `nuke_bbstats_smilies_index` (
  `code` varchar(50) NOT NULL DEFAULT '',
  `smile_url` varchar(100) DEFAULT NULL,
  `smile_count` mediumint(8) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbstats_smilies_info`
--

CREATE TABLE `nuke_bbstats_smilies_info` (
  `last_post_id` mediumint(8) NOT NULL DEFAULT 0,
  `last_update_time` int(12) NOT NULL DEFAULT 0,
  `update_time` mediumint(8) NOT NULL DEFAULT 10080
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbthanks`
--

CREATE TABLE `nuke_bbthanks` (
  `topic_id` mediumint(8) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `thanks_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbthemes`
--

CREATE TABLE `nuke_bbthemes` (
  `themes_id` mediumint(8) UNSIGNED NOT NULL,
  `template_name` varchar(30) NOT NULL DEFAULT '',
  `style_name` varchar(30) NOT NULL DEFAULT '',
  `head_stylesheet` varchar(100) DEFAULT NULL,
  `body_background` varchar(100) DEFAULT NULL,
  `body_bgcolor` varchar(6) DEFAULT NULL,
  `body_text` varchar(6) DEFAULT NULL,
  `body_link` varchar(6) DEFAULT NULL,
  `body_vlink` varchar(6) DEFAULT NULL,
  `body_alink` varchar(6) DEFAULT NULL,
  `body_hlink` varchar(6) DEFAULT NULL,
  `tr_color1` varchar(6) DEFAULT NULL,
  `tr_color2` varchar(6) DEFAULT NULL,
  `tr_color3` varchar(6) DEFAULT NULL,
  `tr_class1` varchar(25) DEFAULT NULL,
  `tr_class2` varchar(25) DEFAULT NULL,
  `tr_class3` varchar(25) DEFAULT NULL,
  `th_color1` varchar(6) DEFAULT NULL,
  `th_color2` varchar(6) DEFAULT NULL,
  `th_color3` varchar(6) DEFAULT NULL,
  `th_class1` varchar(25) DEFAULT NULL,
  `th_class2` varchar(25) DEFAULT NULL,
  `th_class3` varchar(25) DEFAULT NULL,
  `td_color1` varchar(6) DEFAULT NULL,
  `td_color2` varchar(6) DEFAULT NULL,
  `td_color3` varchar(6) DEFAULT NULL,
  `td_class1` varchar(25) DEFAULT NULL,
  `td_class2` varchar(25) DEFAULT NULL,
  `td_class3` varchar(25) DEFAULT NULL,
  `fontface1` varchar(50) DEFAULT NULL,
  `fontface2` varchar(50) DEFAULT NULL,
  `fontface3` varchar(50) DEFAULT NULL,
  `fontsize1` tinyint(4) DEFAULT NULL,
  `fontsize2` tinyint(4) DEFAULT NULL,
  `fontsize3` tinyint(4) DEFAULT NULL,
  `fontcolor1` varchar(6) DEFAULT NULL,
  `fontcolor2` varchar(6) DEFAULT NULL,
  `fontcolor3` varchar(6) DEFAULT NULL,
  `span_class1` varchar(25) DEFAULT NULL,
  `span_class2` varchar(25) DEFAULT NULL,
  `span_class3` varchar(25) DEFAULT NULL,
  `img_size_poll` smallint(5) UNSIGNED DEFAULT NULL,
  `img_size_privmsg` smallint(5) UNSIGNED DEFAULT NULL,
  `online_color` varchar(6) NOT NULL DEFAULT '',
  `offline_color` varchar(6) NOT NULL DEFAULT '',
  `hidden_color` varchar(6) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbthemes_name`
--

CREATE TABLE `nuke_bbthemes_name` (
  `themes_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `tr_color1_name` char(50) DEFAULT NULL,
  `tr_color2_name` char(50) DEFAULT NULL,
  `tr_color3_name` char(50) DEFAULT NULL,
  `tr_class1_name` char(50) DEFAULT NULL,
  `tr_class2_name` char(50) DEFAULT NULL,
  `tr_class3_name` char(50) DEFAULT NULL,
  `th_color1_name` char(50) DEFAULT NULL,
  `th_color2_name` char(50) DEFAULT NULL,
  `th_color3_name` char(50) DEFAULT NULL,
  `th_class1_name` char(50) DEFAULT NULL,
  `th_class2_name` char(50) DEFAULT NULL,
  `th_class3_name` char(50) DEFAULT NULL,
  `td_color1_name` char(50) DEFAULT NULL,
  `td_color2_name` char(50) DEFAULT NULL,
  `td_color3_name` char(50) DEFAULT NULL,
  `td_class1_name` char(50) DEFAULT NULL,
  `td_class2_name` char(50) DEFAULT NULL,
  `td_class3_name` char(50) DEFAULT NULL,
  `fontface1_name` char(50) DEFAULT NULL,
  `fontface2_name` char(50) DEFAULT NULL,
  `fontface3_name` char(50) DEFAULT NULL,
  `fontsize1_name` char(50) DEFAULT NULL,
  `fontsize2_name` char(50) DEFAULT NULL,
  `fontsize3_name` char(50) DEFAULT NULL,
  `fontcolor1_name` char(50) DEFAULT NULL,
  `fontcolor2_name` char(50) DEFAULT NULL,
  `fontcolor3_name` char(50) DEFAULT NULL,
  `span_class1_name` char(50) DEFAULT NULL,
  `span_class2_name` char(50) DEFAULT NULL,
  `span_class3_name` char(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbtopics`
--

CREATE TABLE `nuke_bbtopics` (
  `topic_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_id` smallint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_title` char(120) NOT NULL DEFAULT '',
  `topic_poster` mediumint(8) NOT NULL DEFAULT 0,
  `topic_time` int(11) NOT NULL DEFAULT 0,
  `topic_views` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_replies` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_status` tinyint(3) NOT NULL DEFAULT 0,
  `topic_vote` tinyint(1) NOT NULL DEFAULT 0,
  `topic_type` tinyint(3) NOT NULL DEFAULT 0,
  `topic_last_post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_first_post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_moved_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_priority` smallint(6) NOT NULL DEFAULT 0,
  `topic_attachment` tinyint(1) NOT NULL DEFAULT 0,
  `topic_glance_priority` smallint(6) NOT NULL DEFAULT 0,
  `topic_icon` tinyint(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbtopics_email`
--

CREATE TABLE `nuke_bbtopics_email` (
  `user_id` mediumint(8) NOT NULL,
  `friend_name` varchar(100) NOT NULL,
  `friend_email` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  `topic_id` mediumint(8) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbtopics_watch`
--

CREATE TABLE `nuke_bbtopics_watch` (
  `topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` mediumint(8) NOT NULL DEFAULT 0,
  `notify_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbtopic_moved`
--

CREATE TABLE `nuke_bbtopic_moved` (
  `moved_id` mediumint(8) UNSIGNED NOT NULL,
  `moved_topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `moved_oldtopic_id` mediumint(8) UNSIGNED DEFAULT 0,
  `moved_type` varchar(8) NOT NULL DEFAULT '0',
  `moved_parent` mediumint(8) UNSIGNED DEFAULT 0,
  `moved_target` mediumint(8) UNSIGNED DEFAULT 0,
  `moved_mod` mediumint(8) NOT NULL DEFAULT 0,
  `moved_time` int(11) NOT NULL DEFAULT 0,
  `last_post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbtopic_view`
--

CREATE TABLE `nuke_bbtopic_view` (
  `topic_id` mediumint(8) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `view_time` int(11) NOT NULL,
  `view_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbuser_group`
--

CREATE TABLE `nuke_bbuser_group` (
  `nuke_group_id` mediumint(8) NOT NULL DEFAULT 0,
  `user_id` mediumint(8) NOT NULL DEFAULT 0,
  `user_pending` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbvote_desc`
--

CREATE TABLE `nuke_bbvote_desc` (
  `vote_id` mediumint(8) UNSIGNED NOT NULL,
  `topic_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `vote_text` text NOT NULL,
  `vote_start` int(11) NOT NULL DEFAULT 0,
  `vote_length` int(11) NOT NULL DEFAULT 0,
  `poll_view_toggle` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbvote_results`
--

CREATE TABLE `nuke_bbvote_results` (
  `vote_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `vote_option_id` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `vote_option_text` varchar(255) NOT NULL DEFAULT '',
  `vote_result` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbvote_voters`
--

CREATE TABLE `nuke_bbvote_voters` (
  `vote_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `vote_user_id` mediumint(8) NOT NULL DEFAULT 0,
  `vote_user_ip` char(8) NOT NULL DEFAULT '',
  `vote_cast` tinyint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbwords`
--

CREATE TABLE `nuke_bbwords` (
  `word_id` mediumint(8) UNSIGNED NOT NULL,
  `word` char(100) NOT NULL DEFAULT '',
  `replacement` char(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbxdata_auth`
--

CREATE TABLE `nuke_bbxdata_auth` (
  `field_id` smallint(5) UNSIGNED NOT NULL,
  `nuke_group_id` mediumint(8) UNSIGNED NOT NULL,
  `auth_value` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbxdata_data`
--

CREATE TABLE `nuke_bbxdata_data` (
  `field_id` smallint(5) UNSIGNED NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `xdata_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbxdata_fields`
--

CREATE TABLE `nuke_bbxdata_fields` (
  `field_id` smallint(5) UNSIGNED NOT NULL,
  `field_name` varchar(255) NOT NULL DEFAULT '',
  `field_desc` text NOT NULL,
  `field_type` varchar(255) NOT NULL DEFAULT '',
  `field_order` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `code_name` varchar(255) NOT NULL DEFAULT '',
  `field_length` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `field_values` text NOT NULL,
  `field_regexp` text NOT NULL,
  `manditory` tinyint(1) NOT NULL DEFAULT 0,
  `default_auth` tinyint(1) NOT NULL DEFAULT 1,
  `display_register` tinyint(1) NOT NULL DEFAULT 1,
  `display_viewprofile` tinyint(1) NOT NULL DEFAULT 0,
  `display_posting` tinyint(1) NOT NULL DEFAULT 0,
  `handle_input` tinyint(1) NOT NULL DEFAULT 0,
  `allow_html` tinyint(1) NOT NULL DEFAULT 0,
  `allow_bbcode` tinyint(1) NOT NULL DEFAULT 0,
  `allow_smilies` tinyint(1) NOT NULL DEFAULT 0,
  `viewtopic` tinyint(1) NOT NULL DEFAULT 0,
  `signup` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_blocks`
--

CREATE TABLE `nuke_blocks` (
  `bid` int(10) NOT NULL,
  `bkey` varchar(15) NOT NULL DEFAULT '',
  `title` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '',
  `bposition` char(1) NOT NULL DEFAULT '',
  `weight` int(11) NOT NULL DEFAULT 1,
  `active` int(11) NOT NULL DEFAULT 1,
  `refresh` int(11) NOT NULL DEFAULT 0,
  `time` varchar(14) NOT NULL DEFAULT '0',
  `blanguage` varchar(30) NOT NULL DEFAULT '',
  `blockfile` varchar(255) NOT NULL DEFAULT '',
  `view` varchar(50) NOT NULL DEFAULT '0',
  `expire` varchar(14) NOT NULL DEFAULT '0',
  `action` char(1) NOT NULL DEFAULT '',
  `subscription` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_blogs`
--

CREATE TABLE `nuke_blogs` (
  `sid` int(11) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT 0,
  `aid` varchar(25) NOT NULL DEFAULT '',
  `title` varchar(80) DEFAULT NULL,
  `datePublished` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `dateModified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `hometext` text DEFAULT NULL,
  `bodytext` text NOT NULL,
  `comments` int(11) DEFAULT 0,
  `counter` mediumint(8) UNSIGNED DEFAULT NULL,
  `topic` int(11) NOT NULL DEFAULT 1,
  `informant` varchar(25) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  `ihome` int(11) NOT NULL DEFAULT 0,
  `alanguage` varchar(30) NOT NULL DEFAULT '',
  `acomm` int(11) NOT NULL DEFAULT 0,
  `haspoll` int(11) NOT NULL DEFAULT 0,
  `pollID` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `ratings` int(11) NOT NULL DEFAULT 0,
  `associated` text NOT NULL,
  `ticon` tinyint(1) NOT NULL DEFAULT 0,
  `writes` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_blogs_autoblog`
--

CREATE TABLE `nuke_blogs_autoblog` (
  `anid` int(10) UNSIGNED NOT NULL,
  `catid` int(11) NOT NULL DEFAULT 0,
  `aid` varchar(30) NOT NULL,
  `title` varchar(80) NOT NULL,
  `datePublished` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateModified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `hometext` text NOT NULL,
  `bodytext` text NOT NULL,
  `topic` int(11) NOT NULL DEFAULT 1,
  `informant` varchar(40) NOT NULL,
  `notes` text NOT NULL,
  `ihome` tinyint(4) NOT NULL DEFAULT 0,
  `alanguage` varchar(30) NOT NULL,
  `acomm` tinyint(4) NOT NULL DEFAULT 0,
  `associated` text NOT NULL,
  `ticon` tinyint(1) NOT NULL DEFAULT 0,
  `writes` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_blogs_cat`
--

CREATE TABLE `nuke_blogs_cat` (
  `catid` int(11) NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `counter` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_blogs_comments`
--

CREATE TABLE `nuke_blogs_comments` (
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0,
  `datePublished` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `dateModified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) DEFAULT NULL,
  `url` varchar(60) DEFAULT NULL,
  `host_name` varchar(60) DEFAULT NULL,
  `subject` varchar(85) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `score` tinyint(4) NOT NULL DEFAULT 0,
  `reason` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_blogs_config`
--

CREATE TABLE `nuke_blogs_config` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_blogs_queue`
--

CREATE TABLE `nuke_blogs_queue` (
  `qid` smallint(5) UNSIGNED NOT NULL,
  `uid` mediumint(9) NOT NULL DEFAULT 0,
  `uname` varchar(40) NOT NULL DEFAULT '',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `story` text DEFAULT NULL,
  `storyext` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT '2018-12-12 00:00:00',
  `topic` varchar(20) NOT NULL DEFAULT '',
  `alanguage` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_blogs_topics`
--

CREATE TABLE `nuke_blogs_topics` (
  `topicid` int(3) NOT NULL,
  `topicname` varchar(120) DEFAULT NULL,
  `topicimage` varchar(100) DEFAULT NULL,
  `topictext` varchar(40) DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bookmarks`
--

CREATE TABLE `nuke_bookmarks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(256) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(256) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `mod_date` date NOT NULL DEFAULT '0000-00-00',
  `popup` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bookmarks_cat`
--

CREATE TABLE `nuke_bookmarks_cat` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL,
  `mod_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_cemetery`
--

CREATE TABLE `nuke_cemetery` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(256) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(256) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `mod_date` date NOT NULL DEFAULT '0000-00-00',
  `popup` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_cemetery_cat`
--

CREATE TABLE `nuke_cemetery_cat` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL,
  `mod_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_cities`
--

CREATE TABLE `nuke_cities` (
  `id` mediumint(4) NOT NULL DEFAULT 0,
  `local_id` mediumint(3) NOT NULL DEFAULT 0,
  `city` varchar(65) NOT NULL DEFAULT '',
  `cc` char(2) NOT NULL DEFAULT '',
  `country` varchar(35) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_cnbya_config`
--

CREATE TABLE `nuke_cnbya_config` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_cnbya_field`
--

CREATE TABLE `nuke_cnbya_field` (
  `fid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'field',
  `value` varchar(255) DEFAULT NULL,
  `size` int(3) DEFAULT NULL,
  `need` int(1) NOT NULL DEFAULT 1,
  `pos` int(3) DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_cnbya_value`
--

CREATE TABLE `nuke_cnbya_value` (
  `vid` int(10) NOT NULL,
  `uid` int(10) NOT NULL DEFAULT 0,
  `fid` int(10) NOT NULL DEFAULT 0,
  `value` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_cnbya_value_temp`
--

CREATE TABLE `nuke_cnbya_value_temp` (
  `vid` int(10) NOT NULL,
  `uid` int(10) NOT NULL DEFAULT 0,
  `fid` int(10) NOT NULL DEFAULT 0,
  `value` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_comments`
--

CREATE TABLE `nuke_comments` (
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0,
  `date` datetime DEFAULT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) DEFAULT NULL,
  `url` varchar(60) DEFAULT NULL,
  `host_name` varchar(60) DEFAULT NULL,
  `subject` varchar(85) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `score` tinyint(4) NOT NULL DEFAULT 0,
  `reason` tinyint(4) NOT NULL DEFAULT 0,
  `last_moderation_ip` varchar(15) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_comments_moderated`
--

CREATE TABLE `nuke_comments_moderated` (
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0,
  `date` datetime DEFAULT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) DEFAULT NULL,
  `url` varchar(60) DEFAULT NULL,
  `host_name` varchar(60) DEFAULT NULL,
  `subject` varchar(85) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `score` tinyint(4) NOT NULL DEFAULT 0,
  `reason` tinyint(4) NOT NULL DEFAULT 0,
  `last_moderation_ip` varchar(15) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_config`
--

CREATE TABLE `nuke_config` (
  `sitename` varchar(255) NOT NULL DEFAULT '',
  `nukeurl` varchar(255) NOT NULL DEFAULT '',
  `site_logo` varchar(255) NOT NULL DEFAULT '',
  `slogan` varchar(255) NOT NULL DEFAULT '',
  `startdate` varchar(50) NOT NULL DEFAULT '',
  `datePublished` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateModified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `adminmail` varchar(255) NOT NULL DEFAULT '',
  `anonpost` tinyint(1) NOT NULL DEFAULT 0,
  `default_Theme` varchar(255) NOT NULL DEFAULT 'BlackJack',
  `foot1` text DEFAULT NULL,
  `foot2` text DEFAULT NULL,
  `foot3` text DEFAULT NULL,
  `commentlimit` int(9) NOT NULL DEFAULT 4096,
  `anonymous` varchar(255) NOT NULL DEFAULT '',
  `minpass` tinyint(1) NOT NULL DEFAULT 5,
  `pollcomm` tinyint(1) NOT NULL DEFAULT 1,
  `articlecomm` tinyint(1) NOT NULL DEFAULT 1,
  `broadcast_msg` tinyint(1) NOT NULL DEFAULT 1,
  `my_headlines` tinyint(1) NOT NULL DEFAULT 1,
  `top` int(3) NOT NULL DEFAULT 10,
  `storyhome` int(2) NOT NULL DEFAULT 10,
  `user_news` tinyint(1) NOT NULL DEFAULT 1,
  `oldnum` int(2) NOT NULL DEFAULT 30,
  `ultramode` tinyint(1) NOT NULL DEFAULT 0,
  `banners` tinyint(1) NOT NULL DEFAULT 1,
  `backend_title` varchar(255) NOT NULL DEFAULT '',
  `backend_language` varchar(10) NOT NULL DEFAULT '',
  `language` varchar(100) NOT NULL DEFAULT '',
  `locale` varchar(10) NOT NULL DEFAULT '',
  `multilingual` tinyint(1) NOT NULL DEFAULT 0,
  `useflags` tinyint(1) NOT NULL DEFAULT 0,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `notify_email` varchar(255) NOT NULL DEFAULT '',
  `notify_subject` varchar(255) NOT NULL DEFAULT '',
  `notify_message` varchar(255) NOT NULL DEFAULT '',
  `notify_from` varchar(255) NOT NULL DEFAULT '',
  `moderate` tinyint(1) NOT NULL DEFAULT 0,
  `admingraphic` tinyint(1) NOT NULL DEFAULT 1,
  `httpref` tinyint(1) NOT NULL DEFAULT 1,
  `httprefmax` int(5) NOT NULL DEFAULT 1000,
  `CensorMode` tinyint(1) NOT NULL DEFAULT 3,
  `CensorReplace` varchar(10) NOT NULL DEFAULT '',
  `copyright` text DEFAULT NULL,
  `Version_Num` varchar(10) NOT NULL DEFAULT '',
  `admin_pos` tinyint(1) NOT NULL DEFAULT 1,
  `admin_log_lines` int(11) NOT NULL DEFAULT 0,
  `error_log_lines` int(11) NOT NULL DEFAULT 0,
  `cache_data` mediumblob DEFAULT NULL,
  `gfx_chk` tinyint(1) NOT NULL DEFAULT 0,
  `nuke_editor` tinyint(1) NOT NULL DEFAULT 1,
  `display_errors` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_confirm`
--

CREATE TABLE `nuke_confirm` (
  `confirm_id` char(32) NOT NULL DEFAULT '',
  `session_id` char(32) NOT NULL DEFAULT '',
  `code` char(6) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_counter`
--

CREATE TABLE `nuke_counter` (
  `type` varchar(80) NOT NULL DEFAULT '',
  `var` varchar(80) NOT NULL DEFAULT '',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_donators`
--

CREATE TABLE `nuke_donators` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT 0,
  `uname` varchar(60) NOT NULL DEFAULT '',
  `fname` varchar(25) NOT NULL DEFAULT '',
  `lname` varchar(25) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `donated` decimal(8,2) NOT NULL DEFAULT 0.00,
  `dondate` varchar(255) NOT NULL DEFAULT '',
  `donshow` tinyint(1) NOT NULL DEFAULT 0,
  `uip` varchar(255) NOT NULL DEFAULT '',
  `donok` tinyint(1) NOT NULL DEFAULT 0,
  `msg` text DEFAULT NULL,
  `donto` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_donators_config`
--

CREATE TABLE `nuke_donators_config` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_downloads_categories`
--

CREATE TABLE `nuke_downloads_categories` (
  `cid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `cdescription` text NOT NULL,
  `parentid` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_downloads_downloads`
--

CREATE TABLE `nuke_downloads_downloads` (
  `lid` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `hits` int(11) NOT NULL DEFAULT 0,
  `submitter` varchar(60) NOT NULL DEFAULT '',
  `downloadratingsummary` double(6,4) NOT NULL DEFAULT 0.0000,
  `totalvotes` int(11) NOT NULL DEFAULT 0,
  `totalcomments` int(11) NOT NULL DEFAULT 0,
  `filesize` int(11) NOT NULL DEFAULT 0,
  `version` varchar(10) NOT NULL DEFAULT '',
  `homepage` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_downloads_editorials`
--

CREATE TABLE `nuke_downloads_editorials` (
  `downloadid` int(11) NOT NULL DEFAULT 0,
  `adminid` varchar(60) NOT NULL DEFAULT '',
  `editorialtimestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editorialtext` text NOT NULL,
  `editorialtitle` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_downloads_modrequest`
--

CREATE TABLE `nuke_downloads_modrequest` (
  `requestid` int(11) NOT NULL,
  `lid` int(11) NOT NULL DEFAULT 0,
  `cid` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `modifysubmitter` varchar(60) NOT NULL DEFAULT '',
  `brokendownload` int(3) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT 0,
  `version` varchar(10) NOT NULL DEFAULT '',
  `homepage` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_downloads_newdownload`
--

CREATE TABLE `nuke_downloads_newdownload` (
  `lid` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `submitter` varchar(60) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT 0,
  `version` varchar(10) NOT NULL DEFAULT '',
  `homepage` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_downloads_votedata`
--

CREATE TABLE `nuke_downloads_votedata` (
  `ratingdbid` int(11) NOT NULL,
  `ratinglid` int(11) NOT NULL DEFAULT 0,
  `ratinguser` varchar(60) NOT NULL DEFAULT '',
  `rating` int(11) NOT NULL DEFAULT 0,
  `ratinghostname` varchar(60) NOT NULL DEFAULT '',
  `ratingcomments` text NOT NULL,
  `ratingtimestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_ecalendar`
--

CREATE TABLE `nuke_ecalendar` (
  `eid` int(11) NOT NULL,
  `month` varchar(11) DEFAULT NULL,
  `day` varchar(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `reoccur` int(11) NOT NULL DEFAULT 0,
  `time` varchar(5) DEFAULT NULL,
  `ampm` tinyint(1) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_encyclopedia`
--

CREATE TABLE `nuke_encyclopedia` (
  `eid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `elanguage` varchar(30) NOT NULL DEFAULT '',
  `active` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_encyclopedia_text`
--

CREATE TABLE `nuke_encyclopedia_text` (
  `tid` int(10) NOT NULL,
  `eid` int(10) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `counter` int(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_evolution`
--

CREATE TABLE `nuke_evolution` (
  `evo_field` varchar(50) NOT NULL DEFAULT '',
  `evo_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_evo_userinfo`
--

CREATE TABLE `nuke_evo_userinfo` (
  `name` varchar(25) NOT NULL,
  `filename` varchar(25) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `position` int(10) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_evo_userinfo_addons`
--

CREATE TABLE `nuke_evo_userinfo_addons` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_faqanswer`
--

CREATE TABLE `nuke_faqanswer` (
  `id` int(25) NOT NULL,
  `id_cat` int(25) NOT NULL DEFAULT 0,
  `question` varchar(255) DEFAULT '',
  `answer` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_faqcategories`
--

CREATE TABLE `nuke_faqcategories` (
  `id_cat` tinyint(3) NOT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `flanguage` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_file_repository_categories`
--

CREATE TABLE `nuke_file_repository_categories` (
  `cid` int(11) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `parentid` int(11) NOT NULL DEFAULT 0,
  `permissions` int(11) NOT NULL DEFAULT 0,
  `isallowed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_file_repository_comments`
--

CREATE TABLE `nuke_file_repository_comments` (
  `cid` int(11) NOT NULL,
  `did` int(11) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '2018-12-12 00:00:00',
  `rating` int(11) NOT NULL DEFAULT 0,
  `uid` int(11) NOT NULL DEFAULT 0,
  `user` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_file_repository_files`
--

CREATE TABLE `nuke_file_repository_files` (
  `fid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `ftitle` varchar(50) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `filesize` int(20) NOT NULL,
  `last_downloaded` datetime NOT NULL DEFAULT '2018-12-12 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_file_repository_items`
--

CREATE TABLE `nuke_file_repository_items` (
  `cid` int(11) NOT NULL DEFAULT 0,
  `author` varchar(100) NOT NULL DEFAULT '',
  `author_email` varchar(100) NOT NULL DEFAULT '',
  `author_website` varchar(100) NOT NULL DEFAULT '',
  `color` varchar(7) NOT NULL DEFAULT '',
  `currency` varchar(7) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '2018-12-12 00:00:00',
  `description` text DEFAULT NULL,
  `did` int(11) NOT NULL,
  `fixes` longtext DEFAULT NULL,
  `groups` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) NOT NULL DEFAULT 0,
  `isactive` int(11) NOT NULL DEFAULT 0,
  `isapproved` int(11) NOT NULL DEFAULT 0,
  `isbroken` tinyint(1) NOT NULL DEFAULT 0,
  `isfeatured` int(11) NOT NULL DEFAULT 0,
  `isnew` int(11) NOT NULL DEFAULT 0,
  `isupdated` datetime NOT NULL DEFAULT '2018-12-12 00:00:00',
  `lastdownloaded` datetime NOT NULL DEFAULT '2018-12-12 00:00:00',
  `paypal` varchar(255) NOT NULL DEFAULT '',
  `points` int(11) NOT NULL DEFAULT 0,
  `posts` int(11) NOT NULL DEFAULT 0,
  `preview` varchar(255) NOT NULL DEFAULT '',
  `price` int(11) NOT NULL DEFAULT 0,
  `semail` varchar(100) NOT NULL DEFAULT '',
  `sname` varchar(100) NOT NULL DEFAULT '',
  `suid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '',
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_file_repository_screenshots`
--

CREATE TABLE `nuke_file_repository_screenshots` (
  `pid` int(11) NOT NULL,
  `did` int(11) NOT NULL DEFAULT 0,
  `filename` varchar(255) NOT NULL,
  `size` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `submitter` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_file_repository_settings`
--

CREATE TABLE `nuke_file_repository_settings` (
  `config_name` varchar(255) NOT NULL,
  `config_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_file_repository_themes`
--

CREATE TABLE `nuke_file_repository_themes` (
  `theme_name` varchar(255) NOT NULL,
  `cell` int(11) NOT NULL,
  `head` int(11) NOT NULL,
  `per_row` int(11) NOT NULL,
  `show_left` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_groups`
--

CREATE TABLE `nuke_groups` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `points` int(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_groups_points`
--

CREATE TABLE `nuke_groups_points` (
  `id` int(10) NOT NULL,
  `points` int(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_headlines`
--

CREATE TABLE `nuke_headlines` (
  `hid` int(11) NOT NULL,
  `sitename` varchar(30) NOT NULL DEFAULT '',
  `headlinesurl` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_hnl_categories`
--

CREATE TABLE `nuke_hnl_categories` (
  `cid` int(11) NOT NULL,
  `ctitle` varchar(50) NOT NULL DEFAULT '',
  `cdescription` text NOT NULL,
  `cblocklimit` int(4) NOT NULL DEFAULT 10
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_hnl_cfg`
--

CREATE TABLE `nuke_hnl_cfg` (
  `cfg_nm` varchar(255) NOT NULL DEFAULT '',
  `cfg_val` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_hnl_newsletters`
--

CREATE TABLE `nuke_hnl_newsletters` (
  `nid` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 1,
  `topic` varchar(100) NOT NULL DEFAULT '',
  `sender` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(32) NOT NULL DEFAULT '',
  `datesent` date DEFAULT NULL,
  `view` int(1) NOT NULL DEFAULT 0,
  `groups` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_honeypot`
--

CREATE TABLE `nuke_honeypot` (
  `id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `realname` varchar(75) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip` varchar(60) NOT NULL DEFAULT '',
  `date` varchar(50) NOT NULL DEFAULT '',
  `potnum` varchar(1) NOT NULL DEFAULT '',
  `reason` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_honeypot_config`
--

CREATE TABLE `nuke_honeypot_config` (
  `usehp` tinyint(1) NOT NULL,
  `botlisting` tinyint(1) NOT NULL,
  `perpage` varchar(3) NOT NULL,
  `pagenumberpos` tinyint(1) NOT NULL,
  `headcolor` varchar(7) NOT NULL,
  `rowcolor1` varchar(7) NOT NULL,
  `rowcolor2` varchar(7) NOT NULL,
  `pagebgcolor` varchar(7) NOT NULL,
  `pagebordercolor` varchar(7) NOT NULL,
  `fontcolor` varchar(7) NOT NULL,
  `fontcolor2` varchar(7) NOT NULL,
  `check1` tinyint(1) NOT NULL,
  `check2` tinyint(1) NOT NULL,
  `check3` tinyint(1) NOT NULL,
  `check4` tinyint(1) NOT NULL,
  `check5` tinyint(1) NOT NULL,
  `check6` tinyint(1) NOT NULL,
  `c7opt1` tinyint(1) NOT NULL,
  `c7opt2` tinyint(1) NOT NULL,
  `c7amount` varchar(2) NOT NULL,
  `c8opt1` tinyint(1) NOT NULL,
  `c8opt2` tinyint(1) NOT NULL,
  `usebsapi` tinyint(1) NOT NULL,
  `c8apikey` varchar(255) NOT NULL,
  `fs9opt1` tinyint(1) NOT NULL,
  `fs9opt2` tinyint(1) NOT NULL,
  `fs9apikey` varchar(255) NOT NULL,
  `check3time` varchar(2) NOT NULL,
  `check4question` varchar(255) NOT NULL,
  `check4answer` varchar(255) NOT NULL,
  `usefeedback` tinyint(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `version` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_image_repository_settings`
--

CREATE TABLE `nuke_image_repository_settings` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_image_repository_uploads`
--

CREATE TABLE `nuke_image_repository_uploads` (
  `pid` int(20) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `submitter` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `size` int(11) NOT NULL DEFAULT 0,
  `screensize` varchar(255) DEFAULT NULL,
  `uploaded` int(11) NOT NULL DEFAULT 0,
  `bypass_thumb` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_image_repository_users`
--

CREATE TABLE `nuke_image_repository_users` (
  `uid` int(11) NOT NULL,
  `background_color` varchar(20) DEFAULT NULL,
  `border_color` varchar(20) DEFAULT NULL,
  `border_thickness` varchar(3) DEFAULT NULL,
  `folder` int(11) NOT NULL DEFAULT 0,
  `percent_color` varchar(20) DEFAULT NULL,
  `quota` varchar(255) DEFAULT NULL,
  `quota_request` tinyint(2) NOT NULL DEFAULT 0,
  `custom_color` varchar(7) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_jmap`
--

CREATE TABLE `nuke_jmap` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_journal`
--

CREATE TABLE `nuke_journal` (
  `jid` int(11) NOT NULL,
  `aid` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(80) DEFAULT NULL,
  `bodytext` text NOT NULL,
  `mood` varchar(48) NOT NULL DEFAULT '',
  `pdate` varchar(48) NOT NULL DEFAULT '',
  `ptime` varchar(48) NOT NULL DEFAULT '',
  `status` varchar(48) NOT NULL DEFAULT '',
  `mtime` varchar(48) NOT NULL DEFAULT '',
  `mdate` varchar(48) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_journal_comments`
--

CREATE TABLE `nuke_journal_comments` (
  `cid` int(11) NOT NULL,
  `rid` varchar(48) NOT NULL DEFAULT '',
  `aid` varchar(30) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `pdate` varchar(48) NOT NULL DEFAULT '',
  `ptime` varchar(48) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_journal_stats`
--

CREATE TABLE `nuke_journal_stats` (
  `id` int(11) NOT NULL,
  `joid` varchar(48) NOT NULL DEFAULT '',
  `nop` varchar(48) NOT NULL DEFAULT '',
  `ldp` varchar(24) NOT NULL DEFAULT '',
  `ltp` varchar(24) NOT NULL DEFAULT '',
  `micro` varchar(128) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_links_categories`
--

CREATE TABLE `nuke_links_categories` (
  `cid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `cdescription` text NOT NULL,
  `parentid` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_links_editorials`
--

CREATE TABLE `nuke_links_editorials` (
  `linkid` int(11) NOT NULL DEFAULT 0,
  `adminid` varchar(60) NOT NULL DEFAULT '',
  `editorialtimestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editorialtext` text NOT NULL,
  `editorialtitle` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_links_links`
--

CREATE TABLE `nuke_links_links` (
  `lid` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `hits` int(11) NOT NULL DEFAULT 0,
  `submitter` varchar(60) NOT NULL DEFAULT '',
  `linkratingsummary` double(6,4) NOT NULL DEFAULT 0.0000,
  `totalvotes` int(11) NOT NULL DEFAULT 0,
  `totalcomments` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_links_modrequest`
--

CREATE TABLE `nuke_links_modrequest` (
  `requestid` int(11) NOT NULL,
  `lid` int(11) NOT NULL DEFAULT 0,
  `cid` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `modifysubmitter` varchar(60) NOT NULL DEFAULT '',
  `brokenlink` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_links_newlink`
--

CREATE TABLE `nuke_links_newlink` (
  `lid` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `submitter` varchar(60) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_links_votedata`
--

CREATE TABLE `nuke_links_votedata` (
  `ratingdbid` int(11) NOT NULL,
  `ratinglid` int(11) NOT NULL DEFAULT 0,
  `ratinguser` varchar(60) NOT NULL DEFAULT '',
  `rating` int(11) NOT NULL DEFAULT 0,
  `ratinghostname` varchar(60) NOT NULL DEFAULT '',
  `ratingcomments` text NOT NULL,
  `ratingtimestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_link_us`
--

CREATE TABLE `nuke_link_us` (
  `id` int(255) NOT NULL,
  `site_name` varchar(60) NOT NULL DEFAULT '',
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `site_image` varchar(255) NOT NULL DEFAULT '',
  `site_description` text NOT NULL,
  `site_hits` int(10) NOT NULL DEFAULT 0,
  `site_status` int(1) NOT NULL DEFAULT 0,
  `date_added` varchar(255) NOT NULL DEFAULT '',
  `button_type` smallint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(60) NOT NULL DEFAULT '',
  `user_ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_link_us_config`
--

CREATE TABLE `nuke_link_us_config` (
  `my_image` varchar(255) NOT NULL DEFAULT '',
  `fade_effect` smallint(1) NOT NULL DEFAULT 0,
  `marquee` smallint(1) NOT NULL DEFAULT 0,
  `marquee_direction` smallint(1) NOT NULL DEFAULT 0,
  `marquee_scroll` smallint(1) NOT NULL DEFAULT 0,
  `block_height` smallint(1) NOT NULL DEFAULT 0,
  `show_clicks` smallint(1) NOT NULL DEFAULT 0,
  `button_seperate` smallint(1) NOT NULL DEFAULT 0,
  `user_submit` smallint(1) NOT NULL DEFAULT 0,
  `button_method` smallint(1) NOT NULL DEFAULT 0,
  `button_height` tinyint(4) NOT NULL DEFAULT 0,
  `button_banner_height` tinyint(4) NOT NULL DEFAULT 0,
  `button_ressource_height` tinyint(4) NOT NULL DEFAULT 0,
  `button_width` tinyint(4) NOT NULL DEFAULT 0,
  `button_banner_width` tinyint(4) NOT NULL DEFAULT 0,
  `button_ressource_width` tinyint(4) NOT NULL DEFAULT 0,
  `upload_file` varchar(255) NOT NULL DEFAULT '',
  `button_standard` smallint(1) NOT NULL DEFAULT 0,
  `button_banner` smallint(1) NOT NULL DEFAULT 0,
  `button_resource` smallint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_main`
--

CREATE TABLE `nuke_main` (
  `main_module` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_menu`
--

CREATE TABLE `nuke_menu` (
  `groupmenu` int(2) NOT NULL DEFAULT 0,
  `name` varchar(200) DEFAULT NULL,
  `image` varchar(99) DEFAULT NULL,
  `lien` text DEFAULT NULL,
  `hr` char(2) DEFAULT NULL,
  `bgcolor` tinytext DEFAULT NULL,
  `invisible` int(1) NOT NULL DEFAULT 0,
  `class` varchar(25) DEFAULT 'categories',
  `bold` char(2) DEFAULT NULL,
  `new` char(2) DEFAULT NULL,
  `days` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_menu_categories`
--

CREATE TABLE `nuke_menu_categories` (
  `id` int(11) NOT NULL,
  `sublevel` tinyint(3) NOT NULL DEFAULT 0,
  `groupmenu` int(2) NOT NULL DEFAULT 0,
  `module` varchar(50) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `url_text` text NOT NULL,
  `image` varchar(50) NOT NULL DEFAULT '',
  `new` char(2) DEFAULT '3',
  `new_days` tinyint(4) NOT NULL DEFAULT -1,
  `class` varchar(20) DEFAULT 'modules',
  `bold` char(2) DEFAULT NULL,
  `days` varchar(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_message`
--

CREATE TABLE `nuke_message` (
  `mid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `date` varchar(14) NOT NULL DEFAULT '',
  `expire` int(7) NOT NULL DEFAULT 0,
  `active` int(1) NOT NULL DEFAULT 1,
  `view` int(1) NOT NULL DEFAULT 1,
  `groups` text NOT NULL,
  `mlanguage` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_meta`
--

CREATE TABLE `nuke_meta` (
  `meta_name` varchar(50) NOT NULL DEFAULT '',
  `meta_content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_modules`
--

CREATE TABLE `nuke_modules` (
  `mid` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `custom_title` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `view` tinyint(4) NOT NULL DEFAULT 0,
  `inmenu` tinyint(4) NOT NULL DEFAULT 1,
  `mod_group` int(10) DEFAULT 0,
  `pos` tinyint(4) NOT NULL DEFAULT 0,
  `cat_id` tinyint(4) NOT NULL DEFAULT 0,
  `blocks` tinyint(4) NOT NULL DEFAULT 1,
  `admins` varchar(255) NOT NULL DEFAULT '',
  `groups` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_modules_cat`
--

CREATE TABLE `nuke_modules_cat` (
  `cid` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` text NOT NULL,
  `pos` tinyint(4) NOT NULL DEFAULT 0,
  `link_type` tinyint(4) NOT NULL DEFAULT 0,
  `link` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_modules_links`
--

CREATE TABLE `nuke_modules_links` (
  `lid` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) NOT NULL,
  `link_type` tinyint(4) NOT NULL DEFAULT 0,
  `link` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `view` tinyint(4) NOT NULL DEFAULT 0,
  `pos` tinyint(4) NOT NULL DEFAULT 0,
  `cat_id` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_mostonline`
--

CREATE TABLE `nuke_mostonline` (
  `total` int(10) NOT NULL DEFAULT 0,
  `members` int(10) NOT NULL DEFAULT 0,
  `nonmembers` int(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsncb_blocks`
--

CREATE TABLE `nuke_nsncb_blocks` (
  `rid` tinyint(2) NOT NULL DEFAULT 0,
  `cgid` tinyint(2) NOT NULL DEFAULT 0,
  `cbid` tinyint(2) NOT NULL DEFAULT 0,
  `title` varchar(60) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `wtype` tinyint(1) NOT NULL DEFAULT 0,
  `width` smallint(6) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsncb_config`
--

CREATE TABLE `nuke_nsncb_config` (
  `cgid` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `height` smallint(6) NOT NULL,
  `count` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnsp_config`
--

CREATE TABLE `nuke_nsnsp_config` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnsp_sites`
--

CREATE TABLE `nuke_nsnsp_sites` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(60) NOT NULL DEFAULT '',
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `site_image` varchar(255) NOT NULL DEFAULT '',
  `site_status` int(1) NOT NULL DEFAULT 0,
  `site_hits` int(10) NOT NULL DEFAULT 0,
  `site_date` date NOT NULL DEFAULT '2018-12-12',
  `site_description` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(60) NOT NULL DEFAULT '',
  `user_ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_admins`
--

CREATE TABLE `nuke_nsnst_admins` (
  `aid` varchar(25) NOT NULL DEFAULT '',
  `login` varchar(25) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT '',
  `password_md5` varchar(60) NOT NULL DEFAULT '',
  `password_crypt` varchar(60) NOT NULL DEFAULT '',
  `protected` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_blocked_ips`
--

CREATE TABLE `nuke_nsnst_blocked_ips` (
  `ip_addr` varchar(15) NOT NULL DEFAULT '',
  `ip_long` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 1,
  `username` varchar(60) NOT NULL DEFAULT 'Anonymous',
  `user_agent` text NOT NULL,
  `date` int(20) NOT NULL DEFAULT 0,
  `notes` text NOT NULL,
  `reason` tinyint(1) NOT NULL DEFAULT 0,
  `query_string` text NOT NULL,
  `get_string` text NOT NULL,
  `post_string` text NOT NULL,
  `x_forward_for` varchar(32) NOT NULL DEFAULT 'None',
  `client_ip` varchar(32) NOT NULL DEFAULT 'None',
  `remote_addr` varchar(32) NOT NULL DEFAULT '',
  `remote_port` varchar(11) NOT NULL DEFAULT 'Unknown',
  `request_method` varchar(10) NOT NULL DEFAULT '',
  `expires` int(20) NOT NULL DEFAULT 0,
  `c2c` char(2) NOT NULL DEFAULT '00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_blocked_ranges`
--

CREATE TABLE `nuke_nsnst_blocked_ranges` (
  `ip_lo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip_hi` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(20) NOT NULL DEFAULT 0,
  `notes` text NOT NULL,
  `reason` tinyint(1) NOT NULL DEFAULT 0,
  `expires` int(20) NOT NULL DEFAULT 0,
  `c2c` char(2) NOT NULL DEFAULT '00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_blockers`
--

CREATE TABLE `nuke_nsnst_blockers` (
  `blocker` int(4) NOT NULL DEFAULT 0,
  `block_name` varchar(20) NOT NULL DEFAULT '',
  `activate` int(4) NOT NULL DEFAULT 0,
  `block_type` int(4) NOT NULL DEFAULT 0,
  `email_lookup` int(4) NOT NULL DEFAULT 0,
  `forward` varchar(255) NOT NULL DEFAULT '',
  `reason` varchar(20) NOT NULL DEFAULT '',
  `template` varchar(255) NOT NULL DEFAULT '',
  `duration` int(20) NOT NULL DEFAULT 0,
  `htaccess` int(4) NOT NULL DEFAULT 0,
  `list` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_cidrs`
--

CREATE TABLE `nuke_nsnst_cidrs` (
  `cidr` int(2) NOT NULL DEFAULT 0,
  `hosts` int(10) NOT NULL DEFAULT 0,
  `mask` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_config`
--

CREATE TABLE `nuke_nsnst_config` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_countries`
--

CREATE TABLE `nuke_nsnst_countries` (
  `c2c` char(2) NOT NULL DEFAULT '',
  `country` varchar(60) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_excluded_ranges`
--

CREATE TABLE `nuke_nsnst_excluded_ranges` (
  `ip_lo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip_hi` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(20) NOT NULL DEFAULT 0,
  `notes` text NOT NULL,
  `c2c` char(2) NOT NULL DEFAULT '00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_harvesters`
--

CREATE TABLE `nuke_nsnst_harvesters` (
  `hid` int(2) NOT NULL,
  `harvester` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_ip2country`
--

CREATE TABLE `nuke_nsnst_ip2country` (
  `ip_lo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip_hi` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(20) NOT NULL DEFAULT 0,
  `c2c` char(2) DEFAULT NULL,
  `country` char(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_protected_ranges`
--

CREATE TABLE `nuke_nsnst_protected_ranges` (
  `ip_lo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip_hi` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(20) NOT NULL DEFAULT 0,
  `notes` text NOT NULL,
  `c2c` char(2) NOT NULL DEFAULT '00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_referers`
--

CREATE TABLE `nuke_nsnst_referers` (
  `rid` int(2) NOT NULL,
  `referer` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_strings`
--

CREATE TABLE `nuke_nsnst_strings` (
  `string` varchar(60) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_tracked_ips`
--

CREATE TABLE `nuke_nsnst_tracked_ips` (
  `tid` int(11) NOT NULL,
  `ip_addr` varchar(15) NOT NULL DEFAULT '',
  `ip_long` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 1,
  `username` varchar(60) NOT NULL DEFAULT '',
  `user_agent` text NOT NULL,
  `refered_from` text NOT NULL,
  `date` int(11) NOT NULL DEFAULT 0,
  `page` text NOT NULL,
  `x_forward_for` varchar(32) NOT NULL DEFAULT '',
  `client_ip` varchar(32) NOT NULL DEFAULT '',
  `remote_addr` varchar(32) NOT NULL DEFAULT '',
  `remote_port` varchar(11) NOT NULL DEFAULT '',
  `request_method` varchar(10) NOT NULL DEFAULT '',
  `c2c` char(2) NOT NULL DEFAULT '00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_pages`
--

CREATE TABLE `nuke_pages` (
  `pid` int(10) NOT NULL,
  `cid` int(10) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `active` int(1) NOT NULL DEFAULT 0,
  `page_header` text NOT NULL,
  `text` text NOT NULL,
  `page_footer` text NOT NULL,
  `signature` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `counter` int(10) NOT NULL DEFAULT 0,
  `clanguage` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_pages_categories`
--

CREATE TABLE `nuke_pages_categories` (
  `cid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_pollcomments`
--

CREATE TABLE `nuke_pollcomments` (
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `pollID` int(11) NOT NULL DEFAULT 0,
  `date` datetime DEFAULT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) DEFAULT NULL,
  `url` varchar(60) DEFAULT NULL,
  `host_name` varchar(60) DEFAULT NULL,
  `subject` varchar(60) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `score` tinyint(4) NOT NULL DEFAULT 0,
  `reason` tinyint(4) NOT NULL DEFAULT 0,
  `last_moderation_ip` varchar(15) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_pollcomments_moderated`
--

CREATE TABLE `nuke_pollcomments_moderated` (
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `pollID` int(11) NOT NULL DEFAULT 0,
  `date` datetime DEFAULT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) DEFAULT NULL,
  `url` varchar(60) DEFAULT NULL,
  `host_name` varchar(60) DEFAULT NULL,
  `subject` varchar(60) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `score` tinyint(4) NOT NULL DEFAULT 0,
  `reason` tinyint(4) NOT NULL DEFAULT 0,
  `last_moderation_ip` varchar(15) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_poll_check`
--

CREATE TABLE `nuke_poll_check` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `pollID` int(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_poll_data`
--

CREATE TABLE `nuke_poll_data` (
  `pollID` int(11) NOT NULL DEFAULT 0,
  `optionText` char(50) NOT NULL DEFAULT '',
  `optionCount` int(11) NOT NULL DEFAULT 0,
  `voteID` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_poll_desc`
--

CREATE TABLE `nuke_poll_desc` (
  `pollID` int(11) NOT NULL,
  `pollTitle` varchar(100) NOT NULL DEFAULT '',
  `timeStamp` int(11) NOT NULL DEFAULT 0,
  `voters` mediumint(9) NOT NULL DEFAULT 0,
  `planguage` varchar(30) NOT NULL DEFAULT '',
  `artid` int(10) NOT NULL DEFAULT 0,
  `comments` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_public_messages`
--

CREATE TABLE `nuke_public_messages` (
  `mid` int(10) NOT NULL,
  `content` varchar(255) NOT NULL DEFAULT '',
  `date` varchar(14) DEFAULT NULL,
  `who` varchar(25) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_queue`
--

CREATE TABLE `nuke_queue` (
  `qid` smallint(5) UNSIGNED NOT NULL,
  `uid` mediumint(9) NOT NULL DEFAULT 0,
  `uname` varchar(40) NOT NULL DEFAULT '',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `story` text DEFAULT NULL,
  `storyext` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `topic` varchar(20) NOT NULL DEFAULT '',
  `alanguage` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_quotes`
--

CREATE TABLE `nuke_quotes` (
  `qid` int(10) UNSIGNED NOT NULL,
  `quote` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_referer`
--

CREATE TABLE `nuke_referer` (
  `url` varchar(100) NOT NULL,
  `lasttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `link` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_related`
--

CREATE TABLE `nuke_related` (
  `rid` int(11) NOT NULL,
  `tid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_reviews`
--

CREATE TABLE `nuke_reviews` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL DEFAULT '2018-12-12',
  `title` varchar(150) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `reviewer` varchar(25) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `score` int(10) NOT NULL DEFAULT 0,
  `cover` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `url_title` varchar(50) NOT NULL DEFAULT '',
  `hits` int(10) NOT NULL DEFAULT 0,
  `rlanguage` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_reviews_add`
--

CREATE TABLE `nuke_reviews_add` (
  `id` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  `title` varchar(150) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `reviewer` varchar(25) NOT NULL DEFAULT '',
  `email` varchar(60) DEFAULT NULL,
  `score` int(10) NOT NULL DEFAULT 0,
  `url` varchar(100) NOT NULL DEFAULT '',
  `url_title` varchar(50) NOT NULL DEFAULT '',
  `rlanguage` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_reviews_comments`
--

CREATE TABLE `nuke_reviews_comments` (
  `cid` int(10) NOT NULL,
  `rid` int(10) NOT NULL DEFAULT 0,
  `userid` varchar(25) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `score` int(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_reviews_comments_moderated`
--

CREATE TABLE `nuke_reviews_comments_moderated` (
  `cid` int(10) NOT NULL,
  `rid` int(10) NOT NULL DEFAULT 0,
  `userid` varchar(25) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `score` int(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_reviews_main`
--

CREATE TABLE `nuke_reviews_main` (
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_security_agents`
--

CREATE TABLE `nuke_security_agents` (
  `agent_name` varchar(20) NOT NULL DEFAULT '',
  `agent_fullname` varchar(30) DEFAULT '',
  `agent_hostname` varchar(30) DEFAULT '',
  `agent_url` varchar(80) DEFAULT '',
  `agent_ban` int(1) NOT NULL DEFAULT 0,
  `agent_desc` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_session`
--

CREATE TABLE `nuke_session` (
  `uname` varchar(255) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `starttime` varchar(14) NOT NULL DEFAULT '',
  `host_addr` varchar(48) NOT NULL DEFAULT '',
  `guest` int(1) NOT NULL DEFAULT 0,
  `module` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_censor`
--

CREATE TABLE `nuke_shoutbox_censor` (
  `id` int(9) NOT NULL,
  `text` varchar(30) NOT NULL,
  `replacement` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_conf`
--

CREATE TABLE `nuke_shoutbox_conf` (
  `id` int(9) NOT NULL DEFAULT 0,
  `color1` varchar(20) NOT NULL DEFAULT '',
  `color2` varchar(20) NOT NULL DEFAULT '',
  `date` varchar(5) NOT NULL DEFAULT '',
  `time` varchar(5) NOT NULL DEFAULT '',
  `number` varchar(5) NOT NULL DEFAULT '',
  `ipblock` varchar(5) NOT NULL DEFAULT '',
  `nameblock` varchar(5) NOT NULL DEFAULT '',
  `censor` varchar(5) NOT NULL DEFAULT '',
  `tablewidth` char(3) NOT NULL DEFAULT '',
  `urlonoff` varchar(5) NOT NULL DEFAULT '',
  `delyourlastpost` varchar(5) NOT NULL DEFAULT '',
  `anonymouspost` varchar(5) NOT NULL DEFAULT '',
  `height` varchar(5) NOT NULL DEFAULT '',
  `themecolors` varchar(5) NOT NULL DEFAULT '',
  `textWidth` varchar(4) NOT NULL DEFAULT '',
  `nameWidth` varchar(4) NOT NULL DEFAULT '',
  `smiliesPerRow` varchar(4) NOT NULL DEFAULT '',
  `reversePosts` varchar(4) NOT NULL DEFAULT '',
  `timeOffset` varchar(10) NOT NULL DEFAULT '',
  `urlanononoff` varchar(10) NOT NULL DEFAULT '',
  `pointspershout` varchar(5) NOT NULL DEFAULT '',
  `shoutsperpage` varchar(5) NOT NULL DEFAULT '',
  `serverTimezone` varchar(5) NOT NULL DEFAULT '',
  `blockxxx` varchar(5) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_date`
--

CREATE TABLE `nuke_shoutbox_date` (
  `id` int(5) NOT NULL DEFAULT 0,
  `date` varchar(10) NOT NULL DEFAULT '',
  `time` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_emoticons`
--

CREATE TABLE `nuke_shoutbox_emoticons` (
  `id` int(9) NOT NULL,
  `text` varchar(20) NOT NULL,
  `image` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_ipblock`
--

CREATE TABLE `nuke_shoutbox_ipblock` (
  `id` int(9) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_manage_count`
--

CREATE TABLE `nuke_shoutbox_manage_count` (
  `id` int(9) NOT NULL,
  `admin` varchar(25) NOT NULL DEFAULT '',
  `aCount` varchar(5) NOT NULL DEFAULT '10'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_nameblock`
--

CREATE TABLE `nuke_shoutbox_nameblock` (
  `id` int(9) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_shouts`
--

CREATE TABLE `nuke_shoutbox_shouts` (
  `id` int(9) NOT NULL,
  `name` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `date` varchar(10) NOT NULL,
  `time` varchar(10) NOT NULL,
  `ip` varchar(39) DEFAULT NULL,
  `timestamp` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_sticky`
--

CREATE TABLE `nuke_shoutbox_sticky` (
  `id` int(9) NOT NULL,
  `name` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `timestamp` varchar(20) NOT NULL,
  `stickySlot` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_themes`
--

CREATE TABLE `nuke_shoutbox_themes` (
  `id` int(9) NOT NULL,
  `themeName` varchar(50) DEFAULT NULL,
  `blockColor1` varchar(20) DEFAULT NULL,
  `blockColor2` varchar(20) DEFAULT NULL,
  `border` varchar(20) DEFAULT NULL,
  `menuColor1` varchar(20) DEFAULT NULL,
  `menuColor2` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_theme_images`
--

CREATE TABLE `nuke_shoutbox_theme_images` (
  `id` int(9) NOT NULL,
  `themeName` varchar(50) DEFAULT NULL,
  `blockArrowColor` varchar(50) NOT NULL,
  `blockBackgroundImage` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_version`
--

CREATE TABLE `nuke_shoutbox_version` (
  `id` int(5) NOT NULL,
  `version` varchar(10) NOT NULL,
  `datechecked` varchar(2) NOT NULL,
  `versionreported` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_sommaire`
--

CREATE TABLE `nuke_sommaire` (
  `groupmenu` int(2) NOT NULL DEFAULT 0,
  `name` varchar(200) DEFAULT NULL,
  `image` varchar(99) DEFAULT NULL,
  `lien` text DEFAULT NULL,
  `hr` char(2) DEFAULT NULL,
  `center` char(2) DEFAULT NULL,
  `bgcolor` tinytext DEFAULT NULL,
  `invisible` int(1) DEFAULT NULL,
  `class` tinytext DEFAULT NULL,
  `bold` char(2) DEFAULT NULL,
  `new` char(2) DEFAULT NULL,
  `listbox` char(2) DEFAULT NULL,
  `dynamic` char(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_sommaire_categories`
--

CREATE TABLE `nuke_sommaire_categories` (
  `id` int(11) NOT NULL,
  `groupmenu` int(2) NOT NULL DEFAULT 0,
  `module` varchar(50) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `url_text` text NOT NULL,
  `image` varchar(50) NOT NULL DEFAULT '',
  `new` char(2) DEFAULT NULL,
  `new_days` tinyint(4) NOT NULL DEFAULT -1,
  `class` varchar(20) DEFAULT NULL,
  `bold` char(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_stats_date`
--

CREATE TABLE `nuke_stats_date` (
  `year` smallint(6) NOT NULL DEFAULT 0,
  `month` tinyint(4) NOT NULL DEFAULT 0,
  `date` tinyint(4) NOT NULL DEFAULT 0,
  `hits` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_stats_hour`
--

CREATE TABLE `nuke_stats_hour` (
  `year` smallint(6) NOT NULL DEFAULT 0,
  `month` tinyint(4) NOT NULL DEFAULT 0,
  `date` tinyint(4) NOT NULL DEFAULT 0,
  `hour` tinyint(4) NOT NULL DEFAULT 0,
  `hits` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_stats_month`
--

CREATE TABLE `nuke_stats_month` (
  `year` smallint(6) NOT NULL DEFAULT 0,
  `month` tinyint(4) NOT NULL DEFAULT 0,
  `hits` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_stats_year`
--

CREATE TABLE `nuke_stats_year` (
  `year` smallint(6) NOT NULL DEFAULT 0,
  `hits` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_stories`
--

CREATE TABLE `nuke_stories` (
  `sid` int(11) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT 0,
  `aid` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(80) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hometext` text DEFAULT NULL,
  `bodytext` text NOT NULL,
  `comments` int(11) DEFAULT 0,
  `counter` mediumint(8) UNSIGNED DEFAULT NULL,
  `topic` int(3) NOT NULL DEFAULT 1,
  `informant` varchar(20) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  `ihome` int(1) NOT NULL DEFAULT 0,
  `alanguage` varchar(30) NOT NULL DEFAULT '',
  `acomm` int(1) NOT NULL DEFAULT 0,
  `haspoll` int(1) NOT NULL DEFAULT 0,
  `pollID` int(10) NOT NULL DEFAULT 0,
  `score` int(10) NOT NULL DEFAULT 0,
  `ratings` int(10) NOT NULL DEFAULT 0,
  `rating_ip` varchar(15) DEFAULT '0',
  `associated` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_stories_cat`
--

CREATE TABLE `nuke_stories_cat` (
  `catid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL DEFAULT '',
  `counter` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_subscriptions`
--

CREATE TABLE `nuke_subscriptions` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL DEFAULT 0,
  `subscription_expire` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_themes`
--

CREATE TABLE `nuke_themes` (
  `theme_name` varchar(100) NOT NULL DEFAULT '',
  `groups` varchar(50) NOT NULL DEFAULT '',
  `permissions` tinyint(2) NOT NULL DEFAULT 1,
  `custom_name` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `theme_info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_tonslider`
--

CREATE TABLE `nuke_tonslider` (
  `sliderwidth` varchar(3) NOT NULL DEFAULT '0',
  `sliderheight` varchar(3) NOT NULL DEFAULT '0',
  `sliderduration` varchar(5) NOT NULL DEFAULT '0',
  `slidertitle1` varchar(100) NOT NULL DEFAULT '0',
  `slidertitle2` varchar(100) NOT NULL DEFAULT '0',
  `slidertitle3` varchar(100) NOT NULL DEFAULT '0',
  `slidertitle4` varchar(100) NOT NULL DEFAULT '0',
  `slidertitle5` varchar(100) NOT NULL DEFAULT '0',
  `slidertitle6` varchar(100) NOT NULL DEFAULT '0',
  `slidercontent1` varchar(999) NOT NULL DEFAULT '0',
  `slidercontent2` varchar(999) NOT NULL DEFAULT '0',
  `slidercontent3` varchar(999) NOT NULL DEFAULT '0',
  `slidercontent4` varchar(999) NOT NULL DEFAULT '0',
  `slidercontent5` varchar(999) NOT NULL DEFAULT '0',
  `slidercontent6` varchar(999) NOT NULL DEFAULT '0',
  `sliderthumb1` varchar(100) NOT NULL DEFAULT '0',
  `sliderthumb2` varchar(100) NOT NULL DEFAULT '0',
  `sliderthumb3` varchar(100) NOT NULL DEFAULT '0',
  `sliderthumb4` varchar(100) NOT NULL DEFAULT '0',
  `sliderthumb5` varchar(100) NOT NULL DEFAULT '0',
  `sliderthumb6` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_topics`
--

CREATE TABLE `nuke_topics` (
  `topicid` int(3) NOT NULL,
  `topicname` varchar(20) DEFAULT NULL,
  `topicimage` varchar(100) NOT NULL DEFAULT '',
  `topictext` varchar(40) DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_users`
--

CREATE TABLE `nuke_users` (
  `user_id` int(11) NOT NULL,
  `user_type` tinyint(2) NOT NULL DEFAULT 0,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 3,
  `user_permissions` mediumtext NOT NULL DEFAULT '',
  `user_perm_from` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_ip` varchar(40) DEFAULT NULL,
  `user_regdate` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(255) DEFAULT NULL,
  `username_clean` varchar(255) DEFAULT NULL,
  `user_password` varchar(40) NOT NULL DEFAULT '',
  `user_passchg` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_pass_convert` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_email` varchar(100) DEFAULT NULL,
  `user_email_hash` bigint(20) NOT NULL DEFAULT 0,
  `user_birthday` varchar(10) DEFAULT NULL,
  `user_lastvisit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_lastmark` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_lastpost_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_lastpage` varchar(200) DEFAULT NULL,
  `user_last_confirm_key` varchar(10) DEFAULT NULL,
  `user_last_search` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_warnings` tinyint(4) NOT NULL DEFAULT 0,
  `user_last_warning` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT 0,
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT 0,
  `user_inactive_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_lang` varchar(30) DEFAULT NULL,
  `user_timezone` decimal(5,2) NOT NULL DEFAULT 0.00,
  `user_dst` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_dateformat` varchar(30) NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_rank` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_colour` varchar(6) DEFAULT NULL,
  `user_new_privmsg` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `user_unread_privmsg` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `user_last_privmsg` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_message_rules` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_full_folder` int(11) NOT NULL DEFAULT -3,
  `user_emailtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_topic_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `user_topic_sortby_type` varchar(1) NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `user_post_sortby_type` varchar(1) NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_notify_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_notify_type` tinyint(4) NOT NULL DEFAULT 0,
  `user_allow_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_allow_viewonline` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_allow_viewemail` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_allow_massemail` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_options` int(11) UNSIGNED NOT NULL DEFAULT 895,
  `user_avatar` varchar(255) NOT NULL DEFAULT '',
  `user_avatar_type` tinyint(2) NOT NULL DEFAULT 0,
  `user_avatar_width` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `user_avatar_height` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `user_sig` mediumtext NOT NULL DEFAULT '',
  `user_sig_bbcode_uid` varchar(8) DEFAULT NULL,
  `user_sig_bbcode_bitfield` varchar(255) NOT NULL DEFAULT '',
  `user_from` varchar(100) DEFAULT NULL,
  `user_icq` varchar(15) DEFAULT NULL,
  `user_aim` varchar(255) DEFAULT NULL,
  `user_yim` varchar(255) DEFAULT NULL,
  `user_msnm` varchar(255) DEFAULT NULL,
  `user_jabber` varchar(255) DEFAULT NULL,
  `user_website` varchar(200) DEFAULT NULL,
  `user_occ` text DEFAULT NULL,
  `user_interests` varchar(150) NOT NULL DEFAULT '',
  `user_actkey` varchar(32) DEFAULT NULL,
  `user_newpasswd` varchar(40) DEFAULT NULL,
  `user_form_salt` varchar(32) DEFAULT NULL,
  `user_arcade_pm` tinyint(1) NOT NULL DEFAULT 1,
  `games_per_page` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `games_sort_dir` varchar(1) NOT NULL DEFAULT 'a',
  `games_sort_order` varchar(1) NOT NULL DEFAULT 'n',
  `user_gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_arcade_permissions` mediumtext NOT NULL DEFAULT '',
  `user_arcade_perm_from` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_reminder_inactive` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_reminder_zero_poster` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_reminder_inactive_still` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_reminder_not_logged_in` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_flag` varchar(2) DEFAULT NULL,
  `user_session_time` int(11) NOT NULL DEFAULT 0,
  `karma` tinyint(1) DEFAULT 0,
  `name` varchar(60) DEFAULT NULL,
  `femail` varchar(255) DEFAULT NULL,
  `nuke_user_regdate` varchar(20) DEFAULT NULL,
  `nuke_user_sig` varchar(255) DEFAULT NULL,
  `user_viewemail` tinyint(2) DEFAULT NULL,
  `user_theme` int(3) DEFAULT NULL,
  `storynum` tinyint(4) NOT NULL DEFAULT 10,
  `umode` varchar(10) NOT NULL DEFAULT '',
  `uorder` tinyint(1) NOT NULL DEFAULT 0,
  `thold` tinyint(1) NOT NULL DEFAULT 0,
  `noscore` tinyint(1) NOT NULL DEFAULT 0,
  `bio` longtext DEFAULT NULL,
  `ublockon` tinyint(1) NOT NULL DEFAULT 0,
  `ublock` tinytext DEFAULT NULL,
  `theme` varchar(255) NOT NULL DEFAULT '',
  `commentmax` int(11) NOT NULL DEFAULT 4096,
  `counter` int(11) NOT NULL DEFAULT 0,
  `newsletter` int(1) NOT NULL DEFAULT 0,
  `nuke_user_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_attachsig` int(2) NOT NULL DEFAULT 0,
  `nuke_user_rank` int(10) NOT NULL DEFAULT 0,
  `user_level` int(10) NOT NULL DEFAULT 1,
  `broadcast` tinyint(1) NOT NULL DEFAULT 1,
  `popmeson` tinyint(1) NOT NULL DEFAULT 0,
  `user_active` tinyint(1) DEFAULT 1,
  `user_session_page` smallint(5) NOT NULL DEFAULT 0,
  `nuke_user_timezone` tinyint(4) NOT NULL DEFAULT 10,
  `nuke_user_style` tinyint(4) DEFAULT NULL,
  `nuke_user_dateformat` varchar(14) NOT NULL DEFAULT 'D M d, Y g:i a',
  `nuke_user_emailtime` int(11) DEFAULT NULL,
  `user_allowhtml` tinyint(1) DEFAULT 1,
  `user_allowbbcode` tinyint(1) DEFAULT 1,
  `user_allowsmile` tinyint(1) DEFAULT 1,
  `user_allowavatar` tinyint(1) NOT NULL DEFAULT 1,
  `nuke_user_notify_pm` tinyint(1) NOT NULL DEFAULT 0,
  `user_popup_pm` tinyint(1) NOT NULL DEFAULT 1,
  `nuke_user_avatar_type` tinyint(4) NOT NULL DEFAULT 3,
  `nuke_user_sig_bbcode_uid` varchar(10) DEFAULT NULL,
  `points` int(10) DEFAULT 0,
  `nuke_group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 3,
  `last_ip` varchar(15) NOT NULL DEFAULT '0',
  `user_from_flag` varchar(64) DEFAULT NULL,
  `user_facebook` varchar(255) DEFAULT NULL,
  `nuke_user_lang` varchar(255) NOT NULL DEFAULT 'english',
  `user_allow_mass_pm` tinyint(1) DEFAULT 4,
  `user_wordwrap` smallint(3) NOT NULL DEFAULT 70,
  `agreedtos` tinyint(1) NOT NULL DEFAULT 0,
  `user_allowsignature` tinyint(4) NOT NULL DEFAULT 1,
  `user_report_optout` tinyint(1) NOT NULL DEFAULT 0,
  `user_show_quickreply` tinyint(1) NOT NULL DEFAULT 1,
  `user_quickreply_mode` tinyint(1) NOT NULL DEFAULT 1,
  `user_color_gc` varchar(6) DEFAULT '',
  `user_color_gi` text DEFAULT NULL,
  `user_showavatars` tinyint(1) DEFAULT 1,
  `user_showsignatures` tinyint(1) DEFAULT 1,
  `user_time_mode` tinyint(4) NOT NULL DEFAULT 6,
  `user_dst_time_lag` tinyint(4) NOT NULL DEFAULT 60,
  `user_pc_timeOffsets` varchar(55) NOT NULL DEFAULT '0',
  `user_view_log` tinyint(4) NOT NULL DEFAULT 0,
  `user_glance_show` varchar(255) NOT NULL DEFAULT '1',
  `user_hide_images` tinyint(2) NOT NULL DEFAULT 0,
  `user_open_quickreply` tinyint(1) NOT NULL DEFAULT 0,
  `sceditor_in_source` tinyint(1) NOT NULL DEFAULT 0,
  `xdata_bbcode` varchar(10) DEFAULT NULL,
  `user_ftr` smallint(1) NOT NULL DEFAULT 0,
  `user_ftr_time` int(10) NOT NULL DEFAULT 0,
  `user_rank2` int(11) DEFAULT -1,
  `user_rank3` int(11) DEFAULT -2,
  `user_rank4` int(11) DEFAULT -2,
  `user_rank5` int(11) DEFAULT -2,
  `user_birthday2` int(8) DEFAULT NULL,
  `birthday_display` tinyint(1) NOT NULL DEFAULT 0,
  `birthday_greeting` tinyint(1) NOT NULL DEFAULT 0,
  `user_next_birthday` smallint(4) NOT NULL DEFAULT 0,
  `user_reputation` float NOT NULL DEFAULT 0,
  `user_rep_last_time` int(11) DEFAULT NULL,
  `user_admin_notes` text DEFAULT NULL,
  `user_allow_arcadepm` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_users_countries`
--

CREATE TABLE `nuke_users_countries` (
  `id_country` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `iso_code_2` char(2) NOT NULL DEFAULT '',
  `iso_code_3` char(3) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_users_temp`
--

CREATE TABLE `nuke_users_temp` (
  `user_id` int(10) NOT NULL,
  `username` varchar(25) NOT NULL DEFAULT '',
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_password` varchar(40) NOT NULL DEFAULT '',
  `nuke_user_regdate` varchar(20) NOT NULL DEFAULT '',
  `check_num` varchar(50) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `realname` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_users_who_been`
--

CREATE TABLE `nuke_users_who_been` (
  `user_ID` int(11) NOT NULL DEFAULT 0,
  `username` varchar(25) NOT NULL DEFAULT '',
  `last_visit` int(15) DEFAULT NULL,
  `resolution` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_welcome_pm`
--

CREATE TABLE `nuke_welcome_pm` (
  `subject` varchar(30) NOT NULL DEFAULT '',
  `msg` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nuke_admin_fc`
--
ALTER TABLE `nuke_admin_fc`
  ADD PRIMARY KEY (`fc_attempts`);

--
-- Indexes for table `nuke_authors`
--
ALTER TABLE `nuke_authors`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `nuke_banner`
--
ALTER TABLE `nuke_banner`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `nuke_banner_clients`
--
ALTER TABLE `nuke_banner_clients`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `nuke_banner_plans`
--
ALTER TABLE `nuke_banner_plans`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `nuke_banner_positions`
--
ALTER TABLE `nuke_banner_positions`
  ADD PRIMARY KEY (`apid`),
  ADD KEY `position_number` (`position_number`);

--
-- Indexes for table `nuke_bbadvanced_username_color`
--
ALTER TABLE `nuke_bbadvanced_username_color`
  ADD PRIMARY KEY (`nuke_group_id`);

--
-- Indexes for table `nuke_bbarcade`
--
ALTER TABLE `nuke_bbarcade`
  ADD PRIMARY KEY (`arcade_name`);

--
-- Indexes for table `nuke_bbarcade_categories`
--
ALTER TABLE `nuke_bbarcade_categories`
  ADD KEY `arcade_catid` (`arcade_catid`);

--
-- Indexes for table `nuke_bbarcade_fav`
--
ALTER TABLE `nuke_bbarcade_fav`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order` (`order`);

--
-- Indexes for table `nuke_bbattachments`
--
ALTER TABLE `nuke_bbattachments`
  ADD KEY `attach_id_post_id` (`attach_id`,`post_id`),
  ADD KEY `attach_id_privmsgs_id` (`attach_id`,`privmsgs_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `privmsgs_id` (`privmsgs_id`);

--
-- Indexes for table `nuke_bbattachments_config`
--
ALTER TABLE `nuke_bbattachments_config`
  ADD PRIMARY KEY (`config_name`);

--
-- Indexes for table `nuke_bbattachments_desc`
--
ALTER TABLE `nuke_bbattachments_desc`
  ADD PRIMARY KEY (`attach_id`),
  ADD KEY `filetime` (`filetime`),
  ADD KEY `physical_filename` (`physical_filename`(10)),
  ADD KEY `filesize` (`filesize`);

--
-- Indexes for table `nuke_bbattach_quota`
--
ALTER TABLE `nuke_bbattach_quota`
  ADD KEY `quota_type` (`quota_type`);

--
-- Indexes for table `nuke_bbauth_access`
--
ALTER TABLE `nuke_bbauth_access`
  ADD KEY `nuke_group_id` (`nuke_group_id`),
  ADD KEY `forum_id` (`forum_id`);

--
-- Indexes for table `nuke_bbauth_arcade_access`
--
ALTER TABLE `nuke_bbauth_arcade_access`
  ADD KEY `nuke_group_id` (`nuke_group_id`),
  ADD KEY `arcade_catid` (`arcade_catid`);

--
-- Indexes for table `nuke_bbbanlist`
--
ALTER TABLE `nuke_bbbanlist`
  ADD PRIMARY KEY (`ban_id`),
  ADD KEY `ban_ip_user_id` (`ban_ip`,`ban_userid`);

--
-- Indexes for table `nuke_bbcategories`
--
ALTER TABLE `nuke_bbcategories`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `cat_order` (`cat_order`);

--
-- Indexes for table `nuke_bbconfig`
--
ALTER TABLE `nuke_bbconfig`
  ADD PRIMARY KEY (`config_name`);

--
-- Indexes for table `nuke_bbdisallow`
--
ALTER TABLE `nuke_bbdisallow`
  ADD PRIMARY KEY (`disallow_id`);

--
-- Indexes for table `nuke_bbextensions`
--
ALTER TABLE `nuke_bbextensions`
  ADD PRIMARY KEY (`ext_id`);

--
-- Indexes for table `nuke_bbextension_groups`
--
ALTER TABLE `nuke_bbextension_groups`
  ADD PRIMARY KEY (`nuke_group_id`);

--
-- Indexes for table `nuke_bbforbidden_extensions`
--
ALTER TABLE `nuke_bbforbidden_extensions`
  ADD PRIMARY KEY (`ext_id`);

--
-- Indexes for table `nuke_bbforums`
--
ALTER TABLE `nuke_bbforums`
  ADD PRIMARY KEY (`forum_id`),
  ADD KEY `forums_order` (`forum_order`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `forum_last_post_id` (`forum_last_post_id`);

--
-- Indexes for table `nuke_bbforum_prune`
--
ALTER TABLE `nuke_bbforum_prune`
  ADD PRIMARY KEY (`prune_id`),
  ADD KEY `forum_id` (`forum_id`);

--
-- Indexes for table `nuke_bbgamehash`
--
ALTER TABLE `nuke_bbgamehash`
  ADD KEY `game_id` (`game_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nuke_bbgames`
--
ALTER TABLE `nuke_bbgames`
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `nuke_bbgroups`
--
ALTER TABLE `nuke_bbgroups`
  ADD PRIMARY KEY (`nuke_group_id`),
  ADD KEY `group_single_user` (`group_single_user`);

--
-- Indexes for table `nuke_bbhackgame`
--
ALTER TABLE `nuke_bbhackgame`
  ADD KEY `game_id` (`game_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nuke_bbinline_ads`
--
ALTER TABLE `nuke_bbinline_ads`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `nuke_bblogs`
--
ALTER TABLE `nuke_bblogs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `nuke_bblogs_config`
--
ALTER TABLE `nuke_bblogs_config`
  ADD PRIMARY KEY (`config_name`);

--
-- Indexes for table `nuke_bbposts`
--
ALTER TABLE `nuke_bbposts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `post_time` (`post_time`),
  ADD KEY `post_icon` (`post_icon`);

--
-- Indexes for table `nuke_bbposts_text`
--
ALTER TABLE `nuke_bbposts_text`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `nuke_bbpost_reports`
--
ALTER TABLE `nuke_bbpost_reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `nuke_bbprivmsgs`
--
ALTER TABLE `nuke_bbprivmsgs`
  ADD PRIMARY KEY (`privmsgs_id`),
  ADD KEY `privmsgs_from_userid` (`privmsgs_from_userid`),
  ADD KEY `privmsgs_to_userid` (`privmsgs_to_userid`);

--
-- Indexes for table `nuke_bbprivmsgs_archive`
--
ALTER TABLE `nuke_bbprivmsgs_archive`
  ADD PRIMARY KEY (`privmsgs_id`),
  ADD KEY `privmsgs_from_userid` (`privmsgs_from_userid`),
  ADD KEY `privmsgs_to_userid` (`privmsgs_to_userid`);

--
-- Indexes for table `nuke_bbprivmsgs_text`
--
ALTER TABLE `nuke_bbprivmsgs_text`
  ADD PRIMARY KEY (`privmsgs_text_id`);

--
-- Indexes for table `nuke_bbquicksearch`
--
ALTER TABLE `nuke_bbquicksearch`
  ADD PRIMARY KEY (`search_id`);

--
-- Indexes for table `nuke_bbquota_limits`
--
ALTER TABLE `nuke_bbquota_limits`
  ADD PRIMARY KEY (`quota_limit_id`);

--
-- Indexes for table `nuke_bbranks`
--
ALTER TABLE `nuke_bbranks`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `nuke_bbreputation`
--
ALTER TABLE `nuke_bbreputation`
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nuke_bbscores`
--
ALTER TABLE `nuke_bbscores`
  ADD KEY `game_id` (`game_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nuke_bbsearch_rebuild`
--
ALTER TABLE `nuke_bbsearch_rebuild`
  ADD PRIMARY KEY (`rebuild_session_id`),
  ADD KEY `end_post_id` (`end_post_id`);

--
-- Indexes for table `nuke_bbsearch_results`
--
ALTER TABLE `nuke_bbsearch_results`
  ADD PRIMARY KEY (`search_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `nuke_bbsearch_wordlist`
--
ALTER TABLE `nuke_bbsearch_wordlist`
  ADD PRIMARY KEY (`word_text`),
  ADD KEY `word_id` (`word_id`);

--
-- Indexes for table `nuke_bbsearch_wordmatch`
--
ALTER TABLE `nuke_bbsearch_wordmatch`
  ADD KEY `post_id` (`post_id`),
  ADD KEY `word_id` (`word_id`);

--
-- Indexes for table `nuke_bbsessions`
--
ALTER TABLE `nuke_bbsessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `session_user_id` (`session_user_id`),
  ADD KEY `session_id_ip_user_id` (`session_id`,`session_ip`,`session_user_id`);

--
-- Indexes for table `nuke_bbsessions_keys`
--
ALTER TABLE `nuke_bbsessions_keys`
  ADD PRIMARY KEY (`key_id`,`user_id`),
  ADD KEY `last_login` (`last_login`);

--
-- Indexes for table `nuke_bbsmilies`
--
ALTER TABLE `nuke_bbsmilies`
  ADD PRIMARY KEY (`smilies_id`);

--
-- Indexes for table `nuke_bbstats_config`
--
ALTER TABLE `nuke_bbstats_config`
  ADD PRIMARY KEY (`config_name`);

--
-- Indexes for table `nuke_bbstats_modules`
--
ALTER TABLE `nuke_bbstats_modules`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `nuke_bbstats_module_admin_panel`
--
ALTER TABLE `nuke_bbstats_module_admin_panel`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `nuke_bbstats_module_cache`
--
ALTER TABLE `nuke_bbstats_module_cache`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `nuke_bbstats_module_group_auth`
--
ALTER TABLE `nuke_bbstats_module_group_auth`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `nuke_bbstats_module_info`
--
ALTER TABLE `nuke_bbstats_module_info`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `nuke_bbstats_smilies_index`
--
ALTER TABLE `nuke_bbstats_smilies_index`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `nuke_bbstats_smilies_info`
--
ALTER TABLE `nuke_bbstats_smilies_info`
  ADD PRIMARY KEY (`last_post_id`);

--
-- Indexes for table `nuke_bbthanks`
--
ALTER TABLE `nuke_bbthanks`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nuke_bbthemes`
--
ALTER TABLE `nuke_bbthemes`
  ADD PRIMARY KEY (`themes_id`);

--
-- Indexes for table `nuke_bbthemes_name`
--
ALTER TABLE `nuke_bbthemes_name`
  ADD PRIMARY KEY (`themes_id`);

--
-- Indexes for table `nuke_bbtopics`
--
ALTER TABLE `nuke_bbtopics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_moved_id` (`topic_moved_id`),
  ADD KEY `topic_status` (`topic_status`),
  ADD KEY `topic_type` (`topic_type`);

--
-- Indexes for table `nuke_bbtopics_email`
--
ALTER TABLE `nuke_bbtopics_email`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nuke_bbtopics_watch`
--
ALTER TABLE `nuke_bbtopics_watch`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notify_status` (`notify_status`);

--
-- Indexes for table `nuke_bbtopic_moved`
--
ALTER TABLE `nuke_bbtopic_moved`
  ADD PRIMARY KEY (`moved_id`);

--
-- Indexes for table `nuke_bbtopic_view`
--
ALTER TABLE `nuke_bbtopic_view`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nuke_bbuser_group`
--
ALTER TABLE `nuke_bbuser_group`
  ADD KEY `nuke_group_id` (`nuke_group_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nuke_bbvote_desc`
--
ALTER TABLE `nuke_bbvote_desc`
  ADD PRIMARY KEY (`vote_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `nuke_bbvote_results`
--
ALTER TABLE `nuke_bbvote_results`
  ADD KEY `vote_option_id` (`vote_option_id`),
  ADD KEY `vote_id` (`vote_id`);

--
-- Indexes for table `nuke_bbvote_voters`
--
ALTER TABLE `nuke_bbvote_voters`
  ADD KEY `vote_id` (`vote_id`),
  ADD KEY `vote_user_id` (`vote_user_id`),
  ADD KEY `vote_user_ip` (`vote_user_ip`),
  ADD KEY `vote_cast` (`vote_cast`);

--
-- Indexes for table `nuke_bbwords`
--
ALTER TABLE `nuke_bbwords`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `nuke_bbxdata_auth`
--
ALTER TABLE `nuke_bbxdata_auth`
  ADD KEY `field_id` (`field_id`),
  ADD KEY `nuke_group_id` (`nuke_group_id`);

--
-- Indexes for table `nuke_bbxdata_data`
--
ALTER TABLE `nuke_bbxdata_data`
  ADD KEY `field_id` (`field_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nuke_bbxdata_fields`
--
ALTER TABLE `nuke_bbxdata_fields`
  ADD PRIMARY KEY (`field_id`),
  ADD UNIQUE KEY `code_name` (`code_name`);

--
-- Indexes for table `nuke_blocks`
--
ALTER TABLE `nuke_blocks`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `nuke_blogs`
--
ALTER TABLE `nuke_blogs`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `catid` (`catid`),
  ADD KEY `counter` (`counter`),
  ADD KEY `topic` (`topic`);

--
-- Indexes for table `nuke_blogs_autoblog`
--
ALTER TABLE `nuke_blogs_autoblog`
  ADD PRIMARY KEY (`anid`),
  ADD UNIQUE KEY `anid` (`anid`);

--
-- Indexes for table `nuke_blogs_cat`
--
ALTER TABLE `nuke_blogs_cat`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `nuke_blogs_comments`
--
ALTER TABLE `nuke_blogs_comments`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `nuke_blogs_config`
--
ALTER TABLE `nuke_blogs_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nuke_blogs_queue`
--
ALTER TABLE `nuke_blogs_queue`
  ADD PRIMARY KEY (`qid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `uname` (`uname`);

--
-- Indexes for table `nuke_blogs_topics`
--
ALTER TABLE `nuke_blogs_topics`
  ADD PRIMARY KEY (`topicid`);

--
-- Indexes for table `nuke_bookmarks`
--
ALTER TABLE `nuke_bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nuke_bookmarks_cat`
--
ALTER TABLE `nuke_bookmarks_cat`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nuke_cemetery`
--
ALTER TABLE `nuke_cemetery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nuke_cemetery_cat`
--
ALTER TABLE `nuke_cemetery_cat`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nuke_cnbya_config`
--
ALTER TABLE `nuke_cnbya_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nuke_cnbya_field`
--
ALTER TABLE `nuke_cnbya_field`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `nuke_cnbya_value`
--
ALTER TABLE `nuke_cnbya_value`
  ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `nuke_cnbya_value_temp`
--
ALTER TABLE `nuke_cnbya_value_temp`
  ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `nuke_config`
--
ALTER TABLE `nuke_config`
  ADD UNIQUE KEY `Version_Num` (`Version_Num`);

--
-- Indexes for table `nuke_confirm`
--
ALTER TABLE `nuke_confirm`
  ADD PRIMARY KEY (`session_id`,`confirm_id`);

--
-- Indexes for table `nuke_counter`
--
ALTER TABLE `nuke_counter`
  ADD KEY `var` (`var`);

--
-- Indexes for table `nuke_donators`
--
ALTER TABLE `nuke_donators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_donators_config`
--
ALTER TABLE `nuke_donators_config`
  ADD PRIMARY KEY (`config_name`);

--
-- Indexes for table `nuke_ecalendar`
--
ALTER TABLE `nuke_ecalendar`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `nuke_evolution`
--
ALTER TABLE `nuke_evolution`
  ADD PRIMARY KEY (`evo_field`);

--
-- Indexes for table `nuke_evo_userinfo`
--
ALTER TABLE `nuke_evo_userinfo`
  ADD KEY `active` (`active`),
  ADD KEY `position` (`position`);

--
-- Indexes for table `nuke_evo_userinfo_addons`
--
ALTER TABLE `nuke_evo_userinfo_addons`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `nuke_faqanswer`
--
ALTER TABLE `nuke_faqanswer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cat` (`id_cat`);

--
-- Indexes for table `nuke_faqcategories`
--
ALTER TABLE `nuke_faqcategories`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indexes for table `nuke_file_repository_categories`
--
ALTER TABLE `nuke_file_repository_categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `nuke_file_repository_comments`
--
ALTER TABLE `nuke_file_repository_comments`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `nuke_file_repository_files`
--
ALTER TABLE `nuke_file_repository_files`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `nuke_file_repository_items`
--
ALTER TABLE `nuke_file_repository_items`
  ADD PRIMARY KEY (`did`),
  ADD KEY `cid` (`cid`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `nuke_file_repository_screenshots`
--
ALTER TABLE `nuke_file_repository_screenshots`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `nuke_file_repository_settings`
--
ALTER TABLE `nuke_file_repository_settings`
  ADD PRIMARY KEY (`config_name`);

--
-- Indexes for table `nuke_file_repository_themes`
--
ALTER TABLE `nuke_file_repository_themes`
  ADD PRIMARY KEY (`theme_name`);

--
-- Indexes for table `nuke_headlines`
--
ALTER TABLE `nuke_headlines`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `nuke_hnl_categories`
--
ALTER TABLE `nuke_hnl_categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `nuke_hnl_cfg`
--
ALTER TABLE `nuke_hnl_cfg`
  ADD PRIMARY KEY (`cfg_nm`);

--
-- Indexes for table `nuke_hnl_newsletters`
--
ALTER TABLE `nuke_hnl_newsletters`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `nuke_honeypot`
--
ALTER TABLE `nuke_honeypot`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `nuke_honeypot_config`
--
ALTER TABLE `nuke_honeypot_config`
  ADD UNIQUE KEY `version` (`version`);

--
-- Indexes for table `nuke_image_repository_settings`
--
ALTER TABLE `nuke_image_repository_settings`
  ADD PRIMARY KEY (`config_name`);

--
-- Indexes for table `nuke_image_repository_uploads`
--
ALTER TABLE `nuke_image_repository_uploads`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `nuke_image_repository_users`
--
ALTER TABLE `nuke_image_repository_users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `nuke_jmap`
--
ALTER TABLE `nuke_jmap`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `nuke_journal`
--
ALTER TABLE `nuke_journal`
  ADD PRIMARY KEY (`jid`),
  ADD KEY `jid` (`jid`),
  ADD KEY `aid` (`aid`);

--
-- Indexes for table `nuke_journal_comments`
--
ALTER TABLE `nuke_journal_comments`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `rid` (`rid`),
  ADD KEY `aid` (`aid`);

--
-- Indexes for table `nuke_journal_stats`
--
ALTER TABLE `nuke_journal_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `nuke_links_categories`
--
ALTER TABLE `nuke_links_categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `nuke_links_editorials`
--
ALTER TABLE `nuke_links_editorials`
  ADD PRIMARY KEY (`linkid`);

--
-- Indexes for table `nuke_links_links`
--
ALTER TABLE `nuke_links_links`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `nuke_links_modrequest`
--
ALTER TABLE `nuke_links_modrequest`
  ADD PRIMARY KEY (`requestid`);

--
-- Indexes for table `nuke_links_newlink`
--
ALTER TABLE `nuke_links_newlink`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `nuke_links_votedata`
--
ALTER TABLE `nuke_links_votedata`
  ADD PRIMARY KEY (`ratingdbid`);

--
-- Indexes for table `nuke_link_us`
--
ALTER TABLE `nuke_link_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_link_us_config`
--
ALTER TABLE `nuke_link_us_config`
  ADD KEY `my_image` (`my_image`);

--
-- Indexes for table `nuke_main`
--
ALTER TABLE `nuke_main`
  ADD KEY `main_module` (`main_module`);

--
-- Indexes for table `nuke_menu`
--
ALTER TABLE `nuke_menu`
  ADD PRIMARY KEY (`groupmenu`);

--
-- Indexes for table `nuke_menu_categories`
--
ALTER TABLE `nuke_menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_message`
--
ALTER TABLE `nuke_message`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `mid` (`mid`);

--
-- Indexes for table `nuke_meta`
--
ALTER TABLE `nuke_meta`
  ADD PRIMARY KEY (`meta_name`);

--
-- Indexes for table `nuke_modules`
--
ALTER TABLE `nuke_modules`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `mid` (`mid`),
  ADD KEY `title` (`title`),
  ADD KEY `custom_title` (`custom_title`);

--
-- Indexes for table `nuke_modules_cat`
--
ALTER TABLE `nuke_modules_cat`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `cid` (`cid`);

--
-- Indexes for table `nuke_modules_links`
--
ALTER TABLE `nuke_modules_links`
  ADD PRIMARY KEY (`lid`),
  ADD UNIQUE KEY `lid` (`lid`);

--
-- Indexes for table `nuke_mostonline`
--
ALTER TABLE `nuke_mostonline`
  ADD PRIMARY KEY (`total`);

--
-- Indexes for table `nuke_nsncb_blocks`
--
ALTER TABLE `nuke_nsncb_blocks`
  ADD PRIMARY KEY (`rid`),
  ADD UNIQUE KEY `rid` (`rid`);

--
-- Indexes for table `nuke_nsncb_config`
--
ALTER TABLE `nuke_nsncb_config`
  ADD PRIMARY KEY (`cgid`),
  ADD UNIQUE KEY `cfgid` (`cgid`);

--
-- Indexes for table `nuke_nsnsp_config`
--
ALTER TABLE `nuke_nsnsp_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nuke_nsnsp_sites`
--
ALTER TABLE `nuke_nsnsp_sites`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `nuke_nsnst_admins`
--
ALTER TABLE `nuke_nsnst_admins`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `password_md5` (`password_md5`);

--
-- Indexes for table `nuke_nsnst_blocked_ips`
--
ALTER TABLE `nuke_nsnst_blocked_ips`
  ADD PRIMARY KEY (`ip_addr`),
  ADD KEY `ip_long` (`ip_long`);

--
-- Indexes for table `nuke_nsnst_blocked_ranges`
--
ALTER TABLE `nuke_nsnst_blocked_ranges`
  ADD KEY `code` (`ip_lo`,`ip_hi`,`c2c`);

--
-- Indexes for table `nuke_nsnst_blockers`
--
ALTER TABLE `nuke_nsnst_blockers`
  ADD PRIMARY KEY (`blocker`);

--
-- Indexes for table `nuke_nsnst_cidrs`
--
ALTER TABLE `nuke_nsnst_cidrs`
  ADD PRIMARY KEY (`cidr`);

--
-- Indexes for table `nuke_nsnst_config`
--
ALTER TABLE `nuke_nsnst_config`
  ADD PRIMARY KEY (`config_name`);

--
-- Indexes for table `nuke_nsnst_countries`
--
ALTER TABLE `nuke_nsnst_countries`
  ADD KEY `c2c` (`c2c`);

--
-- Indexes for table `nuke_nsnst_excluded_ranges`
--
ALTER TABLE `nuke_nsnst_excluded_ranges`
  ADD KEY `code` (`ip_lo`,`ip_hi`,`c2c`);

--
-- Indexes for table `nuke_nsnst_harvesters`
--
ALTER TABLE `nuke_nsnst_harvesters`
  ADD PRIMARY KEY (`harvester`),
  ADD KEY `hid` (`hid`);

--
-- Indexes for table `nuke_nsnst_protected_ranges`
--
ALTER TABLE `nuke_nsnst_protected_ranges`
  ADD KEY `code` (`ip_lo`,`ip_hi`,`c2c`);

--
-- Indexes for table `nuke_nsnst_referers`
--
ALTER TABLE `nuke_nsnst_referers`
  ADD PRIMARY KEY (`referer`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `nuke_nsnst_strings`
--
ALTER TABLE `nuke_nsnst_strings`
  ADD KEY `string` (`string`);

--
-- Indexes for table `nuke_nsnst_tracked_ips`
--
ALTER TABLE `nuke_nsnst_tracked_ips`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `maintracking` (`ip_addr`,`ip_long`),
  ADD KEY `ip_addr` (`ip_addr`),
  ADD KEY `ip_long` (`ip_long`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `username` (`username`),
  ADD KEY `user_agent` (`user_agent`(255)),
  ADD KEY `refered_from` (`refered_from`(255)),
  ADD KEY `date` (`date`),
  ADD KEY `page` (`page`(255)),
  ADD KEY `c2c` (`c2c`);

--
-- Indexes for table `nuke_pages`
--
ALTER TABLE `nuke_pages`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `nuke_pages_categories`
--
ALTER TABLE `nuke_pages_categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `nuke_pollcomments`
--
ALTER TABLE `nuke_pollcomments`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `pollID` (`pollID`);

--
-- Indexes for table `nuke_poll_check`
--
ALTER TABLE `nuke_poll_check`
  ADD PRIMARY KEY (`ip`),
  ADD KEY `time` (`time`),
  ADD KEY `pollID` (`pollID`);

--
-- Indexes for table `nuke_poll_data`
--
ALTER TABLE `nuke_poll_data`
  ADD KEY `voteID` (`voteID`),
  ADD KEY `pollID` (`pollID`);

--
-- Indexes for table `nuke_poll_desc`
--
ALTER TABLE `nuke_poll_desc`
  ADD PRIMARY KEY (`pollID`);

--
-- Indexes for table `nuke_quotes`
--
ALTER TABLE `nuke_quotes`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `nuke_referer`
--
ALTER TABLE `nuke_referer`
  ADD PRIMARY KEY (`url`),
  ADD KEY `lasttime` (`lasttime`);

--
-- Indexes for table `nuke_related`
--
ALTER TABLE `nuke_related`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `nuke_reviews`
--
ALTER TABLE `nuke_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_reviews_add`
--
ALTER TABLE `nuke_reviews_add`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_reviews_comments`
--
ALTER TABLE `nuke_reviews_comments`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `rid` (`rid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `nuke_reviews_main`
--
ALTER TABLE `nuke_reviews_main`
  ADD KEY `title` (`title`);

--
-- Indexes for table `nuke_security_agents`
--
ALTER TABLE `nuke_security_agents`
  ADD PRIMARY KEY (`agent_name`);

--
-- Indexes for table `nuke_session`
--
ALTER TABLE `nuke_session`
  ADD PRIMARY KEY (`uname`),
  ADD KEY `time` (`time`),
  ADD KEY `guest` (`guest`);

--
-- Indexes for table `nuke_shoutbox_censor`
--
ALTER TABLE `nuke_shoutbox_censor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_shoutbox_conf`
--
ALTER TABLE `nuke_shoutbox_conf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_shoutbox_date`
--
ALTER TABLE `nuke_shoutbox_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_shoutbox_emoticons`
--
ALTER TABLE `nuke_shoutbox_emoticons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_shoutbox_ipblock`
--
ALTER TABLE `nuke_shoutbox_ipblock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_shoutbox_manage_count`
--
ALTER TABLE `nuke_shoutbox_manage_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_shoutbox_nameblock`
--
ALTER TABLE `nuke_shoutbox_nameblock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_shoutbox_shouts`
--
ALTER TABLE `nuke_shoutbox_shouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_shoutbox_sticky`
--
ALTER TABLE `nuke_shoutbox_sticky`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_shoutbox_themes`
--
ALTER TABLE `nuke_shoutbox_themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_shoutbox_theme_images`
--
ALTER TABLE `nuke_shoutbox_theme_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_shoutbox_version`
--
ALTER TABLE `nuke_shoutbox_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_sommaire`
--
ALTER TABLE `nuke_sommaire`
  ADD PRIMARY KEY (`groupmenu`);

--
-- Indexes for table `nuke_sommaire_categories`
--
ALTER TABLE `nuke_sommaire_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nuke_stats_hour`
--
ALTER TABLE `nuke_stats_hour`
  ADD KEY `year` (`year`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `nuke_subscriptions`
--
ALTER TABLE `nuke_subscriptions`
  ADD PRIMARY KEY (`id`,`userid`);

--
-- Indexes for table `nuke_themes`
--
ALTER TABLE `nuke_themes`
  ADD PRIMARY KEY (`theme_name`);

--
-- Indexes for table `nuke_users`
--
ALTER TABLE `nuke_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `uname` (`username`),
  ADD KEY `user_session_time` (`user_session_time`),
  ADD KEY `user_birthday` (`user_birthday`),
  ADD KEY `user_birthday2` (`user_birthday2`);

--
-- Indexes for table `nuke_users_countries`
--
ALTER TABLE `nuke_users_countries`
  ADD PRIMARY KEY (`id_country`),
  ADD KEY `IDX_NAME` (`name`);

--
-- Indexes for table `nuke_users_temp`
--
ALTER TABLE `nuke_users_temp`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `nuke_users_who_been`
--
ALTER TABLE `nuke_users_who_been`
  ADD PRIMARY KEY (`user_ID`);

--
-- Indexes for table `nuke_welcome_pm`
--
ALTER TABLE `nuke_welcome_pm`
  ADD PRIMARY KEY (`subject`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nuke_banner`
--
ALTER TABLE `nuke_banner`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_banner_clients`
--
ALTER TABLE `nuke_banner_clients`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_banner_plans`
--
ALTER TABLE `nuke_banner_plans`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_banner_positions`
--
ALTER TABLE `nuke_banner_positions`
  MODIFY `apid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbadvanced_username_color`
--
ALTER TABLE `nuke_bbadvanced_username_color`
  MODIFY `nuke_group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbarcade_categories`
--
ALTER TABLE `nuke_bbarcade_categories`
  MODIFY `arcade_catid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbattachments_desc`
--
ALTER TABLE `nuke_bbattachments_desc`
  MODIFY `attach_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbbanlist`
--
ALTER TABLE `nuke_bbbanlist`
  MODIFY `ban_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbcategories`
--
ALTER TABLE `nuke_bbcategories`
  MODIFY `cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbdisallow`
--
ALTER TABLE `nuke_bbdisallow`
  MODIFY `disallow_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbextensions`
--
ALTER TABLE `nuke_bbextensions`
  MODIFY `ext_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbextension_groups`
--
ALTER TABLE `nuke_bbextension_groups`
  MODIFY `nuke_group_id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbforbidden_extensions`
--
ALTER TABLE `nuke_bbforbidden_extensions`
  MODIFY `ext_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbforums`
--
ALTER TABLE `nuke_bbforums`
  MODIFY `forum_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbforum_prune`
--
ALTER TABLE `nuke_bbforum_prune`
  MODIFY `prune_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbgames`
--
ALTER TABLE `nuke_bbgames`
  MODIFY `game_id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbgroups`
--
ALTER TABLE `nuke_bbgroups`
  MODIFY `nuke_group_id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbinline_ads`
--
ALTER TABLE `nuke_bbinline_ads`
  MODIFY `ad_id` tinyint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bblogs`
--
ALTER TABLE `nuke_bblogs`
  MODIFY `log_id` mediumint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbposts`
--
ALTER TABLE `nuke_bbposts`
  MODIFY `post_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbpost_reports`
--
ALTER TABLE `nuke_bbpost_reports`
  MODIFY `report_id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbprivmsgs`
--
ALTER TABLE `nuke_bbprivmsgs`
  MODIFY `privmsgs_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbprivmsgs_archive`
--
ALTER TABLE `nuke_bbprivmsgs_archive`
  MODIFY `privmsgs_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbquicksearch`
--
ALTER TABLE `nuke_bbquicksearch`
  MODIFY `search_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbquota_limits`
--
ALTER TABLE `nuke_bbquota_limits`
  MODIFY `quota_limit_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbranks`
--
ALTER TABLE `nuke_bbranks`
  MODIFY `rank_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbsearch_rebuild`
--
ALTER TABLE `nuke_bbsearch_rebuild`
  MODIFY `rebuild_session_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbsearch_wordlist`
--
ALTER TABLE `nuke_bbsearch_wordlist`
  MODIFY `word_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbsearch_wordmatch`
--
ALTER TABLE `nuke_bbsearch_wordmatch`
  MODIFY `word_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbsmilies`
--
ALTER TABLE `nuke_bbsmilies`
  MODIFY `smilies_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbstats_modules`
--
ALTER TABLE `nuke_bbstats_modules`
  MODIFY `module_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbthemes`
--
ALTER TABLE `nuke_bbthemes`
  MODIFY `themes_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbtopics`
--
ALTER TABLE `nuke_bbtopics`
  MODIFY `topic_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbtopic_moved`
--
ALTER TABLE `nuke_bbtopic_moved`
  MODIFY `moved_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbvote_desc`
--
ALTER TABLE `nuke_bbvote_desc`
  MODIFY `vote_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bbwords`
--
ALTER TABLE `nuke_bbwords`
  MODIFY `word_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_blocks`
--
ALTER TABLE `nuke_blocks`
  MODIFY `bid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_blogs`
--
ALTER TABLE `nuke_blogs`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_blogs_autoblog`
--
ALTER TABLE `nuke_blogs_autoblog`
  MODIFY `anid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_blogs_cat`
--
ALTER TABLE `nuke_blogs_cat`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_blogs_comments`
--
ALTER TABLE `nuke_blogs_comments`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_blogs_queue`
--
ALTER TABLE `nuke_blogs_queue`
  MODIFY `qid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_blogs_topics`
--
ALTER TABLE `nuke_blogs_topics`
  MODIFY `topicid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bookmarks`
--
ALTER TABLE `nuke_bookmarks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_bookmarks_cat`
--
ALTER TABLE `nuke_bookmarks_cat`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_cemetery`
--
ALTER TABLE `nuke_cemetery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_cemetery_cat`
--
ALTER TABLE `nuke_cemetery_cat`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_cnbya_field`
--
ALTER TABLE `nuke_cnbya_field`
  MODIFY `fid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_cnbya_value`
--
ALTER TABLE `nuke_cnbya_value`
  MODIFY `vid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_cnbya_value_temp`
--
ALTER TABLE `nuke_cnbya_value_temp`
  MODIFY `vid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_donators`
--
ALTER TABLE `nuke_donators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_ecalendar`
--
ALTER TABLE `nuke_ecalendar`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_faqanswer`
--
ALTER TABLE `nuke_faqanswer`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_faqcategories`
--
ALTER TABLE `nuke_faqcategories`
  MODIFY `id_cat` tinyint(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_file_repository_categories`
--
ALTER TABLE `nuke_file_repository_categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_file_repository_comments`
--
ALTER TABLE `nuke_file_repository_comments`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_file_repository_files`
--
ALTER TABLE `nuke_file_repository_files`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_file_repository_items`
--
ALTER TABLE `nuke_file_repository_items`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_file_repository_screenshots`
--
ALTER TABLE `nuke_file_repository_screenshots`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_headlines`
--
ALTER TABLE `nuke_headlines`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_hnl_categories`
--
ALTER TABLE `nuke_hnl_categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_hnl_newsletters`
--
ALTER TABLE `nuke_hnl_newsletters`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_honeypot`
--
ALTER TABLE `nuke_honeypot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_image_repository_uploads`
--
ALTER TABLE `nuke_image_repository_uploads`
  MODIFY `pid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_image_repository_users`
--
ALTER TABLE `nuke_image_repository_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_journal`
--
ALTER TABLE `nuke_journal`
  MODIFY `jid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_journal_comments`
--
ALTER TABLE `nuke_journal_comments`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_journal_stats`
--
ALTER TABLE `nuke_journal_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_links_categories`
--
ALTER TABLE `nuke_links_categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_links_links`
--
ALTER TABLE `nuke_links_links`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_links_modrequest`
--
ALTER TABLE `nuke_links_modrequest`
  MODIFY `requestid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_links_newlink`
--
ALTER TABLE `nuke_links_newlink`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_links_votedata`
--
ALTER TABLE `nuke_links_votedata`
  MODIFY `ratingdbid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_link_us`
--
ALTER TABLE `nuke_link_us`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_menu_categories`
--
ALTER TABLE `nuke_menu_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_message`
--
ALTER TABLE `nuke_message`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_modules`
--
ALTER TABLE `nuke_modules`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_modules_cat`
--
ALTER TABLE `nuke_modules_cat`
  MODIFY `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_modules_links`
--
ALTER TABLE `nuke_modules_links`
  MODIFY `lid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_nsnsp_sites`
--
ALTER TABLE `nuke_nsnsp_sites`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_nsnst_harvesters`
--
ALTER TABLE `nuke_nsnst_harvesters`
  MODIFY `hid` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_nsnst_referers`
--
ALTER TABLE `nuke_nsnst_referers`
  MODIFY `rid` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_nsnst_tracked_ips`
--
ALTER TABLE `nuke_nsnst_tracked_ips`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_pages`
--
ALTER TABLE `nuke_pages`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_pages_categories`
--
ALTER TABLE `nuke_pages_categories`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_pollcomments`
--
ALTER TABLE `nuke_pollcomments`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_poll_desc`
--
ALTER TABLE `nuke_poll_desc`
  MODIFY `pollID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_quotes`
--
ALTER TABLE `nuke_quotes`
  MODIFY `qid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_related`
--
ALTER TABLE `nuke_related`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_reviews`
--
ALTER TABLE `nuke_reviews`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_reviews_add`
--
ALTER TABLE `nuke_reviews_add`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_reviews_comments`
--
ALTER TABLE `nuke_reviews_comments`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_shoutbox_censor`
--
ALTER TABLE `nuke_shoutbox_censor`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_shoutbox_emoticons`
--
ALTER TABLE `nuke_shoutbox_emoticons`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_shoutbox_ipblock`
--
ALTER TABLE `nuke_shoutbox_ipblock`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_shoutbox_manage_count`
--
ALTER TABLE `nuke_shoutbox_manage_count`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_shoutbox_nameblock`
--
ALTER TABLE `nuke_shoutbox_nameblock`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_shoutbox_shouts`
--
ALTER TABLE `nuke_shoutbox_shouts`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_shoutbox_sticky`
--
ALTER TABLE `nuke_shoutbox_sticky`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_shoutbox_themes`
--
ALTER TABLE `nuke_shoutbox_themes`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_shoutbox_theme_images`
--
ALTER TABLE `nuke_shoutbox_theme_images`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_sommaire_categories`
--
ALTER TABLE `nuke_sommaire_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_subscriptions`
--
ALTER TABLE `nuke_subscriptions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_users`
--
ALTER TABLE `nuke_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_users_countries`
--
ALTER TABLE `nuke_users_countries`
  MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nuke_users_temp`
--
ALTER TABLE `nuke_users_temp`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
