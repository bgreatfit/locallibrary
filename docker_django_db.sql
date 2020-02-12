-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2020 at 07:50 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `docker_django_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessrecords`
--

CREATE TABLE `accessrecords` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `webpage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Librarians'),
(1, 'Library Members');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add question', 7, 'add_question'),
(26, 'Can change question', 7, 'change_question'),
(27, 'Can delete question', 7, 'delete_question'),
(28, 'Can view question', 7, 'view_question'),
(29, 'Can add choice', 8, 'add_choice'),
(30, 'Can change choice', 8, 'change_choice'),
(31, 'Can delete choice', 8, 'delete_choice'),
(32, 'Can view choice', 8, 'view_choice'),
(33, 'Can add topic', 9, 'add_topic'),
(34, 'Can change topic', 9, 'change_topic'),
(35, 'Can delete topic', 9, 'delete_topic'),
(36, 'Can view topic', 9, 'view_topic'),
(37, 'Can add web page', 10, 'add_webpage'),
(38, 'Can change web page', 10, 'change_webpage'),
(39, 'Can delete web page', 10, 'delete_webpage'),
(40, 'Can view web page', 10, 'view_webpage'),
(41, 'Can add access records', 11, 'add_accessrecords'),
(42, 'Can change access records', 11, 'change_accessrecords'),
(43, 'Can delete access records', 11, 'delete_accessrecords'),
(44, 'Can view access records', 11, 'view_accessrecords'),
(45, 'Can add users', 12, 'add_users'),
(46, 'Can change users', 12, 'change_users'),
(47, 'Can delete users', 12, 'delete_users'),
(48, 'Can view users', 12, 'view_users'),
(49, 'Can add post', 13, 'add_post'),
(50, 'Can change post', 13, 'change_post'),
(51, 'Can delete post', 13, 'delete_post'),
(52, 'Can view post', 13, 'view_post'),
(53, 'Can add comment', 14, 'add_comment'),
(54, 'Can change comment', 14, 'change_comment'),
(55, 'Can delete comment', 14, 'delete_comment'),
(56, 'Can view comment', 14, 'view_comment'),
(57, 'Can add genre', 15, 'add_genre'),
(58, 'Can change genre', 15, 'change_genre'),
(59, 'Can delete genre', 15, 'delete_genre'),
(60, 'Can view genre', 15, 'view_genre'),
(61, 'Can add book', 16, 'add_book'),
(62, 'Can change book', 16, 'change_book'),
(63, 'Can delete book', 16, 'delete_book'),
(64, 'Can view book', 16, 'view_book'),
(65, 'Can add language', 17, 'add_language'),
(66, 'Can change language', 17, 'change_language'),
(67, 'Can delete language', 17, 'delete_language'),
(68, 'Can view language', 17, 'view_language'),
(69, 'Can add book instance', 18, 'add_bookinstance'),
(70, 'Can change book instance', 18, 'change_bookinstance'),
(71, 'Can delete book instance', 18, 'delete_bookinstance'),
(72, 'Can view book instance', 18, 'view_bookinstance'),
(73, 'Can add author', 19, 'add_author'),
(74, 'Can change author', 19, 'change_author'),
(75, 'Can delete author', 19, 'delete_author'),
(76, 'Can view author', 19, 'view_author'),
(77, 'Can add log entry', 20, 'add_logentry'),
(78, 'Can change log entry', 20, 'change_logentry'),
(79, 'Can delete log entry', 20, 'delete_logentry'),
(80, 'Can view log entry', 20, 'view_logentry'),
(81, 'Can add permission', 21, 'add_permission'),
(82, 'Can change permission', 21, 'change_permission'),
(83, 'Can delete permission', 21, 'delete_permission'),
(84, 'Can view permission', 21, 'view_permission'),
(85, 'Can add group', 22, 'add_group'),
(86, 'Can change group', 22, 'change_group'),
(87, 'Can delete group', 22, 'delete_group'),
(88, 'Can view group', 22, 'view_group'),
(89, 'Can add user', 23, 'add_user'),
(90, 'Can change user', 23, 'change_user'),
(91, 'Can delete user', 23, 'delete_user'),
(92, 'Can view user', 23, 'view_user'),
(93, 'Can add content type', 24, 'add_contenttype'),
(94, 'Can change content type', 24, 'change_contenttype'),
(95, 'Can delete content type', 24, 'delete_contenttype'),
(96, 'Can view content type', 24, 'view_contenttype'),
(97, 'Can add session', 25, 'add_session'),
(98, 'Can change session', 25, 'change_session'),
(99, 'Can delete session', 25, 'delete_session'),
(100, 'Can view session', 25, 'view_session'),
(101, 'Can add author', 26, 'add_author'),
(102, 'Can change author', 26, 'change_author'),
(103, 'Can delete author', 26, 'delete_author'),
(104, 'Can view author', 26, 'view_author'),
(105, 'Can add book', 27, 'add_book'),
(106, 'Can change book', 27, 'change_book'),
(107, 'Can delete book', 27, 'delete_book'),
(108, 'Can view book', 27, 'view_book'),
(109, 'Can add genre', 28, 'add_genre'),
(110, 'Can change genre', 28, 'change_genre'),
(111, 'Can delete genre', 28, 'delete_genre'),
(112, 'Can view genre', 28, 'view_genre'),
(113, 'Can add language', 29, 'add_language'),
(114, 'Can change language', 29, 'change_language'),
(115, 'Can delete language', 29, 'delete_language'),
(116, 'Can view language', 29, 'view_language'),
(117, 'Can add book instance', 30, 'add_bookinstance'),
(118, 'Can change book instance', 30, 'change_bookinstance'),
(119, 'Can delete book instance', 30, 'delete_bookinstance'),
(120, 'Can view book instance', 30, 'view_bookinstance'),
(121, 'Set book as returned', 30, 'can_mark_returned'),
(122, 'Can add blog', 31, 'add_blog'),
(123, 'Can change blog', 31, 'change_blog'),
(124, 'Can delete blog', 31, 'delete_blog'),
(125, 'Can view blog', 31, 'view_blog'),
(126, 'Can add author', 32, 'add_author'),
(127, 'Can change author', 32, 'change_author'),
(128, 'Can delete author', 32, 'delete_author'),
(129, 'Can view author', 32, 'view_author'),
(130, 'Can add entry', 33, 'add_entry'),
(131, 'Can change entry', 33, 'change_entry'),
(132, 'Can delete entry', 33, 'delete_entry'),
(133, 'Can view entry', 33, 'view_entry');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$kBO9CUwIwkwa$nLC1GtuZJa32gm+ERlooq6ekb4+6pfkGruMahn2EDDc=', '2020-02-02 15:26:05.962994', 1, 'admin', '', '', '', 1, 1, '2019-05-16 02:56:07.857190'),
(2, 'pbkdf2_sha256$150000$69LWWgoUSJba$1BqsLnatMhPbcfAmXBcu9d8ic46dFzN2Jfh4ttkH3BE=', '2020-01-26 22:34:32.573787', 0, 'mikegreat', '', '', '', 0, 1, '2019-05-16 06:26:13.000000'),
(3, 'pbkdf2_sha256$120000$3LOXmfoc8TFP$r+T49eTPrmexYH5Vc2TuUKj4giPaqex8QWJ7uxnO2bo=', NULL, 0, 'Seun', '', '', '', 0, 1, '2019-05-16 06:29:19.000000'),
(4, 'pbkdf2_sha256$120000$YnvUpxZNMP51$5q+AGNe10ZvFIoS5tpdFufqP+tsBBbrnxVOlcckhBmc=', '2019-05-19 14:41:48.139594', 0, 'mike', '', '', '', 0, 1, '2019-05-19 14:41:47.423378'),
(5, 'pbkdf2_sha256$150000$BDgRASsFGDB7$2/mke9A3Qss+ND7CZASeTr35pZgWkJvV6SLBfk5K3mE=', '2020-01-26 17:43:23.000000', 1, 'pearlstack', '', '', 'admin@admin.com', 1, 1, '2020-01-26 17:42:54.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1),
(2, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL,
  `author` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `publish_date` datetime(6) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_author`
--

CREATE TABLE `catalog_author` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_death` date DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalog_author`
--

INSERT INTO `catalog_author` (`id`, `first_name`, `last_name`, `date_of_birth`, `date_of_death`, `full_name`) VALUES
(1, 'Micheal', 'Ojemoron', '2019-05-16', '2019-05-16', 'Micheal Ojemoron'),
(2, 'Tayo', 'Ojo', '2019-05-16', '2019-05-16', 'Tayo Ojo');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_book`
--

CREATE TABLE `catalog_book` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `summary` longtext NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalog_book`
--

INSERT INTO `catalog_book` (`id`, `title`, `isbn`, `summary`, `author_id`, `language_id`) VALUES
(1, '(Django) How to run test suite in Travis CI', '1111111111111', 'This s the summary', 2, 2),
(2, 'The Tale between two cities', '3333333333333', 'hghoijpokpl\';.\'; ; lm,k,[kpkibygreaweafv', 1, 1),
(3, 'Bookie', '555555555555', 'this a boy', 1, 1),
(4, 'The King', '', '', 1, NULL),
(5, 'The King', '', '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_bookinstance`
--

CREATE TABLE `catalog_bookinstance` (
  `id` char(32) NOT NULL,
  `imprint` varchar(200) NOT NULL,
  `due_back` date DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `borrower_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalog_bookinstance`
--

INSERT INTO `catalog_bookinstance` (`id`, `imprint`, `due_back`, `status`, `book_id`, `borrower_id`) VALUES
('274523b04ee446b78c187d1a9636f3c7', 'ssztvhbkj', '2019-05-31', 'o', 2, 2),
('3124367fa30748a09c81b8c5693618b4', 'uuuh[[[', '2019-05-16', 'a', 2, NULL),
('8009bb652d4a4d6ea04ba3408318907f', 'm,n klnlkm;l', NULL, 'r', 2, 1),
('8f761d61528349e0b6c444620f8dffda', 'Beautifull', NULL, 'm', 1, NULL),
('c1540524233f44ed931358bad5c3b64e', 'kmopkpl[];];\']\'', '2019-05-16', 'r', 1, NULL),
('dbbb515daf47448095a3e15492822ba9', 'ttyhbjokl', '2019-05-16', 'o', 1, NULL),
('e5dae96d7bb1420b8f3933f3b1e08314', 'yeeeeeeeeee', '2019-06-04', 'o', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_book_genre`
--

CREATE TABLE `catalog_book_genre` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalog_book_genre`
--

INSERT INTO `catalog_book_genre` (`id`, `book_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(4, 2, 1),
(5, 3, 1),
(6, 5, 1),
(7, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_genre`
--

CREATE TABLE `catalog_genre` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalog_genre`
--

INSERT INTO `catalog_genre` (`id`, `name`) VALUES
(1, 'Science Fiction'),
(2, 'Mystery');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_language`
--

CREATE TABLE `catalog_language` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalog_language`
--

INSERT INTO `catalog_language` (`id`, `name`) VALUES
(1, 'English'),
(2, 'French');

-- --------------------------------------------------------

--
-- Table structure for table `choice`
--

CREATE TABLE `choice` (
  `id` int(11) NOT NULL,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-05-16 02:56:35.558191', '1', 'Ojemoron, Micheal', 1, '[{\"added\": {}}]', 19, 1),
(2, '2019-05-16 02:56:45.714043', '2', 'Ojo, Tayo', 1, '[{\"added\": {}}]', 19, 1),
(3, '2019-05-16 02:56:56.265057', '1', 'Science Fiction', 1, '[{\"added\": {}}]', 15, 1),
(4, '2019-05-16 02:57:06.204610', '2', 'Mystery', 1, '[{\"added\": {}}]', 15, 1),
(5, '2019-05-16 02:57:30.909237', '1', 'English', 1, '[{\"added\": {}}]', 17, 1),
(6, '2019-05-16 02:57:42.676036', '2', 'French', 1, '[{\"added\": {}}]', 17, 1),
(7, '2019-05-16 02:58:11.476600', '1', '(Django) How to run test suite in Travis CI', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"book instance\", \"object\": \"8f761d61-5283-49e0-b6c4-44620f8dffda ((Django) How to run test suite in Travis CI)\"}}, {\"added\": {\"name\": \"book instance\", \"object\": \"dbbb515d-af47-4480-95a3-e15492822ba9 ((Django) How to run test suite in Travis CI)\"}}, {\"added\": {\"name\": \"book instance\", \"object\": \"c1540524-233f-44ed-9313-58bad5c3b64e ((Django) How to run test suite in Travis CI)\"}}]', 16, 1),
(8, '2019-05-16 02:59:11.922898', '2', 'The Tale between two cities', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"book instance\", \"object\": \"8009bb65-2d4a-4d6e-a04b-a3408318907f (The Tale between two cities)\"}}, {\"added\": {\"name\": \"book instance\", \"object\": \"3124367f-a307-48a0-9c81-b8c5693618b4 (The Tale between two cities)\"}}, {\"added\": {\"name\": \"book instance\", \"object\": \"274523b0-4ee4-46b7-8c18-7d1a9636f3c7 (The Tale between two cities)\"}}]', 16, 1),
(9, '2019-05-16 06:21:25.886912', '1', 'Library Members', 1, '[{\"added\": {}}]', 3, 1),
(10, '2019-05-16 06:26:13.918940', '2', 'mikegreat', 1, '[{\"added\": {}}]', 4, 1),
(11, '2019-05-16 06:28:44.249059', '2', 'mikegreat', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(12, '2019-05-16 06:29:20.041586', '3', 'Seun', 1, '[{\"added\": {}}]', 4, 1),
(13, '2019-05-16 06:29:52.357676', '2', 'Librarians', 1, '[{\"added\": {}}]', 3, 1),
(14, '2019-05-16 06:30:13.872968', '3', 'Seun', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(15, '2019-05-18 03:54:27.761700', '1', 'Ojemoron, Micheal', 2, '[{\"added\": {\"name\": \"book\", \"object\": \"Bookie\"}}, {\"changed\": {\"name\": \"book\", \"object\": \"The Tale between two cities\", \"fields\": [\"genre\"]}}]', 19, 1),
(16, '2019-05-25 01:42:32.272651', '274523b0-4ee4-46b7-8c18-7d1a9636f3c7', '274523b0-4ee4-46b7-8c18-7d1a9636f3c7 (The Tale between two cities)', 2, '[{\"changed\": {\"fields\": [\"due_back\", \"borrower\"]}}]', 18, 1),
(17, '2019-05-25 02:07:21.407857', 'e5dae96d-7bb1-420b-8f39-33f3b1e08314', 'e5dae96d-7bb1-420b-8f39-33f3b1e08314 (Bookie)', 1, '[{\"added\": {}}]', 18, 1),
(18, '2020-01-26 17:44:29.659301', '5', 'pearlstack', 2, '[{\"changed\": {\"fields\": [\"user_permissions\"]}}]', 4, 5),
(19, '2020-01-26 17:47:10.460485', '5', 'pearlstack', 2, '[{\"changed\": {\"fields\": [\"user_permissions\"]}}]', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(20, 'admin', 'logentry'),
(22, 'auth', 'group'),
(21, 'auth', 'permission'),
(23, 'auth', 'user'),
(26, 'catalog', 'author'),
(27, 'catalog', 'book'),
(30, 'catalog', 'bookinstance'),
(28, 'catalog', 'genre'),
(29, 'catalog', 'language'),
(24, 'contenttypes', 'contenttype'),
(32, 'django_doc', 'author'),
(31, 'django_doc', 'blog'),
(33, 'django_doc', 'entry'),
(25, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_doc_author`
--

CREATE TABLE `django_doc_author` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_doc_blog`
--

CREATE TABLE `django_doc_blog` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tagline` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_doc_blog`
--

INSERT INTO `django_doc_blog` (`id`, `name`, `tagline`) VALUES
(1, 'today', 'jnlm;lml;,\';ad.s'),
(2, 'yesterday', 'nalksml;, l\'.');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(54, 'contenttypes', '0001_initial', '2020-02-08 04:34:27.429587'),
(55, 'auth', '0001_initial', '2020-02-08 04:34:27.537960'),
(56, 'admin', '0001_initial', '2020-02-08 04:34:27.638521'),
(57, 'admin', '0002_logentry_remove_auto_add', '2020-02-08 04:34:27.688313'),
(58, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-08 04:34:27.746897'),
(59, 'contenttypes', '0002_remove_content_type_name', '2020-02-08 17:12:16.328134'),
(60, 'auth', '0002_alter_permission_name_max_length', '2020-02-08 17:12:16.423816'),
(61, 'auth', '0003_alter_user_email_max_length', '2020-02-08 17:12:16.652363'),
(62, 'auth', '0004_alter_user_username_opts', '2020-02-08 17:12:16.762110'),
(63, 'auth', '0005_alter_user_last_login_null', '2020-02-08 17:12:16.830454'),
(64, 'auth', '0006_require_contenttypes_0002', '2020-02-08 17:12:16.856815'),
(65, 'auth', '0007_alter_validators_add_error_messages', '2020-02-08 17:12:16.935947'),
(66, 'auth', '0008_alter_user_username_max_length', '2020-02-08 17:12:17.058108'),
(67, 'auth', '0009_alter_user_last_name_max_length', '2020-02-08 17:12:17.094230'),
(68, 'auth', '0010_alter_group_name_max_length', '2020-02-08 17:12:17.183168'),
(69, 'auth', '0011_update_proxy_permissions', '2020-02-08 17:12:17.235150'),
(70, 'catalog', '0001_initial', '2020-02-08 17:12:17.328105'),
(71, 'sessions', '0001_initial', '2020-02-08 17:12:17.405271'),
(72, 'catalog', '0002_auto_20200209_1416', '2020-02-09 13:41:49.323361'),
(74, 'catalog', '0003_author_full_name', '2020-02-11 20:03:45.451447'),
(79, 'catalog', '0004_auto_20200211_2104', '2020-02-12 02:57:59.432576'),
(80, 'django_doc', '0001_initial', '2020-02-12 03:32:10.151969');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('kdv6zaxiznqhukr58cikxjkmq34nu6r6', 'OWZiMWFiZTY3NjE3ODc5OTZkNDJmM2UwY2ZmOGZmYWQyMDBmZjk4YTp7Im51bV92aXNpdHMiOjEsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZTBlZjQ5ZTc0MGFkMDRlZGI5YmJkYTNjNTg4MGU5MDliM2QwMTMxIn0=', '2020-02-16 15:26:06.055743');

-- --------------------------------------------------------

--
-- Table structure for table `entry`
--

CREATE TABLE `entry` (
  `id` int(11) NOT NULL,
  `headline` varchar(255) NOT NULL,
  `body_text` longtext NOT NULL,
  `pub_date` date NOT NULL,
  `mod_date` date NOT NULL,
  `number_of_comments` int(11) NOT NULL,
  `number_of_pingbacks` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entry`
--

INSERT INTO `entry` (`id`, `headline`, `body_text`, `pub_date`, `mod_date`, `number_of_comments`, `number_of_pingbacks`, `rating`, `blog_id`) VALUES
(3, 'today', 'test', '2020-02-12', '2020-02-12', 5, 2, 2, 1),
(4, 'hbhbjknlkm', 'a;mglm ala./ ', '2020-02-11', '2020-02-11', 2, 3, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `entry_authors`
--

CREATE TABLE `entry_authors` (
  `id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `new_users`
--

CREATE TABLE `new_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `email_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `polls_question`
--

CREATE TABLE `polls_question` (
  `id` int(11) NOT NULL,
  `question_text` varchar(200) NOT NULL,
  `pub_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `top_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `webpage`
--

CREATE TABLE `webpage` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(200) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessrecords`
--
ALTER TABLE `accessrecords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accessrecords_webpage_id_cb9d204f_fk_webpage_id` (`webpage_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comment_post_id_580e96ef_fk_blog_post_id` (`post_id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`);

--
-- Indexes for table `catalog_author`
--
ALTER TABLE `catalog_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_book`
--
ALTER TABLE `catalog_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_book_author_id_b0849980_fk_catalog_author_id` (`author_id`),
  ADD KEY `catalog_book_language_id_447f859e_fk_catalog_language_id` (`language_id`);

--
-- Indexes for table `catalog_bookinstance`
--
ALTER TABLE `catalog_bookinstance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_bookinstance_book_id_69f93415_fk_catalog_book_id` (`book_id`),
  ADD KEY `catalog_bookinstance_borrower_id_0d71c37c_fk_auth_user_id` (`borrower_id`);

--
-- Indexes for table `catalog_book_genre`
--
ALTER TABLE `catalog_book_genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catalog_book_genre_book_id_genre_id_d15f6922_uniq` (`book_id`,`genre_id`),
  ADD KEY `catalog_book_genre_genre_id_77d7ffde_fk_catalog_genre_id` (`genre_id`);

--
-- Indexes for table `catalog_genre`
--
ALTER TABLE `catalog_genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_language`
--
ALTER TABLE `catalog_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choice`
--
ALTER TABLE `choice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `polls_choice_question_id_c5b4b260_fk_polls_question_id` (`question_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_doc_author`
--
ALTER TABLE `django_doc_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_doc_blog`
--
ALTER TABLE `django_doc_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `entry`
--
ALTER TABLE `entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entry_blog_id_3b71e288_fk_django_doc_blog_id` (`blog_id`);

--
-- Indexes for table `entry_authors`
--
ALTER TABLE `entry_authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `entry_authors_entry_id_author_id_885e267a_uniq` (`entry_id`,`author_id`),
  ADD KEY `entry_authors_author_id_a653a28e_fk_django_doc_author_id` (`author_id`);

--
-- Indexes for table `new_users`
--
ALTER TABLE `new_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_address` (`email_address`);

--
-- Indexes for table `polls_question`
--
ALTER TABLE `polls_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `top_name` (`top_name`);

--
-- Indexes for table `webpage`
--
ALTER TABLE `webpage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `url` (`url`),
  ADD KEY `polls_webpage_topic_id_94a8a70e_fk_polls_topic_id` (`topic_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessrecords`
--
ALTER TABLE `accessrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `catalog_author`
--
ALTER TABLE `catalog_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `catalog_book`
--
ALTER TABLE `catalog_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `catalog_book_genre`
--
ALTER TABLE `catalog_book_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `catalog_genre`
--
ALTER TABLE `catalog_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `catalog_language`
--
ALTER TABLE `catalog_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `choice`
--
ALTER TABLE `choice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `django_doc_author`
--
ALTER TABLE `django_doc_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_doc_blog`
--
ALTER TABLE `django_doc_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `entry`
--
ALTER TABLE `entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `entry_authors`
--
ALTER TABLE `entry_authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `new_users`
--
ALTER TABLE `new_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `polls_question`
--
ALTER TABLE `polls_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `webpage`
--
ALTER TABLE `webpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `accessrecords`
--
ALTER TABLE `accessrecords`
  ADD CONSTRAINT `accessrecords_webpage_id_cb9d204f_fk_webpage_id` FOREIGN KEY (`webpage_id`) REFERENCES `webpage` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD CONSTRAINT `blog_comment_post_id_580e96ef_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`);

--
-- Constraints for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `catalog_book`
--
ALTER TABLE `catalog_book`
  ADD CONSTRAINT `catalog_book_author_id_b0849980_fk_catalog_author_id` FOREIGN KEY (`author_id`) REFERENCES `catalog_author` (`id`),
  ADD CONSTRAINT `catalog_book_language_id_447f859e_fk_catalog_language_id` FOREIGN KEY (`language_id`) REFERENCES `catalog_language` (`id`);

--
-- Constraints for table `catalog_bookinstance`
--
ALTER TABLE `catalog_bookinstance`
  ADD CONSTRAINT `catalog_bookinstance_book_id_69f93415_fk_catalog_book_id` FOREIGN KEY (`book_id`) REFERENCES `catalog_book` (`id`),
  ADD CONSTRAINT `catalog_bookinstance_borrower_id_0d71c37c_fk_auth_user_id` FOREIGN KEY (`borrower_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `catalog_book_genre`
--
ALTER TABLE `catalog_book_genre`
  ADD CONSTRAINT `catalog_book_genre_book_id_e5a77c43_fk_catalog_book_id` FOREIGN KEY (`book_id`) REFERENCES `catalog_book` (`id`),
  ADD CONSTRAINT `catalog_book_genre_genre_id_77d7ffde_fk_catalog_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `catalog_genre` (`id`);

--
-- Constraints for table `entry`
--
ALTER TABLE `entry`
  ADD CONSTRAINT `entry_blog_id_3b71e288_fk_django_doc_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `django_doc_blog` (`id`);

--
-- Constraints for table `entry_authors`
--
ALTER TABLE `entry_authors`
  ADD CONSTRAINT `entry_authors_author_id_a653a28e_fk_django_doc_author_id` FOREIGN KEY (`author_id`) REFERENCES `django_doc_author` (`id`),
  ADD CONSTRAINT `entry_authors_entry_id_bb4d9d27_fk_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `entry` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
