-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 28, 2014 at 01:26 PM
-- Server version: 5.5.28
-- PHP Version: 5.3.10-1ubuntu3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `micro_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8_unicode_ci,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_due_date` date DEFAULT NULL,
  `no_of_contact` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `company_address`, `contact_person`, `email`, `application_due_date`, `no_of_contact`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Tech Schema', 'UNR', 'Sandip', 'sandip@gmail.com', '2016-08-17', 30, 1, '2014-04-12 13:12:27', '2014-04-12 13:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_no` bigint(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `contact_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `contact_no`, `date_of_birth`, `address`, `created_at`, `updated_at`, `contact_group_id`) VALUES
(4, 'Sandip Karanjekar', 'sandipkaranjekar@gmail.com', 9604737557, '1990-03-12', 'Mumbai', '2014-04-19 11:16:52', '2014-04-27 12:29:00', 5),
(5, 'Hemraj Solanki', 'siya21211@gmail.com', 9920518910, '1984-06-04', 'Badlapur', '2014-04-19 11:17:58', '2014-04-27 12:29:34', 5),
(6, 'Deepak K', 'deepak@gmail.com', 7276084437, '1991-05-24', 'Dadar', '2014-04-19 11:18:44', '2014-04-20 10:22:32', 6),
(7, 'Nilesh Kene', 'nileshkene@gmail.com', 8097268908, '2014-04-25', 'Kalyan', '2014-04-25 14:04:48', '2014-04-25 14:24:48', 5),
(8, 'Pravin Nair', 'pravin.nair@gmail.com', 9820463155, '2014-04-25', 'UNR', '2014-04-25 14:21:06', '2014-04-25 14:21:06', 5),
(9, 'Mangesh Mohade', 'mangesh.mohade@gmail.com', 9860568772, '2014-04-26', 'UNR', '2014-04-26 14:04:28', '2014-04-26 14:04:28', 5),
(10, 'Dhanjay Ganvir', 'dganvir@gmail.com', 9967662618, '2014-04-27', 'UNR', '2014-04-27 10:25:53', '2014-04-27 10:25:53', 6);

-- --------------------------------------------------------

--
-- Table structure for table `contact_groups`
--

CREATE TABLE IF NOT EXISTS `contact_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_group_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_group_description` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `contact_groups`
--

INSERT INTO `contact_groups` (`id`, `contact_group_name`, `contact_group_description`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 'Dealers', 'All raw material dealers are included in this project.', 1, '2014-04-19 11:11:04', '2014-04-19 11:11:04'),
(5, 'Employees', 'All company employees are included in this group.', 1, '2014-04-19 11:11:36', '2014-04-19 11:11:44'),
(6, 'Clients', 'All client contacts are included in this group.', 1, '2014-04-19 11:12:17', '2014-04-19 11:12:17'),
(7, 'Supplier', 'Supplier', 1, '2014-04-26 07:24:43', '2014-04-26 07:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_description` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `group_description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin group', 'Superadmin group', 1, '2014-04-28 07:27:35', '2014-04-28 07:27:35'),
(2, 'Admin group', 'Admin group', 1, '2014-04-28 07:28:15', '2014-04-28 07:28:15'),
(3, 'User group', 'User group', 1, '2014-04-28 07:28:50', '2014-04-28 07:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `groups_privileges`
--

CREATE TABLE IF NOT EXISTS `groups_privileges` (
  `group_id` int(11) DEFAULT NULL,
  `privilege_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `groups_privileges`
--

INSERT INTO `groups_privileges` (`group_id`, `privilege_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 21),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(3, 30),
(3, 31),
(3, 32),
(3, 33),
(3, 34),
(3, 35),
(3, 36),
(3, 37),
(3, 38),
(3, 39),
(3, 40),
(3, 41);

-- --------------------------------------------------------

--
-- Table structure for table `groups_roles`
--

CREATE TABLE IF NOT EXISTS `groups_roles` (
  `group_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `groups_roles`
--

INSERT INTO `groups_roles` (`group_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE IF NOT EXISTS `privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privilege_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `privilege_description` text COLLATE utf8_unicode_ci,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `system_module_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=42 ;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `privilege_name`, `privilege_description`, `controller`, `action`, `is_active`, `created_at`, `updated_at`, `system_module_id`) VALUES
(1, 'USER_NEW', 'USER_NEW', 'users', 'new', 1, '2014-04-28 06:24:23', '2014-04-28 06:24:23', 1),
(2, 'USER_EDIT', 'USER_EDIT', 'users', 'edit', 1, '2014-04-28 06:24:53', '2014-04-28 06:24:53', 1),
(3, 'USER_LIST', 'USER_LIST', 'users', 'list', 1, '2014-04-28 06:25:24', '2014-04-28 06:25:29', 1),
(4, 'USER_DESTROY', 'USER_DESTROY', 'users', 'destroy', 1, '2014-04-28 06:25:59', '2014-04-28 06:25:59', 1),
(5, 'ROLE_LIST', 'ROLE_LIST', 'roles', 'list', 1, '2014-04-28 06:26:31', '2014-04-28 06:26:31', 2),
(6, 'ROLE_NEW', 'ROLE_NEW', 'roles', 'new', 1, '2014-04-28 06:26:55', '2014-04-28 06:26:55', 2),
(7, 'ROLE_EDIT', 'ROLE_EDIT', 'roles', 'edit', 1, '2014-04-28 06:29:16', '2014-04-28 06:29:16', 2),
(8, 'ROLE_DESTROY', 'ROLE_DESTROY', 'roles', 'destroy', 1, '2014-04-28 06:30:00', '2014-04-28 06:30:00', 2),
(9, 'GROUP_LIST', 'GROUP_LIST', 'groups', 'list', 1, '2014-04-28 06:30:50', '2014-04-28 06:30:50', 3),
(10, 'GROUP_NEW', 'GROUP_NEW', 'groups', 'new', 1, '2014-04-28 06:31:21', '2014-04-28 06:31:21', 3),
(11, 'GROUP_EDIT', 'GROUP_EDIT', 'groups', 'edit', 1, '2014-04-28 06:31:54', '2014-04-28 06:31:54', 3),
(12, 'GROUP_DESTROY', 'GROUP_DESTROY', 'groups', 'destroy', 1, '2014-04-28 06:32:24', '2014-04-28 06:32:24', 3),
(13, 'PRIVILEGE_LIST', 'PRIVILEGE_LIST', 'privileges', 'list', 1, '2014-04-28 06:32:56', '2014-04-28 06:32:56', 4),
(14, 'PRIVILEGE_NEW', 'PRIVILEGE_NEW', 'privileges', 'new', 1, '2014-04-28 06:33:28', '2014-04-28 06:33:28', 4),
(15, 'PRIVILEGE_EDIT', 'PRIVILEGE_EDIT', 'privileges', 'edit', 1, '2014-04-28 06:36:07', '2014-04-28 06:36:07', 4),
(16, 'PRIVILEGE_DESTROY', 'PRIVILEGE_DESTROY', 'privileges', 'destroy', 1, '2014-04-28 06:36:31', '2014-04-28 06:36:31', 4),
(17, 'SYSTEM_MODULES_LIST', 'SYSTEM_MODULES_LIST', 'system_modules', 'list', 1, '2014-04-28 06:37:29', '2014-04-28 06:37:29', 5),
(18, 'SYSTEM_MODULES_NEW', 'SYSTEM_MODULES_NEW', 'system_modules', 'new', 1, '2014-04-28 06:37:58', '2014-04-28 06:37:58', 5),
(19, 'SYSTEM_MODULES_EDIT', 'SYSTEM_MODULES_EDIT', 'system_modules', 'edit', 1, '2014-04-28 06:39:09', '2014-04-28 06:39:09', 5),
(20, 'SYSTEM_MODULES_DESTROY', 'SYSTEM_MODULES_DESTROY', 'system_modules', 'destroy', 1, '2014-04-28 06:39:09', '2014-04-28 06:39:37', 5),
(21, 'CONTACT_GROUP_LIST', 'CONTACT_GROUP_LIST', 'contact_groups', 'list', 1, '2014-04-28 06:40:23', '2014-04-28 06:40:23', 6),
(23, 'CONTACT_GROUP_NEW', 'CONTACT_GROUP_NEW', 'contact_groups', 'new', 1, '2014-04-28 06:41:27', '2014-04-28 06:41:27', 6),
(24, 'CONTACT_GROUP_EDIT', 'CONTACT_GROUP_EDIT', 'contact_groups', 'edit', 1, '2014-04-28 06:42:40', '2014-04-28 06:42:40', 6),
(25, 'CONTACT_GROUP_DESTROY', 'CONTACT_GROUP_DESTROY', 'contact_groups', 'destroy', 1, '2014-04-28 06:43:08', '2014-04-28 06:43:08', 6),
(26, 'CONTACT_LIST', 'CONTACT_LIST', 'contacts', 'list', 1, '2014-04-28 06:43:47', '2014-04-28 06:43:47', 7),
(27, 'CONTACT_NEW', 'CONTACT_NEW', 'contacts', 'new', 1, '2014-04-28 06:45:10', '2014-04-28 06:45:10', 7),
(28, 'CONTACT_EDIT', 'CONTACT_EDIT', 'contacts', 'edit', 1, '2014-04-28 06:45:43', '2014-04-28 06:45:43', 7),
(29, 'CONTACT_DESTROY', 'CONTACT_DESTROY', 'contacts', 'destroy', 1, '2014-04-28 06:46:30', '2014-04-28 06:46:30', 7),
(30, 'SMS_TEMPLATE_LIST', 'SMS_TEMPLATE_LIST', 'sms_templates', 'list', 1, '2014-04-28 06:47:16', '2014-04-28 06:47:16', 8),
(31, 'SMS_TEMPLATE_NEW', 'SMS_TEMPLATE_NEW', 'sms_templates', 'new', 1, '2014-04-28 06:49:09', '2014-04-28 06:49:09', 8),
(32, 'SMS_TEMPLATE_EDIT', 'SMS_TEMPLATE_EDIT', 'sms_templates', 'edit', 1, '2014-04-28 06:49:42', '2014-04-28 06:49:42', 8),
(33, 'SMS_TEMPLATE_DESTROY', 'SMS_TEMPLATE_DESTROY', 'sms_templates', 'destroy', 1, '2014-04-28 06:51:42', '2014-04-28 07:18:34', 8),
(34, 'COMPOSE_SMS_LIST', 'COMPOSE_SMS_LIST', 'compose_sms', 'list', 1, '2014-04-28 07:20:24', '2014-04-28 07:20:24', 9),
(35, 'COMPOSE_EMAIL_LIST', 'COMPOSE_EMAIL_LIST', 'compose_email', 'list', 1, '2014-04-28 07:22:42', '2014-04-28 07:22:42', 10),
(36, 'SET_REMINDER_LIST', 'SET_REMINDER_LIST', 'set_reminders', 'list', 1, '2014-04-28 07:24:11', '2014-04-28 07:24:11', 11),
(37, 'SET_REMINDER_NEW', 'SET_REMINDER_NEW', 'set_reminders', 'new', 1, '2014-04-28 07:24:38', '2014-04-28 07:24:38', 11),
(38, 'SET_REMINDER_EDIT', 'SET_REMINDER_EDIT', 'set_reminders', 'edit', 1, '2014-04-28 07:25:07', '2014-04-28 07:25:07', 11),
(39, 'SET_REMINDER_DESTROY', 'SET_REMINDER_DESTROY', 'set_reminders', 'destroy', 1, '2014-04-28 07:25:36', '2014-04-28 07:25:36', 11),
(40, 'REPORT_LIST', 'REPORT_LIST', 'reports', 'list', 1, '2014-04-28 07:26:15', '2014-04-28 07:26:15', 12),
(41, 'GRAPH_LIST', 'GRAPH_LIST', 'graphs', 'list', 1, '2014-04-28 07:26:39', '2014-04-28 07:26:39', 13);

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE IF NOT EXISTS `reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `at_time` time DEFAULT NULL,
  `at_date` date DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `recurrence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `contact_group_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `title`, `description`, `at_time`, `at_date`, `message`, `recurrence`, `created_at`, `updated_at`, `contact_group_id`, `is_active`) VALUES
(12, 'Diwali greeting', 'Diwali greeting', '09:16:00', '2014-04-27', 'Happy Dipawali', 'Never', '2014-04-27 10:17:31', '2014-04-27 11:34:30', 5, 0),
(13, 'Test', 'Test', '10:17:00', NULL, 'Test sms', 'Every_day', '2014-04-27 10:18:09', '2014-04-27 10:18:09', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_description` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `role_description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Super admin', 'Belongs to superadmin group', 1, '2014-04-28 07:29:15', '2014-04-28 07:29:15'),
(2, 'Admin', 'Belongs to admin group', 1, '2014-04-28 07:29:32', '2014-04-28 07:29:32'),
(3, 'User', 'Belongs to user group', 1, '2014-04-28 07:29:47', '2014-04-28 07:30:32');

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE IF NOT EXISTS `roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles_users`
--

INSERT INTO `roles_users` (`role_id`, `user_id`) VALUES
(1, 8),
(2, 21),
(3, 22);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_contacts`
--

CREATE TABLE IF NOT EXISTS `schedule_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_no` bigint(11) DEFAULT NULL,
  `reminder_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=38 ;

--
-- Dumping data for table `schedule_contacts`
--

INSERT INTO `schedule_contacts` (`id`, `name`, `contact_no`, `reminder_id`, `status`) VALUES
(33, 'Deepak K', 7276084437, 13, 'Pending'),
(35, 'Sandip Karanjekar', 9604737557, 12, 'Delivered'),
(36, 'Hemraj Solanki', 9920518910, 12, 'Delivered'),
(37, 'Mangesh Mohade', 9860568772, 12, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20140227062835'),
('20140227063735'),
('20140228044729'),
('20140301044547'),
('20140301052127'),
('20140304101617'),
('20140304103853'),
('20140304104044'),
('20140309042848'),
('20140320072423'),
('20140412131048'),
('20140412140309'),
('20140412152153'),
('20140414044811'),
('20140425061133'),
('20140425061540'),
('20140425074620'),
('20140425090247'),
('20140427090700'),
('20140427133643');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE IF NOT EXISTS `sms_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Happy holi', '2014-04-27 13:53:01', '2014-04-27 13:53:01'),
(2, 'How are you?', '2014-04-27 14:10:52', '2014-04-27 14:10:52'),
(3, 'Welcome to Tech Schema', '2014-04-27 14:11:04', '2014-04-27 14:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `system_modules`
--

CREATE TABLE IF NOT EXISTS `system_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `system_module_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_module_description` text COLLATE utf8_unicode_ci,
  `system_module_order` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `system_modules`
--

INSERT INTO `system_modules` (`id`, `system_module_name`, `system_module_description`, `system_module_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users module contains add, edit and delete facilities for user management.', 1, 1, '2014-03-20 06:28:00', '2014-03-20 06:30:04'),
(2, 'Roles', 'Roles contains add, edit and delete facilities for role management', 2, 1, '2014-03-20 06:29:48', '2014-03-20 06:29:48'),
(3, 'Groups', 'Groups contains add, edit and delete facilities for group management', 3, 1, '2014-03-20 14:46:00', '2014-03-20 14:46:00'),
(4, 'Privileges', 'Privileges contains add, edit and delete facilities for privilege management', 4, 1, '2014-03-20 14:46:34', '2014-04-14 06:53:01'),
(5, 'System modules', 'System modules contains add, edit and delete facilities for system modules management', 5, 1, '2014-04-28 06:17:41', '2014-04-28 06:17:41'),
(6, 'Contact groups', 'Contact groups contains add, edit and delete facilities for contact groups management', 6, 1, '2014-04-28 06:18:16', '2014-04-28 06:18:30'),
(7, 'Contacts', 'Contacts contains add, edit and delete facilities for contacts management', 7, 1, '2014-04-28 06:19:23', '2014-04-28 06:19:23'),
(8, 'SMS templates', 'SMS templates contains add, edit and delete facilities for SMS templates management', 8, 1, '2014-04-28 06:19:54', '2014-04-28 06:19:54'),
(9, 'Compose SMS', 'Compose SMS contains add, edit and delete facilities for Compose SMS management', 9, 1, '2014-04-28 06:20:39', '2014-04-28 06:20:39'),
(10, 'Compose email', 'Compose email contains add, edit and delete facilities for Compose email management', 10, 1, '2014-04-28 06:21:27', '2014-04-28 06:21:27'),
(11, 'Set reminder', 'Set reminder contains add, edit and delete facilities for set reminder management', 11, 1, '2014-04-28 06:22:14', '2014-04-28 06:22:14'),
(12, 'Report', 'Report contains add, edit and delete facilities for report management', 12, 1, '2014-04-28 06:22:45', '2014-04-28 06:22:45'),
(13, 'Graph', 'Graph contains add, edit and delete facilities for graph management', 13, 1, '2014-04-28 06:23:10', '2014-04-28 06:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_no` bigint(20) DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_digest`, `gender`, `contact_no`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(8, 'sandipkaranjekar@gmail.com', '$2a$10$L5SS3eYfix60ArI65p1NIO0gBccNYVy.Sr04IFO0V8TYWP7hdFGv6', 'Male', 9604737557, 'unr', 1, '2014-02-27 07:30:57', '2014-04-25 08:58:40'),
(21, 'info@techschema.com', '$2a$10$LbKgmXdjjW554B9O9twN1OekRLFYwnPPnBbiu4jSZKFRrU3O94Ujq', 'Male', 9604737557, 'Mumbai', 1, '2014-04-19 11:06:10', '2014-04-19 11:06:10'),
(22, 'deepak@techschema.com', '$2a$10$1Yrj79UahQZTw3jmw6OdyelH34dZiYA/7Si3xRDQ.4fKahVi5VAqG', 'Male', 7276844037, 'UNR', 1, '2014-04-28 07:31:17', '2014-04-28 07:31:17');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
