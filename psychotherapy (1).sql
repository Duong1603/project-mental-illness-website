-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 22, 2022 at 11:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psychotherapy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_meeting` datetime NOT NULL,
  `end_meeting` datetime NOT NULL,
  `problem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('will do','doing','done') COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_gg_meet` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `times` int(11) NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `start_meeting`, `end_meeting`, `problem`, `status`, `link_gg_meet`, `times`, `id_order`, `created_at`, `updated_at`) VALUES
(1, '1976-03-03 07:30:09', '1979-02-11 19:32:12', 'Tempora illum quisquam quae. Dignissimos illo est explicabo omnis dolore adipisci. Fugiat est harum ut aut quia soluta.', 'doing', 'Molestiae tenetur sequi non quas voluptas velit dolores. Cupiditate odio accusantium eos delectus. Libero sunt quia quis culpa. Fugit ipsam error voluptatem harum.', 3, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(2, '2018-06-07 23:15:36', '1990-06-02 15:39:27', 'Fugit ea laborum impedit sit rerum dolor doloribus. Voluptas doloribus dolorem sint molestiae non natus. Quo sapiente sint adipisci suscipit accusantium aut reiciendis temporibus.', 'will do', 'Repellat totam et debitis illum soluta. Voluptates fugiat neque adipisci nemo quae nulla. Iure aut error expedita cupiditate ratione eius aliquam voluptatibus. Quos sequi omnis aut dolores eius a asperiores. Velit eius modi et asperiores.', 3, 7, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(3, '1983-10-21 14:38:39', '1979-08-08 11:58:35', 'Sunt quo ut doloribus laboriosam quibusdam. Odit sapiente ipsum dolores explicabo quod impedit doloribus. Beatae eos repudiandae illum accusamus eos.', 'doing', 'Totam vero voluptatibus ut sed qui perspiciatis nihil. Temporibus corrupti architecto laudantium autem. Sed occaecati sequi vitae esse et. Sint fugit quod tempora exercitationem facilis. Veniam placeat commodi incidunt ut perferendis et earum.', 2, 6, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(4, '2021-02-11 00:26:40', '2013-05-27 04:10:46', 'Non laudantium fuga illo minima sunt quia est. Illum eligendi repudiandae recusandae nostrum natus doloribus et. Fugit nisi beatae aliquid. Ex unde magnam repellat maxime et voluptate quo.', 'doing', 'Unde reiciendis quam est voluptatem. Quo sunt nemo omnis nemo. Maxime maxime expedita porro ad amet. Enim vero sapiente aliquid corrupti vel dolores vitae. Ea quo aut id enim aut. Labore nesciunt inventore facere ea architecto.', 2, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(5, '2010-08-02 13:33:35', '1996-12-01 16:25:50', 'Explicabo molestiae sed rem aliquam. Laboriosam quia odit ipsam quos cum aut. Sed unde ut alias ratione id sed distinctio voluptatem. Saepe optio ad adipisci qui. Ea et ea at quaerat aperiam quaerat.', 'done', 'Debitis provident dicta dicta voluptatem aut est. Illum nobis dolorem temporibus minima laudantium voluptatum aliquam. Commodi magnam excepturi nam aliquid doloremque deleniti incidunt perferendis. Atque quis sed sunt dolore quis a.', 3, 4, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(6, '1971-06-22 23:48:48', '2000-11-14 05:10:58', 'Consequatur officiis praesentium commodi et maiores. Tempora eos temporibus quia aperiam hic aut voluptatibus. Rerum quam est fugiat recusandae in. Eveniet excepturi excepturi dolores et.', 'will do', 'Repellendus inventore assumenda velit. Alias est sunt doloribus a ut qui tempora consectetur. Consequatur ut quas asperiores aperiam ad eaque. Dolor quod qui non sequi sint. Numquam debitis perferendis est sit. Consequatur sunt porro distinctio et. Neque quam excepturi ad asperiores natus.', 1, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(7, '1992-12-23 16:38:03', '2005-06-13 13:09:31', 'Earum rerum ad voluptatem dolorem. Nihil explicabo enim ratione a sit pariatur quia. Vel voluptatem voluptatum quia molestiae cumque cupiditate dolorem excepturi.', 'done', 'Est quia in ipsam sint. Sunt similique sit at odit omnis a. Ea maxime sit enim cumque culpa occaecati. Quas nobis quis et officia. Quis delectus consequatur earum recusandae doloribus dolor sit. Sint excepturi nulla vel nihil ea voluptatibus sequi est.', 3, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(8, '1980-08-09 05:15:49', '2010-01-10 03:31:43', 'Quo quisquam quia molestias qui. Totam voluptatem velit quam ullam.', 'done', 'Possimus dolorem excepturi voluptatem optio. Quo nesciunt sunt reprehenderit ut veritatis in ut. Officiis libero reiciendis id aut dolorem aliquid. Odit ex itaque enim possimus maxime est. Reprehenderit dolore facilis adipisci corrupti ratione quia. Enim eos quasi voluptas impedit voluptatem.', 2, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(9, '2006-03-03 15:00:03', '1997-11-25 05:10:24', 'Neque ut dolorem tempore nobis possimus inventore temporibus. Voluptas sunt earum magni voluptatem occaecati. Eos dicta et velit.', 'will do', 'Mollitia iste quas fugit repellendus voluptatem est dolorem. Nihil ducimus eligendi expedita dolor nam. Similique odio esse non officiis fugit inventore maiores rerum. Qui voluptas sed non aut.', 1, 6, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(10, '1977-08-26 13:58:33', '1995-02-23 03:44:42', 'Exercitationem ea numquam quidem sunt. Odit voluptatem aliquid deleniti incidunt et ut dolor amet. Deleniti non optio delectus harum a neque. Et odio atque qui quia iste.', 'will do', 'Esse voluptatibus in laborum alias iusto. Voluptas voluptatibus id laudantium voluptatibus consequuntur nobis accusantium molestiae. Ex impedit est et.', 1, 6, '2022-07-22 02:26:22', '2022-07-22 02:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Joany Murphy PhD', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(2, 'Dr. Adelle Langosh', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(3, 'Elbert Schaden', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(4, 'Marina Zemlak', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(5, 'Idella Schowalter II', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(6, 'Ms. Rosalee Okuneva PhD', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(7, 'Dr. Reagan Haag', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(8, 'Anna Wolf', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(9, 'Prof. Kayley Rogahn I', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(10, 'Prof. Kiarra Jerde Jr.', '2022-07-22 02:26:22', '2022-07-22 02:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_post` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `id_post`, `id_user`, `content`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Officia harum et pariatur. Dolores quo quia vitae maiores iusto dignissimos. Eaque qui eum in consectetur eveniet esse vero.', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(2, 9, 6, 'Neque eum et hic voluptatem quam. Voluptatem placeat maxime aspernatur illo omnis vel qui.', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(3, 10, 5, 'Repellat omnis odio quidem ea culpa aperiam suscipit. Ipsum ratione facilis dicta natus eos perspiciatis porro ullam.', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(4, 1, 1, 'Fugit nihil nemo aliquam fugit enim. Officia totam quis omnis quo ex. Molestiae qui qui quasi velit quia.', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(5, 6, 8, 'Ipsam quo facilis consequatur ducimus mollitia. Reprehenderit doloribus sed et ipsa ut. Est reprehenderit odio in veniam est est ipsa.', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(6, 6, 7, 'Autem reprehenderit eos est minus. Magnam excepturi vero iure reprehenderit consequatur veniam. Dolorem voluptatem deleniti et illo repellendus.', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(7, 3, 7, 'Voluptas nihil deserunt aut veritatis repudiandae. Enim hic cumque qui voluptas quo ullam sunt facilis. Vel sequi et eius ab.', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(8, 2, 5, 'Et adipisci laboriosam inventore qui aut veniam praesentium. Est consequatur ut sequi ut distinctio. Et fuga ullam perspiciatis aut ut aut magnam. Laudantium tempore consequuntur sint consequuntur neque quo.', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(9, 7, 3, 'Harum magnam exercitationem quis deserunt. Accusamus soluta est qui dolorum quod atque. Nulla est est quas perferendis. Nisi nulla dolores illum mollitia enim voluptates odit.', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(10, 8, 6, 'Velit consequatur aut voluptate. Quibusdam expedita perspiciatis aliquid porro aut explicabo totam. Autem aut consectetur quaerat enim non quia. Ut enim ut earum eos vel impedit vel veritatis.', '2022-07-22 02:26:22', '2022-07-22 02:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 10, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(2, 6, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(3, 3, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(4, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(5, 8, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(6, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(7, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(8, 4, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(9, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(10, 10, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(11, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(12, 8, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(13, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(14, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(15, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(16, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(17, 8, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(18, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(19, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(20, 8, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(21, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(22, 8, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(23, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(24, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(25, 3, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(26, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(27, 6, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(28, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(29, 4, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(30, 4, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(31, 10, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(32, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(33, 8, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(34, 4, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(35, 8, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(36, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(37, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(38, 6, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(39, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(40, 6, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(41, 3, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(42, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(43, 6, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(44, 10, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(45, 6, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(46, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(47, 8, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(48, 3, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(49, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(50, 3, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(51, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(52, 7, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(53, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(54, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(55, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(56, 8, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(57, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(58, 10, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(59, 8, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(60, 6, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(61, 3, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(62, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(63, 7, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(64, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(65, 6, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(66, 6, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(67, 4, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(68, 7, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(69, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(70, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(71, 7, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(72, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(73, 6, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(74, 8, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(75, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(76, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(77, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(78, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(79, 10, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(80, 6, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(81, 10, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(82, 10, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(83, 10, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(84, 8, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(85, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(86, 7, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(87, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(88, 10, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(89, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(90, 4, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(91, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(92, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(93, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(94, 4, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(95, 4, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(96, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(97, 8, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(98, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(99, 8, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(100, 7, '2022-07-22 02:26:22', '2022-07-22 02:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_package` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `description`, `id_package`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Giovanna Schowalter IV', 'Ullam ullam voluptatum autem. Quidem vel sunt delectus veniam vero. A rerum nulla sequi magnam. Amet consequatur libero non iusto. Architecto nihil dolorem qui ex excepturi magni. Nam ea perspiciatis pariatur minima. Culpa dolorem eum est consectetur voluptates earum nisi. Provident illo soluta cupiditate odit. Sunt aut et sit quia voluptas in. Placeat adipisci excepturi et voluptas quis aliquam. Et eum ut dicta ut. Qui dicta voluptas aspernatur nihil.', 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(2, 'Amira Wintheiser', 'Est magnam possimus nam reprehenderit ratione voluptatem facilis. Necessitatibus et aliquam in labore sunt ut. Quaerat recusandae et est rerum voluptas praesentium occaecati. Ut vero molestiae recusandae. Voluptates quis sit nobis qui architecto iste. Corrupti ratione iusto sunt sed ipsa tenetur amet.', 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22');

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
(85, '2014_10_12_000000_create_users_table', 1),
(86, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(87, '2022_07_11_025653_create_categories_table', 1),
(88, '2022_07_11_025710_create_contacts_table', 1),
(89, '2022_07_13_025703_create_posts_table', 1),
(90, '2022_07_13_085938_create_packages_table', 1),
(91, '2022_07_13_090003_create_doctors_table', 1),
(92, '2022_07_13_090031_create_roles_table', 1),
(93, '2022_07_13_090050_create_users_roles_table', 1),
(94, '2022_07_13_090141_create_orders_table', 1),
(95, '2022_07_13_090142_create_bookings_table', 1),
(96, '2022_07_13_090144_create_comments_table', 1),
(97, '2022_07_14_025012_create_admins_table', 1),
(98, '2022_07_19_025320_create_overviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_package` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_doctor` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_package`, `id_user`, `id_doctor`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(2, 2, 2, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(3, 2, 4, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(4, 1, 2, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(5, 2, 1, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(6, 1, 7, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(7, 1, 2, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(8, 2, 4, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(9, 1, 10, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(10, 1, 5, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `overviews`
--

CREATE TABLE `overviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Shannon McCullough', 500000, 'Quidem atque ducimus voluptates ab reprehenderit dolores. Totam aut corrupti saepe consequuntur officiis fugiat atque. Totam eligendi sint voluptas et. Asperiores assumenda illum illo et. Vel accusantium dolor voluptatem aliquam rerum error. Tempore rerum illo magni quo. Consequatur provident esse earum. Accusamus amet perspiciatis assumenda ex. Excepturi est non ut vitae et repellendus. Quos consequatur non ullam. Omnis beatae aspernatur facilis quam dolores adipisci voluptatem. Ut aliquid voluptatum maxime. Dolorem placeat odio officiis voluptatem architecto nihil est. Dolor consectetur pariatur cupiditate quibusdam culpa commodi. Ex perferendis voluptas alias rem blanditiis. Et autem eum qui provident voluptatibus totam aut. Porro eaque omnis voluptatum et earum. Facere qui sunt fugiat. Earum esse eum libero quas quia quas autem.', '2.jpg', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(2, 'Ms. Sarina Schultz V', 1000000, 'Enim repellat cum quia voluptas veritatis. Pariatur cum magni impedit eveniet harum odio tempora. Eligendi voluptas non unde est neque. Architecto adipisci modi quod voluptas est nam. Est aut eveniet iusto quidem quia aut debitis. Vero quisquam at velit dolorum. Perspiciatis eius odit esse est. Aut vitae quis occaecati sunt suscipit velit. Veritatis ea sed mollitia minus corrupti fuga quia. Harum quae deleniti quis dolor. Est quia quia unde eos sapiente aspernatur voluptatem quae. Repellat exercitationem dolor aperiam iure explicabo. Et quod quam officiis odio. Est ex sunt molestiae sunt porro aut. Dolores ad autem porro ad suscipit optio non. Fugit et in ratione dolorem ratione fugiat. Facilis assumenda itaque facere officiis sapiente amet. Excepturi quia at excepturi quisquam. Voluptas et velit sequi. Fuga ut iusto ea voluptas vitae dolorem. In aut corrupti repudiandae accusamus qui.', '3.jpg', '2022-07-22 02:26:22', '2022-07-22 02:26:22');

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
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('show','hidden') COLLATE utf8mb4_unicode_ci NOT NULL,
  `emotion` int(11) NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `tag`, `status`, `emotion`, `id_category`, `created_at`, `updated_at`) VALUES
(1, 'Myah Harvey', 'Briana Rogahn', '1.jpg', 'pnv staff check', 'show', 877, 4, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(2, 'Liam Volkman', 'Leta Pfannerstill', '3.jpg', 'pnv staff check', 'hidden', 975, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(3, 'Ms. Breanna Hackett', 'Prof. Larissa Stroman DDS', '3.jpg', 'pnv staff check', 'show', 904, 3, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(4, 'Josiah Schowalter', 'Candace Kunze', '3.jpg', 'pnv staff check', 'show', 144, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(5, 'Iva Ortiz', 'Ruthie Fahey', '2.jpg', 'pnv staff check', 'hidden', 352, 5, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(6, 'Freddie Tremblay', 'Aidan Kshlerin', '1.jpg', 'pnv staff check', 'hidden', 246, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(7, 'Lamar Klocko', 'Delphine Hickle', '2.jpg', 'pnv staff check', 'show', 550, 6, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(8, 'Miss Millie Connelly', 'Ms. Anahi Muller I', '1.jpg', 'pnv staff check', 'hidden', 389, 8, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(9, 'Lawrence Maggio IV', 'Kareem Maggio', '1.jpg', 'pnv staff check', 'show', 874, 7, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(10, 'Malcolm Dooley Sr.', 'Davon Will Jr.', '3.jpg', 'pnv staff check', 'hidden', 954, 9, '2022-07-22 02:26:22', '2022-07-22 02:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Frederik Leffler', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(2, 'Amos Boyer', '2022-07-22 02:26:22', '2022-07-22 02:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `mail`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Geovany Larkin PhD', '0225089796', 'Whitney@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(2, 'Linnie Dicki II', '0747957778', 'Karl@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(3, 'Ashlee Spinka Jr.', '0333144751', 'Aiyana@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(4, 'Horacio Franecki PhD', '0565383296', 'Nasir@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(5, 'Irving Grimes MD', '0845522126', 'Emanuel@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(6, 'Janick Reinger', '0890598282', 'Rico@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(7, 'Tressa Ward', '0032900284', 'Abe@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(8, 'Salvador Jacobi', '0966565825', 'Darrell@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(9, 'Antwan Turcotte', '0929411044', 'Teresa@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(10, 'Ms. Heaven Schowalter', '0300774629', 'Karson@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(11, 'Lera Strosin', '0602522174', 'Elbert@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(12, 'Prof. Nicolas Lueilwitz MD', '0242022676', 'Omer@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(13, 'Deven Kertzmann', '0899226490', 'Jeanie@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(14, 'Dwight Lind I', '0101705264', 'Lora@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(15, 'Prof. Jimmie O\'Connell IV', '0191087273', 'Esperanza@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(16, 'Marisol McCullough', '0342789482', 'Clyde@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(17, 'Brennan Steuber', '0647572510', 'Rupert@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(18, 'Miss Alia Zieme', '0039485441', 'Bridget@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(19, 'Ramon McCullough PhD', '0965324836', 'Ned@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(20, 'Reina Cruickshank', '0665025127', 'Gaston@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(21, 'Domenico Huels', '0765532192', 'Hilda@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(22, 'Kraig Collins III', '0699071510', 'Amira@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(23, 'Prof. Isidro Moen MD', '0917353945', 'Branson@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(24, 'Clovis Bartell', '0855612631', 'Katelynn@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(25, 'Destin Shields', '0844235061', 'Joey@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(26, 'Dr. Kiel Emard', '0475479798', 'Barton@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(27, 'Mrs. Jody Littel III', '0245216087', 'Kaylie@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(28, 'Dr. Romaine Reichert III', '0696135038', 'Joe@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(29, 'Consuelo Jacobi', '0643542047', 'Davin@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(30, 'Maia Heidenreich', '0040529034', 'Keira@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(31, 'Dr. Bonnie DuBuque PhD', '0897228712', 'Kim@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(32, 'Kieran Ward', '0175617048', 'Aurelia@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(33, 'Consuelo Herman', '0724523359', 'Maeve@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(34, 'Leif Harber', '0952017071', 'Sylvester@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(35, 'Napoleon Kertzmann II', '0864235020', 'Ana@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(36, 'Berneice Durgan I', '0795614175', 'Aida@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(37, 'Ana Hyatt', '0926004606', 'Thad@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(38, 'Mr. Cristopher Johnston', '0957495719', 'Maia@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(39, 'Ms. Danika Boyer', '0145128190', 'Damien@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(40, 'Miller Torp', '0823616641', 'Russ@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(41, 'Jazlyn Price', '0727440053', 'Vincent@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(42, 'Judah O\'Hara', '0752112694', 'Akeem@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(43, 'Taurean Thompson', '0281052826', 'Erwin@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(44, 'Dr. Alejandrin Ruecker', '0850136957', 'Liza@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(45, 'Yolanda Auer', '0034133534', 'Jaden@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(46, 'Ethel Connelly', '0446963234', 'Shanie@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(47, 'Letha Fritsch', '0662356840', 'Camilla@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(48, 'Broderick Block', '0208415085', 'Milo@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(49, 'Osbaldo Williamson III', '0527178150', 'Lura@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(50, 'Lavon Mann', '0945366638', 'Alanna@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(51, 'Prof. Ryder Gutkowski', '0216689030', 'Jayme@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(52, 'Dr. Vance Hintz', '0082363312', 'Larissa@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(53, 'Kristopher Torp', '0986899853', 'Lemuel@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(54, 'Keyon Grant I', '0568815306', 'Cara@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(55, 'Dagmar McGlynn', '0654259826', 'Dahlia@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(56, 'Prof. Reese Leffler', '0193021558', 'Reilly@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(57, 'Magdalena Pfeffer', '0257081524', 'Sigrid@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(58, 'Lafayette Keebler', '0272976328', 'Dallin@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(59, 'Prof. Marielle Beatty DDS', '0087238737', 'Wendy@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(60, 'Rashad Graham', '0583971267', 'Josianne@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(61, 'Mr. Foster Dibbert V', '0385866115', 'Bradly@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(62, 'Pat Collins', '0802722990', 'Deanna@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(63, 'Sabrina Schulist', '0160208424', 'Sylvester@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(64, 'Jeanette Torphy', '0543673867', 'Andre@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(65, 'Mr. Bertram Kunde PhD', '0959670140', 'Sherwood@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(66, 'Ocie Hyatt Jr.', '0216729089', 'Rosemary@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(67, 'Amira Kozey', '0366658958', 'Alvina@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(68, 'Genevieve Aufderhar DDS', '0504788020', 'Randall@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(69, 'Reed Hamill', '0022898609', 'Aurelia@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(70, 'Zander Swift II', '0131913476', 'Darrick@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(71, 'Laisha Ratke', '0124499020', 'Kenya@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(72, 'Thad Fay V', '0388791743', 'Dannie@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(73, 'Bonita Grady', '0755583611', 'Kylee@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(74, 'Mrs. Vicenta Hintz IV', '0489268357', 'Audra@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(75, 'Dr. Katharina Kautzer V', '0286693588', 'Avery@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(76, 'Dr. Granville Gutkowski V', '0851658476', 'Teresa@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(77, 'Prof. Kayden Shields', '0102258892', 'Ari@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(78, 'Jessica Hackett', '0670366044', 'Brain@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(79, 'Lisa Kassulke', '0730035459', 'Tony@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(80, 'Mr. Travon Schultz', '0051406185', 'Ardella@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(81, 'Grayson Glover', '0840219991', 'Helen@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(82, 'Prof. Archibald Hahn IV', '0879861083', 'Tanner@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(83, 'Ignatius Rau', '0554843492', 'Easton@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(84, 'Harvey Spencer', '0909428854', 'Imelda@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(85, 'Prof. Clay Yundt', '0295064817', 'Aliyah@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(86, 'Leif Lynch', '0669461709', 'Zola@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(87, 'Daisha Dicki', '0229297590', 'Christina@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(88, 'Dr. Susan Crona', '0022718661', 'Hayley@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(89, 'Prof. Sammy Herzog Jr.', '0273490189', 'Ona@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(90, 'Geoffrey Blick II', '0648146503', 'Xavier@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(91, 'Nigel Quigley', '0154859436', 'Landen@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(92, 'Ms. Orie Harris II', '0921242926', 'Kristina@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(93, 'Nico Abernathy DVM', '0745959310', 'Julio@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(94, 'Dr. Orland Davis', '0562188319', 'Deanna@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(95, 'Emma Hauck', '0762517488', 'Katlynn@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(96, 'Prof. Angelita Renner', '0993695190', 'Morton@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(97, 'Prof. Franco Hodkiewicz', '0935793402', 'Elna@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(98, 'Max Simonis Sr.', '0199091087', 'Jess@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(99, 'Shyanne Bosco IV', '0118815412', 'Vanessa@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(100, 'Zola Powlowski', '0918583638', 'Cathrine@gmail.com', '2022-07-22 02:26:22', '2022-07-22 02:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_role` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`id_user`, `id_role`, `created_at`, `updated_at`) VALUES
(10, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(3, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(5, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(7, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(6, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(3, 2, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(7, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(3, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(3, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22'),
(10, 1, '2022-07-22 02:26:22', '2022-07-22 02:26:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_id_order_foreign` (`id_order`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_id_user_foreign` (`id_user`),
  ADD KEY `comments_id_post_foreign` (`id_post`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_id_user_foreign` (`id_user`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctors_id_package_foreign` (`id_package`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_id_package_foreign` (`id_package`),
  ADD KEY `orders_id_user_foreign` (`id_user`),
  ADD KEY `orders_id_doctor_foreign` (`id_doctor`);

--
-- Indexes for table `overviews`
--
ALTER TABLE `overviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_id_category_foreign` (`id_category`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `users_roles_id_user_foreign` (`id_user`),
  ADD KEY `users_roles_id_role_foreign` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `overviews`
--
ALTER TABLE `overviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_id_post_foreign` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_id_package_foreign` FOREIGN KEY (`id_package`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_id_doctor_foreign` FOREIGN KEY (`id_doctor`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_id_package_foreign` FOREIGN KEY (`id_package`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_roles_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
