-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2019 at 09:57 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studytab`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add bookdata', 7, 'add_bookdata'),
(26, 'Can change bookdata', 7, 'change_bookdata'),
(27, 'Can delete bookdata', 7, 'delete_bookdata'),
(28, 'Can view bookdata', 7, 'view_bookdata'),
(29, 'Can add summarydata', 8, 'add_summarydata'),
(30, 'Can change summarydata', 8, 'change_summarydata'),
(31, 'Can delete summarydata', 8, 'delete_summarydata'),
(32, 'Can view summarydata', 8, 'view_summarydata'),
(33, 'Can add flasdata', 9, 'add_flasdata'),
(34, 'Can change flasdata', 9, 'change_flasdata'),
(35, 'Can delete flasdata', 9, 'delete_flasdata'),
(36, 'Can view flasdata', 9, 'view_flasdata'),
(37, 'Can add userdata', 10, 'add_userdata'),
(38, 'Can change userdata', 10, 'change_userdata'),
(39, 'Can delete userdata', 10, 'delete_userdata'),
(40, 'Can view userdata', 10, 'view_userdata'),
(41, 'Can add login', 11, 'add_login'),
(42, 'Can change login', 11, 'change_login'),
(43, 'Can delete login', 11, 'delete_login'),
(44, 'Can view login', 11, 'view_login'),
(45, 'Can add questiondata', 12, 'add_questiondata'),
(46, 'Can change questiondata', 12, 'change_questiondata'),
(47, 'Can delete questiondata', 12, 'delete_questiondata'),
(48, 'Can view questiondata', 12, 'view_questiondata');

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

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'admin', 'logentry'),
(7, 'app1', 'bookdata'),
(9, 'app1', 'flasdata'),
(11, 'app1', 'login'),
(12, 'app1', 'questiondata'),
(8, 'app1', 'summarydata'),
(10, 'app1', 'userdata'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2019-03-30 07:08:20.729790'),
(2, 'auth', '0001_initial', '2019-03-30 07:08:30.574832'),
(3, 'admin', '0001_initial', '2019-03-30 07:08:33.011561'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-03-30 07:08:33.078357'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-03-30 07:08:33.176652'),
(6, 'app1', '0001_initial', '2019-03-30 07:08:33.539932'),
(7, 'contenttypes', '0002_remove_content_type_name', '2019-03-30 07:08:34.405580'),
(8, 'auth', '0002_alter_permission_name_max_length', '2019-03-30 07:08:36.638290'),
(9, 'auth', '0003_alter_user_email_max_length', '2019-03-30 07:08:39.591904'),
(10, 'auth', '0004_alter_user_username_opts', '2019-03-30 07:08:39.659353'),
(11, 'auth', '0005_alter_user_last_login_null', '2019-03-30 07:08:40.313056'),
(12, 'auth', '0006_require_contenttypes_0002', '2019-03-30 07:08:40.362003'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2019-03-30 07:08:40.408264'),
(14, 'auth', '0008_alter_user_username_max_length', '2019-03-30 07:08:41.222168'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2019-03-30 07:08:41.840370'),
(16, 'sessions', '0001_initial', '2019-03-30 07:08:42.404157'),
(17, 'app1', '0002_auto_20190402_1157', '2019-04-02 06:27:25.876625'),
(18, 'app1', '0003_summarydata', '2019-04-18 07:13:37.848238'),
(19, 'auth', '0010_alter_group_name_max_length', '2019-04-18 07:13:39.230331'),
(20, 'auth', '0011_update_proxy_permissions', '2019-04-18 07:13:39.290997'),
(21, 'app1', '0004_auto_20190418_1244', '2019-04-18 07:14:41.000099'),
(22, 'app1', '0005_flasdata', '2019-04-25 08:01:18.791734'),
(23, 'app1', '0006_auto_20190425_1456', '2019-04-25 09:26:56.100594'),
(24, 'app1', '0007_flasdata_chapter', '2019-04-26 10:09:51.539702'),
(25, 'app1', '0008_userdata', '2019-04-28 08:35:13.747480'),
(26, 'app1', '0009_auto_20190428_1411', '2019-04-28 08:42:19.308285'),
(27, 'app1', '0010_auto_20190428_1412', '2019-04-28 08:49:33.072071'),
(28, 'app1', '0011_auto_20190428_1413', '2019-04-28 08:49:33.239335'),
(29, 'app1', '0012_delete_login', '2019-04-28 08:49:33.565015'),
(30, 'app1', '0013_login', '2019-04-28 08:50:06.895431'),
(31, 'app1', '0014_auto_20190428_1435', '2019-04-28 09:05:20.073813'),
(32, 'app1', '0015_bookdata_user', '2019-04-30 08:50:56.749001'),
(33, 'app1', '0016_questiondata', '2019-05-01 08:08:12.935073'),
(34, 'app1', '0017_auto_20190501_1340', '2019-05-01 08:10:18.890089'),
(35, 'app1', '0018_flasdata_username', '2019-05-02 06:04:10.442751');

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
('sgcj6po8hiddz1fhhhiu05plpql0yt5i', 'NWY2NGQ3M2RlOWQwZjYwYzEyYjZiZDU3NGVkZjU4NzQ2OTAxYTQwMzp7ImJuYW1lIjoiZGVmIGVjbyIsIm1lbWJlcl9pZCI6ImFzaGlrcGxrIiwiRmxhc2hibmFtZSI6Ikhpc3RvcnkgTkNSVCIsInVzZXIiOiJhc2hpa3BsayIsImJrbm0iOiJFY29ub21pY3MifQ==', '2019-05-18 07:23:14.196070');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `type`, `password`) VALUES
(1, 'ashikplk', 'user', '8891'),
(2, 'admin', 'admin', '123'),
(3, 'aa', 'user', 'aa'),
(4, 'aaa', 'user', '222121'),
(5, '123', 'user', '123'),
(6, 'ashikplk1', 'user', 'ghgf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookdata`
--

CREATE TABLE `tbl_bookdata` (
  `id` int(11) NOT NULL,
  `book_name` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `edition` varchar(30) NOT NULL,
  `year` varchar(30) NOT NULL,
  `author` varchar(30) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bookdata`
--

INSERT INTO `tbl_bookdata` (`id`, `book_name`, `course`, `branch`, `edition`, `year`, `author`, `file`, `status`, `user`) VALUES
(41, 'Biology 3', 'SSLC', 'Science', '2', '4', 'state', '/pdf/lebo106.pdf', '', 'ashikplk'),
(42, 'Sociology', '+2', 'Humanities', '2', '1', 'state', '/pdf/lesy104.pdf', '', 'ashikplk'),
(43, 'Economics', '+2', 'Humanities', '2', '2012', 'state', '/pdf/keec105.pdf', '', 'ashikplk'),
(45, 'History c3', '+2', 'Humanities', '2', '4', 'state', '/pdf/lehs104.pdf', '', 'ashikplk'),
(46, 'Economics 01', '+2', 'Humanities', '2', '2', 'state', '/pdf/keec101.pdf', '', 'ashikplk'),
(48, 'Biology 5', '+2', 'Science', '2', '2012', 'state', '/pdf/lebo115.pdf', '', 'ashikplk'),
(49, 'Sociology 01', 'SSLC', 'Science', 'a', 'a', 'a', '/pdf/lebo101.pdf', '', 'ashikplk1'),
(50, 'Eco def', '+2', 'Humanities', '2', '2', '2', '/pdf/keec109.pdf', '', 'ashikplk'),
(51, 'def eco', '+2', 'Humanities', '22', '2', '2', '/pdf/keec109_jgtrWUB.pdf', '', 'ashikplk');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_flasdata`
--

CREATE TABLE `tbl_flasdata` (
  `id` int(11) NOT NULL,
  `book_name` varchar(30) NOT NULL,
  `book_id` varchar(30) NOT NULL,
  `flash` varchar(2000) NOT NULL,
  `chapter` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_flasdata`
--

INSERT INTO `tbl_flasdata` (`id`, `book_name`, `book_id`, `flash`, `chapter`, `username`) VALUES
(9, 'History NCRT', '35', 'So  it seems  that  the  settlement  was  first  planned  and then  implemented  accordingly', '1', 'admin'),
(10, 'History NCRT', '35', 'Many houses  had  wells,  often  in  a  room  that  could  be reached  from  the  outside  and  perhaps  used  by passers-by', '2', 'admin'),
(11, 'History NCRT', '35', 'The  Great  Bath  was  a large  rectangular  tank  in  a courtyard  surrounded  by  a corridor  on  all  four  sides', '3', 'admin'),
(22, 'History NCRT', '35', 'Such hoards  can  be  of  jewellery  or metal  objects  saved  for  reuse by  metalworkers', '15', 'admin'),
(23, 'History NCRT', '35', 'Gold too was rare, and as at present, probably precious – all  the  gold  jewellery  found  at  Harappan  sites  was recovered  from  hoards', '15', 'admin'),
(24, 'History NCRT', '35', 'The  shapes  were  numerous  –  disc- shaped,  cylindrical,  spherical,  barrel-shaped, segmented', '15', 'admin'),
(25, 'History NCRT', '35', 'Let  us  look  at  one  such  centre,  Mohenjodaro, more  closely', '25', 'admin'),
(26, 'History NCRT', '35', 'The  settlement  is  divided  into  two  sections,  one smaller  but  higher  and  the  other  much  larger  butFig', '25', 'admin'),
(27, 'History NCRT', '35', '7 Layout  of  MohenjodaroÜ How is the Lower Town different from the Citadel', '25', 'admin'),
(28, 'Biology', '36', 'Pollen grain exine has prominent apertures called germ pores where sporopollenin is absent', '1', 'admin'),
(29, 'Biology', '36', 'It has become a fashion in recent years to use pollen tablets as food supplements', '1', 'admin'),
(30, 'Biology', '36', '7a), the stigma, style and ovary', '1', 'admin'),
(31, 'ww', '40', 'Students have to read supplementary material, upon advise from the teacher, to answer such questions', '1', 'admin'),
(32, 'ww', '40', 'K', '1', 'admin'),
(33, 'ww', '40', 'The Council is highly thankful to Hukum Singh, Professor and Head, Department of Education in Science and Mathematics, NCERT for his valuable support throughout the making of this book', '1', 'admin'),
(34, 'Economics', '43', '(b) Do  you  think  the  children going  to  this  schol  are receiving  quality  education', '6', 'ashikplk'),
(35, 'Economics', '43', 'Entrepreneurs,  bureaucrats  and  politicians  are  now  advancing views  about  how  India  can  transform  itself  into  a  knowledge-based  economy by using information technology (IT)', '6', 'ashikplk'),
(36, 'Economics', '43', 'We have  already  learnt  that  human capital  formation  is  the  outcome of investments in education, health, on-the-job  training,  migration  and information', '6', 'ashikplk'),
(37, 'Economics 01', '46', 'It produces amply  —  for  its  own  consumption  — wheat,  vegetables,  grains,  fowls,  ducks and geese', '1', 'ashikplk'),
(38, 'Economics 01', '46', 'Initially,  this  development  was confined to the setting up of cotton and  jute  textile  mills', '1', 'ashikplk'),
(39, 'Economics 01', '46', 'This sector remained confined only to the railways, power generation, communications,  ports  and  some other departmental undertakings', '1', 'ashikplk'),
(40, 'Biology 5', '48', 'If we accept May’s global estimates, only 22 per cent of the total species have been recorded so far', '1', 'ashikplk'),
(41, 'Biology 5', '48', 'What is so special about tropics that might account for their greater biological  diversity', '1', 'ashikplk'),
(42, 'Biology 5', '48', '2)', '1', 'ashikplk'),
(43, 'Eco def', '50', 'Much  of  the  recent  observed  and  projected  global warming  is  human-induced', '1', 'ashikplk'),
(44, 'Eco def', '50', 'To  make  matters  worse,  global environmental  issues  such  as  global warming  and  ozone  depletion  also contribute  to  increased  financial commitments  for  the  government', '1', 'ashikplk'),
(45, 'Eco def', '50', 'In the  early  days  when  civilisation  just began,  or  before  this  phenomenal increase  in  population,  and  before countries took to industrialisation, the demand for environmental resources and services was much less than their supply', '1', 'ashikplk'),
(46, 'Eco def', '50', 'Human beings, with modern technology, have the  capacity  to  bring  about,  intentionally  or  unintentionally,  far-reaching and irreversible changes in the enviornment', '2', 'ashikplk'),
(47, 'Eco def', '50', 'To understand the unsustainable path of development that we have taken and the  challenges  of  sustainable development,  we  have  to  first understand  the  significance  and contribution  of  environment  to economic  development', '2', 'ashikplk'),
(48, 'Eco def', '50', 'When this is not so, the environment fails to perform its third and vital function of life sustenance and Fill in the following table with some common types of diseases and illnessesthat  are  caused  due  to  air,  water  and  noise  pollution', '2', 'ashikplk'),
(49, 'Eco def', '50', 'The  past development has polluted and dried up rivers and other aquifers making water an  economic  good', '3', 'ashikplk'),
(50, 'Eco def', '50', 'functions  is  within  its  carrying capacity', '3', 'ashikplk'),
(51, 'Eco def', '50', ' Fill in the following table with some common types of diseases and illnessesthat  are  caused  due  to  air,  water  and  noise  pollution', '3', 'ashikplk'),
(52, 'Eco def', '50', 'The  past development has polluted and dried up rivers and other aquifers making water an  economic  good', '3', 'ashikplk'),
(53, 'Eco def', '50', 'functions  is  within  its  carrying capacity', '3', 'ashikplk'),
(54, 'Eco def', '50', ' Fill in the following table with some common types of diseases and illnessesthat  are  caused  due  to  air,  water  and  noise  pollution', '3', 'ashikplk'),
(55, 'Eco def', '50', 'The  past development has polluted and dried up rivers and other aquifers making water an  economic  good', '3', 'ashikplk'),
(56, 'Eco def', '50', 'functions  is  within  its  carrying capacity', '3', 'ashikplk'),
(57, 'Eco def', '50', ' Fill in the following table with some common types of diseases and illnessesthat  are  caused  due  to  air,  water  and  noise  pollution', '3', 'ashikplk'),
(58, 'Eco def', '50', 'The  past development has polluted and dried up rivers and other aquifers making water an  economic  good', '3', 'ashikplk'),
(59, 'Eco def', '50', 'functions  is  within  its  carrying capacity', '3', 'ashikplk'),
(60, 'Eco def', '50', ' Fill in the following table with some common types of diseases and illnessesthat  are  caused  due  to  air,  water  and  noise  pollution', '3', 'ashikplk'),
(61, 'Eco def', '50', 'The  past development has polluted and dried up rivers and other aquifers making water an  economic  good', '3', 'ashikplk'),
(62, 'Eco def', '50', 'functions  is  within  its  carrying capacity', '3', 'ashikplk'),
(63, 'Eco def', '50', ' Fill in the following table with some common types of diseases and illnessesthat  are  caused  due  to  air,  water  and  noise  pollution', '3', 'ashikplk'),
(64, 'Eco def', '50', 'The  past development has polluted and dried up rivers and other aquifers making water an  economic  good', '3', 'ashikplk'),
(65, 'Eco def', '50', 'functions  is  within  its  carrying capacity', '3', 'ashikplk'),
(66, 'Eco def', '50', ' Fill in the following table with some common types of diseases and illnessesthat  are  caused  due  to  air,  water  and  noise  pollution', '3', 'ashikplk'),
(67, 'Eco def', '50', 'The  past development has polluted and dried up rivers and other aquifers making water an  economic  good', '3', 'ashikplk'),
(68, 'Eco def', '50', 'functions  is  within  its  carrying capacity', '3', 'ashikplk'),
(69, 'Eco def', '50', ' Fill in the following table with some common types of diseases and illnessesthat  are  caused  due  to  air,  water  and  noise  pollution', '3', 'ashikplk'),
(70, 'Eco def', '50', 'The  past development has polluted and dried up rivers and other aquifers making water an  economic  good', '3', 'ashikplk'),
(71, 'Eco def', '50', 'functions  is  within  its  carrying capacity', '3', 'ashikplk'),
(72, 'Eco def', '50', ' Fill in the following table with some common types of diseases and illnessesthat  are  caused  due  to  air,  water  and  noise  pollution', '3', 'ashikplk'),
(73, 'Eco def', '50', 'The  past development has polluted and dried up rivers and other aquifers making water an  economic  good', '3', 'ashikplk'),
(74, 'Eco def', '50', 'functions  is  within  its  carrying capacity', '3', 'ashikplk'),
(75, 'Eco def', '50', ' Fill in the following table with some common types of diseases and illnessesthat  are  caused  due  to  air,  water  and  noise  pollution', '3', 'ashikplk'),
(76, 'def eco', '51', 'Human beings, with modern technology, have the  capacity  to  bring  about,  intentionally  or  unintentionally,  far-reaching and irreversible changes in the enviornment', '8', 'ashikplk'),
(77, 'def eco', '51', 'Renewable resources are those which can be used without the possibility of the  resource  becoming  depleted  or exhausted', '8', 'ashikplk'),
(78, 'def eco', '51', ' Fill in the following table with some common types of diseases and illnessesthat  are  caused  due  to  air,  water  and  noise  pollution', '8', 'ashikplk'),
(79, 'def eco', '51', 'Human beings, with modern technology, have the  capacity  to  bring  about,  intentionally  or  unintentionally,  far-reaching and irreversible changes in the enviornment', '22', 'ashikplk'),
(80, 'def eco', '51', 'Renewable resources are those which can be used without the possibility of the  resource  becoming  depleted  or exhausted', '22', 'ashikplk'),
(81, 'def eco', '51', ' Fill in the following table with some common types of diseases and illnessesthat  are  caused  due  to  air,  water  and  noise  pollution', '22', 'ashikplk'),
(82, 'def eco', '51', 'Human beings, with modern technology, have the  capacity  to  bring  about,  intentionally  or  unintentionally,  far-reaching and irreversible changes in the enviornment', '22', 'ashikplk'),
(83, 'def eco', '51', 'Renewable resources are those which can be used without the possibility of the  resource  becoming  depleted  or exhausted', '22', 'ashikplk'),
(84, 'def eco', '51', ' Fill in the following table with some common types of diseases and illnessesthat  are  caused  due  to  air,  water  and  noise  pollution', '22', 'ashikplk'),
(85, 'def eco', '51', 'Human beings, with modern technology, have the  capacity  to  bring  about,  intentionally  or  unintentionally,  far-reaching and irreversible changes in the enviornment', '22', 'ashikplk'),
(86, 'def eco', '51', 'Renewable resources are those which can be used without the possibility of the  resource  becoming  depleted  or exhausted', '22', 'ashikplk'),
(87, 'def eco', '51', ' Fill in the following table with some common types of diseases and illnessesthat  are  caused  due  to  air,  water  and  noise  pollution', '22', 'ashikplk'),
(88, 'def eco', '51', 'The  single  most  unstable  and  potentially  disruptive  element  in  the\nscheme is the human species', '8', 'ashikplk'),
(89, 'def eco', '51', '\nRenewable resources are those which\ncan be used without the possibility of\nthe  resource  becoming  depleted  or\nexhausted', '8', 'ashikplk'),
(90, 'def eco', '51', '\n\n Fill in the following table with some common types of diseases and illnesses\n\nthat  are  caused  due  to  air,  water  and  noise  pollution', '8', 'ashikplk'),
(91, 'def eco', '51', 'The  single  most  unstable  and  potentially  disruptive  element  in  the\nscheme is the human species', '8', 'ashikplk'),
(92, 'def eco', '51', '\nRenewable resources are those which\ncan be used without the possibility of\nthe  resource  becoming  depleted  or\nexhausted', '8', 'ashikplk'),
(93, 'def eco', '51', '\n\n Fill in the following table with some common types of diseases and illnesses\n\nthat  are  caused  due  to  air,  water  and  noise  pollution', '8', 'ashikplk'),
(94, 'def eco', '51', 'The  single  most  unstable  and  potentially  disruptive  element  in  the\nscheme is the human species', '125', 'ashikplk'),
(95, 'def eco', '51', '9', '125', 'ashikplk'),
(96, 'def eco', '51', 'In\nthe  early  days  when  civilisation  just\nbegan,  or  before  this  phenomenal\nincrease  in  population,  and  before\ncountries took to industrialisation, the\ndemand for environmental resources\nand services was much less than their\nsupply', '125', 'ashikplk'),
(97, 'def eco', '51', '2  ENVIRONMENT —  DEFINITION  AND\n\nFUNCTIONS\n\nEnvironment  is  defined  as  the  total\nplanetary inheritance and the totality\nof all resources', '222', 'ashikplk'),
(98, 'def eco', '51', 'The  single  most  unstable  and  potentially  disruptive  element  in  the\nscheme is the human species', '222', 'ashikplk'),
(99, 'def eco', '51', '\nRenewable resources are those which\ncan be used without the possibility of\nthe  resource  becoming  depleted  or\nexhausted', '222', 'ashikplk'),
(100, 'def eco', '51', '\n\n Fill in the following table with some common types of diseases and illnesses\n\nthat  are  caused  due  to  air,  water  and  noise  pollution', '222', 'ashikplk'),
(101, 'def eco', '51', '2  ENVIRONMENT —  DEFINITION  AND\n\nFUNCTIONS\n\nEnvironment  is  defined  as  the  total\nplanetary inheritance and the totality\nof all resources', '2222', 'ashikplk'),
(102, 'def eco', '51', 'The  single  most  unstable  and  potentially  disruptive  element  in  the\nscheme is the human species', '2222', 'ashikplk'),
(103, 'def eco', '51', '\nRenewable resources are those which\ncan be used without the possibility of\nthe  resource  becoming  depleted  or\nexhausted', '2222', 'ashikplk'),
(104, 'def eco', '51', '\n\n Fill in the following table with some common types of diseases and illnesses\n\nthat  are  caused  due  to  air,  water  and  noise  pollution', '2222', 'ashikplk');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question`
--

CREATE TABLE `tbl_question` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `book_name` varchar(30) NOT NULL,
  `chapter` varchar(30) NOT NULL,
  `question` varchar(150) NOT NULL,
  `answer` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_question`
--

INSERT INTO `tbl_question` (`id`, `userid`, `book_name`, `chapter`, `question`, `answer`) VALUES
(60, 'ashikplk', 'Biology 3', '3', 'What is RNA?', 'RNA is also now known to be catalytic, hence reactive'),
(61, 'ashikplk', 'Biology 3', '3', 'What is DNA?', 'Therefore, DNA chemically is less reactive and structurally more stable when compared to RNA'),
(62, 'ashikplk', 'Biology 3', '3', 'What requires DNA understanding?', '(Detailed  discussion  about  this  requires understanding of the process of repair in DNA, and you will study these processes in higher classes'),
(63, 'ashikplk', 'Biology 3', '3', 'What is RNA?', 'DNA, however, is dependent on RNA for synthesis of proteins'),
(64, 'ashikplk', 'Biology 3', '3', 'What is RNA?', 'The above discussion indicate that both RNA and DNA can function asFor the transmission of genetic information, RNA is better'),
(65, 'ashikplk', 'Biology 3', '3', 'What becomes – foregoing?', 'From foregoing discussion, an immediate question becomes evident – which is the first genetic material'),
(66, 'ashikplk', 'Biology 3', '3', 'What is evidence splicing?', 'There is now enough evidence to suggest that essential life processes (such as metabolism, translation, splicing, etc'),
(67, 'ashikplk', 'Biology 3', '3', 'What has DNA?', 'Therefore, DNA has evolved from RNA with chemical modifications that make it more stable'),
(68, 'ashikplk', 'Biology 3', '3', 'What has ’?', '‘‘It  has  not  escaped  our  notice  that  the  specific pairing  we  have  postulated  immediately  suggests  a possible copying mechanism for the genetic material’’ (Watson and Crick, 1953)'),
(69, 'ashikplk', 'Economics', '2.4', 'What has individual?', 'every individual has a right to get basic education and basic health care, that is, every individual has a right to be literate and lead a healthy life'),
(70, 'ashikplk', 'Economics', '2.4', 'What ours Corporations?', 'We  know that ours is a federal country with a union government, state governments and  local  governments  (Municipal Corporations,  Municipalities  and Village Panchayats)'),
(71, 'ashikplk', 'Economics', '2', 'What takes India?', 'Do  you  know  who  takes  care  of education and health in India'),
(72, 'ashikplk', 'Economics', '2.4', 'What is instance?', 'For instance, once a child is admitted to a school or health care centre where the required services are not provided, before the decision is taken to shift the child to another institution, substantial amount of  damage  would  have  been  done'),
(73, 'ashikplk', 'Economics', '2.4', 'What is ‘?', 'This  expenditure  by  the government is expressed in two ways (i) as a percentage of ‘total government expenditure’  (ii)  as  a  percentage  of Gross Domestic Product (GDP)'),
(74, 'ashikplk', 'Economics', '2.4', 'What has period?', 'Throughout this period the increase in education expenditure has not been uniform and there has been irregular rise and fall'),
(75, 'ashikplk', 'Economics', '2.4', 'What spends Though?', 'Though, on an average, the government spends less on tertiary  education,  ‘expenditure  per student’ in tertiary education is higher than that of elementary'),
(76, 'ashikplk', 'Economics', '2.4', 'What has Rs coming?', 'In  2014-15,  the  per  capita  public expenditure on elementary education differs considerably across states from as  high  as  Rs  34,651  in  HimachalIn principle,  a goal of 6 per cent needs to be reached—this has been accepted  as a must for the coming years'),
(77, 'ashikplk', 'Economics', '2.4', 'What has India levying?', 'Government  of  India  has    also started levying a 2 per cent ‘education cess’ on all Union taxes'),
(78, 'ashikplk', 'Economics', '2.4', 'What has education?', 'The revenues from  education  cess  has  been earmarked for spending on elementaryThis leads to differences in educational opportunities and attainments across states'),
(79, 'ashikplk', 'Sociology', '1', 'What is India?', 'The weekly haat is a common sight in rural  and  even  urban  India'),
(80, 'ashikplk', 'Sociology', '1', 'What has market?', 'While the weekly market in tribal areas may be a very old institution, its character has changed over time'),
(81, 'ashikplk', 'Sociology', '1', 'What ’ pacifying building?', 'Tribal areas were ‘opened up’ by building roads and ‘pacifying’ the local people (many of whom resisted colonial rule through their so-called ‘tribal rebellions’), so that the rich forest and mineral resources of these areas could be exploited'),
(82, 'ashikplk', 'Sociology', '1', 'What is Dhorai straddling?', 'Dhorai is the name of a market village located deep in the hinterland of North Bastar district, Chattisgarh … On non-market days Dhorai is a sleepy, tree-shaded hamlet straddling an unscaled road which winds it’s way through the forest … Social life in Dhorai revolves around two primitive tea-shops with a clientele of low-ranking employees of the State Forest service, whose misfortune it has been to  be  stationed  in  such  a  distant  and  insignificant  spot …  Dhorai  on  non-market days – e'),
(83, 'ashikplk', 'Sociology', '1', 'What has India using?', 'While  colonialism  certainly  brought about  major  economic  transformations,  for  example  due  to  the  demand that  land  revenue  be  paid  in  cash,  recent  historical  research  has  shown that much of India’s economy was already extensively monetised (trade was carried out using money) in the late pre-colonial period'),
(84, 'ashikplk', 'Sociology', '1', 'What has India?', 'Recent historical research has also highlighted the extensive and sophisticated trading networks that existed in  pre-colonial  India'),
(85, 'ashikplk', 'Sociology', '1', 'What is India banking?', 'So it is not surprising that pre-colonial India had well-organised manufacturing centres as well as indigenous merchant groups, trading networks, and banking systems that enabled trade to take place within India, and between India and the  rest  of  the  world'),
(86, 'ashikplk', 'Sociology', '1', 'What is Nakarattar?', 'This is not to say that the Nakarattar banking system resembled an economist’s model of Western-style banking systems … the Nakarattars loaned and deposited money with one another in caste-defined social relationships based on business territory, residential location, descent, marriage, and common cult membership'),
(87, 'ashikplk', 'Sociology', '1', 'What is Nakarattar?', 'What  are  the  different  ways  in  which  Nakarattar  trading  andCan you think of examples within the modern capitalist economy whereAs you have already learned, there is a close connection between the caste system and the economy, in terms of landholding, occupational differentiation, and so on'),
(88, 'ashikplk', 'Sociology', '1', 'What is case?', 'This is also true in the case of trade and markets'),
(89, 'ashikplk', 'Sociology', '1', 'What has Vaisya?', 'Although there are ‘Vaisya’ communities (such as banias in North traditional India),  whose occupation  has  been  trade  or commerce for a long time, there are some caste groups that have entered into trade'),
(90, 'ashikplk', 'History c3', '8', 'What stands Paris?', 'Even  so,  it  was  suggested that the gateway be taken to either Paris or London; finally a number of factors helped to keep Sanchi as it  was,  and  so  it  stands,  whereas  the  mahachaitya at  Amaravati  is  now  just  an  insignificant  little mound,  totally  denuded  of  its  former  glory'),
(91, 'ashikplk', 'History c3', '8', 'What seems sculpture?', 'At  first  sight the  sculpture  seems  to  depict  a  rural scene,  with  thatched  huts  and  trees'),
(92, 'ashikplk', 'History c3', '8', 'What is Brahmana?', 'This  is  a story about a generous prince who gave  away  everything  to  a Brahmana,  and  went  to  live  in the  forest  with  his  wife  and children'),
(93, 'ashikplk', 'History c3', '8', 'What is Sanskrit examining?', 'However,  after  examining  other literary  traditions,  they  realised  that  it  could  be  a representation  of  what  is  described  in  Sanskrit  as a  shalabhanjika'),
(94, 'ashikplk', 'History c3', '8', 'What suggests Buddhism?', 'The  shalabhanjika  motif suggests that many people who turned to Buddhism enriched  it  with  their  own  pre-Buddhist  and  even non-Buddhist  beliefs,  practices  and  ideas'),
(95, 'ashikplk', 'History c3', '8', 'What is Jatakas?', 'While the Jatakas contain  several  animal  stories  that  are depicted at Sanchi, it is likely that many of  these  animals  were  carved  to  create lively  scenes  to  draw  viewers'),
(96, 'ashikplk', 'History c3', '111', 'What stands Paris?', 'Even  so,  it  was  suggested\nthat the gateway be taken to either Paris or London;\nfinally a number of factors helped to keep Sanchi as\nit  was,  and  so  it  stands,  whereas  the  mahachaitya\nat  Amaravati  is  now  just  an  insignificant  little\nmound,  totally  denuded  of  its  former  glory'),
(97, 'ashikplk', 'History c3', '111', 'What seems sculpture?', 'At  first  sight\nthe  sculpture  seems  to  depict  a  rural\nscene,  with  thatched  huts  and  trees'),
(98, 'ashikplk', 'History c3', '111', 'What is Brahmana?', 'This  is  a\nstory about a generous prince who\ngave  away  everything  to  a\nBrahmana,  and  went  to  live  in\nthe  forest  with  his  wife  and\nchildren'),
(99, 'ashikplk', 'History c3', '111', 'What is THINKERS?', '\nAs is obvious, such sculptures cannot be understood\nliterally  –  for  instance,  the  tree  does  not  stand\n\n2019-20THINKERS, BELIEFS AND BUILDINGS\n\n101\n\nFig'),
(101, 'ashikplk', 'History c3', '111', 'What is Sanskrit examining?', 'However,  after  examining  other\nliterary  traditions,  they  realised  that  it  could  be  a\nrepresentation  of  what  is  described  in  Sanskrit  as\na  shalabhanjika'),
(102, 'ashikplk', 'History c3', '111', 'What suggests Buddhism?', 'The  shalabhanjika  motif\nsuggests that many people who turned to Buddhism\nenriched  it  with  their  own  pre-Buddhist  and  even\nnon-Buddhist  beliefs,  practices  and  ideas'),
(103, 'ashikplk', 'History c3', '111', 'What is Jatakas?', 'While the Jatakas\ncontain  several  animal  stories  that  are\ndepicted at Sanchi, it is likely that many\nof  these  animals  were  carved  to  create\nlively  scenes  to  draw  viewers'),
(104, 'ashikplk', 'Biology 3', '111', 'What stains nucleus?', 'In a typical nucleus, some\nregion of chromatin are loosely packed (and stains light) and are referred to\nas euchromatin'),
(105, 'ashikplk', 'Biology 3', '111', 'What is Heterochromatin?', 'The chromatin that is more densely packed and stains\ndark  are  called  as  Heterochromatin'),
(106, 'ashikplk', 'Biology 3', '111', 'What is Euchromatin?', 'Euchromatin  is  said  to  be\ntranscriptionally active chromatin, whereas heterochromatin is inactive'),
(107, 'ashikplk', 'Biology 3', '111', 'What acts THE?', '2 THE SEARCH FOR GENETIC MATERIAL\n\nEven though the discovery of nuclein by Meischer and the proposition\nfor principles of inheritance by Mendel were almost at the same time, but\nthat the DNA acts as a genetic material took long to be discovered and\nproven'),
(108, 'ashikplk', 'Biology 3', '111', 'What is S?', 'This is because the S strain bacteria have a\nmucous (polysaccharide) coat, while R strain does not'),
(109, 'ashikplk', 'Biology 3', '111', 'What is DNA?', 'They concluded that DNA is the hereditary material, but\nnot all biologists were convinced'),
(110, 'ashikplk', 'Biology 3', '111', 'What is Genetic?', '1 The Genetic Material is DNA\n\nThe unequivocal proof that DNA is the genetic material came from the\nexperiments of Alfred Hershey and Martha Chase (1952)'),
(111, 'ashikplk', 'Biology 3', '111', 'What attaches bacteriophage?', '\n\nThe bacteriophage attaches to the bacteria and its genetic material\nthen enters the bacterial cell'),
(112, 'ashikplk', 'Biology 3', '111', 'What contains DNA?', '\nViruses  grown  in  the  presence  of  radioactive  phosphorus  contained\nradioactive  DNA  but  not  radioactive  protein  because  DNA  contains\nphosphorus but protein does not'),
(113, 'ashikplk', 'Biology 3', '111', 'What does DNA?', 'Similarly, viruses grown on radioactive\nsulfur contained radioactive protein but not radioactive DNA because\nDNA does not contain sulfur'),
(114, 'ashikplk', 'Biology 3', '111', 'What indicates bacteria?', 'This indicates that proteins did\nnot enter the bacteria from the viruses'),
(115, 'ashikplk', 'Biology 3', '111', 'What is DNA?', 'DNA is therefore the genetic\nmaterial that is passed from virus to bacteria (Figure 6'),
(116, 'ashikplk', 'Biology 3', '111', 'What is Genetic foregoing?', '2 Properties of Genetic Material (DNA versus RNA)\n\nFrom the foregoing discussion, it is clear that the debate between proteins\nversus  DNA  as  the  genetic  material  was  unequivocally  resolved  from\nHershey-Chase experiment'),
(117, 'ashikplk', 'Biology 3', '111', 'What is DNA?', 'It became an established fact that it is DNA\nthat acts as genetic material'),
(118, 'ashikplk', 'Biology 3', '111', 'What is MOLECULAR?', 'However, it subsequently became clear that\n\n2019-2020MOLECULAR BASIS OF INHERITANCE\n\nin some viruses, RNA is the genetic material (for example, Tobacco Mosaic\nviruses, QB bacteriophage, etc'),
(119, 'ashikplk', 'Biology 3', '111', 'What is Answer?', 'Answer to some of the questions such as,\nwhy DNA is the predominant genetic material, whereas RNA performs\ndynamic functions of messenger and adapter has to be found from the\ndifferences between chemical structures of the two nucleic acid molecules'),
(120, 'ashikplk', 'Biology 3', '111', 'What examines DNA?', '\n\nIf one examines each requirement one by one, because of rule of base\npairing and complementarity, both the nucleic acids (DNA and RNA) have\nthe ability to direct their duplications'),
(121, 'ashikplk', 'Biology 3', '111', 'What is RNA?', 'Further, 2\'-OH group present\nat every nucleotide in RNA is a reactive group and makes RNA labile and\neasily degradable'),
(122, 'ashikplk', 'Biology 3', '111', 'What is RNA?', 'RNA is also now known to be catalytic, hence reactive'),
(123, 'ashikplk', 'Biology 3', '111', 'What is DNA?', '\nTherefore, DNA chemically is less reactive and structurally more stable\nwhen compared to RNA'),
(124, 'ashikplk', 'Biology 3', '111', 'What is DNA?', 'Therefore, among the two nucleic acids, the DNA\nis a better genetic material'),
(125, 'ashikplk', 'Biology 3', '111', 'What confers fact?', '\n\nIn fact, the presence of thymine at the place of uracil also confers\nadditional  stability  to  DNA'),
(126, 'ashikplk', 'Biology 3', '111', 'What requires DNA understanding?', '(Detailed  discussion  about  this  requires\nunderstanding of the process of repair in DNA, and you will study these\nprocesses in higher classes'),
(127, 'ashikplk', 'Biology 3', '111', 'What is RNA?', 'DNA, however, is dependent on RNA for synthesis\nof proteins'),
(128, 'ashikplk', 'Biology 3', '111', 'What has RNA synthesising?', 'The protein synthesising machinery has evolved around RNA'),
(129, 'ashikplk', 'Biology 3', '111', 'What is RNA being?', '\nThe above discussion indicate that both RNA and DNA can function as\n\n103\n\n2019-2020BIOLOGY\n\ngenetic material, but DNA being more stable is preferred for storage of\ngenetic information'),
(130, 'ashikplk', 'Biology 3', '111', 'What is RNA?', 'For the transmission of genetic information, RNA\nis better'),
(131, 'ashikplk', 'Biology 3', '111', 'What becomes RNA foregoing?', '3 RNA WORLD\n\nFrom foregoing discussion, an immediate question becomes evident –\nwhich is the first genetic material'),
(132, 'ashikplk', 'Biology 3', '111', 'What is evidence splicing?', 'There is now enough evidence to\nsuggest that essential life processes (such as metabolism, translation,\nsplicing, etc'),
(133, 'ashikplk', 'Biology 3', '111', 'What has DNA?', 'Therefore, DNA has evolved from RNA\nwith chemical modifications that make it more stable'),
(134, 'ashikplk', 'Biology 3', '111', 'What is ’?', 'To quote their original statement\nthat is as follows:\n\n‘‘It  has  not  escaped  our  notice  that  the  specific\npairing  we  have  postulated  immediately  suggests  a\npossible copying mechanism for the genetic material’’\n(Watson and Crick, 1953)'),
(135, 'ashikplk', 'Biology 3', '112', 'What is distance?', 'Consequently, the distance\nbetween  a  bp  in  a  helix  is\napproximately 0'),
(136, 'ashikplk', 'Biology 3', '112', 'What states Francis?', 'Very  soon,  Francis  Crick\nproposed the Central dogma in molecular\nbiology,  which  states  that  the  genetic\ninformation flows from DNARNAProtein'),
(137, 'ashikplk', 'Biology 3', '112', 'What is DNA multiplying?', '34×10–9 m), if the length of DNA double\nhelix in a typical mammalian cell is calculated (simply\nby multiplying the total number of bp with distance\nbetween two consecutive bp, that is, 6'),
(138, 'ashikplk', 'Biology 3', '112', 'What is length?', 'A  length  that  is  far  greater  than  the\ndimension of a typical nucleus (approximately 10–6 m)'),
(139, 'ashikplk', 'Biology 3', '112', 'What is polymer?', '\nHow is such a long polymer packaged in a cell'),
(140, 'ashikplk', 'Biology 3', '112', 'What does DNA is?', 'coli  DNA  is  1'),
(141, 'ashikplk', 'Biology 3', '112', 'What is DNA being?', 'DNA (being negatively charged)\nis  held  with  some  proteins  (that  have  positive\ncharges) in a region termed as ‘nucleoid’'),
(142, 'ashikplk', 'Biology 3', '112', 'What is Nucleosome?', '4a  Nucleosome\n\nIn eukaryotes, this organisation is much more\ncomplex'),
(143, 'ashikplk', 'Biology 3', '112', 'What is set?', 'There is a set of positively charged, basic\nproteins called histones'),
(144, 'ashikplk', 'Biology 3', '112', 'What acquires protein depending?', 'A protein acquires charge\ndepending  upon  the  abundance  of  amino  acids\nresidues with charged side chains'),
(145, 'ashikplk', 'Biology 3', '112', 'What is structure?', '\n\nThe  beads-on-string  structure  in  chromatin  is  packaged  to  form\nchromatin fibers that are further coiled and condensed at metaphase stage\nof cell division to form chromosomes'),
(146, 'ashikplk', 'Biology 3', '112', 'What requires packaging?', 'The packaging of chromatin at higher\nlevel requires additional set of proteins that collectively are referred to as\n\nFigure  6'),
(147, 'ashikplk', 'Economics 01', '1', 'What e India?', '\n\nObviously,  the  colonial  govern-\nm e n t   n e v e r   m a d e   a n y   s i n c e r e\nattempt to estimate India’s national\na n d   p e r   c a p i t a   i n c o m e'),
(148, 'ashikplk', 'Economics 01', '1', 'What s AGRICULTURAL?', '3  AGRICULTURAL  SECTOR\n\nIndia’s  economy  under  the  British\ncolonial rule remained fundamentally\nagrarian  —  about  85  per  cent\nof  the  country’s  population  lived\nmostly  in  villages  and  derived\nlivelihood  directly  or  indirectly  from\nagriculture'),
(149, 'ashikplk', 'Economics 01', '1', 'What produces —?', 'It produces\namply  —  for  its  own  consumption  —\nwheat,  vegetables,  grains,  fowls,  ducks\nand geese'),
(150, 'ashikplk', 'Economics 01', '1', 'What is Ganges?', 'From\nrajmahal  to  the  sea  is  an  endless\nnumber  of  canals,  cut  in  bygone  ages\nfrom the Ganges by immense labour for\nnavigation  and  irrigation'),
(151, 'ashikplk', 'Economics 01', '1', 'What s India?', '1 India’s agricultural stagnation\nunder the British colonial rule\n\n Take note of the agricultural prosperity in our country in the seventeenth century'),
(152, 'ashikplk', 'Economics 01', '1', 'What e Bengal comprising?', 'Particularly,\nunder  the  zamindari  system  which\nwas implemented in the then Bengal\nPresidency  comprising  parts  of\nIndia’s  present-day  eastern  states,\nt h e   p r o f i t   a c c r u i n g   o u t   o f   t h e\na g r i c u l t u r e   s e c t o r   w e n t   t o   t h e\nzamindars instead of the cultivators'),
(153, 'ashikplk', 'Economics 01', '1', 'What z extent adopting?', 'To a\nvery  great  extent,  the  terms  of  the\nrevenue  settlement  were  also\nr e s p o n s i b l e   f o r   t h e   z a m i n d a r s\nadopting such an attitude; dates for\ndepositing specified sums of revenue\nw e r e   f i x e d ,   f a i l i n g   w h i c h   t h e\nzamindars were to lose their rights'),
(154, 'ashikplk', 'Economics 01', '1', 'What comes Ramesh?', '(In your attempt to find answers to these questions, you\nmay refer to Ramesh Chandra Dutt’s Economic History of India, which comes\nin  three  volumes,  and  B'),
(155, 'ashikplk', 'Economics 01', '1', 'What helps Remember?', 'Remember,  nothing\nhelps  better  than  an  illustrated  map  to  understand  the  subject  at  hand)'),
(156, 'ashikplk', 'Economics 01', '1', 'What means Capital producing?', 'Capital goods industry means\nindustries which can produce machine\ntools  which  are,  in  turn,  used  for\nproducing  articles  for  current\nconsumption'),
(157, 'ashikplk', 'Economics 01', '1', 'What is Tata setting?', 'What,  for  example,  might  have  been  the\nreasons for the setting up of the Tata Iron and Steel Company at Jamshedpur,\nwhich  is  now  in  the  state  of  Jharkhand'),
(158, 'ashikplk', 'Economics 01', '1', 'What is argument?', 'There is an argument that industries which are not strategic in nature\nshould not continue to be in the public sector'),
(159, 'ashikplk', 'Economics 01', '1', 'What is view?', 'What is your view'),
(160, 'ashikplk', 'Economics 01', '1', 'What has FOREIGN?', '5 FOREIGN TRADE\n\nIndia has been an important trading\nnation  since  ancient  times'),
(161, 'ashikplk', 'Economics 01', '1', 'What s ’?', 'But  this\nsurplus  came  at  a  huge  cost  to  the\ncountry’s economy'),
(162, 'ashikplk', 'Biology 4', '10', 'What is Saccharomyces fermenting?', 'For this\npurpose  the  same  yeast  Saccharomyces\ncerevisiae  used  for  bread-making  and\ncommonly  called  brewer’s  yeast,  is  used  for\nfermenting  malted  cereals  and  fruit  juices,  to\nproduce ethanol'),
(163, 'ashikplk', 'Biology 4', '10', 'What is photograph?', 'The\nphotograph of a fermentation plant is shown in\nFigure  10'),
(164, 'ashikplk', 'Biology 4', '10', 'What is Anti causing?', 'Anti is\na Greek word that means ‘against’, and bio means\n‘life’,  together  they  mean  ‘against  life’  (in  the\ncontext of disease causing organisms); whereas with reference to human\nbeings,  they  are  ‘pro  life’  and  not  against'),
(165, 'ashikplk', 'Biology 4', '10', 'What plates Alexander working?', 'Alexander Fleming while working on Staphylococci\nbacteria, once observed a mould growing in one of his unwashed culture\nplates around which Staphylococci could not grow'),
(166, 'ashikplk', 'Biology 4', '10', 'What is Yeast?', '\n\nYeast (Saccharomyces cerevisiae) is used for commercial production\n\nof ethanol'),
(167, 'ashikplk', 'Biology 4', '10', 'What is use?', 'This is\n\nbecause  the  bottled  juices  are  clarified  by  the  use  of  pectinases  and\n\nproteases'),
(168, 'ashikplk', 'Biology 4', '10', 'What is Streptokinase removing?', 'Streptokinase produced by the bacterium Streptococcus and\n\nmodified by genetic engineering is used as a ‘clot buster’ for removing\nclots from the blood vessels of patients who have undergone myocardial\n\ninfarction leading to heart attack'),
(169, 'ashikplk', 'Biology 4', '10', 'What is A?', '\n\nAnother  bioactive  molecule,  cyclosporin  A,  that  is  used  as  an\n\nimmunosuppressive agent in organ-transplant patients, is produced by\nthe  fungus  Trichoderma  polysporum'),
(170, 'ashikplk', 'Biology 4', '10', 'What acts It inhibiting?', 'It acts by competitively inhibiting the enzyme responsible\n\nfor synthesis of cholesterol'),
(171, 'ashikplk', 'Biology 4', '10', 'What is component?', 'A major component of this waste water is human excreta'),
(172, 'ashikplk', 'Biology 4', '10', 'What is waste-water?', '\n\nThis  municipal  waste-water  is  also  called  sewage'),
(173, 'ashikplk', 'Biology 4', '10', 'What is STPs polluting?', '\n\nBefore disposal, hence, sewage is treated in sewage treatment plants (STPs)\n\nto  make  it  less  polluting'),
(174, 'ashikplk', 'Biology 4', '10', 'What is BIOLOGY?', 'Treatment  of  waste  water  is  done  by  the\n\n2019-2020BIOLOGY\n\nheterotrophic microbes naturally present in\nthe sewage'),
(175, 'ashikplk', 'Biology 4', '10', 'What is treatment?', 'This treatment is carried out in\ntwo stages:\n\nFigure  10'),
(176, 'ashikplk', 'Biology 4', '10', 'What is debris floating?', 'These\nare removed in stages; initially, floating debris\nis removed by sequential filtration'),
(177, 'ashikplk', 'Biology 4', '10', 'What forms sludge?', 'All solids that settle form the\nprimary sludge, and the supernatant forms\nthe effluent'),
(178, 'ashikplk', 'Biology 4', '10', 'What is effluent?', 'The effluent from the primary\nsettling tank is taken for secondary treatment'),
(179, 'ashikplk', 'Biology 4', '10', 'What allows growth?', 'This allows\nvigorous  growth  of  useful  aerobic  microbes  into  flocs  (masses  of\nbacteria  associated  with  fungal  filaments  to  form  mesh  like\nstructures)'),
(180, 'ashikplk', 'Biology 4', '10', 'What reduces BOD?', 'This significantly reduces the\nBOD (biochemical oxygen demand) of the effluent'),
(181, 'ashikplk', 'Biology 4', '10', 'What is BOD?', 'The sewage\nwater is treated till the BOD is reduced'),
(182, 'ashikplk', 'Biology 4', '10', 'What measures BOD?', 'The BOD test measures the\nrate of uptake of oxygen by micro-organisms in a sample of water\nand thus, indirectly, BOD is a measure of the organic matter present\nin the water'),
(183, 'ashikplk', 'Biology 4', '10', 'What is BOD polluting?', 'The greater the BOD of waste water, more is its polluting\npotential'),
(184, 'ashikplk', 'Biology 4', '10', 'What is sediment?', 'This sediment is called activated sludge'),
(185, 'ashikplk', 'Biology 4', '10', 'What is part?', 'A small\npart of the activated sludge is pumped back into the aeration tank to\nserve as the inoculum'),
(186, 'ashikplk', 'Biology 4', '10', 'What is part remaining?', 'The remaining major part of the sludge is pumped\ninto large tanks called anaerobic sludge digesters'),
(187, 'ashikplk', 'Biology 4', '10', 'What has methodology?', 'This methodology has\nbeen practiced for more than a century now, in\nalmost all parts of the world'),
(188, 'ashikplk', 'Biology 4', '10', 'What has Till?', 'Till date, no man-\nmade  technology  has  been  able  to  rival  the\nmicrobial treatment of sewage'),
(189, 'ashikplk', 'Biology 4', '10', 'What is You increasing?', '\n\nYou  are  aware  that  due  to  increasing\nurbanisation, sewage is being produced in much\nlarger quantities than ever before'),
(190, 'ashikplk', 'Biology 4', '10', 'What has number?', 'However the\nnumber  of  sewage  treatment  plants  has  not\nincreased enough to treat such large quantities'),
(191, 'ashikplk', 'Biology 4', '10', 'What is sewage leading?', '\nSo the untreated sewage is often discharged directly into rivers leading to\ntheir pollution and increase in water-borne diseases'),
(192, 'ashikplk', 'Biology 4', '10', 'What has Ministry?', '7  An aerial view of a sewage plant\n\nThe Ministry of Environment and Forests has initiated Ganga Action\nPlan and Yamuna Action Plan to save these major rivers of our country\nfrom pollution'),
(193, 'ashikplk', 'Biology 4', '10', 'What is MICROBES containing?', '4 MICROBES IN PRODUCTION OF BIOGAS\n\nBiogas is a mixture of gases (containing predominantly methane) produced\nby the microbial activity and which may be used as fuel'),
(194, 'ashikplk', 'Biology 4', '10', 'What is Methanobacterium?', 'These bacteria are collectively called\nmethanogens, and one such common bacterium is Methanobacterium'),
(195, 'ashikplk', 'Biology 4', '10', 'What is lot?', 'A lot of cellulosic material present in the food of cattle\nis  also  present  in  the  rumen'),
(196, 'ashikplk', 'Biology 4', '10', 'What is excreta?', 'Thus, the excreta (dung) of cattle, commonly called\ngobar, is rich in these bacteria'),
(197, 'ashikplk', 'Biology 4', '10', 'What consists biogas?', '\n\nThe biogas plant consists of a concrete tank (10-15 feet deep) in which\nbio-wastes are collected and a slurry of dung is fed'),
(198, 'ashikplk', 'Biology 4', '10', 'What is BIOLOGY rising?', 'A floating cover is\n\n185\n\n2019-2020BIOLOGY\n\nplaced  over  the  slurry,  which\nkeeps  on  rising  as  the  gas  is\nproduced in the tank due to the\nmicrobial  activity'),
(199, 'ashikplk', 'Biology 4', '10', 'What has biogas?', 'The  biogas\nplant  has  an  outlet,  which  is\nconnected  to  a  pipe  to  supply\nbiogas  to  nearby  houses'),
(200, 'ashikplk', 'Biology 4', '10', 'What is spent?', 'The\nspent slurry is removed through\nanother outlet and may be used\nas  fertiliser'),
(201, 'ashikplk', 'Biology 4', '10', 'What is Cattle?', 'Cattle  dung  is\navailable in large quantities in\nrural areas where cattle are used\nfor  a  variety  of  purposes'),
(202, 'ashikplk', 'Biology 4', '10', 'What is biogas?', 'The biogas\nthus  produced  is  used  for\ncooking  and  lighting'),
(203, 'ashikplk', 'Biology 4', '10', 'What is picture?', 'The\npicture  of  a  biogas  plant  is\nshown  in  Figure  10'),
(204, 'ashikplk', 'Biology 4', '10', 'What is soil?', 'Our soil is also polluted through\nour use of weedicides to remove weeds'),
(205, 'ashikplk', 'Biology 4', '10', 'What is control controlling?', '\n\nBiological control of pests and diseases: In agriculture, there is a\nmethod of controlling pests that relies on natural predation rather than\nintroduced chemicals'),
(206, 'ashikplk', 'Biology 4', '10', 'What is belief?', 'A key belief of the organic farmer is that biodiversity\nfurthers health'),
(207, 'ashikplk', 'Biology 4', '10', 'What works farmer?', 'The organic farmer, therefore, works to create a system where the\ninsects that are sometimes called pests are not eradicated, but instead\nare kept at manageable levels by a complex system of checks and balances\nwithin  a  living  and  vibrant  ecosystem'),
(208, 'ashikplk', 'Biology 4', '10', 'What is Bacillus?', 'An  example  of  microbial  biocontrol  agents  that  can  be\nintroduced in order to control butterfly caterpillars is the bacteria Bacillus\nthuringiensis (often written as Bt )'),
(209, 'ashikplk', 'Biology 4', '10', 'What is gut?', 'In the gut of the larvae, the toxin is released and the larvae get\nkilled'),
(210, 'ashikplk', 'Biology 4', '10', 'What is Bt-cotton being?', '\nBt-cotton is one such example, which is being cultivated in some states\nof our country'),
(211, 'ashikplk', 'Biology 4', '10', 'What is Trichoderma being?', '\n\nA biological control being developed for use in the treatment of plant\ndisease is the fungus Trichoderma'),
(212, 'ashikplk', 'Biology 4', '10', 'What pathogens attack?', '\n\nBaculoviruses are pathogens that attack insects and other arthropods'),
(213, 'ashikplk', 'Biology 4', '10', 'What is IPM being?', 'This is especially desirable when beneficial\ninsects  are  being  conserved  to  aid  in  an  overall  integrated  pest\nmanagement (IPM) programme, or when an ecologically sensitive area is\nbeing treated'),
(214, 'ashikplk', 'Biology 4', '10', 'What is MICROBES?', '6 MICROBES AS BIOFERTILISERS\n\nWith our present day life styles environmental pollution is a major cause\nof concern'),
(215, 'ashikplk', 'Biology 4', '10', 'What has BIOLOGY?', 'The use of the chemical fertilisers to meet the ever-increasing\n\n187\n\n2019-2020BIOLOGY\n\ndemand  of  agricultural  produce  has  contributed  significantly  to\nthis pollution'),
(216, 'ashikplk', 'Biology 4', '10', 'What enrich quality?', '\nBiofertilisers  are organisms that enrich the nutrient quality of the soil'),
(217, 'ashikplk', 'Biology 4', '10', 'What is nitrogen?', 'These  bacteria  fix\natmospheric nitrogen into organic forms, which is used by the plant as\nnutrient'),
(218, 'ashikplk', 'Biology 4', '10', 'What add Blue?', 'Blue green algae also add organic matter\nto the soil and increase its fertility'),
(219, 'ashikplk', 'Biology 4', '10', 'What is dough?', 'The  dough,  which  is  used  to  make  bread,  is  fermented  by\n\nyeast  called  Saccharomyces  cerevisiae'),
(220, 'ashikplk', 'Economics 01', '55', 'What loses Empire?', 'If the Empire loses any other part of its\nDominion we can survive, but if we lose India, the sun of our Empire will have\nset'),
(221, 'ashikplk', 'Economics 01', '55', 'What is INTRODUCTION?', '1  INTRODUCTION\n\nThe  primary  objective  of  this  book,\nIndian  Economic  Development,  is  to\nfamiliarise you with the basic features\nof  the  Indian  economy,  and  its\ndevelopment,  as  it  is  today,  in  the\naftermath of Independence'),
(222, 'ashikplk', 'Economics 01', '55', 'What is understanding?', 'An understanding of\nthe  exploitative  nature  of  this\nrelationship  is  essential  for  any\nassessment  of  the  kind  and  level  of\ndevelopment  which  the  Indian\neconomy has been able to attain over\nthe last six and half decades'),
(223, 'ashikplk', 'Economics 01', '55', 'What works India?', 'India  was\nparticularly  well  known  for  its\nhandicraft industries in the fields of\ncotton  and  silk  textiles,  metal  and\nprecious  stone  works  etc'),
(224, 'ashikplk', 'Economics 01', '55', 'What is Bengal?', '1:  Textile  Industry  in  Bengal\n\nMuslin is a type of cotton textile which had its origin in Bengal, particularly,\nplaces  in  and  around  Dhaka  (spelled  during  the  pre-independence  period  as\nDacca),  now the capital city of Bangladesh'),
(225, 'ashikplk', 'Biology 5', '10', 'What does BIODIVERSITY ha?', 'BIODIVERSITY  AND  CONSERVATION\n\nAlthough India has only 2'),
(226, 'ashikplk', 'Biology 5', '10', 'What is cent?', '4 per cent of the world’s land area, its share\nof the global species diversity is an impressive 8'),
(227, 'ashikplk', 'Biology 5', '10', 'What is country?', 'That is what\nmakes our country one of the 12 mega diversity countries of the world'),
(228, 'ashikplk', 'Biology 5', '10', 'What appears we becoming?', 'The situation appears more hopeless when we realise that a large\nfraction of these species faces the threat of becoming extinct even before\nwe discover them'),
(229, 'ashikplk', 'Biology 5', '10', 'What ’ we burning?', 'Nature’s biological library is burning even before we\ncatalogued the titles of all the books stocked there'),
(230, 'ashikplk', 'Biology 5', '10', 'What is Biodiversity?', '2 Patterns of Biodiversity\n\n(i) Latitudinal  gradients :  The  diversity  of  plants  and  animals  is\nnot  uniform  throughout  the  world  but  shows  a  rather  uneven\ndistribution'),
(231, 'ashikplk', 'Biology 5', '10', 'What has Colombia?', '\nColombia located near the equator has nearly 1,400 species of birds\nwhile New York at 41° N has 105 species and Greenland at 71° N\nonly 56 species'),
(232, 'ashikplk', 'Biology 5', '10', 'What has Equador?', 'A forest in a tropical\nregion like Equador has up to 10 times as many species of vascular\nplants as a forest of equal area in a temperate region like the Midwest\nof the USA'),
(233, 'ashikplk', 'Biology 5', '10', 'What has South?', 'The largely tropical Amazonian rain forest in South\nAmerica has the greatest biodiversity on earth- it is home to more\nthan 40,000 species of plants, 3,000 of fishes, 1,300 of birds, 427\nof mammals, 427 of amphibians, 378 of reptiles and of more than\n1,25,000 invertebrates'),
(234, 'ashikplk', 'Biology 5', '10', 'What is diversity?', '\nWhat is so special about tropics that might account for their greater\nbiological  diversity'),
(235, 'ashikplk', 'Biology 5', '10', 'What is niche?', 'Such  constant  environments  promote  niche\nspecialisation and lead to a greater species diversity and (c) There\nis more solar energy available in the tropics, which contributes to\nhigher productivity; this in turn might contribute indirectly to greater\ndiversity'),
(236, 'ashikplk', 'Biology 5', '10', 'What species Alexander increasing?', '\n\n(ii) Species-Area relationships : During his pioneering and extensive\nexplorations in the wilderness of South American jungles, the great\nGerman  naturalist  and  geographer  Alexander  von  Humboldt\nobserved  that  within  a  region  species\nrichness  increased  with  increasing\nexplored area, but only up to a limit'),
(237, 'ashikplk', 'Biology 5', '10', 'What turns Figure15?', 'In\nfact, the relation between species richness\nand  area  for  a  wide  variety  of  taxa\n(angiosperm  plants,  birds,  bats,\nfreshwater  fishes)  turns  out  to  be  a\nrectangular hyperbola (Figure15'),
(238, 'ashikplk', 'Biology 5', '10', 'What is Figure?', 'On\na logarithmic scale, the relationship is a\nstraight line described by the equation\n\nFigure  15'),
(239, 'ashikplk', 'Biology 5', '10', 'What becomes S?', '\nNote  that  on  log  scale  the  relationship\nbecomes  linear\n\nlog S =  log C + Z log A\nwhere\nS= Species richness A= Area\nZ = slope of the line (regression\n     coefficient)\nC = Y-intercept\nEcologists have discovered that the\nvalue of Z lies in the range of 0'),
(240, 'ashikplk', 'Biology 5', '10', 'What is Britain?', '2,\nregardless of the taxonomic group or the\nregion (whether it is the plants in Britain,\nbirds in California or molluscs in New York state, the slopes of the regression\nline  are  amazingly  similar)'),
(241, 'ashikplk', 'Biology 5', '10', 'What values Z?', 'But,  if  you  analyse  the  species-area\nrelationships among very large areas like the entire continents, you will\nfind that the slope of the line to be much steeper (Z values in the range\nof 0'),
(242, 'ashikplk', 'Biology 5', '10', 'What is example?', 'For example, for frugivorous (fruit-eating) birds and\nmammals in the tropical forests of different continents, the slope is found\nto be 1'),
(243, 'ashikplk', 'Biology 5', '10', 'What Does Species?', '3 The importance of  Species Diversity to the Ecosystem\n\nDoes the number of species in a community really matter to the functioning\nof the ecosystem'),
(244, 'ashikplk', 'Biology 5', '10', 'What is question?', 'This is a question for which ecologists have not been\nable to give a definitive answer'),
(245, 'ashikplk', 'Biology 5', '10', 'What is stability?', 'What exactly is stability for a biological\n\n2019-2020'),
(246, 'ashikplk', 'Biology 5', '12', 'What is Ghats?', 'Would Western\nGhats ecosystems be less functional if one of its tree frog species is lost\nforever'),
(247, 'ashikplk', 'Biology 5', '12', 'What starts it travelling?', 'If every\npassenger travelling in it starts popping a rivet to take home (causing a\nspecies to become extinct), it may not affect flight safety (proper functioning\nof the ecosystem) initially,  but as more and more rivets are removed, the\nplane becomes dangerously weak over a period of time'),
(248, 'ashikplk', 'Biology 5', '12', 'What is Loss?', 'Loss of rivets on the wings\n(key species that drive major ecosystem functions) is obviously a more\nserious threat to flight safety than loss of a few rivets on the seats or\nwindows inside the plane'),
(249, 'ashikplk', 'Biology 5', '12', 'What is Loss being?', '4 Loss of Biodiversity\n\nWhile it is doubtful if any new species are being added (through speciation)\ninto the earth’s treasury of species, there is no doubt about their continuing\nlosses'),
(250, 'ashikplk', 'Biology 5', '12', 'What has wealth declining?', 'The biological wealth of our planet has been declining rapidly\nand  the  accusing  finger  is  clearly  pointing  to  human  activities'),
(251, 'ashikplk', 'Biology 5', '12', 'What is Pacific?', 'The\ncolonisation of tropical Pacific Islands by humans is said to have led to\nthe extinction of more than 2,000 species of native birds'),
(252, 'ashikplk', 'Biology 5', '12', 'What is scenario Adding?', 'Adding to the\ngrim scenario of extinctions is the fact that more than 15,500 species\nworld-wide are facing the threat of extinction'),
(253, 'ashikplk', 'Biology 5', '12', 'What is Sixth?', 'How is the ‘Sixth Extinction’ presently in progress different\nfrom the previous episodes'),
(254, 'ashikplk', 'Biology 5', '12', 'What is difference?', 'The difference is in the rates; the current\nspecies extinction rates are estimated to be 100 to 1,000 times faster\nthan in the pre-human times and our activities are responsible for the\nfaster  rates'),
(255, 'ashikplk', 'Biology 5', '12', 'What processes loss?', '\n\nIn general, loss of biodiversity in a region may lead to (a) decline in\nplant production, (b) lowered resistance to environmental perturbations\nsuch as drought and (c) increased variability in certain ecosystem processes\nsuch as plant productivity, water use, and pest and disease cycles'),
(256, 'ashikplk', 'Biology 5', '12', 'What is biodiversity facing?', '\nCauses  of  biodiversity  losses:  The  accelerated  rates  of  species\nextinctions  that  the  world  is  facing  now  are  largely  due  to  human\nactivities'),
(257, 'ashikplk', 'Biology 5', '12', 'What is Evil?', 'There are four major causes (‘ The Evil Quartet ’ is the sobriquet\nused to describe them)'),
(258, 'ashikplk', 'Biology 5', '12', 'What is Habitat?', '\n\n(i) Habitat loss and fragmentation:  This is the most important\ncause driving animals and plants to extinction'),
(259, 'ashikplk', 'Biology 5', '12', 'What is Amazon being?', 'The Amazon\nrain forest (it is so huge that it is called the ‘lungs of the planet’)\nharbouring probably millions of species is being cut and cleared\nfor cultivating soya beans or for conversion to grasslands for raising\nbeef cattle'),
(260, 'ashikplk', 'Biology 5', '12', 'What threatens loss?', 'Besides total loss, the degradation of many habitats by\npollution also threatens the survival of many species'),
(261, 'ashikplk', 'Biology 5', '12', 'What turns ‘?', '\n\n(ii) Over-exploitation:  Humans have always depended on nature for\nfood and shelter, but when ‘need’ turns to ‘greed’, it leads to\n\n264\n\n2019-2020BIODIVERSITY  AND  CONSERVATION\n\nover -exploitation of natural resources'),
(262, 'ashikplk', 'Biology 5', '12', 'What is African posing?', 'The recent\nillegal  introduction  of  the  African  catfish  Clarias  gariepinus  for\naquaculture purposes is posing a threat to the indigenous catfishes\nin our rivers'),
(263, 'ashikplk', 'Biology 5', '12', 'What becomes host?', 'When  a  host  fish  species  becomes  extinct,  its  unique\nassemblage of parasites also meets the same fate'),
(264, 'ashikplk', 'Biology 5', '12', 'What knows Nobody waiting?', 'Nobody knows how many more medicinally\nuseful plants there are in tropical rain forests waiting to be explored'),
(265, 'ashikplk', 'Biology 5', '12', 'What says argument?', '\n\nThe  broadly  utilitarian  argument  says  that  biodiversity  plays  a\nmajor role in many ecosystem services that nature provides'),
(266, 'ashikplk', 'Biology 5', '12', 'What is BIOLOGY dwindling?', 'The fast-\n\n265\n\n2019-2020BIOLOGY\n\ndwindling  Amazon  forest  is  estimated  to  produce,  through\nphotosynthesis, 20 per cent of the total oxygen in the earth’s atmosphere'),
(267, 'ashikplk', 'Biology 5', '12', 'What relates we conserving?', '\n\nThe ethical argument for conserving biodiversity relates to what we\nowe to millions of plant, animal and microbe species with whom we share\nthis planet'),
(268, 'ashikplk', 'Biology 5', '12', 'What is approach?', 'This approach\nis called in situ (on site) conservation'),
(269, 'ashikplk', 'Biology 5', '12', 'What is it facing?', 'However, when there are situations\nwhere an animal or plant is endangered or threatened (organisms facing\na very high risk of extinction in the wild in the near future) and needs\nurgent measures to save it from extinction, ex situ (off site) conservation\nis the desirable approach'),
(270, 'ashikplk', 'Biology 5', '12', 'What exceeds number waiting?', 'Invariably, the number of species\nwaiting to be saved from extinction far exceeds the conservation resources\navailable'),
(271, 'ashikplk', 'Biology 5', '12', 'What has basis?', 'On a global basis, this problem has been addressed by eminent\nconservationists'),
(272, 'ashikplk', 'Biology 5', '12', 'What ’ Ghats?', 'Three  of\nthese  hotspots  –  Western  Ghats  and  Sri  Lanka,  Indo-Burma  and\nHimalaya – cover our country’s exceptionally high biodiversity regions'),
(273, 'ashikplk', 'Biology 5', '12', 'What has conservation keeping?', 'In recent years ex situ conservation has\nadvanced beyond keeping threatened species in enclosures'),
(274, 'ashikplk', 'Biology 5', '12', 'What gametes condition using?', 'Now gametes\nof threatened species can be preserved in viable and fertile condition for\nlong periods using cryopreservation techniques, eggs can be fertilised in\nvitro, and plants can be propagated using tissue culture methods'),
(275, 'ashikplk', 'Biology 5', '12', 'What knows Biodiversity?', '\n\nBiodiversity knows no political boundaries and its conservation is\ntherefore a collective responsibility of all nations'),
(276, 'ashikplk', 'Biology 5', '12', 'What exists Biodiversity?', 'Biodiversity refers\nto  the  sum  total  of  diversity  that  exists  at  all  levels  of  biological\norganisation'),
(277, 'ashikplk', 'Biology 5', '12', 'What is importance protecting?', 'Of particular importance is the diversity at genetic, species\nand  ecosystem  levels  and  conservation  efforts  are  aimed  at  protecting\ndiversity  at  all  these  levels'),
(278, 'ashikplk', 'def eco', '1', 'What discusses India?', 'The second section discusses the state of India’s  environment  and  the  third section deals with steps and strategies to achieve sustainable development'),
(279, 'ashikplk', 'def eco', '1', 'What is Environment?', 'Environment  is  defined  as  the  total planetary inheritance and the totality of all resources'),
(280, 'ashikplk', 'def eco', '1', 'What calls study?', 'A study of the environment then  calls  for  a  study  of  the  inter- relationship between these biotic and abiotic components of the environment'),
(281, 'ashikplk', 'def eco', '1', 'What is supply?', 'That  is,  a  continuous supply  of  the  resource  remains available'),
(282, 'ashikplk', 'def eco', '1', 'What assimilates it providing?', 'Non-renewable resources, on the other hand, are those which  get  exhausted  with  extraction and use,  for example, fossil fuel (ii) it assimilates waste (iii) it sustains life by providing genetic and bio diversity and (iv) it also provides aesthetic services like scenery etc'),
(283, 'ashikplk', 'def eco', '1', 'What is environment making?', 'The environment is able to perform these functions without any interruption as  long  as  the  demand  on  theseThe  past development has polluted and dried up rivers and other aquifers making water an  economic  good'),
(284, 'ashikplk', 'def eco', '1', 'What has extraction?', 'Besides,  the intensive  and  extensive  extraction  of both  renewable  and  non-renewable resources has exhausted some of these9'),
(285, 'ashikplk', 'def eco', '1', 'What is carrying?', 'functions  is  within  its  carrying capacity'),
(286, 'ashikplk', 'def eco', '1', 'What is environment?', 'When this is not so, the environment fails to perform its third and vital function of life sustenance and Why  has  water  become  an  economic  commodity'),
(287, 'ashikplk', 'def eco', '2', 'What is warming?', 'Much  of  the  recent  observed  and  projected  global warming  is  human-induced'),
(288, 'ashikplk', 'def eco', '2', 'What increases warming contributing?', 'Among factors that may be contributing to global warming are the burning of  coal  and  petroleum  products  (sources  of  carbon  dioxide,  methane,  nitrous oxide,  ozone);  deforestation,  which  increases  the  amount  of  carbon  dioxide  in the  atmosphere;  methane  gas  released  in  animal  waste;  and  increased  cattle production,  which  contributes  to  deforestation,  methane  production,  and  use of  fossil  fuels'),
(289, 'ashikplk', 'def eco', '2', 'What is —?', 'Added to these are the health costs of degraded  environmental  quality  — decline in air and water quality (seventy per cent of water in India is polluted) have resulted in increased incidence of respiratory  and water-borne diseases'),
(290, 'ashikplk', 'def eco', '2', 'What arises question?', 'The biggest question that arises is: are environmental problems new to this century'),
(291, 'ashikplk', 'def eco', '2', 'What seems UV?', 'UV  radiation  seems  responsible  for  skin  cancer in  humans;  it  also  lowers  production  of  phytoplankton  and  thus  affects  other aquatic  organisms'),
(292, 'ashikplk', 'def eco', '2', 'Explain prevents Earth passing?', 'Since  the  ozone  layer  prevents  most  harmful  wavelengths  of ultraviolet  light  from  passing  through  the  Earth’s  atmosphere,  observed  and projected  decreases  in  ozone  have  generated  worldwide  concern'),
(293, 'ashikplk', 'def eco', '2', 'What is Damodar?', '2 Damodar  Valley  is  one  of    India’s  most industrialised regions'),
(294, 'ashikplk', 'def eco', '2', 'What accounts India?', 'India  alone  accounts  for nearly 20 per cent of the world’s total iron-ore  reserves'),
(295, 'ashikplk', 'def eco', '2', 'Explain poses India growing?', 'The threat to India’s environment poses a dichotomy —threat of poverty-induced environmental degradation and, at the same  time,  threat  of  pollution  from affluence  and  a  rapidly  growing industrial  sector');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_summarydata`
--

CREATE TABLE `tbl_summarydata` (
  `id` int(11) NOT NULL,
  `book_name` varchar(30) NOT NULL,
  `summary_id` varchar(30) NOT NULL,
  `summary` varchar(4000) NOT NULL,
  `date` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `chapter` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_summarydata`
--

INSERT INTO `tbl_summarydata` (`id`, `book_name`, `summary_id`, `summary`, `date`, `user_id`, `chapter`) VALUES
(1, 'History NCRT', '', 'It  has  been  calculated  that  if  one  labourer  moved roughly  a  cubic  metre  of  earth  daily,  just  to  put  the foundations  in  place  it  would  have  required  four million  person-days,  in  other  words,  mobilising labour  on  a  very  large  scale.So  it seems  that  the  settlement  was  first  planned  and then  implemented  accordingly.If you look at the plan of the Lower Town you will notice that  roads  and  streets  were  laid  out  along  an approximate  “grid”  pattern,  intersecting  at  right angles.It  seems  that  streets  with  drains  were  laid out  first  and  then  houses  built  along  them.While  most  Harappan  settlements  have  a  small  high western  part  and  a  larger  lower  eastern  section,  there are  variations.Many houses  had  wells,  often  in  a  room  that  could  be reached  from  the  outside  and  perhaps  used  by passers-by.Scholars  have  estimated  that  the  total number  of  wells  in  Mohenjodaro  was  about  700.Very  long  drainage  channels were provided at intervals with sumps  for  cleaning.It  is  a wonder  of  archaeology  that “little heaps of material, mostly sand,  have  frequently  been found lying alongside drainage channels, which shows … that the  debris  was  not  always carted  away  when  the  drain was cleared”.The  Great  Bath  was  a large  rectangular  tank  in  a courtyard  surrounded  by  a corridor  on  all  four  sides.', '1.4.19', 'user1', ''),
(2, 'nnssrt', '', 'this is a summary', '12.1.4', '', ''),
(4, 'History NCRT', '', 'It  has  been  calculated  that  if  one  labourer  moved roughly  a  cubic  metre  of  earth  daily,  just  to  put  the foundations  in  place  it  would  have  required  four million  person-days,  in  other  words,  mobilising labour  on  a  very  large  scale.So  it seems  that  the  settlement  was  first  planned  and then  implemented  accordingly.If you look at the plan of the Lower Town you will notice that  roads  and  streets  were  laid  out  along  an approximate  “grid”  pattern,  intersecting  at  right angles.It  seems  that  streets  with  drains  were  laid out  first  and  then  houses  built  along  them.While  most  Harappan  settlements  have  a  small  high western  part  and  a  larger  lower  eastern  section,  there are  variations.Many houses  had  wells,  often  in  a  room  that  could  be reached  from  the  outside  and  perhaps  used  by passers-by.Scholars  have  estimated  that  the  total number  of  wells  in  Mohenjodaro  was  about  700.It  is  a wonder  of  archaeology  that “little heaps of material, mostly sand,  have  frequently  been found lying alongside drainage channels, which shows … that the  debris  was  not  always carted  away  when  the  drain was cleared”.The  Great  Bath  was  a large  rectangular  tank  in  a courtyard  surrounded  by  a corridor  on  all  four  sides.There  were  rooms on  three  sides,  in  one  of which  was  a  large  well.', '1.4.19', 'user1', '1'),
(5, 'History NCRT', '', 'Made  of  a  stone  called  steatite,  seals like this one often contain animal motifs and signs from  a  script  that  remains  undeciphered.4.1  Burials Archaeologists  generally  use  certain  strategies  to find  out  whether  there  were  social  or  economic differences amongst people living within a particular culture.These  traces  suggest that  apart  from  small,  specialised  centres,  craft production  was  also  undertaken  in  large  cities  such as  Mohenjodaro  and  Harappa.Notably,  bricks,  though obviously not produced in any single centre, were of a  uniform  ratio  throughout  the  region,  from  Jammu to Gujarat.A  large  building  found  at Mohenjodaro  was  labelled  as  a  palace  by archaeologists  but  no  spectacular  finds  were associated  with  it.It may be no mere chance that at a late period  of  Mohenjodaro  men,  women,  and  children,  appear  to  have  been massacred there.Another  archaeologist,  Rakhal  Das  Banerji  found similar  seals  at  Mohenjodaro,  leading  to  the conjecture  that  these  sites  were  part  of  a  single archaeological culture.This  material  could be  pottery,  tools,  ornaments,  household  objects,  etc. Organic  materials  such  as  cloth,  leather,  wood  and reeds  generally  decompose,  especially  in  tropical regions.For  instance,  though  there  are traces  of  cotton  at  some  Harappan  sites,  to  find  out about  clothing  we  have  to  depend  on  indirect evidence  including  depictions  in  sculpture.Attempts  have  also  been  made  to  reconstruct religious  beliefs  and  practices  by  examining  seals, some  of  which  seem  to  depict  ritual  scenes.', '1.4.19', 'user1', '12'),
(6, 'History NCRT', '', '4.1  Burials Archaeologists  generally  use  certain  strategies  to find  out  whether  there  were  social  or  economic differences amongst people living within a particular culture.You  are probably  familiar  with  the  massive  pyramids  of Egypt,  some  of  which  were  contemporaneous  with the  Harappan  civilisation.Could  these  variations  be  an  indication of  social  differences?Some  graves  contain  pottery  and  ornaments, perhaps  indicating  a  belief  that  these  could  be  used in  the  afterlife.Jewellery  has  been  found  in  burials of  both  men  and  women.In some instances the dead were buried with copper mirrors.The first category includes  objects  of  daily  use  made  fairly  easily  out of  ordinary  materials  such  as  stone  or  clay.These include querns, pottery, needles, flesh-rubbers (body scrubbers),  etc.,  and  are  usually  found  distributed throughout  settlements.Thus,  little  pots  of  faience  (a  material made  of  ground  sand  or  silica  mixed  with  colour and a gum and then fired) were probably considered precious  because  they  were  difficult  to  make.The  situation  becomes  more  complicated when  we  find  what  seem  to  be  articles  of  daily', '1.4.19', 'user1', '11'),
(7, 'History NCRT', '', '4.1  Burials Archaeologists  generally  use  certain  strategies  to find  out  whether  there  were  social  or  economic differences amongst people living within a particular culture.You  are probably  familiar  with  the  massive  pyramids  of Egypt,  some  of  which  were  contemporaneous  with the  Harappan  civilisation.Could  these  variations  be  an  indication of  social  differences?Some  graves  contain  pottery  and  ornaments, perhaps  indicating  a  belief  that  these  could  be  used in  the  afterlife.Jewellery  has  been  found  in  burials of  both  men  and  women.In some instances the dead were buried with copper mirrors.The first category includes  objects  of  daily  use  made  fairly  easily  out of  ordinary  materials  such  as  stone  or  clay.These include querns, pottery, needles, flesh-rubbers (body scrubbers),  etc.,  and  are  usually  found  distributed throughout  settlements.Thus,  little  pots  of  faience  (a  material made  of  ground  sand  or  silica  mixed  with  colour and a gum and then fired) were probably considered precious  because  they  were  difficult  to  make.The  situation  becomes  more  complicated when  we  find  what  seem  to  be  articles  of  daily', '1.4.19', 'user1', ''),
(8, 'History NCRT', '', '4.1  Burials Archaeologists  generally  use  certain  strategies  to find  out  whether  there  were  social  or  economic differences amongst people living within a particular culture.You  are probably  familiar  with  the  massive  pyramids  of Egypt,  some  of  which  were  contemporaneous  with the  Harappan  civilisation.Could  these  variations  be  an  indication of  social  differences?Some  graves  contain  pottery  and  ornaments, perhaps  indicating  a  belief  that  these  could  be  used in  the  afterlife.Jewellery  has  been  found  in  burials of  both  men  and  women.In some instances the dead were buried with copper mirrors.The first category includes  objects  of  daily  use  made  fairly  easily  out of  ordinary  materials  such  as  stone  or  clay.These include querns, pottery, needles, flesh-rubbers (body scrubbers),  etc.,  and  are  usually  found  distributed throughout  settlements.Thus,  little  pots  of  faience  (a  material made  of  ground  sand  or  silica  mixed  with  colour and a gum and then fired) were probably considered precious  because  they  were  difficult  to  make.The  situation  becomes  more  complicated when  we  find  what  seem  to  be  articles  of  daily', '1.4.19', 'user1', ''),
(9, 'History NCRT', '', '4.1  Burials Archaeologists  generally  use  certain  strategies  to find  out  whether  there  were  social  or  economic differences amongst people living within a particular culture.You  are probably  familiar  with  the  massive  pyramids  of Egypt,  some  of  which  were  contemporaneous  with the  Harappan  civilisation.Could  these  variations  be  an  indication of  social  differences?Some  graves  contain  pottery  and  ornaments, perhaps  indicating  a  belief  that  these  could  be  used in  the  afterlife.Jewellery  has  been  found  in  burials of  both  men  and  women.In some instances the dead were buried with copper mirrors.The first category includes  objects  of  daily  use  made  fairly  easily  out of  ordinary  materials  such  as  stone  or  clay.These include querns, pottery, needles, flesh-rubbers (body scrubbers),  etc.,  and  are  usually  found  distributed throughout  settlements.Thus,  little  pots  of  faience  (a  material made  of  ground  sand  or  silica  mixed  with  colour and a gum and then fired) were probably considered precious  because  they  were  difficult  to  make.The  situation  becomes  more  complicated when  we  find  what  seem  to  be  articles  of  daily', '1.4.19', 'user1', '5'),
(10, 'History NCRT', '', 'MohenjodaroA Planned Urban CentrePerhaps  the  most  unique  feature  of  the  Harappan civilisation  was  the  development  of  urban  centres.Let  us  look  at  one  such  centre,  Mohenjodaro, more  closely.Although  Mohenjodaro  is  the  most well-known  site,  the  first  site  to  be  discovered was  Harappa.The  settlement  is  divided  into  two  sections,  one smaller  but  higher  and  the  other  much  larger  butFig.1.7 Layout  of  MohenjodaroÜ How is the Lower Town different from the Citadel?metres', '1.4.19', 'user1', '4'),
(11, 'History NCRT', '', 'You  will  find  certain abbreviations,  related  to dates, in this book.BCE  stands  for  Before Common EraThe  present  year  is 2015  according  to  this dating system.c.  stands  for  the  Latin word  circa  and  means “approximate.”These cultures were  associated  with  distinctive  pottery,  evidence  of agriculture  and  pastoralism,  and  some  crafts.It  appears  that  there was  a  break  between  the  Early  Harappan  and  the Harappan  civilisation,  evident  from  large-scale burning  at  some  sites,  as  well  as  the  abandonment of  certain  settlements.Subsistence Strategies If you look at Maps 1 and 2 you will notice that the Mature  Harappan  culture  developed  in  some  of  the areas  occupied  by  the  Early  Harappan  cultures.These cultures also shared certain common elements including  subsistence  strategies.The  Harappans  ate a wide range of plant and animal products, including fish.Archaeologists  have  been  able  to  reconstruct dietary  practices  from  finds  of  charred  grains  and seeds.', '1.4.19', 'user1', '3'),
(12, 'History NCRT', '', 'It  has  been  calculated  that  if  one  labourer  moved roughly  a  cubic  metre  of  earth  daily,  just  to  put  the foundations  in  place  it  would  have  required  four million  person-days,  in  other  words,  mobilising labour  on  a  very  large  scale.It  seems  that  streets  with  drains  were  laid out  first  and  then  houses  built  along  them.While  most  Harappan  settlements  have  a  small  high western  part  and  a  larger  lower  eastern  section,  there are  variations.Many houses  had  wells,  often  in  a  room  that  could  be reached  from  the  outside  and  perhaps  used  by passers-by.It  is  a wonder  of  archaeology  that “little heaps of material, mostly sand,  have  frequently  been found lying alongside drainage channels, which shows … that the  debris  was  not  always carted  away  when  the  drain was cleared”.The  Great  Bath  was  a large  rectangular  tank  in  a courtyard  surrounded  by  a corridor  on  all  four  sides.4.1  Burials Archaeologists  generally  use  certain  strategies  to find  out  whether  there  were  social  or  economic differences amongst people living within a particular culture.Some  graves  contain  pottery  and  ornaments, perhaps  indicating  a  belief  that  these  could  be  used in  the  afterlife.These include querns, pottery, needles, flesh-rubbers (body scrubbers),  etc.,  and  are  usually  found  distributed throughout  settlements.The  situation  becomes  more  complicated when  we  find  what  seem  to  be  articles  of  daily', '1.4.19', 'user1', '9'),
(13, 'Biology', '', 'Sprinkle these grains on a drop of water taken on a glass slide and observe underPollen  grains  are  generally  spherical  measuring  about 25-50 micrometers in diameter.Pollen grain exine has prominent apertures called germ pores where sporopollenin is absent.The vegetative cell is bigger, has abundant food  reserve  and  a  large  irregularly  shaped  nucleus.In over 60 per cent of angiosperms, pollen grains are shed at this 2-celled stage.Pollen grains of many species cause severe allergies and bronchial afflictions  in  some  people  often  leading  to  chronic  respiratory disorders – asthma, bronchitis, etc. It may be mentioned that Parthenium or carrot grass that came into India as a contaminant with imported wheat, has become ubiquitous in occurrence and causes pollen allergy.It has become a fashion in recent years to use pollen tablets as food supplements.Pollen consumption has been claimed to increase the performance of athletes and race horses (Figure 2.6).Each pistil has three parts (Figure 2.7a), the stigma, style and ovary.Recall the definition and types of placentation that you studied in', '1.4.19', 'user1', '1'),
(14, 'Economics', '', '2019-20 “... the wisdom of expending public and private funds on education is not to be measured by its direct fruits alone.But man soon found out that we need a good deal of training and skill to do things efficiently.Expenditure  incurred  for  acquiring information  relating  to  the  labour market  and  other  markets  is  also  a source of human capital formation.A substantial part of the human capital formation takes place in one’s life when she/he is unable to decide whether it would maximise her/his earnings.Human  Capital  and  Economic Growth:  Who  contributes  more  to national income —  a worker in a factory or a software professional?Entrepreneurs,  bureaucrats  and  politicians  are  now  advancing views  about  how  India  can  transform  itself  into  a  knowledge-based  economy by using information technology (IT).We have  already  learnt  that  human capital  formation  is  the  outcome of investments in education, health, on-the-job  training,  migration  and information.Moreover, a substantial section of our people  cannot  afford  to  reach  super specialty  health  care  and  higher education.In principle,  a goal of 6 per cent needs to be reached—this has been accepted  as a must for the coming years.The most severely affected ones were young rural female graduates as nearly 30 per cent of them are unemployed.', '1.4.19', 'user1', '2.3'),
(15, 'text', '', 'It is alleged that the borrowings are mainly confined to  consumption  purposes.Famines became events of the past; we have now achieved food security which is reflected in the abundant buffer stocks of grains.However,  all  is  not  well  with  our banking system.With the possible exception of the commercial  banks,  other  formal institutions have failed to develop a culture  of  deposit  mobilisation  — lending to worthwhile borrowers and effective  loan  recovery.It is alleged that farmers  are  deliberately  refusing  to pay  back  loans.To improve the situation,  it  is  suggested  that  banks need  to  change  their  approach  from just  being  lenders  to  building  up relationship  banking  with  the borrowers.Many  such  farmers  had  borrowed  money  for farming  and  other  purposes.Collect  information  relating  to  such cases  and  discuss  in  the  classroom.Collect  details  such  as  how  many  rural  households borrowed  from  them,    amount  generally  borrowed,  kinds  of  collateral  used, interest  rates  and  dues. If farmers who borrowed from cooperative banks could not pay back due to crop failure and other reasons, their loans should be waived otherwise they may  take  drastic  decisions  like  committing  suicides.', '1.4.19', 'user1', '2'),
(16, 'Economics', '', 'Entrepreneurs,  bureaucrats  and  politicians  are  now  advancing views  about  how  India  can  transform  itself  into  a  knowledge-based  economy by using information technology (IT).Do you think IT - based services  in  rural  areas  will  lead  to  human  development?It further states that the Indian economy has all the  key  ingredients  for  making  this transition, such as,  a critical mass of skilled  workers,  a  well-functioning democracy  and  a  diversified  science and technology infrastructure.Thus the two reports point out the fact that further  human  capital  formation  in India will move its economy to a higher growth trajectory.The two terms sound similar but there is  a  clear  distinction  between  them.Human capital considers education and health as a means to increase labour productivity.Human  capital treats  human  beings  as  a  means  to an  end;  the  end  being  the  increase in  productivity.investment in education and health is unproductive  if  it  does  not  enhance output  of  goods  and  services.Human  welfare  should  be  increased through investments in education and health even if such investments do not result  in  higher  labour  productivity. If  a  construction  worker, maid-servant,  dhobi  or  a peon in school has absented herself/himself  for  long  due to ill health, find out how it has  affected  her/his', '1.4.19', 'ashikplk', '3'),
(17, 'Economics 01', '', 'S o m e individual  attempts  which  were made  to  measure  such  incomes yielded conflicting and inconsistent results.It produces amply  —  for  its  own  consumption  — wheat,  vegetables,  grains,  fowls,  ducks and geese.How  far  do you  think  those  settlements  have  a  bearing  on  the  current  agricultural scenario in India?While  a  small  section  of  farmers changed their cropping pattern from food crops to commercial crops, a large section of tenants, small farmers and sharecroppers neither had resources and  technology  nor  had  incentive  to invest in agriculure.This demand  was  profitably  met  by  the increasing imports  of  cheap manufactured goods from Britain.Initially,  this  development  was confined to the setting up of cotton and  jute  textile  mills.However,  there  was  hardly  any capital  goods  industry  to  help promote  further  industrialisation  in India. Prepare  a  list  showing  where  and  when  other  modern  industries  of  India were first set up.Can you also find out what the basic requirements are for setting  up  any  modern  industry?This sector remained confined only to the railways, power generation, communications,  ports  and  some other departmental undertakings.', '1.4.19', 'ashikplk', '1'),
(18, 'def eco', '', 'The environment, left to itself, can continue to support life for millions of years.That  is,  a  continuous supply  of  the  resource  remains available.Non-renewable resources, on the other hand, are those which  get  exhausted  with  extraction and use,  for example, fossil fuel (ii) it assimilates waste (iii) it sustains life by providing genetic and bio diversity and (iv) it also provides aesthetic services like scenery etc. Fill in the following table with some common types of diseases and illnessesMuch  of  the  recent  observed  and  projected  global warming  is  human-induced.Adding  carbon  dioxide,  methane  and  such  other  gases  (that have  the  potential  to  absorb  heat)  to  the  atmosphere  with  no  other  changes will  make  our  planet’s  surface  warmer.Among factors that may be contributing to global warming are the burning of  coal  and  petroleum  products  (sources  of  carbon  dioxide,  methane,  nitrous oxide,  ozone);  deforestation,  which  increases  the  amount  of  carbon  dioxide  in the  atmosphere;  methane  gas  released  in  animal  waste;  and  increased  cattle production,  which  contributes  to  deforestation,  methane  production,  and  use of  fossil  fuels.Thus, it is clear that the opportunity costs  of  negative  environmental impacts are high.The biggest question that arises is: are environmental problems new to this century?In the  early  days  when  civilisation  just began,  or  before  this  phenomenal increase  in  population,  and  before countries took to industrialisation, the demand for environmental resources and services was much less than their supply.', '1.4.19', 'ashikplk', '1'),
(19, 'def eco', '', 'The environment, left to itself, can continue to support life for millions of years.That  is,  a  continuous supply  of  the  resource  remains available.Non-renewable resources, on the other hand, are those which  get  exhausted  with  extraction and use,  for example, fossil fuel (ii) it assimilates waste (iii) it sustains life by providing genetic and bio diversity and (iv) it also provides aesthetic services like scenery etc. Fill in the following table with some common types of diseases and illnessesMuch  of  the  recent  observed  and  projected  global warming  is  human-induced.Adding  carbon  dioxide,  methane  and  such  other  gases  (that have  the  potential  to  absorb  heat)  to  the  atmosphere  with  no  other  changes will  make  our  planet’s  surface  warmer.Among factors that may be contributing to global warming are the burning of  coal  and  petroleum  products  (sources  of  carbon  dioxide,  methane,  nitrous oxide,  ozone);  deforestation,  which  increases  the  amount  of  carbon  dioxide  in the  atmosphere;  methane  gas  released  in  animal  waste;  and  increased  cattle production,  which  contributes  to  deforestation,  methane  production,  and  use of  fossil  fuels.Thus, it is clear that the opportunity costs  of  negative  environmental impacts are high.The biggest question that arises is: are environmental problems new to this century?In the  early  days  when  civilisation  just began,  or  before  this  phenomenal increase  in  population,  and  before countries took to industrialisation, the demand for environmental resources and services was much less than their supply.', '1.4.19', 'ashikplk', '121-4'),
(20, 'Sociology', '', 'This economic philosophy was also given the name  laissez-faire,  a  French  phrase  that  means  ‘leave alone’ or ‘let it be’.In contrast  to  this  approach,  sociologists  have  attempted  to develop an alternative way of studying economic institutions and processes within the larger social framework.Smith’s reputation rests on his five-book  series  ‘The  Wealth of  Nations’  which  explained how rational self-interest in a free-market  economy  leads to economic well being.Sociologists view markets as social institutions that are constructed  in  culturally  specific  ways.In most agrarian or ‘peasant’ societies around the world, periodic markets are a central feature of social and economic organisation.Weekly markets bring together people from surrounding villages, who come to sell their agricultural or other produce and to buy manufactured goods and other items that are not available in their villages.While the weekly market in tribal areas may be a very old institution, its character has changed over time.Tribal areas were ‘opened up’ by building roads and ‘pacifying’ the local people (many of whom resisted colonial rule through their so-called ‘tribal rebellions’), so that the rich forest and mineral resources of these areas could be exploited.For instance, interactions between tribals and non-tribal traders are very different than those between Hindus of the same community: they express hierarchy and social distance rather than social equality.Dhorai is the name of a market village located deep in the hinterland of North Bastar district, Chattisgarh … On non-market days Dhorai is a sleepy, tree-shaded hamlet straddling an unscaled road which winds it’s way through the forest … Social life in Dhorai revolves around two primitive tea-shops with a clientele of low-ranking employees of the State Forest service, whose misfortune it has been to  be  stationed  in  such  a  distant  and  insignificant  spot …  Dhorai  on  non-market days – every day except Friday, that is – hardly exists at all; but Dhorai on a market day  might  be  a  totally  different  place.', '1.4.19', 'ashikplk', '1-2-5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '1234'),
(2, 'ashik', 'ashikplk@gmail.com', '8891'),
(3, 'ashikplk', 'ashikplk@gmail.com', '8891'),
(4, 'aa', 'aa@gmail.com', 'aa'),
(5, 'aaa', 'aa@gmail.com', '222121'),
(6, '123', 'admin@gmail.com', '123'),
(7, 'ashikplk1', 'asasxvdcv@gmaik', 'ghgf');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bookdata`
--
ALTER TABLE `tbl_bookdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_flasdata`
--
ALTER TABLE `tbl_flasdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_question`
--
ALTER TABLE `tbl_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_summarydata`
--
ALTER TABLE `tbl_summarydata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_bookdata`
--
ALTER TABLE `tbl_bookdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_flasdata`
--
ALTER TABLE `tbl_flasdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `tbl_question`
--
ALTER TABLE `tbl_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `tbl_summarydata`
--
ALTER TABLE `tbl_summarydata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
