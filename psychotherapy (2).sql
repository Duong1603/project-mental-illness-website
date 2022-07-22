-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 22, 2022 at 11:36 AM
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
(1, '1972-07-14 10:52:37', '2004-07-09 21:45:22', 'Et neque aspernatur amet sunt dolorum optio dolorum. Aut eveniet sit ipsam eum ad natus. Fuga eaque earum ducimus qui. Saepe ut ex officia ut quo enim.', 'will do', 'Suscipit exercitationem nesciunt qui corrupti dolores animi dolor. Quos quia quo occaecati aliquid facere nemo. Est excepturi molestiae excepturi quis praesentium quibusdam hic.', 2, 4, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(2, '1974-02-19 02:53:36', '1999-11-26 11:10:42', 'Ducimus eum itaque dolorem id excepturi. Consequuntur provident iusto animi reprehenderit voluptatibus.', 'will do', 'Et provident ut et omnis. A illum provident et a et. Id est et quia. Distinctio magnam modi suscipit adipisci cupiditate omnis tenetur. Doloribus debitis laudantium quo ratione nemo. Porro ut provident culpa optio animi dolore. Vitae eaque ipsa sit qui dolores. Ut ut sequi debitis non veritatis.', 3, 4, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(3, '2008-06-28 17:28:22', '1998-06-29 20:55:16', 'Quod autem a accusamus. Culpa occaecati velit mollitia et voluptatum assumenda ut. Laudantium aspernatur ut ut ab explicabo eveniet quia.', 'done', 'Unde expedita illum nam officiis repudiandae dolorem voluptate. Consequatur occaecati mollitia id laborum suscipit quaerat fuga et. Est vitae impedit cumque voluptatem suscipit ex facere. Aliquam aut enim optio facilis dolorum.', 2, 7, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(4, '1999-05-10 18:06:16', '1977-09-17 03:43:23', 'Et officiis quibusdam et et cum iure. Ipsum et temporibus laudantium beatae. Sint explicabo qui aliquid ullam occaecati et.', 'done', 'Suscipit libero incidunt quidem. Dolor necessitatibus tempora quia inventore. Blanditiis aspernatur nihil ut suscipit ducimus. Aliquid ut modi dolor excepturi.', 3, 4, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(5, '1994-09-18 14:10:01', '1989-02-24 12:43:19', 'Repudiandae nisi similique occaecati aut repellat. Fuga mollitia qui eos ut. Sapiente quisquam fuga nesciunt est inventore dignissimos qui. Quaerat qui facilis dolore modi dolorem.', 'doing', 'Soluta tempora et aperiam temporibus sed consequatur. Doloribus sequi et nihil delectus voluptate iusto quaerat dolor. Velit culpa sint amet necessitatibus consectetur distinctio. Enim aliquam consequatur ut ullam ea.', 2, 5, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(6, '2013-07-27 05:22:12', '1989-06-08 00:32:52', 'Vitae sit maiores dolorem omnis eveniet ut. Qui minima eius totam dolores ipsam dolore earum. Velit nihil quia quia qui a deleniti id sit. Mollitia voluptates fuga exercitationem dicta vero.', 'done', 'Voluptas quidem accusamus qui laborum recusandae non. Quas et labore aliquam. Repellat tenetur occaecati ex. Nulla beatae ea tempore. Quidem nesciunt debitis error qui. Eum illo culpa debitis deleniti placeat distinctio illum. A iure et qui rerum aut saepe omnis rerum.', 3, 2, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(7, '1991-06-06 20:13:06', '1987-02-26 00:59:24', 'Id dolorem qui ea ratione facere omnis omnis. Quod cumque dolores ut explicabo. Voluptatem aliquam ut optio sit fugit illo. Assumenda et ea temporibus quod maxime. Dolor tempore nihil totam.', 'will do', 'Possimus ut veniam aut non. Excepturi suscipit ut sed amet sed quibusdam. Dignissimos repudiandae blanditiis omnis officiis dolorem et inventore. Enim eligendi ut neque. Perferendis rem ut nam quibusdam. Modi natus cupiditate ducimus commodi.', 2, 7, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(8, '1991-08-20 00:49:26', '2007-06-25 15:24:06', 'Consequuntur quas fuga ipsum non expedita. Hic id iusto architecto possimus id sunt. Odit nesciunt sed et perspiciatis. Odit nesciunt eos ut.', 'done', 'Sunt ut occaecati ad. Et reprehenderit aspernatur voluptatem culpa ut quam. Ex tenetur quae voluptates vel.', 2, 4, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(9, '1997-07-10 03:53:02', '2011-10-24 09:23:14', 'Labore qui nihil asperiores quidem delectus non rerum. Perferendis aut ullam cum perspiciatis. Voluptatem est deserunt maiores corporis autem.', 'will do', 'Culpa aliquam harum quibusdam eos cumque. Tempora aliquid ex quia vel officiis autem excepturi. Voluptatem magni quis animi earum repellat tempora laudantium. Magnam et ullam sunt at voluptas adipisci molestiae. Fugiat possimus molestias qui dignissimos recusandae ea ut. Qui ex ducimus voluptas et.', 1, 3, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(10, '2003-02-27 10:47:01', '1973-03-29 14:48:37', 'Eaque hic sit incidunt voluptatem ut. Odio suscipit in delectus possimus. Recusandae fugiat numquam praesentium dolores ut.', 'will do', 'Ut reprehenderit non quidem. Asperiores qui in ut assumenda harum. Id ut qui id aperiam. Et aut quo cupiditate quo. In earum sint aut et qui assumenda qui. Ea dolorem aut enim aut quos. Eligendi perferendis quis libero aut. Consequatur quo omnis ullam nostrum optio.', 2, 4, '2022-07-22 02:34:54', '2022-07-22 02:34:54');

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
(1, 'Kaylin Breitenberg', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(2, 'Dr. Bryana Wiza', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(3, 'Rosendo Kessler', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(4, 'Maya Kihn', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(5, 'Elijah Ortiz', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(6, 'Cassandre Effertz', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(7, 'Treva Dietrich', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(8, 'Dusty Nitzsche', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(9, 'Makayla Buckridge', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(10, 'Dorthy Sawayn', '2022-07-22 02:34:53', '2022-07-22 02:34:53');

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
(1, 2, 2, 'Iste et natus velit. Magni assumenda rerum explicabo dignissimos facilis. Neque atque ipsum quo in. Rerum consectetur commodi aliquid et.', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(2, 8, 1, 'Dolor impedit non sequi ipsam nihil ut. Saepe est qui ea quos tempore a temporibus totam. Culpa officiis aut debitis dolores aspernatur sit molestias. Velit nemo in excepturi dignissimos sunt maxime.', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(3, 6, 3, 'Iste totam repellendus molestias explicabo corrupti maiores accusamus perferendis. Nobis in consequuntur doloribus dolores. Cupiditate delectus et doloribus sapiente nam animi ex. Minima autem necessitatibus exercitationem aspernatur fuga aliquid aut similique.', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(4, 4, 10, 'Non dolores error fuga sint nesciunt error saepe. Voluptas maiores fuga aut praesentium fugit explicabo ipsam. Aut esse cupiditate doloribus qui vitae. Et explicabo quia qui molestiae nesciunt.', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(5, 6, 2, 'Sed dignissimos minima et omnis corrupti nihil eius. Itaque in enim ea ad architecto ut. Voluptas sunt omnis itaque ducimus. Ut nemo sed repudiandae eos.', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(6, 8, 7, 'Ut nam iusto maxime repudiandae ut. Odit voluptate in cupiditate aut rem est. Ab rem culpa necessitatibus vel ut. Eveniet delectus et ut.', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(7, 8, 4, 'Officiis eum non hic qui. Optio dicta aut mollitia expedita fugiat. Deserunt dolor quasi maiores architecto rem delectus.', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(8, 6, 3, 'Animi adipisci et officiis et. Ratione corporis sunt ea quidem omnis velit officiis. Ut delectus dicta quos illum repudiandae aspernatur excepturi.', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(9, 5, 1, 'Dolores doloribus omnis nihil est error quae ratione. Mollitia cum fugit est voluptatem dolores iure ipsa.', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(10, 4, 9, 'Nemo ad sit aut in. Excepturi occaecati illum sed tempore atque aliquid. Iure ratione tempore eius temporibus vero qui. Facere illo voluptatem delectus iusto dolorem.', '2022-07-22 02:34:53', '2022-07-22 02:34:53');

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
(1, 4, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(2, 6, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(3, 4, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(4, 2, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(5, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(6, 9, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(7, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(8, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(9, 5, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(10, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(11, 6, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(12, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(13, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(14, 2, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(15, 7, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(16, 9, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(17, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(18, 1, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(19, 2, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(20, 1, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(21, 5, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(22, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(23, 9, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(24, 9, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(25, 6, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(26, 8, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(27, 1, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(28, 3, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(29, 7, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(30, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(31, 9, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(32, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(33, 1, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(34, 8, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(35, 9, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(36, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(37, 8, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(38, 1, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(39, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(40, 2, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(41, 3, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(42, 4, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(43, 3, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(44, 3, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(45, 1, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(46, 5, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(47, 7, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(48, 6, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(49, 2, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(50, 4, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(51, 1, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(52, 6, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(53, 5, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(54, 6, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(55, 7, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(56, 7, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(57, 6, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(58, 7, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(59, 2, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(60, 6, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(61, 7, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(62, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(63, 1, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(64, 3, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(65, 7, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(66, 3, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(67, 7, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(68, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(69, 1, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(70, 5, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(71, 2, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(72, 3, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(73, 7, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(74, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(75, 10, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(76, 2, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(77, 6, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(78, 3, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(79, 6, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(80, 8, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(81, 2, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(82, 8, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(83, 8, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(84, 2, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(85, 5, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(86, 4, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(87, 4, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(88, 7, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(89, 8, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(90, 7, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(91, 4, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(92, 3, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(93, 10, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(94, 8, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(95, 10, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(96, 6, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(97, 10, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(98, 7, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(99, 10, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(100, 6, '2022-07-22 02:34:54', '2022-07-22 02:34:54');

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
(1, 'Kristopher Boehm', 'Qui alias incidunt tempore architecto veniam. Placeat sequi qui et. Iste sit et nulla aliquid facere. Laboriosam eligendi debitis aut eligendi unde officia. Quos tempora reprehenderit nam. Ut voluptate nam nesciunt a exercitationem modi. Itaque amet incidunt velit nam voluptatem et recusandae. Quae sequi sed autem voluptas id. Doloribus aut maxime a nobis enim voluptatem maiores.', 1, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(2, 'Andreane Erdman', 'Consequatur similique amet est error itaque nam odit vitae. Rerum laboriosam nobis et debitis iusto aut. Delectus molestiae dolorem voluptas et minima. Qui magnam quas doloribus quis est. Illo optio quia exercitationem necessitatibus sapiente. Magni doloremque doloremque ea maxime eos voluptatem. Et debitis laborum molestias. Aut non et quo illo nihil voluptates. Debitis dolorem laudantium laudantium optio tempora sint nobis.', 1, '2022-07-22 02:34:54', '2022-07-22 02:34:54');

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
(99, '2014_10_12_000000_create_users_table', 1),
(100, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(101, '2022_07_11_025653_create_categories_table', 1),
(102, '2022_07_11_025710_create_contacts_table', 1),
(103, '2022_07_13_025703_create_posts_table', 1),
(104, '2022_07_13_085938_create_packages_table', 1),
(105, '2022_07_13_090003_create_doctors_table', 1),
(106, '2022_07_13_090031_create_roles_table', 1),
(107, '2022_07_13_090050_create_users_roles_table', 1),
(108, '2022_07_13_090141_create_orders_table', 1),
(109, '2022_07_13_090142_create_bookings_table', 1),
(110, '2022_07_13_090144_create_comments_table', 1),
(111, '2022_07_14_025012_create_admins_table', 1),
(112, '2022_07_19_025320_create_overviews_table', 1);

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
(1, 1, 3, 1, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(2, 1, 4, 1, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(3, 2, 7, 1, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(4, 2, 8, 2, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(5, 2, 3, 2, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(6, 1, 9, 2, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(7, 1, 2, 2, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(8, 1, 6, 2, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(9, 1, 4, 1, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(10, 1, 5, 2, '2022-07-22 02:34:54', '2022-07-22 02:34:54');

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
(1, 'Jaylan Koelpin', 1000000, 'Est perspiciatis architecto officia quidem distinctio ipsa laboriosam. Qui dicta laboriosam voluptatum et sapiente ut optio id. Laudantium corrupti quam illo nihil eligendi eius fuga rem. Quod enim nesciunt et est similique repudiandae. Sit qui et consectetur aut. Autem ullam sed error molestiae officia sed. Nulla voluptas nobis amet quasi. Deleniti accusamus et quibusdam non voluptatum aliquam voluptates enim. Fugit commodi sit qui omnis quod ullam delectus ullam. Et quis dolorem atque esse nam similique nemo. Eos rerum totam iure nemo. Qui dicta enim aut consequuntur. Ut omnis et architecto totam tempore. Consequatur excepturi suscipit aut voluptas et blanditiis. Et velit quod voluptatibus facere. Quam distinctio minus delectus minima similique. Nam nemo repellendus beatae ut sit eaque quia pariatur. Dolorem quidem ut vel et exercitationem quis aut.', '1.jpg', '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(2, 'Juliet Homenick', 700000, 'Tempore et reprehenderit in sunt rerum recusandae cupiditate. Corporis quos repellendus sapiente sint. Necessitatibus dolorem quia eos dolore sint consequatur eaque. Aut enim at est iste rerum. Hic harum voluptatibus est doloremque maiores quae blanditiis delectus. Facilis sapiente doloremque aut exercitationem. Ab alias quae nihil mollitia minima et perspiciatis. Temporibus inventore tenetur id iure. Dolorem mollitia nobis eum voluptatem praesentium dolore tenetur. Maiores atque quis nisi assumenda autem expedita. Eos consectetur cupiditate ducimus eius ut aut quis. Molestiae est aspernatur aut dolorem. Ut natus reprehenderit veritatis. Accusamus expedita et sed possimus molestias. Iure et rem et dolorem illum iure occaecati. Autem ut vitae consequatur sit alias. Et quod sequi quia sequi quo dicta eos. Inventore aliquam enim rerum perferendis porro saepe.', '2.jpg', '2022-07-22 02:34:54', '2022-07-22 02:34:54');

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
(1, 'Zetta Flatley', 'Nakia Torphy', '1.jpg', 'pnv staff check', 'show', 202, 6, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(2, 'Prof. Deven Dare Sr.', 'Prof. Moriah Hauck', '1.jpg', 'pnv staff check', 'show', 691, 3, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(3, 'Enola Raynor', 'Mr. Oral Predovic IV', '1.jpg', 'pnv staff check', 'show', 599, 4, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(4, 'Mr. Lon Fahey PhD', 'Vickie Walter', '3.jpg', 'pnv staff check', 'show', 723, 7, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(5, 'Myrna Mosciski I', 'Ava Hettinger', '1.jpg', 'pnv staff check', 'show', 502, 7, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(6, 'Miss Myriam Weber Sr.', 'Mr. Conrad Bechtelar', '3.jpg', 'pnv staff check', 'show', 30, 8, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(7, 'Milford Pfannerstill', 'Blanca Luettgen', '3.jpg', 'pnv staff check', 'show', 90, 5, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(8, 'Tamara Smitham', 'Nikolas Nicolas IV', '1.jpg', 'pnv staff check', 'show', 15, 5, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(9, 'Cora Hermiston', 'Mrs. Adeline Mayer IV', '1.jpg', 'pnv staff check', 'show', 475, 4, '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(10, 'Dr. Sallie Lang MD', 'Dr. Arlene Miller DDS', '2.jpg', 'pnv staff check', 'hidden', 130, 8, '2022-07-22 02:34:53', '2022-07-22 02:34:53');

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
(1, 'Una Abshire', '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(2, 'Gussie Kertzmann', '2022-07-22 02:34:54', '2022-07-22 02:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Roderick Shields', '0989765838', 'Rebeka@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(2, 'Bridie Schmidt Jr.', '0909609093', 'Dahlia@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(3, 'Adam Von', '0761198160', 'Erin@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(4, 'Ms. Margot Weimann II', '0984868054', 'Sean@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(5, 'Minnie Kohler Jr.', '0799524339', 'Erling@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(6, 'Prof. Lelah Reilly', '0072068708', 'Daphnee@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(7, 'Lea Cruickshank', '0966461929', 'Craig@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(8, 'Olen Kessler I', '0144075827', 'Connie@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(9, 'Wilfred Block', '0055656401', 'Gilda@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(10, 'Prof. Flavio Hamill Sr.', '0899110623', 'Zita@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(11, 'Elna Cummerata', '0969855003', 'Theron@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(12, 'Abner Huel', '0692064687', 'Wyman@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(13, 'Yesenia Leffler', '0387756149', 'Lavonne@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(14, 'Fernando Rice', '0683105402', 'Corene@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(15, 'Prof. Emmalee Hyatt Jr.', '0888923221', 'Jace@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(16, 'Louisa Reinger Sr.', '0589463555', 'Carlos@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(17, 'Clair Macejkovic', '0385782658', 'Gilberto@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(18, 'Bernhard Nienow', '0840157911', 'Vidal@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(19, 'Rex Treutel', '0171754543', 'Maribel@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(20, 'Alexys Crona', '0544082867', 'Kathleen@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(21, 'Beverly Mann', '0412053202', 'Melvina@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(22, 'Dorian Smitham', '0374048524', 'Destin@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(23, 'Clark Eichmann I', '0595879465', 'Jessica@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(24, 'Prof. Evan Fisher Jr.', '0104846495', 'Cindy@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(25, 'Rosanna Simonis III', '0711204450', 'Deondre@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(26, 'Miss Diana Langosh', '0462165534', 'Priscilla@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(27, 'Lavinia Grimes', '0057276370', 'Ena@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(28, 'Dulce Lesch', '0883239271', 'Theresa@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(29, 'Miss Mae Monahan', '0743169919', 'Veronica@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(30, 'Ms. Ines Nitzsche I', '0650657548', 'Frederik@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(31, 'Gavin Huel', '0450910553', 'Katherine@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(32, 'Sid Rolfson III', '0518837361', 'Bret@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(33, 'Reilly Braun', '0613491900', 'Joanne@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(34, 'Kayley Osinski', '0566061178', 'Edna@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(35, 'Al Smitham', '0301485263', 'Eliza@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(36, 'Ms. Emma Kling II', '0799417227', 'Raquel@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(37, 'Adriel Beer Jr.', '0635233947', 'Brendan@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(38, 'Mckenzie Casper', '0453422327', 'Tamia@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(39, 'Nayeli Ortiz', '0201876664', 'Ellie@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(40, 'Mathias Hyatt Jr.', '0325001913', 'Carrie@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(41, 'Emelia Harris', '0228844760', 'Elyse@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(42, 'Marquise Deckow', '0432101561', 'Beatrice@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(43, 'Prof. Cameron Lemke', '0104147729', 'Hermann@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(44, 'Narciso King', '0817842751', 'Elvera@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(45, 'Ben Mertz', '0870401145', 'Abdullah@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(46, 'Zita Senger', '0322487288', 'Emmalee@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(47, 'Blanca Terry', '0162361957', 'Weldon@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(48, 'Marcia Streich PhD', '0350659057', 'Jaleel@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(49, 'Mr. Mike Sauer', '0188696284', 'Tania@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(50, 'Odessa Macejkovic', '0570727307', 'Danika@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(51, 'Miss Emmalee Osinski', '0093871248', 'Timmy@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(52, 'Mrs. Celestine Casper', '0616413275', 'Axel@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(53, 'Germaine Hahn', '0575835322', 'Immanuel@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(54, 'Orval Toy', '0076242268', 'Annamarie@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(55, 'Marcelino Wehner', '0665703881', 'Ericka@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(56, 'Xander Prohaska', '0026776189', 'Joesph@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(57, 'Lambert Bruen', '0154167929', 'Waylon@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(58, 'Arno White', '0181026728', 'Wade@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(59, 'Hadley Jenkins DVM', '0881404915', 'Hassan@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(60, 'Akeem Bartoletti', '0555183540', 'Helene@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(61, 'Alayna Gulgowski', '0867322601', 'Fletcher@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(62, 'Dr. Hugh West IV', '0836502342', 'Lilyan@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(63, 'Ashleigh Terry', '0121293512', 'Amelie@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(64, 'Queenie Price II', '0112610164', 'Percival@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(65, 'Marietta Mosciski', '0567650070', 'Francis@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(66, 'Dr. Zakary Batz Jr.', '0997323754', 'Jayson@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(67, 'Alanna Altenwerth', '0501119497', 'Jordyn@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(68, 'Dr. Sonia Howell', '0836533490', 'Evalyn@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(69, 'Prof. Felipa Stroman', '0944696629', 'Clare@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(70, 'Prof. Malika Kuvalis', '0331884935', 'Claudia@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(71, 'Esperanza Mayer MD', '0010163943', 'Ashleigh@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(72, 'Dr. Tressa Strosin IV', '0925778825', 'Ernestina@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(73, 'Adrien Wyman', '0676311060', 'Lucius@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(74, 'Cordell Boehm', '0643774787', 'Marc@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(75, 'Dr. Orpha Hudson', '0640529779', 'Trystan@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(76, 'Mable Howe Jr.', '0259909452', 'Coby@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(77, 'Malinda Von Jr.', '0898871283', 'Mireya@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(78, 'Eric Yost', '0862595982', 'Janiya@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(79, 'Dr. Brad Dicki', '0814351358', 'Adell@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(80, 'Mr. Lamont Cole MD', '0670449771', 'Kathleen@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(81, 'Shanon Kshlerin V', '0362667426', 'Ayden@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(82, 'Edna Cummings', '0793976142', 'Braden@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(83, 'Sylvester Jacobson', '0242930533', 'Marlee@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(84, 'Litzy Renner', '0228944904', 'Laverna@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(85, 'Tessie Brown', '0920388790', 'Winston@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(86, 'Abner Hayes', '0973422010', 'Mable@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(87, 'Rae Pollich PhD', '0887091524', 'Donald@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(88, 'Marina Cremin', '0149009208', 'Roger@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(89, 'Ephraim Kozey', '0007815039', 'Herta@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(90, 'Stanley Rutherford III', '0858863889', 'Lavon@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(91, 'Prof. Kamren Gusikowski MD', '0467817173', 'Marta@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(92, 'Tod Welch', '0504556979', 'Melvina@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(93, 'Baylee Quigley', '0465308331', 'Gerhard@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(94, 'Jakob Senger Jr.', '0940567753', 'Maxie@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(95, 'Emie Larkin', '0560858621', 'Jadyn@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(96, 'Dr. Kitty Harris V', '0063964611', 'Joyce@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(97, 'Toby Erdman', '0119265456', 'Katelyn@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(98, 'Vivianne Steuber', '0578485177', 'Keanu@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(99, 'Candelario Halvorson', '0031829022', 'Eryn@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53'),
(100, 'Miller Runolfsdottir', '0991001547', 'Nigel@gmail.com', '2022-07-22 02:34:53', '2022-07-22 02:34:53');

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
(2, 1, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(7, 2, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(1, 2, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(9, 1, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(9, 2, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(8, 1, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(6, 2, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(5, 1, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(2, 2, '2022-07-22 02:34:54', '2022-07-22 02:34:54'),
(8, 2, '2022-07-22 02:34:54', '2022-07-22 02:34:54');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

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
