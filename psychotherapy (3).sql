-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 26, 2022 at 03:36 AM
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
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `start_meeting`, `end_meeting`, `problem`, `status`, `link_gg_meet`, `times`, `order_id`, `created_at`, `updated_at`) VALUES
(1, '1986-09-28 18:28:33', '2020-05-30 18:42:55', 'Explicabo et aut sapiente odio sit. Vero natus explicabo voluptatem dolore autem aut et corporis. Facilis animi sint voluptas odit neque consequatur quisquam. Ea dolore labore voluptatem nesciunt.', 'will do', 'Omnis sunt ullam est dolor ullam. Laudantium voluptas et architecto porro eos tenetur. Rerum voluptatum fugit qui culpa quae. Qui vitae et ducimus sed dignissimos sunt. Rerum qui culpa dolore et voluptatem voluptates.', 1, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(2, '1988-05-01 06:11:39', '1986-05-17 00:25:43', 'Voluptatem eaque doloremque saepe sequi ipsa occaecati at. Ut et qui omnis nisi rerum. Eveniet sint dolorem nostrum labore.', 'will do', 'Sequi qui necessitatibus nihil possimus. Placeat autem perferendis laboriosam repudiandae minus praesentium. Dicta veniam dolor animi id a aut. A officiis repellendus perspiciatis eligendi. Ipsa dolor quia et quia. Quae voluptates neque rerum et eaque. Eum eum ut aut a enim consequatur.', 2, 8, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(3, '1975-12-14 10:06:11', '1972-05-28 09:09:46', 'Accusantium voluptates voluptatum ut saepe dolores deserunt saepe. Tenetur officia consequatur nam et asperiores repellat. Laboriosam dolorum molestiae consectetur quae ab magni voluptatem.', 'doing', 'Iste et vel vitae consequatur fuga accusantium quo libero. Neque quidem ut rerum. Sapiente occaecati praesentium enim aut sunt molestias.', 2, 8, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(4, '1982-08-16 02:28:32', '2014-09-04 10:43:34', 'Earum rerum et ut veritatis cum ipsam quis. Consequatur in exercitationem nostrum rerum porro molestiae. Libero doloribus sequi necessitatibus debitis repellendus.', 'done', 'Voluptates aut quas ut et ex quo nam. Modi molestias nam doloremque nihil necessitatibus dolor. Maxime sed aut hic magni. Sit blanditiis iusto sapiente nihil et incidunt rerum. Est ut est voluptatem quia animi. Ut voluptas qui ex. Ea cumque sapiente sit non doloribus eaque.', 3, 4, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(5, '2014-09-04 23:27:32', '1990-03-10 14:43:03', 'Culpa fuga possimus temporibus et. Et quis voluptatem omnis similique aut repudiandae beatae. Explicabo voluptatum magnam iure.', 'doing', 'Veritatis sed in voluptatem quis est consequatur. Cumque pariatur dolorum quidem dicta corrupti. Error molestias cupiditate vel dolore culpa. Dicta voluptatem assumenda sequi ut.', 3, 6, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(6, '2017-09-05 15:59:26', '1990-12-16 08:58:07', 'Aut quis rerum harum officia. Eius corrupti ea aut nisi consequatur. Sint officiis incidunt est sit est temporibus exercitationem qui. Illo ut ratione ut debitis praesentium ut ratione.', 'will do', 'Quo vero est ad et qui reiciendis. Minima molestiae voluptatibus quo reprehenderit aperiam labore quasi. Facere optio consectetur maiores et dolor. Asperiores velit non inventore sint consequuntur ut.', 1, 6, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(7, '1975-12-11 11:48:25', '1975-02-06 18:02:58', 'Mollitia rerum porro pariatur sit aperiam. Fugit et qui libero aliquid eos. Sed et quidem velit assumenda.', 'done', 'Illo autem totam aut qui. Enim ut veniam dicta necessitatibus. Ratione rerum ratione necessitatibus pariatur. Veritatis officiis quisquam amet non tempora magnam. Nisi esse fugiat ipsa et tenetur sed. In quidem facere exercitationem rem sed commodi in quisquam.', 3, 10, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(8, '1972-01-08 19:14:32', '1980-07-30 17:24:27', 'Ab voluptates quia consequatur perferendis minima itaque. Quia odit consectetur vel. Nemo ducimus dolore qui. Ducimus blanditiis alias voluptatem assumenda et.', 'doing', 'Dolorem quaerat aut quam explicabo libero. Quia et culpa pariatur quas. Temporibus ea blanditiis earum voluptatem. Dolores ut sed asperiores velit sit. Qui voluptatem cumque incidunt. Doloremque dolores sint rerum. Placeat nihil debitis aperiam quasi.', 3, 7, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(9, '1978-02-14 06:30:44', '1982-11-19 16:48:17', 'Aut debitis occaecati laudantium recusandae quaerat. Placeat ducimus magnam ab quia et et. Eligendi consequatur alias eaque at optio.', 'will do', 'Id inventore dolorem nulla et et. Harum aut sunt molestias at quod necessitatibus. Nesciunt aliquam quia aperiam quidem. Impedit nesciunt inventore placeat quo. Tempore labore voluptatibus ex occaecati omnis. Nobis voluptatibus distinctio omnis pariatur. Assumenda voluptatibus et inventore est.', 1, 4, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(10, '1986-06-09 16:28:21', '1980-11-03 03:26:25', 'Qui odit ad minus vel sit. Sed pariatur minus expedita magnam quia dignissimos facere pariatur. Architecto rerum quos unde excepturi dignissimos et.', 'will do', 'Provident voluptatem beatae voluptatem hic recusandae vel. Aut repellat accusamus dolorem deserunt recusandae sint. Fugiat qui dolorem voluptates asperiores officia. Ipsa quidem voluptates impedit assumenda et.', 1, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33');

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
(1, 'Levi Kuhn', '2022-07-25 18:31:48', '2022-07-25 18:31:48'),
(2, 'Prof. Ferne Eichmann MD', '2022-07-25 18:31:48', '2022-07-25 18:31:48'),
(3, 'Riley O\'Conner', '2022-07-25 18:31:48', '2022-07-25 18:31:48'),
(4, 'Miss Delilah Schuppe III', '2022-07-25 18:31:48', '2022-07-25 18:31:48'),
(5, 'Mrs. Sabryna Metz', '2022-07-25 18:31:48', '2022-07-25 18:31:48'),
(6, 'Ms. Karianne Olson', '2022-07-25 18:31:48', '2022-07-25 18:31:48'),
(7, 'Chaya Berge', '2022-07-25 18:31:48', '2022-07-25 18:31:48'),
(8, 'Rudy Mraz', '2022-07-25 18:31:48', '2022-07-25 18:31:48'),
(9, 'Prof. Marcelo Wisozk II', '2022-07-25 18:31:48', '2022-07-25 18:31:48'),
(10, 'Deshaun Abernathy', '2022-07-25 18:31:48', '2022-07-25 18:31:48'),
(11, 'Miss Taya Leannon', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(12, 'Karina Kohler', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(13, 'Mrs. Taya Will MD', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(14, 'Mrs. Lauren Morissette IV', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(15, 'Tomas Sawayn Sr.', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(16, 'Mr. Woodrow Crist MD', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(17, 'Bethel Funk DVM', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(18, 'Maida Aufderhar', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(19, 'Oliver Abernathy', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(20, 'Giovani Spinka', '2022-07-25 18:33:32', '2022-07-25 18:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 4, 7, 'Ipsam eaque totam labore earum. Placeat saepe vel ut voluptatum. Magni pariatur qui voluptatibus possimus natus minus omnis. Facilis optio quidem velit ut.', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(2, 8, 6, 'Dicta quas minus tempora. Nostrum voluptatem consequuntur est delectus. Accusantium non magnam consequatur totam ducimus similique rem. Et suscipit aperiam officia quae.', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(3, 6, 8, 'Eos et non veritatis voluptatibus sed fugit dolorum. Reprehenderit temporibus vero dicta repellat. Facilis quisquam qui rerum. Quae minus sit placeat minima.', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(4, 7, 4, 'Porro qui fugit recusandae ducimus. Et dolores animi harum odio doloribus. Architecto non nostrum quo adipisci accusantium.', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(5, 1, 7, 'Occaecati quam animi vero distinctio modi minima ut dolores. Sint assumenda quibusdam nisi et enim.', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(6, 7, 9, 'Est ut ut inventore laudantium unde. Sunt ad voluptatem neque qui molestiae. Amet quia amet laudantium labore magnam. Quia veritatis sunt maiores saepe quis qui nisi. Possimus at molestiae molestiae nisi accusantium.', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(7, 9, 9, 'Nisi nesciunt ad harum harum ut et debitis incidunt. Neque optio itaque saepe voluptatem illum repudiandae at. Repellat voluptatibus quis quasi quam qui. Soluta odit atque odio.', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(8, 10, 5, 'Aut est voluptas omnis excepturi. Sint perferendis consectetur aut dolor aliquid qui. Velit enim deserunt et non doloribus. Non est totam esse quod et tempora.', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(9, 9, 8, 'Repellendus aut ipsa et. Consequatur aperiam aut exercitationem accusamus est dolores et ratione. Qui atque libero quae.', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(10, 2, 2, 'Tenetur a repellat necessitatibus incidunt nam aliquid explicabo. Sint recusandae voluptate ut eos dolorum quia itaque. Quis omnis nostrum explicabo dolore et. Similique qui consequatur atque veritatis aliquam necessitatibus.', '2022-07-25 18:33:32', '2022-07-25 18:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(2, 10, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(3, 6, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(4, 7, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(5, 2, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(6, 9, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(7, 1, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(8, 8, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(9, 8, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(10, 2, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(11, 1, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(12, 6, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(13, 3, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(14, 6, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(15, 2, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(16, 8, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(17, 4, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(18, 7, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(19, 3, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(20, 8, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(21, 2, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(22, 7, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(23, 9, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(24, 9, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(25, 1, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(26, 2, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(27, 7, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(28, 9, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(29, 9, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(30, 2, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(31, 5, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(32, 4, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(33, 2, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(34, 3, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(35, 7, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(36, 5, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(37, 3, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(38, 4, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(39, 6, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(40, 5, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(41, 8, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(42, 7, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(43, 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(44, 8, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(45, 3, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(46, 8, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(47, 9, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(48, 5, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(49, 6, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(50, 7, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(51, 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(52, 5, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(53, 6, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(54, 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(55, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(56, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(57, 7, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(58, 8, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(59, 9, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(60, 7, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(61, 9, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(62, 5, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(63, 10, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(64, 10, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(65, 9, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(66, 10, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(67, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(68, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(69, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(70, 7, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(71, 5, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(72, 10, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(73, 8, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(74, 3, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(75, 6, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(76, 3, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(77, 7, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(78, 5, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(79, 7, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(80, 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(81, 9, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(82, 8, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(83, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(84, 9, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(85, 5, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(86, 4, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(87, 6, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(88, 6, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(89, 6, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(90, 5, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(91, 7, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(92, 4, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(93, 10, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(94, 10, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(95, 7, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(96, 8, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(97, 6, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(98, 6, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(99, 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(100, 7, '2022-07-25 18:33:33', '2022-07-25 18:33:33');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `description`, `package_id`, `created_at`, `updated_at`) VALUES
(1, 'Mckenna Wiza', 'Qui quisquam suscipit dolores aspernatur sed laudantium. Optio fuga eos et rerum non. In praesentium et et minima. Dolorum consequuntur illo cumque et beatae. Sit et adipisci commodi quis. Voluptate recusandae et dolor qui. Ratione asperiores et aperiam ipsa at consequatur. Laboriosam similique quia repellat ea. Ut asperiores ipsa qui asperiores fugit animi inventore. Nobis nisi nobis omnis cumque.', 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(2, 'Devyn Pfannerstill IV', 'Sit perspiciatis totam distinctio. Ut sit voluptas et omnis quis distinctio quo. Eaque neque libero consequatur optio enim non. In provident quasi reprehenderit soluta ut tempore voluptate. Voluptas qui libero consectetur perspiciatis. Delectus exercitationem et totam iste dolore deserunt et. Soluta dolore nihil laudantium vel. Cum quis ut veniam dolor dolores consectetur perspiciatis.', 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33');

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
(123, '2014_10_12_000000_create_users_table', 1),
(124, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(125, '2022_07_11_025653_create_categories_table', 1),
(126, '2022_07_11_025710_create_contacts_table', 1),
(127, '2022_07_13_025703_create_posts_table', 1),
(128, '2022_07_13_085938_create_packages_table', 1),
(129, '2022_07_13_090003_create_doctors_table', 1),
(130, '2022_07_13_090031_create_roles_table', 1),
(131, '2022_07_13_090050_create_users_roles_table', 1),
(132, '2022_07_13_090141_create_orders_table', 1),
(133, '2022_07_13_090142_create_bookings_table', 1),
(134, '2022_07_13_090144_create_comments_table', 1),
(135, '2022_07_14_025012_create_admins_table', 1),
(136, '2022_07_19_025320_create_overviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `package_id`, `user_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(2, 1, 5, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(3, 1, 1, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(4, 2, 3, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(5, 2, 1, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(6, 1, 5, 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(7, 1, 4, 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(8, 1, 7, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(9, 1, 1, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(10, 2, 1, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33');

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
(1, 'Dr. Ofelia Rosenbaum', 500000, 'Omnis nobis eum sed nihil nostrum quia incidunt. Accusantium laboriosam maiores totam autem quo temporibus natus. Ut id facilis sunt nisi vel. Inventore et dolorem ut omnis laboriosam deserunt porro. Repellat ipsam qui quo ratione. Accusantium alias nesciunt praesentium maiores. Temporibus iste ut aliquam laboriosam debitis eum odio. Fuga laudantium natus dignissimos aspernatur. Aspernatur placeat quia officia eligendi autem officia. Maiores labore earum consequuntur ullam voluptas. Debitis voluptas et autem et. Unde dolor numquam et dolorem rerum laborum aut. Dignissimos dicta eius excepturi ea praesentium. Distinctio error optio ullam ducimus maiores ex. Enim accusantium ullam maxime aut in minima impedit. Et et in fugiat et qui voluptas nesciunt dolore. Laboriosam est ipsam quis qui fugiat magnam voluptatem. Molestiae ducimus odio temporibus quos ea. Itaque est sit omnis id.', '1.jpg', '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(2, 'Maxie Marquardt', 600000, 'Temporibus est culpa consequuntur beatae veritatis quia consequatur. Animi ut iste voluptate cumque dolores dolores voluptates. Quia qui et pariatur sit aspernatur nisi temporibus. Error aspernatur molestias sunt blanditiis quis. Et est rerum quia rerum. Consequatur amet fuga officia est. Maiores id quo voluptatem quod occaecati incidunt. Sit autem aut libero voluptates distinctio debitis. Earum quisquam nobis sint non consequuntur sunt. Est consequatur quam voluptatum voluptates at iure. Unde omnis ut perferendis incidunt. Nemo quia repudiandae et neque id voluptas sit. Qui corporis rerum ipsam adipisci incidunt nostrum rem. Doloremque ut blanditiis beatae odit voluptas molestiae tempore. Sunt laudantium consequatur officiis labore. Blanditiis officia ex id laudantium unde minus aut sapiente. Qui modi aut et aut veritatis rem.', '1.jpg', '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(3, 'Prof. Alexis Carter', 400000, 'Sit doloremque ea quaerat nam. Nesciunt quas dolores voluptatem necessitatibus quia iure. Molestiae repellendus atque tenetur corrupti. Et cum qui unde expedita labore. Dignissimos reprehenderit sed dolor. Officiis accusamus ea officia qui. Quibusdam dolorem maxime dolore beatae sequi. Adipisci consectetur harum illo tempore id omnis tempora. Tempora et est esse impedit. Consequatur est voluptates quo aliquid omnis esse. Natus voluptas ex aliquam eum totam. Vel blanditiis et aperiam aliquid incidunt qui quo. Omnis dicta eos ullam mollitia quod numquam iure. Aliquam quisquam saepe tempore labore. Ratione odit et magni. Nam vero dicta quia possimus. Non voluptates exercitationem occaecati quis qui impedit voluptatem. Ut quis tenetur et natus iusto qui unde. Dolores unde eos delectus voluptatem est distinctio. Omnis modi voluptas facilis.', '2.jpg', '2022-07-25 18:33:33', '2022-07-25 18:33:33');

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
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `tag`, `status`, `emotion`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Gerard Dooley Jr.', 'Prof. Brennon Legros Jr.', '2.jpg', 'pnv staff check', 'show', 145, 5, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(2, 'Dr. Merlin O\'Conner', 'Mr. Lindsey Nienow II', '1.jpg', 'pnv staff check', 'hidden', 423, 2, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(3, 'Janie Klocko', 'Alicia Fay', '2.jpg', 'pnv staff check', 'show', 892, 4, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(4, 'Letha Durgan', 'Zaria Rice', '1.jpg', 'pnv staff check', 'hidden', 91, 4, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(5, 'Prof. Queenie Nader', 'Hester Hyatt', '3.jpg', 'pnv staff check', 'show', 931, 6, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(6, 'Dr. Jalon Olson', 'Prof. Helena Hermann II', '3.jpg', 'pnv staff check', 'show', 431, 6, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(7, 'Josephine Hirthe', 'Russ Homenick DVM', '1.jpg', 'pnv staff check', 'hidden', 170, 10, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(8, 'Randi Haag III', 'Stewart Koss', '2.jpg', 'pnv staff check', 'hidden', 603, 6, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(9, 'Gayle Rohan', 'Spencer Schimmel', '3.jpg', 'pnv staff check', 'show', 106, 8, '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(10, 'Maxie Stamm V', 'Genoveva Gleichner', '3.jpg', 'pnv staff check', 'show', 663, 5, '2022-07-25 18:33:32', '2022-07-25 18:33:32');

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
(1, 'Hulda Ryan', '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(2, 'Aurelio Weimann', '2022-07-25 18:33:33', '2022-07-25 18:33:33');

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
(1, 'Malika Fisher', '0880983874', 'Tina@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(2, 'Wyatt Cummerata', '0154427033', 'Cristobal@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(3, 'Prof. Antwan Simonis PhD', '0765649459', 'Laron@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(4, 'Mr. Blaze Pacocha', '0279093863', 'Naomi@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(5, 'Fabiola Mertz', '0846319685', 'Mariah@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(6, 'Wilbert Sauer', '0816857404', 'Elisha@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(7, 'Kylie Rolfson', '0761424605', 'Cathryn@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(8, 'Arlie Armstrong MD', '0579922659', 'Petra@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(9, 'Carolyn Padberg', '0319131027', 'Tremaine@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(10, 'Ms. Emma Murphy MD', '0788840782', 'Grant@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(11, 'Prof. Soledad O\'Reilly DVM', '0807422162', 'Jacinto@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(12, 'Amely Pacocha I', '0277205826', 'Milford@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(13, 'Damien Tremblay', '0425619084', 'Antonetta@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(14, 'Wyman Turcotte', '0179378993', 'Jabari@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(15, 'Mr. Loy Eichmann DDS', '0468833890', 'Travis@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(16, 'Dr. Diego Fay DDS', '0239055065', 'Carissa@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(17, 'Delia McDermott', '0866700243', 'Felicity@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(18, 'Demetrius Skiles', '0976493305', 'Maeve@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(19, 'Prof. Leonel Kihn', '0952216881', 'Conrad@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(20, 'Beverly Hartmann', '0759873208', 'Natasha@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(21, 'Ayden Bergnaum', '0387645591', 'Abigale@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(22, 'Ethel Koch', '0942646463', 'Clement@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(23, 'Mr. Raymundo Roberts', '0549251827', 'Robert@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(24, 'Shyann Towne', '0217858604', 'Icie@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(25, 'Elwin Jakubowski II', '0334500705', 'Cayla@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(26, 'Lavonne Carroll', '0731615559', 'Merlin@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(27, 'Mohamed Corkery', '0828729480', 'Ernie@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(28, 'Tanya Fadel', '0924079579', 'Ramon@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(29, 'Matilda Gerhold', '0012181079', 'Jolie@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(30, 'Prof. Blaze Wyman', '0850262864', 'Cheyenne@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(31, 'Austen Will', '0369266615', 'Emmanuelle@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(32, 'Araceli Sipes V', '0356407321', 'Alisa@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(33, 'Beryl Hirthe', '0091547965', 'Domenick@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(34, 'Milan Lockman Jr.', '0440422172', 'Boris@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(35, 'Dr. Cleveland Waters DDS', '0006443763', 'Ava@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(36, 'Prof. Reymundo Simonis', '0294201214', 'Ashlee@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(37, 'Prof. Winnifred Kuhn', '0490790088', 'Emelie@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(38, 'Jazmin Boyle', '0762682751', 'Elza@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(39, 'Jerel Brown', '0994684840', 'Marina@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(40, 'Mohamed O\'Kon', '0852657610', 'Jarvis@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(41, 'Ms. Concepcion Jakubowski PhD', '0273637932', 'Larry@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(42, 'Eryn Gleason', '0874295498', 'Margarita@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(43, 'Bryon Walsh', '0206376574', 'Noah@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(44, 'Pink Bogisich IV', '0075345936', 'Kolby@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(45, 'Selmer Waters', '0140153867', 'Amani@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(46, 'Nina Gutmann V', '0711220638', 'Karelle@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(47, 'Johann Gaylord', '0015264955', 'Ludie@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(48, 'Adolph Lindgren', '0719447156', 'Bill@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(49, 'Keira Lubowitz', '0169898531', 'Sandra@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(50, 'Randy Tillman', '0490873579', 'Geraldine@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(51, 'Dedrick Koss', '0529232523', 'Amelia@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(52, 'Myah Wunsch III', '0835364030', 'Emiliano@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(53, 'Dr. Lyda Feeney', '0736032347', 'Skye@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(54, 'Emery O\'Hara', '0984518148', 'Bret@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(55, 'Koby Wuckert III', '0586479194', 'Cecilia@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(56, 'Prof. Edward Hayes', '0164606708', 'Shirley@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(57, 'Everardo Dach', '0439453294', 'Julian@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(58, 'Larry Feest', '0183518797', 'Freddy@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(59, 'Deontae Hettinger', '0840246646', 'Jolie@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(60, 'Llewellyn Hauck', '0256422444', 'Athena@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(61, 'Thad Schroeder', '0930671002', 'Valentina@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(62, 'Joy Grimes', '0935011259', 'Marina@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(63, 'Prof. Easton Frami DVM', '0483790092', 'Mya@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(64, 'Savion Wisoky', '0921988059', 'Brett@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(65, 'Elmo Cremin DVM', '0512591101', 'Sabryna@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(66, 'Mrs. Mariam Waelchi MD', '0447016201', 'Cristal@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(67, 'Alena Stoltenberg PhD', '0106822799', 'Lafayette@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(68, 'Prof. Lacey Waters', '0791545858', 'Delbert@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(69, 'Laisha Bergnaum', '0287106737', 'Roma@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(70, 'Ara Schuppe III', '0488811767', 'Brandon@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(71, 'Lillie Hickle', '0263209564', 'Wilbert@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(72, 'Marlon Dicki', '0354371162', 'Victor@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(73, 'Mr. Monty Monahan', '0220522075', 'Wilson@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(74, 'Mrs. Jade McLaughlin I', '0354966370', 'Hillard@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(75, 'Carol Bogan DDS', '0699435536', 'Sincere@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(76, 'Jalon Kuvalis', '0614763371', 'Shakira@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(77, 'Noemie Balistreri V', '0934052120', 'Jacinthe@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(78, 'Enos Herzog', '0255670616', 'Raquel@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(79, 'Dario Welch IV', '0318461184', 'Johnathan@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(80, 'Terrence Bashirian', '0911323923', 'Precious@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(81, 'Mrs. Ciara Robel MD', '0987417438', 'Sofia@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(82, 'Karianne White', '0022723298', 'Cyrus@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(83, 'Libby Carroll', '0928612748', 'Era@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(84, 'Marian Nader', '0092076690', 'Kareem@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(85, 'Keith Bahringer', '0371741507', 'Flo@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(86, 'Dr. Morgan Barrows V', '0222559429', 'Fidel@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(87, 'Yadira Stamm', '0955361572', 'Christy@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(88, 'Monroe Johnston', '0608560048', 'Mya@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(89, 'Sidney Okuneva', '0023103046', 'Alek@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(90, 'Eugenia Kirlin', '0446567659', 'Reba@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(91, 'Cyrus Robel', '0795308263', 'Eleazar@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(92, 'Prof. Queenie White Sr.', '0124870320', 'Jewel@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(93, 'Ima Cummerata', '0307432257', 'Roscoe@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(94, 'Teagan White', '0947354830', 'Lauretta@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(95, 'Gerda Volkman', '0692886492', 'Lenora@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(96, 'Dr. Gabe Goyette PhD', '0667593771', 'Estell@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(97, 'Mr. Wellington Cartwright', '0278624377', 'Gladys@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(98, 'Dr. Barrett Miller', '0240546169', 'Josefa@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(99, 'Ned Gottlieb', '0316126107', 'Elaina@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32'),
(100, 'Cortez Terry', '0630394019', 'Murphy@gmail.com', '2022-07-25 18:33:32', '2022-07-25 18:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(10, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(3, 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(4, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(7, 2, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(2, 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(3, 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(1, 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(7, 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(7, 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33'),
(9, 1, '2022-07-25 18:33:33', '2022-07-25 18:33:33');

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
  ADD KEY `bookings_order_id_foreign` (`order_id`);

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
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctors_package_id_foreign` (`package_id`);

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
  ADD KEY `orders_package_id_foreign` (`package_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_doctor_id_foreign` (`doctor_id`);

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
  ADD KEY `posts_category_id_foreign` (`category_id`);

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
  ADD KEY `users_roles_user_id_foreign` (`user_id`),
  ADD KEY `users_roles_role_id_foreign` (`role_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  ADD CONSTRAINT `bookings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
