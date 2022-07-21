-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 14, 2022 at 10:23 AM
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
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `start_meeting`, `end_meeting`, `problem`, `status`, `link_gg_meet`, `order_id`, `created_at`, `updated_at`) VALUES
(1, '1977-01-24 01:22:01', '2009-04-13 23:17:00', 'Numquam libero non ipsa sequi omnis quasi. Ipsam at in et unde repudiandae sit. Assumenda enim quo aut non.', 'doing', 'Quibusdam et esse qui molestiae hic. Assumenda nihil debitis odio non. Sunt asperiores est voluptas. Corrupti ut repellendus repellat sunt.', 6, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(2, '2016-01-10 02:45:46', '1997-08-27 11:46:15', 'Illum pariatur voluptatum eum ipsam facere id. Reiciendis et dolorum ullam voluptatem voluptas. Dolore corrupti corporis sed qui reprehenderit itaque earum.', 'doing', 'Rem asperiores consequatur officia ea et at libero. Et illo quod doloremque dolores sunt. Amet molestiae consequatur eius hic illo. Eaque at similique tenetur quis in. Voluptatem molestiae aliquid non accusantium architecto.', 10, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(3, '2013-09-12 11:11:44', '2004-05-19 01:12:01', 'Rerum qui inventore temporibus esse architecto qui accusantium tempora. Qui architecto molestias qui debitis est. Alias excepturi ut cumque qui vitae sunt dolorum.', 'doing', 'Non architecto esse fuga magni odit. Accusamus aspernatur rerum aliquid aut id repellendus. Ea nulla quis praesentium ea et voluptas.', 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(4, '1990-09-12 18:06:42', '2015-07-16 21:37:45', 'Similique hic voluptatum officiis libero nesciunt. Natus sit molestiae ut et reiciendis tempora. Ratione eius eum illum. Alias doloribus non qui asperiores officia sequi quas fuga.', 'done', 'Consequuntur veniam qui in rerum molestias. Suscipit aut voluptatem in fuga ut earum. Et dolores ea error. Est quaerat inventore eum quos. Earum et non cum qui. Porro rerum dolorum quaerat perspiciatis in fugit. Expedita aut itaque quo eaque cupiditate fuga. Aut est libero qui corrupti sapiente.', 10, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(5, '1987-09-07 22:41:49', '1992-01-24 20:11:25', 'Saepe est ullam vero consequatur totam reprehenderit. Dolores harum sit saepe aut dolor. Qui necessitatibus blanditiis ullam et. Ducimus dolor et exercitationem molestiae amet fuga soluta.', 'doing', 'Harum exercitationem ut modi ut iure. Et nemo quibusdam dicta error. Soluta excepturi harum rerum et qui dolores iusto. Voluptates iure in fugiat incidunt et molestiae consequatur. Eos occaecati pariatur sit laboriosam. Consectetur laudantium consectetur non et.', 10, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(6, '2019-05-19 07:45:56', '1971-06-06 03:33:04', 'Eos voluptatem maxime aut qui dolores sit. Voluptatem nihil aliquid explicabo quia in. Rerum distinctio rerum doloremque est et debitis. Asperiores aut eligendi velit provident est et maxime.', 'doing', 'Ut excepturi atque dolor architecto. Omnis nobis sed quo vitae ut. Rerum molestias et beatae natus. Id sit dolor exercitationem quidem ut possimus. Et ratione velit ex inventore et magnam corporis. Dolore esse est cum corporis error et. Rerum rerum aut blanditiis deserunt magnam fuga.', 7, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(7, '1998-04-02 07:00:30', '1992-04-12 17:23:37', 'Eum ut iste dolorum perferendis eius. Cumque odio sint libero aliquid incidunt unde. Explicabo quas quaerat sapiente est voluptatem.', 'doing', 'Sit quo laborum deserunt reprehenderit autem omnis asperiores. Itaque quos qui sit alias et id omnis. Quia et voluptas sapiente cupiditate esse ex.', 6, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(8, '1994-06-13 05:04:23', '1999-02-24 14:22:15', 'Quia quia dolorem amet est. Vero a autem sunt delectus aut qui tenetur. Voluptatem quia ipsam rerum exercitationem iusto et.', 'will do', 'Autem omnis qui sint ut fugiat perspiciatis nihil. Tempora dolores ut aut harum nesciunt tempore impedit. Harum consequatur sapiente quia est aut.', 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(9, '1970-03-22 16:21:33', '1986-12-05 11:46:21', 'Perspiciatis soluta a veniam consequatur. Molestiae placeat neque veniam perferendis adipisci. Doloribus omnis provident eos consequatur autem magnam. Nesciunt magnam perspiciatis illum odit.', 'will do', 'Qui incidunt voluptatem ut. Quos quia id eligendi nostrum. Perspiciatis aliquid tempora beatae itaque vel debitis. Voluptatibus ut tenetur alias quia. Molestias exercitationem alias exercitationem nihil.', 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(10, '2017-06-10 18:54:41', '1996-01-06 01:49:24', 'Tenetur dolorum odit dolores esse. Eos animi veniam aspernatur ullam quia nulla amet. Ut aut sunt qui officia nisi officiis eum. Officia nemo adipisci delectus alias enim.', 'doing', 'Architecto soluta facere dolorem placeat ducimus. Rerum odio similique dolorem atque voluptatem quis. At repellat ea quam error adipisci odio.', 6, '2022-07-14 01:02:30', '2022-07-14 01:02:30');

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
(1, 'Idell Jones', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(2, 'Felipa Abshire', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(3, 'Dr. Betsy Corkery', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(4, 'Prof. Francisco Ledner PhD', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(5, 'Prof. Kenna Marks Jr.', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(6, 'Mrs. Elsie Grimes', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(7, 'Tia Murazik', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(8, 'Loren Rau', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(9, 'Christop Bednar', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(10, 'Esther Davis', '2022-07-14 01:02:29', '2022-07-14 01:02:29');

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
(1, 6, 1, 'Cum ab deserunt repellat vero voluptas odit quo. Facere perspiciatis voluptatem rerum voluptas. Quaerat et sed maxime consequatur aperiam explicabo.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(2, 9, 1, 'Aut officia amet repellendus dolor et amet. Tempora hic voluptatem fugiat non aut mollitia quibusdam. Neque doloremque nesciunt beatae rem porro ut qui. Voluptatem voluptas cumque magni doloribus.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(3, 2, 3, 'Nisi eum ex ducimus qui. Laborum autem eum rerum fugiat. Explicabo minima ex qui ea sed cupiditate. Fugit necessitatibus ex cumque.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(4, 7, 9, 'Ut et doloremque quis sunt inventore. Ducimus provident repellat est consequatur est expedita qui est. Consequuntur dolorem possimus ullam ex ea fuga recusandae quidem. Veritatis porro vel accusamus.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(5, 10, 1, 'Maxime vel aspernatur consequatur. Ut aperiam pariatur qui adipisci labore tenetur debitis et.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(6, 3, 1, 'Laboriosam nostrum incidunt labore quidem cumque voluptate et. Aut ipsa inventore voluptatem doloremque culpa et perspiciatis.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(7, 9, 8, 'Fugiat cumque ullam ut veritatis est cum in. Dolor saepe optio enim beatae. Consequuntur corporis corporis aut quia suscipit reiciendis neque. Nemo ut nemo iure nam atque ipsum.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(8, 1, 5, 'Soluta ipsa eius ut aperiam alias ut deleniti. Atque vel eligendi amet dignissimos rerum quam. Necessitatibus nam quaerat dignissimos.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(9, 5, 6, 'Eaque iure eos quam soluta numquam. Ipsa voluptatem quaerat porro non ea et ea libero. Non aspernatur perspiciatis itaque distinctio illo voluptatem qui modi.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(10, 8, 8, 'Laudantium occaecati impedit aut sit et iusto vero. Vel debitis atque quo commodi voluptatum. Quia quia odio est cupiditate et.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(11, 8, 9, 'Est iusto vel iure. A repellendus est modi magni corrupti voluptatum id velit. Est reiciendis recusandae saepe explicabo. Et quo expedita magni dolor dicta ducimus ipsum quasi.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(12, 1, 1, 'Accusantium qui error quis ut. Non a aperiam sit. Id et consequuntur ea eum est suscipit cupiditate. Tenetur voluptas quas voluptatibus eum id similique.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(13, 5, 10, 'Asperiores est cum amet sed maxime vitae. Est doloribus error recusandae omnis dolores eveniet ipsum. Ut corporis rerum temporibus quisquam perferendis quaerat iste. Aspernatur quo eum rem vel aut ut inventore.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(14, 5, 8, 'Molestiae similique sapiente commodi non. Ut officiis laborum aliquam impedit dicta eligendi delectus ut.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(15, 8, 4, 'Est delectus perspiciatis voluptatem vel possimus libero. Officia totam eos id inventore. Odit ab atque adipisci adipisci nam.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(16, 7, 8, 'Dicta recusandae nesciunt non dignissimos. Quia est asperiores est voluptatibus. Eum ut rerum sed odio iure debitis fugiat.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(17, 2, 7, 'At ratione esse aliquid incidunt. Eos rerum quibusdam nemo est quasi blanditiis necessitatibus. Nihil maxime consequatur quo optio qui alias.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(18, 10, 6, 'Maxime ratione unde dolorem incidunt sed atque. Quaerat molestias explicabo maxime rerum. Soluta veritatis vitae illum quas. Et illo eius molestiae dicta molestiae.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(19, 5, 6, 'Velit qui ad tempora magnam. Nesciunt fugit fugiat aperiam veritatis ex sint a. Voluptatibus dolorem sed eos fugit quibusdam tenetur asperiores ut.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(20, 10, 5, 'Est eligendi doloremque et provident. Et in quia voluptates impedit ut nostrum repellat nihil. Earum sunt in recusandae vel velit iusto. Fugit dolor et est eligendi cum dolore. Et voluptas aut alias in a ut.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(21, 3, 3, 'Optio non quia iusto quis dolorem ut. Dignissimos nihil earum id natus debitis. Beatae corporis saepe occaecati suscipit voluptatem officiis.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(22, 8, 1, 'Ipsum deleniti iste eaque et veniam non. Quaerat delectus voluptatem dolor veniam nisi ipsa distinctio quis. Expedita laborum necessitatibus a at rem ut. Nam officiis accusamus et nobis nulla.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(23, 2, 10, 'Consectetur architecto id aut odit laudantium aliquid. Ipsam ut autem velit aut vitae inventore voluptas. Voluptas necessitatibus sint debitis dignissimos non inventore et. Dolor sint facere sint qui sequi.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(24, 7, 8, 'Consequatur et quisquam eum consequatur natus. Sed quo aspernatur accusantium dolor molestiae.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(25, 8, 10, 'Ex dolore rerum ratione et exercitationem. Ducimus vel rerum hic qui voluptatem illo non vitae. Et optio non fugiat quaerat quasi et. Perspiciatis voluptate ut ut quae ex aut.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(26, 6, 7, 'Est enim tempore consequatur optio aut aperiam est. Inventore molestiae recusandae eaque nobis nihil ea et. Consequuntur consequuntur ut excepturi perferendis dicta eveniet.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(27, 1, 2, 'Quidem accusantium quo fuga neque et repellendus. Labore aut odit pariatur temporibus.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(28, 6, 8, 'Dolores aut nihil et voluptas aut. Dolorum repellat aut mollitia est. Dignissimos rerum ipsam veritatis perspiciatis unde adipisci asperiores.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(29, 4, 10, 'Nulla rem debitis provident qui reprehenderit quasi autem neque. Quod dolorem qui recusandae veniam delectus ut ullam porro. Quibusdam maxime cum laudantium impedit ut similique saepe.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(30, 1, 10, 'Dicta earum laborum qui. Velit assumenda vel cumque ab.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(31, 2, 1, 'Rerum et et velit quas molestiae pariatur quo. Aliquid quas ut at iure neque. Eligendi doloremque rerum repellendus eaque. Ut et ea praesentium.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(32, 1, 1, 'Itaque qui veritatis rerum vel. Perferendis quos hic repudiandae. Voluptatem eos quod at sapiente ut quis ratione. Velit quia praesentium amet corrupti et voluptatibus sapiente.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(33, 3, 6, 'Quo necessitatibus eos voluptatem possimus enim. Ut ut animi eligendi cum voluptatem rerum. Magni voluptas eum architecto qui quia impedit. Dolorem voluptatem vel distinctio repudiandae at pariatur officia.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(34, 2, 9, 'Nemo id cupiditate odio animi. Ut est amet consectetur necessitatibus esse porro. Incidunt ut hic suscipit blanditiis suscipit incidunt qui pariatur. Non laudantium neque quia animi assumenda corrupti doloremque.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(35, 1, 2, 'Adipisci nisi voluptas nihil accusamus. Qui neque sed dolor non quasi est. Est perferendis quis sed dignissimos tenetur sed. Doloribus voluptas corporis quis qui culpa.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(36, 10, 8, 'In laudantium ipsam maiores rerum provident aspernatur dolore. Perspiciatis ut qui sunt. Quas suscipit repudiandae sint eius. Et earum officia ipsam commodi ex autem.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(37, 5, 6, 'Hic voluptatem laborum quisquam cupiditate dolores quae. Et quos eaque eaque odit porro harum. Fuga aspernatur ut molestiae voluptatem modi sed. Rerum explicabo dolores odit.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(38, 1, 8, 'Et praesentium et officia inventore. At earum pariatur fugit sit accusantium qui magni. Dolor veritatis aut minima. Eum quisquam quasi praesentium debitis provident.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(39, 10, 4, 'Culpa voluptatibus et eum quia voluptas. Optio animi vel architecto placeat. Quod est ut reprehenderit consequatur.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(40, 9, 7, 'Rem labore ut omnis nesciunt sed aut. Quae dolores quaerat soluta ut. Sed omnis non enim ullam. Ad adipisci ratione iure vel aspernatur.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(41, 6, 6, 'Error perspiciatis laborum fugit quos. Officiis ratione nobis maxime in. Quos nam soluta facere et enim maxime nisi. Tempora non iste aliquam neque molestias aspernatur qui.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(42, 5, 6, 'Nesciunt aliquid quam ut velit. Est dolor nihil et beatae numquam voluptatem blanditiis. Ipsa aspernatur rem inventore consequatur est et ratione. Sequi magnam tempore repellat quas quo accusantium.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(43, 8, 8, 'Error perspiciatis quis et mollitia. Quo animi quis ab. Voluptatum dolore dolores praesentium et blanditiis.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(44, 1, 2, 'Nostrum sed consequatur temporibus. Consequatur impedit earum occaecati est aspernatur veritatis veritatis. Autem laborum quis eligendi et sed accusantium recusandae maiores.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(45, 4, 9, 'Inventore nemo neque rerum nam facere quasi culpa. Saepe ipsa inventore nostrum reprehenderit velit. Modi impedit quis ipsum ipsam omnis sunt consequatur. Enim et qui facere incidunt corrupti.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(46, 3, 8, 'Reiciendis minus rem et. Odit ut mollitia non ex. Quaerat quod et culpa sed incidunt eveniet dolorum.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(47, 7, 3, 'Ad qui eius doloremque ut molestiae asperiores. Et repellat illo nam qui quia. Soluta porro alias id dolorum sequi perspiciatis laborum.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(48, 6, 10, 'Dignissimos ut nemo consequatur ad nobis excepturi vel quos. Quia explicabo laborum ipsum officia vel quia et sapiente. Voluptatem incidunt libero nulla consequatur eveniet illo.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(49, 8, 8, 'Voluptatibus repellat et error est debitis mollitia. Aperiam odio laudantium voluptates deleniti recusandae qui. Et quaerat porro voluptatibus itaque explicabo.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(50, 1, 9, 'Rem qui illum ut et itaque nemo. Praesentium nemo sed nihil qui soluta assumenda est et. Eos voluptas harum commodi adipisci accusantium. Vero repudiandae laborum ea nulla similique est minima.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(51, 7, 7, 'Voluptatem aperiam cum ab quibusdam ut. Nostrum sit ut minus accusamus et. Impedit qui tenetur perspiciatis sed voluptatem. Autem eveniet inventore voluptatibus quasi voluptatem maiores.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(52, 7, 8, 'Ab iusto ducimus qui sed illum. Velit voluptatem et placeat modi est odio possimus. Pariatur provident ex illo omnis nihil minus.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(53, 2, 8, 'Nobis aliquam ut sunt. Animi tenetur dignissimos minima accusamus occaecati cupiditate cupiditate neque. Necessitatibus fugit deleniti et animi laboriosam inventore.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(54, 10, 1, 'Magnam possimus et quo rerum quasi eius aut. Eum doloremque voluptas autem et cumque itaque nulla. Sapiente ut deserunt atque magnam iusto. Maiores doloremque qui iure laboriosam voluptatem rerum necessitatibus.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(55, 8, 4, 'Animi deleniti velit eos rerum velit commodi praesentium et. Iure atque optio nemo. Enim saepe culpa ut quo illum inventore. Aut aut ut saepe repellendus aut distinctio.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(56, 4, 7, 'Nostrum error similique voluptates consequatur. In cumque dolorem nihil dolorem perferendis velit et. Eaque ratione dolores sunt voluptatem sunt qui debitis.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(57, 10, 8, 'Mollitia iure libero ut voluptas dolore adipisci. Dolor hic velit doloribus qui. Atque qui ut laborum deserunt sit facilis ullam ullam.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(58, 7, 9, 'Maiores reiciendis nihil molestiae omnis cumque facilis illum. Ea nemo nulla doloribus beatae ab fugiat delectus id.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(59, 6, 5, 'Sed omnis rem culpa. Corporis earum est veniam quam quia. Voluptate et qui minima sapiente voluptatem. Aliquid temporibus molestiae eaque facilis hic qui et.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(60, 5, 10, 'Sed eaque consectetur molestias dolorem autem nam animi. Tempore tenetur nihil doloribus minima maiores. Officia voluptatem veniam architecto omnis nemo.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(61, 3, 4, 'Velit assumenda sit deleniti veritatis molestias. Sit commodi sed nemo iure quidem aut eius dicta.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(62, 1, 10, 'Veniam facilis facilis amet atque. Debitis accusantium non excepturi.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(63, 1, 1, 'Et qui veritatis debitis. Dolorem temporibus a expedita omnis sed architecto nobis. Sit tempora sunt enim nisi.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(64, 10, 7, 'Deleniti porro consequatur doloribus. Veritatis provident ipsum consequatur. Nesciunt voluptatem voluptas praesentium. Temporibus qui enim officiis in rerum.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(65, 5, 9, 'Quia est et eveniet possimus et ratione. Eos sit rerum architecto aliquid. Omnis eum sed praesentium eos. Rem autem nostrum quia omnis eligendi porro.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(66, 5, 1, 'Dolore quisquam beatae qui sit dolorum. Odit enim voluptatum praesentium eaque. Harum non voluptatum voluptatem beatae odit perferendis. Qui fuga blanditiis est qui sapiente.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(67, 8, 8, 'Quibusdam dolores et soluta doloribus ex animi. Ea tempore consectetur qui et. Ut odit eum id non. Nobis natus necessitatibus est aperiam sequi consectetur sapiente.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(68, 1, 4, 'Sit iusto qui enim totam. Et ad recusandae magni autem aut provident et. Ullam dolorem sequi culpa vitae nemo.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(69, 3, 7, 'Porro aut aut consequatur adipisci sapiente harum iusto. Et sit ipsam facere molestiae. Eum quod modi porro sapiente.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(70, 10, 1, 'Assumenda molestiae veniam numquam. Et quod eos magnam sed minus laborum. Cumque ullam magnam nobis repudiandae minima incidunt.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(71, 2, 10, 'Est aut in cumque ab dolores assumenda aliquam. Dolores illum unde consequuntur maxime officia. Repellat quibusdam in eius tenetur perferendis non qui. Et ut et et eum saepe ut et fugiat.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(72, 9, 9, 'Vel consequatur dolor impedit ad placeat. Dolor ratione nihil et autem aut provident ab voluptas. Voluptatem unde architecto sed maxime qui. Repudiandae dolorem quod cupiditate aliquid doloribus omnis blanditiis.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(73, 3, 2, 'Eligendi autem soluta quas voluptas voluptate. Omnis velit consequatur velit voluptatem rerum rerum. Aliquam aut pariatur rerum autem dolorem. Enim hic qui dolore autem maiores dolorum ratione labore. Perspiciatis dolor quidem ratione at.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(74, 6, 1, 'Eius eum accusantium ipsa doloremque. Exercitationem quas quia voluptate modi alias. Quasi odio officiis sit voluptatem voluptatem eveniet. Voluptas aspernatur rerum aspernatur ad aut molestias omnis fugiat.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(75, 7, 3, 'Dolorem est ipsa id illo. Iste voluptates voluptate magnam ipsam corporis consequuntur. Veritatis quasi dolor quisquam explicabo quo itaque. Saepe unde deserunt minima aut aut veritatis.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(76, 10, 3, 'Rerum et quo qui tenetur. Aliquam ducimus et sunt iure voluptatem odit nulla. At eos vel a.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(77, 1, 9, 'Voluptate in incidunt maxime tempore. Sequi dicta qui vel eum fugit neque. Perspiciatis aut facilis sed omnis animi. Suscipit et distinctio id mollitia velit dolor nihil.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(78, 5, 1, 'Ut sed fugit officiis. Et maxime iste fugit veniam. In nam ipsam et suscipit. Iure deserunt distinctio sunt et.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(79, 9, 4, 'Quo aspernatur nesciunt id ipsa sint maiores dolores. Et dolor occaecati iure ut. Veritatis et illum veniam libero et eius autem. Necessitatibus quod expedita et modi reprehenderit.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(80, 8, 8, 'Corporis sed enim quaerat sunt. Quo qui facere excepturi. Sed et corporis maxime. Quo pariatur accusamus qui veniam dolores.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(81, 9, 1, 'Recusandae dicta aut eos nostrum sit commodi. Est ea cupiditate sed. Provident blanditiis aliquam id nemo amet. Culpa ut voluptatem saepe quis. Ea adipisci molestiae voluptate non.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(82, 10, 2, 'Asperiores ut voluptatem neque. Unde id illum doloremque. Dolores ut tempora in culpa qui quo ipsam ducimus. Qui labore ducimus adipisci est.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(83, 6, 4, 'Deleniti consectetur possimus aliquid ex et. Quo laborum nulla id et. Est est rerum earum et quos id ut.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(84, 4, 4, 'Sit non voluptatum culpa quia odio aut nihil. Voluptatum magnam aut aliquam eligendi. Odio inventore velit totam cupiditate aperiam. Perferendis quibusdam est consectetur nisi minus.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(85, 3, 5, 'Sit perferendis non molestiae odio voluptatem exercitationem qui voluptatem. Quia neque dolore mollitia repellendus recusandae minus enim. Voluptatibus quidem optio voluptatem recusandae dolores inventore dolor. Alias debitis non neque doloribus veritatis.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(86, 5, 8, 'Quod veniam ipsam velit ad id dolorum odit voluptate. Suscipit quia sed reiciendis nesciunt fuga sint. Quia eaque consectetur et illum minima eaque.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(87, 9, 7, 'Et pariatur et vitae. Quod numquam quia quisquam cum sapiente. Laudantium aut reprehenderit rerum quod veniam.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(88, 3, 9, 'Ut quasi et quis ex quam. Distinctio dolores et qui enim et occaecati repellendus.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(89, 6, 5, 'Et nemo dolorem rem qui qui. Omnis et est voluptatem. Corporis rerum animi recusandae nemo.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(90, 4, 4, 'Alias et non veniam itaque sint. Aliquam laborum distinctio quo rerum ipsam cum molestiae. Et qui enim laudantium pariatur quibusdam qui dolorum. Est exercitationem a et facere.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(91, 6, 6, 'Aut ullam et ad qui. Voluptatem nisi quae laborum sit. Qui maiores neque et itaque odit.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(92, 1, 9, 'Error itaque nesciunt rerum ut. Voluptatem explicabo et est autem. Et fugiat ipsam sint consequatur omnis incidunt.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(93, 3, 3, 'Vero est nam sed est sed libero voluptatem. Occaecati eaque ea id labore molestias sit. Saepe sunt aliquid voluptatem at molestias voluptas.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(94, 9, 8, 'Eius alias natus aliquam voluptas vitae voluptatum perspiciatis. Nam enim occaecati vel veritatis non id vero. Hic perferendis enim animi quis corporis iusto.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(95, 4, 3, 'Molestiae non repudiandae non dolores nostrum repellendus molestiae. Aut commodi voluptas molestiae ipsam est quia sit dolorem. Voluptate aperiam vitae beatae sed.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(96, 4, 2, 'Placeat magnam deserunt quo aperiam mollitia ex. Ut harum vitae aut distinctio incidunt. Vero quibusdam provident officiis doloremque aspernatur autem voluptatum.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(97, 8, 4, 'Aspernatur quia quia culpa doloribus. Qui harum tenetur aut tenetur et. Qui veniam soluta incidunt officia repellendus non modi. Inventore quaerat odio inventore dolore asperiores et dolores.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(98, 10, 4, 'Sit quibusdam qui iusto. Et et sit qui itaque velit. Dolorem quis error cupiditate veritatis eos fugiat at harum.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(99, 8, 2, 'Totam dignissimos unde repellat est debitis. Quod est nobis nam. Sed repellat voluptas quod facere enim quisquam et.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(100, 6, 2, 'Odit iste nostrum accusantium architecto voluptatem in excepturi. Eos et cumque natus et ut. Molestias impedit molestiae qui at asperiores est a distinctio. Odit temporibus occaecati corporis ad esse.', '2022-07-14 01:02:30', '2022-07-14 01:02:30');

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
(1, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(2, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(3, 9, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(4, 3, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(5, 8, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(6, 8, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(7, 5, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(8, 3, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(9, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(10, 7, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(11, 9, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(12, 10, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(13, 8, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(14, 4, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(15, 3, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(16, 4, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(17, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(18, 8, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(19, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(20, 7, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(21, 5, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(22, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(23, 7, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(24, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(25, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(26, 9, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(27, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(28, 9, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(29, 10, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(30, 4, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(31, 4, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(32, 9, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(33, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(34, 10, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(35, 4, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(36, 5, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(37, 6, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(38, 6, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(39, 4, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(40, 5, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(41, 4, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(42, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(43, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(44, 3, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(45, 6, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(46, 4, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(47, 4, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(48, 8, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(49, 6, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(50, 10, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(51, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(52, 9, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(53, 9, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(54, 8, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(55, 5, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(56, 4, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(57, 4, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(58, 3, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(59, 6, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(60, 8, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(61, 5, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(62, 10, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(63, 4, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(64, 3, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(65, 10, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(66, 8, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(67, 9, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(68, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(69, 8, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(70, 8, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(71, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(72, 10, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(73, 3, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(74, 3, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(75, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(76, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(77, 8, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(78, 3, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(79, 4, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(80, 9, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(81, 10, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(82, 3, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(83, 10, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(84, 3, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(85, 6, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(86, 7, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(87, 5, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(88, 8, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(89, 9, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(90, 7, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(91, 6, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(92, 6, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(93, 7, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(94, 8, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(95, 8, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(96, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(97, 4, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(98, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(99, 9, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(100, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `dob`, `description`, `package_id`, `created_at`, `updated_at`) VALUES
(1, 'Denis Auer', '2021-01-28', 'Cumque sed vero voluptatem dolores. Aliquid voluptas sequi dolor illo odio necessitatibus. Ab aliquam officiis in nihil. Ut non quia est ab voluptatem velit voluptatem. Ad et incidunt nesciunt. Corporis reprehenderit nemo qui fuga nihil nemo. Suscipit autem illo sed error modi maxime. Maxime earum iusto corrupti quia culpa quis sint. Eum dolores inventore voluptatem maiores non eveniet suscipit.', 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(2, 'Raven Willms I', '1991-01-22', 'Aut molestiae est ipsa qui nostrum harum ut. Velit sed vel repellat atque eveniet adipisci. Vel soluta nostrum aliquam iste voluptatibus voluptas at. Dolorem aliquam qui temporibus molestiae dolor. Rem a quae vel et beatae qui. Ut hic repellendus animi eveniet et molestiae. Minus tempora aut sint dicta. Maxime commodi et quia. Deleniti occaecati est laudantium.', 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(93, '2014_10_12_000000_create_users_table', 1),
(94, '2014_10_12_100000_create_password_resets_table', 1),
(95, '2019_08_19_000000_create_failed_jobs_table', 1),
(96, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(97, '2022_07_11_022510_create_web_users_table', 1),
(98, '2022_07_11_025653_create_categories_table', 1),
(99, '2022_07_11_025703_create_post_englishes_table', 1),
(100, '2022_07_11_025710_create_contacts_table', 1),
(101, '2022_07_13_085938_create_packages_table', 1),
(102, '2022_07_13_090003_create_doctors_table', 1),
(103, '2022_07_13_090031_create_roles_table', 1),
(104, '2022_07_13_090050_create_users_roles_table', 1),
(105, '2022_07_13_090141_create_orders_table', 1),
(106, '2022_07_13_090142_create_bookings_table', 1),
(107, '2022_07_13_090144_create_comments_table', 1),
(108, '2022_07_14_025012_create_admins_table', 1);

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
(1, 2, 10, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(2, 2, 1, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(3, 1, 7, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(4, 2, 2, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(5, 2, 4, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(6, 2, 2, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(7, 1, 2, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(8, 1, 9, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(9, 1, 6, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(10, 2, 4, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Laverna Runte', 800000, 'Voluptate voluptatem magnam reiciendis est doloribus numquam perferendis. Vitae aut maiores odio illum molestiae est. Earum in molestias distinctio sequi. Et eos culpa velit vel ut veniam. Praesentium laudantium dolores aut impedit qui. Et non molestiae corrupti quia assumenda quia saepe. Enim consectetur ut quasi sint cum. Et aut minus ut et necessitatibus consequuntur ratione. Possimus sequi et provident ab non accusantium blanditiis fugit. Qui ratione aut eos ipsa id rerum. Ab quidem omnis rerum reiciendis. Cum maiores sint quas. Et aliquam ullam doloremque odio delectus nisi. Modi nesciunt rerum ab saepe esse. Facere et beatae sapiente illum ullam dolore repellendus distinctio. Aliquid odio voluptatibus incidunt eaque.', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(2, 'Hildegard Schaden', 100000, 'Assumenda molestias qui et et eum eum. Alias enim illum dolore repudiandae veniam ab. Consequatur nostrum necessitatibus nobis quis vel nihil et. Et aperiam dolores est adipisci in. Beatae voluptatem dolorum quia sed recusandae quo. Quis voluptatibus sunt inventore et voluptates reprehenderit inventore. Inventore ea et reprehenderit fuga deleniti saepe debitis. Qui laboriosam consequatur beatae error dolorem. Sint eum vero perspiciatis provident. Ducimus dolorem labore nesciunt optio nihil et. Nam sit temporibus earum et. Ut et modi alias sed assumenda placeat. Quia beatae omnis velit. Quam alias aut sint voluptas sunt minus aperiam. Et perspiciatis aliquid veritatis expedita voluptas. Consequatur illo ut ipsam voluptatibus omnis atque et.', '2022-07-14 01:02:30', '2022-07-14 01:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `post_englishes`
--

CREATE TABLE `post_englishes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('show','hidden') COLLATE utf8mb4_unicode_ci NOT NULL,
  `emotion` int(11) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_englishes`
--

INSERT INTO `post_englishes` (`id`, `title`, `content`, `image`, `status`, `emotion`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Rusty Kulas', 'Prof. Vicente Friesen', '3.jpg', 'hidden', 624, 5, '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(2, 'Dameon Prosacco PhD', 'Jocelyn Anderson', '1.jpg', 'show', 212, 8, '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(3, 'Nola Rath', 'Trey Reilly DDS', '3.jpg', 'hidden', 396, 3, '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(4, 'Reta Robel PhD', 'Orin Cormier', '1.jpg', 'show', 609, 5, '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(5, 'Sam Dickens II', 'Frida Franecki', '1.jpg', 'hidden', 598, 9, '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(6, 'Marcos Shanahan', 'Gustave Welch', '2.jpg', 'show', 699, 8, '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(7, 'Greyson Littel', 'Dr. Rickie Doyle DDS', '1.jpg', 'hidden', 918, 8, '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(8, 'Sophia Boehm I', 'Elissa McCullough', '2.jpg', 'show', 273, 5, '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(9, 'Cody Gleichner', 'Madisen O\'Kon', '2.jpg', 'show', 797, 9, '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(10, 'Zackary Gerlach', 'Breanne Conn', '3.jpg', 'hidden', 946, 8, '2022-07-14 01:02:29', '2022-07-14 01:02:29');

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
(1, 'Prof. Theodore Schiller', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(2, 'Pinkie Langosh', '2022-07-14 01:02:30', '2022-07-14 01:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(10, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(9, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(1, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(2, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(6, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(5, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(2, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(4, 2, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(8, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(1, 1, '2022-07-14 01:02:30', '2022-07-14 01:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `web_users`
--

CREATE TABLE `web_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_users`
--

INSERT INTO `web_users` (`id`, `name`, `gender`, `phone`, `mail`, `dob`, `created_at`, `updated_at`) VALUES
(1, 'Eden Douglas', 'male', '0190851062', 'Annabel@gmail.com', '1987-10-08', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(2, 'Trinity Stracke', 'female', '0829001127', 'Unique@gmail.com', '2005-02-01', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(3, 'Rosie McCullough', 'other', '0156662736', 'Sibyl@gmail.com', '1998-03-24', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(4, 'Mrs. Angelita Kerluke III', 'other', '0200054788', 'Amari@gmail.com', '2011-04-23', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(5, 'Dr. Shaina Kuhn IV', 'female', '0301196385', 'Alexys@gmail.com', '1978-10-23', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(6, 'Weldon Maggio Sr.', 'female', '0024993702', 'Alycia@gmail.com', '1977-02-10', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(7, 'Savion Treutel', 'other', '0912385654', 'Myles@gmail.com', '2021-09-11', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(8, 'Dr. Chelsey Padberg II', 'female', '0225879770', 'Arnaldo@gmail.com', '2000-03-17', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(9, 'Chelsea Howe', 'male', '0067733913', 'Brionna@gmail.com', '1991-10-14', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(10, 'Leone Schinner', 'other', '0496621284', 'Woodrow@gmail.com', '1991-08-15', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(11, 'Mr. Lee Hirthe V', 'male', '0015656889', 'Enid@gmail.com', '1971-03-11', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(12, 'Vella Weimann', 'female', '0936147775', 'Wendy@gmail.com', '1977-02-23', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(13, 'Betty Daniel', 'other', '0324882502', 'Raheem@gmail.com', '1995-07-06', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(14, 'Eliezer Nitzsche', 'other', '0066841550', 'Julian@gmail.com', '1993-10-22', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(15, 'Desmond Crooks', 'other', '0017468984', 'Francesco@gmail.com', '1990-06-07', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(16, 'Colt Franecki', 'other', '0112664049', 'Carmine@gmail.com', '1986-07-26', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(17, 'Prof. Allie Nitzsche', 'male', '0036965399', 'Stephania@gmail.com', '2001-06-27', '2022-07-14 01:02:29', '2022-07-14 01:02:29'),
(18, 'Gavin Wiegand', 'male', '0339821546', 'Brigitte@gmail.com', '1979-04-26', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(19, 'Kendra Goldner', 'male', '0188783847', 'Erna@gmail.com', '1972-12-26', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(20, 'Ms. Matilda Beer V', 'male', '0063037458', 'Darron@gmail.com', '2006-06-05', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(21, 'Krystal Pouros', 'other', '0630721960', 'Pinkie@gmail.com', '1983-10-04', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(22, 'Vella Moore', 'female', '0985683417', 'Chet@gmail.com', '2019-07-17', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(23, 'Celestine Carter', 'other', '0819133101', 'Misty@gmail.com', '2002-08-05', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(24, 'Dr. Amiya Stokes I', 'male', '0497127444', 'Marilyne@gmail.com', '1988-02-10', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(25, 'King Schoen', 'female', '0740714320', 'Alice@gmail.com', '2018-10-16', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(26, 'Maud Brakus', 'other', '0155415221', 'Sonia@gmail.com', '2001-03-20', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(27, 'Hanna Emmerich', 'other', '0600631920', 'Joaquin@gmail.com', '1985-04-30', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(28, 'Ms. Sylvia Roob', 'female', '0711021227', 'Meagan@gmail.com', '1984-07-04', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(29, 'Rickie Yost', 'male', '0173875950', 'Melany@gmail.com', '1990-08-29', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(30, 'Parker Heathcote II', 'other', '0802599184', 'Flavio@gmail.com', '2008-09-29', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(31, 'Malinda Powlowski', 'female', '0498968139', 'Ashton@gmail.com', '1987-01-17', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(32, 'Gaston Watsica', 'female', '0460084893', 'Domenick@gmail.com', '1974-11-27', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(33, 'Prof. Raquel Reilly', 'other', '0342503791', 'Vincenza@gmail.com', '2016-04-06', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(34, 'Antonietta Doyle', 'other', '0291915061', 'Abner@gmail.com', '1981-03-23', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(35, 'Vallie Heller', 'female', '0215347106', 'Levi@gmail.com', '1984-09-26', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(36, 'Roosevelt Lakin V', 'female', '0433617814', 'Maxine@gmail.com', '1987-07-18', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(37, 'Hope Koelpin', 'female', '0090394620', 'Monroe@gmail.com', '1972-07-16', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(38, 'Lora Dickens', 'other', '0672287729', 'Mary@gmail.com', '1972-07-04', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(39, 'Audreanne Braun', 'other', '0905449210', 'Brown@gmail.com', '1971-02-18', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(40, 'Brennon Thompson', 'male', '0281102118', 'Callie@gmail.com', '2000-01-21', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(41, 'Ms. Shyanne Reilly', 'other', '0638069935', 'Obie@gmail.com', '1976-09-22', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(42, 'Pasquale Wolf DDS', 'female', '0873794481', 'Esta@gmail.com', '1984-05-18', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(43, 'Raheem Mueller', 'female', '0521526728', 'Hyman@gmail.com', '1981-09-08', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(44, 'Ms. Mallie Shanahan Jr.', 'female', '0248631601', 'Reyes@gmail.com', '2004-10-22', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(45, 'Pasquale Trantow', 'male', '0326106772', 'Austin@gmail.com', '1971-10-24', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(46, 'Santiago Harber', 'other', '0599235950', 'Andre@gmail.com', '1984-09-12', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(47, 'Tyra Boyer', 'female', '0069523289', 'Willis@gmail.com', '1975-12-16', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(48, 'Tom Herzog', 'other', '0601933835', 'Fermin@gmail.com', '1979-10-07', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(49, 'Myriam Oberbrunner', 'other', '0178268538', 'Vivian@gmail.com', '1984-01-27', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(50, 'Naomie Balistreri', 'male', '0913349632', 'Kaelyn@gmail.com', '1977-04-14', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(51, 'Mrs. Aleen Quitzon Sr.', 'other', '0681121219', 'Eldora@gmail.com', '1977-12-06', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(52, 'Darrell Mayert', 'male', '0470085979', 'Christina@gmail.com', '1977-07-26', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(53, 'Celia Greenfelder', 'female', '0448760437', 'Blaze@gmail.com', '1975-03-06', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(54, 'Lea Collier', 'male', '0566785778', 'Jayda@gmail.com', '1984-05-08', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(55, 'Rosemary Bartoletti', 'male', '0029951473', 'Cheyenne@gmail.com', '1998-09-02', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(56, 'Brent Becker', 'other', '0565813576', 'Reyna@gmail.com', '1977-04-05', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(57, 'Odessa Huels', 'female', '0130999597', 'Shea@gmail.com', '1990-12-16', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(58, 'Prof. Maxie Kshlerin', 'male', '0757578597', 'Elaina@gmail.com', '2014-07-25', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(59, 'Dillan Paucek', 'male', '0321225414', 'Kenton@gmail.com', '1979-04-08', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(60, 'Shaniya Ankunding', 'female', '0060467076', 'Nikolas@gmail.com', '1990-06-30', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(61, 'Augusta Willms', 'female', '0415589628', 'Norbert@gmail.com', '1990-03-25', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(62, 'Mohammad Fadel', 'male', '0305899225', 'Wade@gmail.com', '2020-10-19', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(63, 'Wilton O\'Conner', 'other', '0172712964', 'Tyrell@gmail.com', '1988-01-18', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(64, 'Berniece Marquardt IV', 'other', '0367535757', 'Adeline@gmail.com', '2008-04-14', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(65, 'Blaze Stiedemann', 'other', '0122086680', 'Jessy@gmail.com', '1984-08-07', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(66, 'Shaina Sawayn', 'male', '0064711600', 'Cathrine@gmail.com', '1996-11-28', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(67, 'Kevon Aufderhar', 'male', '0780232707', 'Mervin@gmail.com', '2020-06-26', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(68, 'Mr. Ronny Yost III', 'male', '0980473029', 'Ahmed@gmail.com', '1992-02-25', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(69, 'Josiane Bechtelar DDS', 'female', '0667486202', 'Daphnee@gmail.com', '1991-02-14', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(70, 'Foster Schulist', 'male', '0427314477', 'Timmy@gmail.com', '1993-11-20', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(71, 'Ms. Lulu Gleichner', 'female', '0992489294', 'Adelia@gmail.com', '2022-01-20', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(72, 'Prof. Price Schaefer', 'male', '0866089559', 'Otis@gmail.com', '2018-04-07', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(73, 'Pablo Moore', 'other', '0720239303', 'Candido@gmail.com', '1999-09-20', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(74, 'Bailey Ward DDS', 'male', '0356072741', 'Herta@gmail.com', '1986-08-14', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(75, 'Thad Herman', 'female', '0742123608', 'Makenzie@gmail.com', '1977-04-17', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(76, 'Kiara Schroeder PhD', 'other', '0624947342', 'Brycen@gmail.com', '1989-07-01', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(77, 'Merle Prohaska', 'male', '0476717305', 'Elsie@gmail.com', '1993-10-15', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(78, 'Jamel Stracke', 'other', '0980755283', 'Otilia@gmail.com', '1981-08-04', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(79, 'Osvaldo Hoeger', 'other', '0024232495', 'Melyna@gmail.com', '1972-12-07', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(80, 'Miss Joelle Nienow I', 'other', '0446144248', 'Maeve@gmail.com', '1997-12-16', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(81, 'Miss Brooklyn Ebert', 'female', '0641279243', 'Antonetta@gmail.com', '2022-02-15', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(82, 'Prof. Khalil Beatty', 'female', '0026618057', 'Dasia@gmail.com', '1979-03-29', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(83, 'Domenic Howell', 'female', '0038195202', 'Ramiro@gmail.com', '1997-05-09', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(84, 'Prof. Elisha Harris', 'female', '0302405247', 'General@gmail.com', '2018-07-22', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(85, 'Mrs. Adelle Toy', 'male', '0642337732', 'Kailee@gmail.com', '2001-05-16', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(86, 'Florida Simonis', 'female', '0808814840', 'Kattie@gmail.com', '2012-11-24', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(87, 'Llewellyn Waelchi', 'male', '0046155730', 'Pat@gmail.com', '2018-10-29', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(88, 'Ms. Vergie Kautzer IV', 'other', '0036039643', 'Antonietta@gmail.com', '1993-02-04', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(89, 'Giovani Watsica', 'female', '0243494948', 'Nick@gmail.com', '2021-07-02', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(90, 'Manuel Ziemann', 'male', '0826682351', 'Rahsaan@gmail.com', '1977-08-21', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(91, 'Alice Block', 'male', '0478895934', 'Arnaldo@gmail.com', '1984-04-23', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(92, 'Magdalena Sauer', 'female', '0624005431', 'Vita@gmail.com', '1972-02-16', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(93, 'Myriam Haag IV', 'male', '0126062255', 'Herta@gmail.com', '1991-06-10', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(94, 'Ms. Jakayla Rath IV', 'other', '0081717940', 'Sibyl@gmail.com', '1986-06-10', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(95, 'Brendan Glover', 'female', '0061135323', 'Elbert@gmail.com', '1970-09-09', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(96, 'Mr. Darryl Erdman IV', 'female', '0812221803', 'Anjali@gmail.com', '2006-06-01', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(97, 'Sydney Hackett', 'other', '0645529866', 'Mariah@gmail.com', '1998-12-19', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(98, 'Lessie Klein Jr.', 'male', '0267483798', 'Earline@gmail.com', '1988-12-21', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(99, 'Solon Tromp', 'other', '0529812567', 'Leonel@gmail.com', '2021-01-03', '2022-07-14 01:02:30', '2022-07-14 01:02:30'),
(100, 'Terrance Kemmer', 'other', '0601057048', 'Destinee@gmail.com', '1982-08-09', '2022-07-14 01:02:30', '2022-07-14 01:02:30');

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `post_englishes`
--
ALTER TABLE `post_englishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_englishes_category_id_foreign` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `users_roles_user_id_foreign` (`user_id`),
  ADD KEY `users_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `web_users`
--
ALTER TABLE `web_users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `post_englishes`
--
ALTER TABLE `post_englishes`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_users`
--
ALTER TABLE `web_users`
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
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `post_englishes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `web_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `web_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `web_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_englishes`
--
ALTER TABLE `post_englishes`
  ADD CONSTRAINT `post_englishes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `web_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
