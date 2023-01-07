-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Янв 07 2023 г., 16:25
-- Версия сервера: 10.5.18-MariaDB-cll-lve
-- Версия PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ilmuziy2_uuqarshi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `telegram_1` varchar(255) DEFAULT NULL,
  `telegram_2` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `coin` varchar(255) DEFAULT NULL,
  `logo` varchar(555) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `chat_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Дамп данных таблицы `address`
--

INSERT INTO `address` (`id`, `telegram_1`, `telegram_2`, `instagram`, `facebook`, `website`, `coin`, `logo`, `title`, `chat_id`) VALUES
(1, 'https://t.me/faxriddin1129', '998907291129', 'https://instagram.com/faxriddin1129', 'https://facebook.com/faxriddin1129', 'https://fsoft.uz', 'Simply', 'logo.svg', 'UU qarshi maktabi', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `attendance_employee`
--

CREATE TABLE `attendance_employee` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `result` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ball`
--

CREATE TABLE `ball` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `ball` float DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `branches`
--

INSERT INTO `branches` (`id`, `name`, `created_at`) VALUES
(20, 'UU qarshi maktabi', '2022-05-03 12:25:17');

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `send_user_id` int(11) DEFAULT NULL,
  `receiver_user_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `chat_log`
--

CREATE TABLE `chat_log` (
  `id` int(11) NOT NULL,
  `users` longtext DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `control_expenses`
--

CREATE TABLE `control_expenses` (
  `id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `expenses_type_id` int(11) DEFAULT NULL,
  `cretaed_at` timestamp NULL DEFAULT current_timestamp(),
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `davomat`
--

CREATE TABLE `davomat` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `result` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Дамп данных таблицы `davomat`
--

INSERT INTO `davomat` (`id`, `user_id`, `group_id`, `created_date`, `created_at`, `result`) VALUES
(21, 189, 40, '2022-10-18', '2022-10-18 06:33:30', 'sab');

-- --------------------------------------------------------

--
-- Структура таблицы `debts`
--

CREATE TABLE `debts` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `debt` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `debts`
--

INSERT INTO `debts` (`id`, `group_id`, `user_id`, `created_at`, `date`, `price`, `debt`, `status`) VALUES
(1, 34, 90, '2022-09-29 04:02:05', '2022-09', 1875000, 1875000, 1),
(2, 34, 91, '2022-09-29 04:02:05', '2022-09', 1875000, 1800000, 0),
(3, 34, 92, '2022-09-29 04:02:05', '2022-09', 1875000, 150000, 0),
(4, 34, 93, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(5, 34, 94, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(6, 34, 95, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(7, 34, 96, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(8, 34, 97, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(9, 34, 98, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(10, 34, 99, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(11, 34, 101, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(12, 34, 102, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(13, 34, 103, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(14, 35, 104, '2022-09-29 04:02:05', '2022-09', 1875000, 1875000, 1),
(15, 35, 105, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(16, 35, 106, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(17, 35, 107, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(18, 35, 108, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(19, 35, 109, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(20, 35, 110, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(21, 35, 111, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(22, 35, 112, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(23, 35, 113, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(24, 35, 114, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(25, 35, 115, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(26, 35, 116, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(27, 35, 117, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(28, 35, 118, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(29, 35, 120, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(30, 35, 121, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(31, 35, 122, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(32, 35, 123, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(33, 35, 124, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(34, 35, 125, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(35, 35, 126, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(36, 36, 128, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(37, 36, 129, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(38, 36, 130, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(39, 36, 131, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(40, 36, 132, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(41, 36, 133, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(42, 36, 134, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(43, 36, 135, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(44, 36, 136, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(45, 36, 137, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(46, 36, 138, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(47, 36, 139, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(48, 36, 140, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(49, 36, 141, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(50, 36, 142, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(51, 36, 143, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(52, 36, 144, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(53, 36, 145, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(54, 36, 146, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(55, 36, 147, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(56, 37, 148, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(57, 37, 149, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(58, 37, 150, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(59, 37, 151, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(60, 37, 152, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(61, 37, 153, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(62, 37, 154, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(63, 37, 155, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(64, 37, 156, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(65, 37, 157, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(66, 37, 158, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(67, 37, 159, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(68, 37, 160, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(69, 37, 161, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(70, 37, 162, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(71, 37, 163, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(72, 37, 164, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(73, 37, 165, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(74, 37, 166, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(75, 38, 168, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(76, 38, 169, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(77, 38, 170, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(78, 38, 171, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(79, 38, 172, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(80, 38, 173, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(81, 38, 174, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(82, 38, 175, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(83, 38, 176, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(84, 38, 178, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(85, 38, 179, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(86, 38, 180, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(87, 38, 181, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(88, 38, 182, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(89, 38, 183, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(90, 38, 184, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(91, 38, 185, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(92, 38, 186, '2022-09-29 04:02:05', '2022-09', 1875000, 0, 0),
(93, 34, 90, '2022-10-07 05:54:13', '2022-10', 2250000, 0, 0),
(94, 34, 91, '2022-10-07 05:54:13', '2022-10', 2250000, 0, 0),
(95, 34, 92, '2022-10-07 05:54:13', '2022-10', 2250000, 0, 0),
(96, 34, 93, '2022-10-07 05:54:13', '2022-10', 2250000, 0, 0),
(97, 34, 94, '2022-10-07 05:54:13', '2022-10', 2250000, 0, 0),
(98, 34, 95, '2022-10-07 05:54:13', '2022-10', 2250000, 0, 0),
(99, 34, 96, '2022-10-07 05:54:13', '2022-10', 2250000, 0, 0),
(100, 34, 97, '2022-10-07 05:54:13', '2022-10', 2250000, 0, 0),
(101, 34, 98, '2022-10-07 05:54:13', '2022-10', 2250000, 0, 0),
(102, 34, 99, '2022-10-07 05:54:13', '2022-10', 2250000, 0, 0),
(103, 34, 101, '2022-10-07 05:54:13', '2022-10', 2250000, 0, 0),
(104, 34, 102, '2022-10-07 05:54:13', '2022-10', 2250000, 0, 0),
(105, 34, 103, '2022-10-07 05:54:13', '2022-10', 2250000, 0, 0),
(106, 35, 104, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(107, 35, 105, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(108, 35, 106, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(109, 35, 107, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(110, 35, 108, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(111, 35, 109, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(112, 35, 110, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(113, 35, 111, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(114, 35, 112, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(115, 35, 113, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(116, 35, 114, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(117, 35, 115, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(118, 35, 116, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(119, 35, 117, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(120, 35, 118, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(121, 35, 120, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(122, 35, 121, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(123, 35, 122, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(124, 35, 123, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(125, 35, 124, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(126, 35, 125, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(127, 35, 126, '2022-10-07 05:54:32', '2022-10', 2025000, 0, 0),
(128, 36, 128, '2022-10-07 05:54:41', '2022-10', 2137500, 0, 0),
(129, 36, 129, '2022-10-07 05:54:41', '2022-10', 2137500, 0, 0),
(130, 36, 130, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(131, 36, 131, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(132, 36, 132, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(133, 36, 133, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(134, 36, 134, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(135, 36, 135, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(136, 36, 136, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(137, 36, 137, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(138, 36, 138, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(139, 36, 139, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(140, 36, 140, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(141, 36, 141, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(142, 36, 142, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(143, 36, 143, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(144, 36, 144, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(145, 36, 145, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(146, 36, 146, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(147, 36, 147, '2022-10-07 05:54:42', '2022-10', 2137500, 0, 0),
(148, 37, 148, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(149, 37, 149, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(150, 37, 150, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(151, 37, 151, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(152, 37, 152, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(153, 37, 153, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(154, 37, 154, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(155, 37, 155, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(156, 37, 156, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(157, 37, 157, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(158, 37, 158, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(159, 37, 159, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(160, 37, 160, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(161, 37, 161, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(162, 37, 162, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(163, 37, 163, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(164, 37, 164, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(165, 37, 165, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(166, 37, 166, '2022-10-07 05:54:52', '2022-10', 2025000, 0, 0),
(167, 38, 168, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(168, 38, 169, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(169, 38, 170, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(170, 38, 171, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(171, 38, 172, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(172, 38, 173, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(173, 38, 174, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(174, 38, 175, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(175, 38, 176, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(176, 38, 178, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(177, 38, 179, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(178, 38, 180, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(179, 38, 181, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(180, 38, 182, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(181, 38, 183, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(182, 38, 184, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(183, 38, 185, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(184, 38, 186, '2022-10-07 05:55:02', '2022-10', 2025000, 0, 0),
(185, 39, 188, '2022-10-18 05:35:48', '2022-10', 720000, 720000, 1),
(186, 40, 190, '2022-10-18 06:30:37', '2022-10', 1200000, 1200000, 1),
(187, 40, 189, '2022-10-18 06:32:42', '2022-10', 1020000, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `debts_check_time`
--

CREATE TABLE `debts_check_time` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `debts_check_time`
--

INSERT INTO `debts_check_time` (`id`, `group_id`, `created_date`) VALUES
(7, 36, '2022-10-18'),
(8, 39, '2022-10-18'),
(9, 40, '2022-10-18'),
(10, 34, '2022-10-31');

-- --------------------------------------------------------

--
-- Структура таблицы `expencess_type`
--

CREATE TABLE `expencess_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `expencess_type`
--

INSERT INTO `expencess_type` (`id`, `name`) VALUES
(1, 'Oziq-ovqat'),
(2, 'Kamunal'),
(3, 'Soliq'),
(4, 'Ish haqi'),
(5, 'Конселерия'),
(6, 'Xo`jalik'),
(7, 'Boshqa');

-- --------------------------------------------------------

--
-- Структура таблицы `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `money` float DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `type_id` int(11) DEFAULT NULL,
  `expencess_type_id` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `expenses`
--

INSERT INTO `expenses` (`id`, `user_id`, `branch_id`, `money`, `title`, `description`, `created_date`, `created_at`, `type_id`, `expencess_type_id`, `date`) VALUES
(1, 86, 20, 720000, NULL, 'ndncx bmjdx bnew', '2022-10-18', '2022-10-18 05:38:07', 3, 7, '2022-10');

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `lesson` text DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `finish_time` varchar(255) DEFAULT NULL,
  `room` int(11) DEFAULT NULL,
  `lesson_time` varchar(255) DEFAULT NULL,
  `teacher_id` varchar(255) DEFAULT NULL,
  `discount_day` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `start_datetime` date DEFAULT NULL,
  `end_datetime` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `branch_id` int(11) DEFAULT NULL,
  `lid_id` int(11) DEFAULT NULL,
  `chegirmali` int(11) NOT NULL DEFAULT 0,
  `educator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `title`, `price`, `description`, `lesson`, `start_time`, `finish_time`, `room`, `lesson_time`, `teacher_id`, `discount_day`, `created_at`, `start_datetime`, `end_datetime`, `status`, `branch_id`, `lid_id`, `chegirmali`, `educator`) VALUES
(34, '7-D sinf', 2250000, '', 'Har kuni', '08:00 AM', '05:00 PM', 14, NULL, '187', NULL, '2022-09-23 01:44:00', '2022-09-05', '2023-05-24', 1, 20, NULL, 0, NULL),
(35, '5-A sinf', 2250000, '', 'Har kuni', '07:45 AM', '07:45 AM', 13, NULL, '127', NULL, '2022-09-23 02:59:58', '2022-09-05', '2023-05-24', 1, 20, NULL, 0, NULL),
(36, '5-D sinf', 2250000, '', 'Har kuni', '08:00 AM', '05:00 PM', 12, NULL, '127', NULL, '2022-09-23 19:18:59', '2022-09-05', '2023-05-24', 1, 20, NULL, 0, NULL),
(37, '7-B sinf', 2250000, '', 'Har kuni', '08:00 AM', '05:00 PM', 11, NULL, '187', NULL, '2022-09-24 03:16:01', '2022-09-05', '2023-05-24', 1, 20, NULL, 0, NULL),
(38, '7-A sinf', 2250000, '', 'Har kuni', '08:00 AM', '05:00 PM', 10, NULL, '187', NULL, '2022-09-24 03:40:50', '2022-09-05', '2023-05-24', 1, 20, NULL, 0, NULL),
(39, 'Test sinf', 2000000, '', 'Har kuni', '08:00 AM', '04:00 PM', 15, NULL, '127', NULL, '2022-10-18 05:34:09', '2022-10-01', '2023-05-25', 1, 20, NULL, 0, 127),
(40, '9-K sinf', 2000000, '', 'Har kuni', '08:15 AM', '04:00 PM', 13, NULL, '89', NULL, '2022-10-18 06:28:19', '2022-10-01', '2023-05-25', 1, 20, NULL, 0, 89);

-- --------------------------------------------------------

--
-- Структура таблицы `group_archive_users`
--

CREATE TABLE `group_archive_users` (
  `id` int(11) NOT NULL,
  `pupil_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `stat_davomat` float DEFAULT NULL,
  `stat_ball` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `group_archive_users`
--

INSERT INTO `group_archive_users` (`id`, `pupil_id`, `group_id`, `stat_davomat`, `stat_ball`) VALUES
(1, 188, 39, 0, 0),
(2, 190, 40, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `lids`
--

CREATE TABLE `lids` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `lesson` text DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `finish_time` varchar(255) DEFAULT NULL,
  `room` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `start_datetime` date DEFAULT NULL,
  `end_datetime` date DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `lids_user`
--

CREATE TABLE `lids_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `lids_id` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1626112760),
('m130524_201442_init', 1626112763),
('m190124_110200_add_verification_token_column_to_user_table', 1626112764),
('m211226_170057_create_table_connect_quiz', 1640539113),
('m220105_142702_connect_questions_and_type', 1641393011),
('m220105_143424_connect_questions_and_type_id', 1641393310),
('m220107_171840_connect_Themes_subject_id', 1641576018),
('m220107_181924_drop', 1641579590),
('m220107_182407_connect_questions_and_themes', 1641580007),
('m220108_185629_connect_davomat', 1651579218),
('m220503_115018_connect_branches_to_groups', 1651579220),
('m220503_120135_connect_branches_to_all', 1651579693),
('m220503_121047_connect_user_to_all', 1651580212),
('m220528_052327_quiz_all', 1653716842),
('m220528_054810_connect_quiz', 1653717551);

-- --------------------------------------------------------

--
-- Структура таблицы `months_pay`
--

CREATE TABLE `months_pay` (
  `id` int(11) NOT NULL,
  `pupil_id` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `name_uz` varchar(255) DEFAULT NULL,
  `name_ru` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `positions`
--

INSERT INTO `positions` (`id`, `name_uz`, `name_ru`, `name_en`) VALUES
(1, 'Admistrator', 'Admistrator', 'Admistrator'),
(2, 'Axrana', 'Axrana', 'Axrana'),
(3, 'Nazaoratchi', 'Nazaoratchi', 'Nazaoratchi'),
(4, 'Direktor', 'Direktor', 'Direktor'),
(5, 'O\'quv ishlar bo\'yicha direktor o\'rinbosari', 'O\'quv ishlar bo\'yicha direktor o\'rinbosari', 'O\'quv ishlar bo\'yicha direktor o\'rinbosari'),
(6, 'Operator', 'Operator', 'Operator'),
(7, 'Oshpaz', 'Oshpaz', 'Oshpaz'),
(8, 'Farrosh', 'Farrosh', 'Farrosh'),
(9, 'IT Manager', 'IT Manager', 'IT Manager'),
(10, 'Kassir', 'Kassir', 'Kassir');

-- --------------------------------------------------------

--
-- Структура таблицы `pupil_pay`
--

CREATE TABLE `pupil_pay` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `guruh_id` int(11) DEFAULT NULL,
  `money` float DEFAULT NULL,
  `pay_from` varchar(255) DEFAULT NULL,
  `pay_to` varchar(255) DEFAULT NULL,
  `chegirma` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Дамп данных таблицы `pupil_pay`
--

INSERT INTO `pupil_pay` (`id`, `user_id`, `branch_id`, `guruh_id`, `money`, `pay_from`, `pay_to`, `chegirma`, `description`, `type_id`, `created_at`, `created_date`) VALUES
(11, 90, 20, 34, 1800000, '1', NULL, NULL, '', 1, '2022-09-29 04:02:43', '2022-09-29'),
(12, 90, 20, 34, 75000, '1', NULL, NULL, '', 1, '2022-09-29 04:26:21', '2022-09-29'),
(13, 91, 20, 34, 1800000, '2', NULL, NULL, '', 3, '2022-09-29 07:25:27', '2022-09-29'),
(14, 92, 20, 34, 150000, '3', NULL, NULL, '', 3, '2022-09-29 08:45:20', '2022-09-29'),
(15, 104, 20, 35, 1800000, '14', NULL, 75000, 'vfdgbrkldmbklmdfbdrt\r\nlkdsnjgnred', 3, '2022-09-29 09:04:58', '2022-09-29'),
(16, 188, 20, 39, 720000, '185', NULL, NULL, '', 3, '2022-10-18 05:37:04', '2022-10-18'),
(17, 190, 20, 40, 1200000, '186', NULL, NULL, '', 3, '2022-10-18 06:32:03', '2022-10-18');

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz` text DEFAULT NULL,
  `a` longtext DEFAULT NULL,
  `b` longtext DEFAULT NULL,
  `c` longtext DEFAULT NULL,
  `tru_key` varchar(1) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `questions_group`
--

CREATE TABLE `questions_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `questions_group_ids`
--

CREATE TABLE `questions_group_ids` (
  `id` int(11) NOT NULL,
  `questions_group_id` int(11) DEFAULT NULL,
  `questions_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `start` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `status_degree` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `all` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `questions_group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `quiz_pay`
--

CREATE TABLE `quiz_pay` (
  `id` int(11) NOT NULL,
  `pupil_id` int(11) DEFAULT NULL,
  `created_date` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `quiz_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `quiz_result`
--

CREATE TABLE `quiz_result` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `true` int(11) DEFAULT NULL,
  `false` int(11) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `pupil` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `request_money`
--

CREATE TABLE `request_money` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `money` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Дамп данных таблицы `rooms`
--

INSERT INTO `rooms` (`id`, `number`, `branch_id`, `created_at`) VALUES
(10, '1-Xona', 20, '2022-09-18 07:50:18'),
(11, '2-Xona', 20, '2022-09-18 07:50:28'),
(12, '3-Xona', 20, '2022-09-18 07:50:39'),
(13, '4-Xona', 20, '2022-09-18 07:50:53'),
(14, '4-etaj 9-xona', 20, '2022-09-18 07:57:30'),
(15, '10-xona', 20, '2022-10-18 06:41:29');

-- --------------------------------------------------------

--
-- Структура таблицы `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `social`
--

INSERT INTO `social` (`id`, `name`) VALUES
(1, 'Instagram'),
(2, 'Telegram'),
(3, 'Websayt'),
(4, 'Facebook'),
(5, 'Do\'stim Orqali'),
(6, 'Boshqa');

-- --------------------------------------------------------

--
-- Структура таблицы `teacher_pay`
--

CREATE TABLE `teacher_pay` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `pay_from` varchar(255) DEFAULT NULL,
  `pay_to` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `create_user_id` int(11) DEFAULT NULL,
  `pupil_status` int(11) DEFAULT 0,
  `view_status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `trash`
--

CREATE TABLE `trash` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `come_date` varchar(255) DEFAULT NULL,
  `leave_date` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(1, 'Terminal Humo'),
(2, 'Terminal Uzcard'),
(3, 'Naqd'),
(4, 'Xisob raqam'),
(5, 'Click');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `card_id` varchar(255) DEFAULT NULL,
  `work_time` varchar(255) DEFAULT NULL,
  `gruh_id` int(11) DEFAULT NULL,
  `gruh_id_2` int(11) DEFAULT NULL,
  `gruh_id_3` int(11) DEFAULT NULL,
  `gruh_id_4` int(11) DEFAULT NULL,
  `gruh_id_5` int(11) DEFAULT NULL,
  `gruh_id_date` varchar(255) DEFAULT NULL,
  `gruh_id_2_date` varchar(255) DEFAULT NULL,
  `gruh_id_3_date` varchar(255) DEFAULT NULL,
  `gruh_id_4_date` varchar(255) DEFAULT NULL,
  `gruh_id_5_date` varchar(255) DEFAULT NULL,
  `may_group_1` int(11) DEFAULT NULL,
  `may_group_2` int(11) DEFAULT NULL,
  `may_group_3` int(11) DEFAULT NULL,
  `may_group_4` int(11) DEFAULT NULL,
  `may_group_5` int(11) DEFAULT NULL,
  `may_group_6` int(11) DEFAULT NULL,
  `may_group_7` int(11) DEFAULT NULL,
  `may_group_8` int(11) DEFAULT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `coming_date` timestamp NULL DEFAULT current_timestamp(),
  `verification_token` varchar(255) DEFAULT NULL,
  `role` varchar(250) NOT NULL,
  `position_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `coin` int(11) DEFAULT 0,
  `coin_date` date DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  `social_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `phone`, `card_id`, `work_time`, `gruh_id`, `gruh_id_2`, `gruh_id_3`, `gruh_id_4`, `gruh_id_5`, `gruh_id_date`, `gruh_id_2_date`, `gruh_id_3_date`, `gruh_id_4_date`, `gruh_id_5_date`, `may_group_1`, `may_group_2`, `may_group_3`, `may_group_4`, `may_group_5`, `may_group_6`, `may_group_7`, `may_group_8`, `auth_key`, `password_hash`, `password_reset_token`, `status`, `created_at`, `updated_at`, `coming_date`, `verification_token`, `role`, `position_id`, `branch_id`, `coin`, `coin_date`, `money`, `social_id`) VALUES
(1, 'api-api-api', 'Faxriddin Boboyev', '998907291122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JvjrqWSq3T3EHdkUqlBRtgPaAUWPMEtR', '$2y$13$8LjoeZKk/icZByaSEwoHnOv44c9.bnoM.ONsgre4sueOzl/V68fKe', NULL, 10, 1662365400, 1662365400, '2022-09-05 08:10:00', NULL, 'superadmin', NULL, 20, 0, NULL, 0, NULL),
(87, 'Umid Uchqunlari', 'Simply Admin', '998907291129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NMAXDt9VDhVDd5YBIr4CL9cVdBL3PuTn', '$2y$13$0y4Ggrp1a.9hOxpzxsCDNOR8YTCyq8QMmVHOCUoipdIWkgWoMLSay', NULL, 10, 1662371862, 1663750726, '2022-09-05 09:57:42', NULL, 'superadmin', NULL, 20, 0, NULL, 0, NULL),
(88, 'Temur Bahromov', 'Temur Bahromov', '998919556655', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'iTpN8bpymXOX5SN1JA059dumxhp1XuSM', '$2y$13$.nqAmpD/ZI1R2S.QBhlgHuPmnwuddoXTiKBxWLTyigIazAaluxn/u', NULL, 10, 1663487703, 1663487703, '2022-09-18 07:55:03', NULL, 'teacher', NULL, 20, 0, NULL, 0, NULL),
(89, 'Usmonov Farxod', 'Usmonov Farxod', '998991787644', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sDLgEUBmdQEp4hJnyzMgM_iPkWpdku2L', '$2y$13$Sxz7URz7ExVlZXHkZ5L5aekAOcrHlLpeX0zQj5NWrdvXz598hZ042', NULL, 10, 1663487906, 1663487906, '2022-09-18 07:58:26', NULL, 'teacher', NULL, 20, 0, NULL, 0, NULL),
(90, '998993353039', 'Ibragimova So\'g\'diyona Bekzodovna', '998993353039', NULL, NULL, 34, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1ynC4TDRZ0nUvH-HxFWXXEJb5Ovx2oa9', '$2y$13$1AZ6cqyghNwpHqBPceIERucLc.db.hlSjIKsbBwIpmAyGfjNXQZsW', NULL, 10, 1663726728, 1663897563, '2022-09-21 02:18:48', NULL, 'pupil', NULL, 20, 0, NULL, 0, 2),
(91, '19292896736', 'Elmuratova Navbahor Nodir qizi', '19292896736', NULL, NULL, 34, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eZXteH_QVCvjfJtYiRtnChrL4mwJmjXg', '$2y$13$3WbTgzr0M5vgwLpqCsMxde11KSv7KJh6jwjuGv8JXPluh2y6R.uga', NULL, 10, 1663726852, 1663897513, '2022-09-21 02:20:52', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(92, '998975857595', 'Xonsevarov Islombek Elbek o\'g\'li', '998975857595', NULL, NULL, 34, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Q-z3gqmhTGfZQyQQuf5mT_vswWiL5P0T', '$2y$13$oU47/yXghqhwOmSz12U2y.5Xp2mvnG62BO.GGwNIaflSaZ7YbUIUi', NULL, 10, 1663726909, 1663897579, '2022-09-21 02:21:49', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(93, '998973828012', 'Yunusov Kamronbek Oripjon o\'g\'li', '998973828012', NULL, NULL, 34, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'iKDZvPcxHAB4yI91r3V1LYLfPkNVib8N', '$2y$13$qq1sAMz7H.X0BDxAhAlZiut7DumIEyMqnzuT/IZnUpH/pHdEGvzfy', NULL, 10, 1663726967, 1663897594, '2022-09-21 02:22:47', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(94, '998909916187', 'Xolmamatov Amirxon Abdug\'ani o\'g\'li', '998909916187', NULL, NULL, 34, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fvETw4PVmfrWjpubnUKTklUWE-RtpPum', '$2y$13$h6dvr3pNymPbai3zyS83hex29AMk1nWMFh2TmBNrIsG3feY2fNa76', NULL, 10, 1663727030, 1663897611, '2022-09-21 02:23:50', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(95, '998996671358', 'Nurmaxmatov Jahongir Ibodulla o\'g\'li', '998996671358', NULL, NULL, 34, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-k2PjxnoUEr6vpem8-OHHrZEl3C1mAm0', '$2y$13$XS7hA9Ecu/oh.mo3nkbspOq1GfFygVutHF18kQJDNLUcvI0y3ZOrS', NULL, 10, 1663727085, 1663897629, '2022-09-21 02:24:45', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(96, '998999457761', 'Suyunov Temur Shuhrat o\'g\'li', '998999457761', NULL, NULL, 34, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dAnFYJDNVVDUnRPpOojJFDX2dyarqGzS', '$2y$13$8fOW2Q218oETfsI/ZGz5e.sNwmYSq04LTtJZXgcXxeBGGiJ5e1fq.', NULL, 10, 1663727135, 1663897645, '2022-09-21 02:25:35', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(97, '998997457430', 'Qayumov Azizbek Arziqul o\'g\'li', '998997457430', NULL, NULL, 34, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1xQ1nulPoIz-sWbwgSpXWdkE5qHlUAT6', '$2y$13$Wa3BEOcXGIHUzq1419VzDOIksN9arJnjvumr0uqC4iekM9EtweBqe', NULL, 10, 1663727178, 1663897662, '2022-09-21 02:26:18', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(98, '998943327273', 'Xolmirzayev Ozodbek Jamshid o\'g\'li', '998943327273', NULL, NULL, 34, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ebN1Za8amgRPAS20mFBQAW8oX_cj7t37', '$2y$13$ortDlZjXUiwC3zILnT/T3uQ0TRcqsU70JmKp8MUScRUjkNXHkYIKK', NULL, 10, 1663727224, 1663897685, '2022-09-21 02:27:04', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(99, '998939062525', 'Salomov Murodbek Qobilovich', '998939062525', NULL, NULL, 34, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eHeQmvRGAr86qc1aB7ftVFjViNl0RB-h', '$2y$13$3oFxTkd.eCit8QNmbWtbse5qlEaKwCqXTVQl0cTKR.gIQLONjdaVS', NULL, 10, 1663727265, 1663897705, '2022-09-21 02:27:45', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(100, '------------', 'Sodiqova Muslima', '------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'D8thb_r0Ap4w0zVlSjrYJ7yCPmU4hfHf', '$2y$13$O06eveTSn6DhMal1n/rlnuG6R158c5lNCchfi0jSGDDu1jVBW.Jeq', NULL, 10, 1663727344, 1663727344, '2022-09-21 02:29:04', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(101, '998906156408', 'Hakimov Abdulaziz', '998906156408', NULL, NULL, 34, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2WgYfcc_GJYBzeI6PG5EHFwXMNa5u5Zn', '$2y$13$wmmURnn7ARCgb/e6fL2GYelbngYJiJUA/LSOLsLTHsbiScO5MyCWy', NULL, 10, 1663727400, 1663897789, '2022-09-21 02:30:00', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(102, '998996240421', 'Meyliqulov Kamol Aktam o\'g\'li', '998996240421', NULL, NULL, 34, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24vXNZpRndW2Y0g8A5ktnXezymuSw5OR', '$2y$13$edC6jkfQbYTZ6bivVul4Nejp19qMJBQgwajz7pBQIm1EyTra/x4jW', NULL, 10, 1663727451, 1663897817, '2022-09-21 02:30:51', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(103, '998912209755', 'Begmatova Robiya Zafar qizi', '998912209755', NULL, NULL, 34, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '_NXGuYgSxL24iLthl0mkg2r55GSP4P1S', '$2y$13$4KzSyaTW9c.7IgGD3guiH.MmifWndOJA227SnIql8sGQA6W5Lgi7u', NULL, 10, 1663727498, 1663897841, '2022-09-21 02:31:38', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(104, '998889758888', 'Anvarov Latif', '998889758888', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2jL0GPGLu18KJgn_uc_fPbQzxrS9AIjn', '$2y$13$KSoXJFdFydb.8iXwsj0rbut4JWN9W.pwSGX2UAe7EbLq27QJicKIm', NULL, 10, 1663900883, 1663902716, '2022-09-23 02:41:23', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(105, '998900159960', 'Shokirov Abdurahmon', '998900159960', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6uagQEZDsf4I9rJvhuw5kfpQmP9vZ1V9', '$2y$13$EmC3dfzFVer3ld5vOsUd3OKCt9L8GoVbXQCJG6UQpLDVMhJsuKVza', NULL, 10, 1663900920, 1663902696, '2022-09-23 02:42:00', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(106, '998975850584', 'Xidirov Shaxzod', '998975850584', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FjO8cB3cqw1QSyiJph8IlQZyO-74s2VZ', '$2y$13$VG553GqBuH.UPPEQFZcBo.y0tXXf0QBB7jIzbJ0O7GsAr2sHtXyIC', NULL, 10, 1663900948, 1663902681, '2022-09-23 02:42:28', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(107, '998912171669', 'Abdug\'affarov Saidazim', '998912171669', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'XlVHx5Ti8VxE8Rc6H0Qinr4YUQpj23aI', '$2y$13$ZYWZsWU8v6tkxSQAul.8Pe.MScna6THZzNA4ZqHSKYubJmjkYQluO', NULL, 10, 1663900977, 1663902661, '2022-09-23 02:42:57', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(108, '998994150020', 'Shuhratjonova Charos', '998994150020', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8Yranm7GG_Br_5kzjharDK-p7T0-L-I6', '$2y$13$M48MdzkDtwyEEgSNVjqIm.ztMLV8tnyAMX16IhWqTOji1yDikhVaK', NULL, 10, 1663901023, 1663902641, '2022-09-23 02:43:43', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(109, '998908878602', 'Abdualimov Abulfayz', '998908878602', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'U5QQW7EerSq6n2NpdegMgLGvSJTR9do_', '$2y$13$32FTpSqtcbOIAFVEAJ0V/O8Jd5ZRjBMWwyV4eMhXldHFXYFH8gyy6', NULL, 10, 1663901073, 1663902597, '2022-09-23 02:44:33', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(110, '998934229388', 'Temirov Ibrat', '998934229388', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07dxvVYV0l7pFklmr9b3oOe8TqNAabAz', '$2y$13$jheRlGUTpjtDXDLxhDzodueecFwdwj4sNC2yczHmnywTISaswQqXu', NULL, 10, 1663901120, 1663902575, '2022-09-23 02:45:20', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(111, '998976030820', 'Abdusattarov Ja\'far', '998976030820', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tBhCdB5rEhuVOu628yFBJZSU1KJP6DWV', '$2y$13$L.IZJiEmUc3LpaEQi6YzxOwEBdp3UkZ0J299AOLDiPR3QLFznjZCi', NULL, 10, 1663901151, 1663902547, '2022-09-23 02:45:51', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(112, '998916321530', 'Xoliqulov Elnur', '998916321530', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rkKD3sbDaNVcfgKun63DkTDDMI4rMe6z', '$2y$13$oT/Y6se4uQdCSQOvjPV.N.13up8dY2z0H.1OICtcWXRjUymzbgWcq', NULL, 10, 1663901198, 1663902523, '2022-09-23 02:46:38', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(113, '998976175445', 'Eshqobilov Ruslan', '998976175445', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lkWH5lr_qO1e0xhA7kPNj38q9FxPOmh_', '$2y$13$wbiJdS3DiQTUnehiPr.B3elXw23GcmfpovrbprqblqX2jK3/t7W52', NULL, 10, 1663901229, 1663902508, '2022-09-23 02:47:09', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(114, '998912216363', 'Jo\'rayev Javhar', '998912216363', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'caOqCh1dNsXlWqIPMDODkKOT6v24eocV', '$2y$13$XeWbJ1II5ePfTOkVv52dSexjvLs0WFE79zEYAWrKX9lF5i2jM/6nO', NULL, 10, 1663901272, 1663902489, '2022-09-23 02:47:52', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(115, '998939060704', 'Julliyeva Zarnigor', '998939060704', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F_ZCDHB9SR1KrToIC7nwRRE9i2w1dvcp', '$2y$13$iFz3cKU51XPYdULrf2V78.YQiFegfYoDH8gV6zRhk50cxPwqzg9Ri', NULL, 10, 1663901308, 1663902470, '2022-09-23 02:48:28', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(116, '998908711236', 'Anzurova Dilnura', '998908711236', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gCDaO71uk0pD11OLp7UTJick6Lzry2jM', '$2y$13$2GDHAHE4SYkq2GDQ8pDPr.Kxem8zHiXTlgiYGwlDu9R6PUZ.a5/LC', NULL, 10, 1663901341, 1663902452, '2022-09-23 02:49:01', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(117, '998954711065', 'Anvarov Jalil', '998954711065', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gMlgje1sSnpKwh3h1-YwuHjwzzLuJ9Qz', '$2y$13$rx9V6xMDg6SB4DCvuON2PeXmLCJNKS9T.kKLQJJpPGY3TgWceIUq6', NULL, 10, 1663901365, 1663902432, '2022-09-23 02:49:25', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(118, '998914587978', 'Abdurasulova Mumtozbegim', '998914587978', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Okz18AmwtBWF7cS24gODWx5qBGLTReLT', '$2y$13$eAwpI.ITT8j54w4lTswidO4cEnRL75Apz5L8jhImA8qGVEOAW2Viy', NULL, 10, 1663901392, 1663902417, '2022-09-23 02:49:52', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(119, '............', 'Shaymardonova Mubina', '............', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F0wodQ14_zPUU0jycy7uxEAcodDOQzzz', '$2y$13$Ax/ZH30yN5eHJpqoSLOVkeedEU0T5Aw3J2EtGfQZIwigCrSjMXIii', NULL, 10, 1663901439, 1663901439, '2022-09-23 02:50:39', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(120, '998991566460', 'Hamidova Mohichehra', '998991566460', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '32L6en7QxE-XCPUIiJ8ikwVxBfDuZfjV', '$2y$13$jEHIROzkUfahMA65kTt/EuO8Doq6nAGll2GBb2gMmtVNUUB8ia.Ay', NULL, 10, 1663901465, 1663902149, '2022-09-23 02:51:05', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(121, '998972088064', 'Ergasheva Shodiyona', '998972088064', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5mp8MXIVJpF_tbcDOBWQ2-lxMICR4Iv9', '$2y$13$kDmN6q48Mdv2yOqrhovk4u1V52FNF3vA1zCPCVn06qOCEr2NU9iK6', NULL, 10, 1663901492, 1663902131, '2022-09-23 02:51:32', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(122, '998908714477', 'Ilhomova Frangiz', '998908714477', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shLR8fqr36NfSfiLg8jjk1Cp33X9h9G0', '$2y$13$yQtJYp4RYsij6j5KOHHzpewpZKAncmyImhnAz9.wxY04nL6sNlAJi', NULL, 10, 1663901519, 1663902114, '2022-09-23 02:51:59', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(123, '998914604477', 'Ko\'paysinova Dilbar', '998914604477', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GZWxvElwmSXfdSgY9JX93sqc_XUUjztK', '$2y$13$LnisLbefQcF1WKl4/O58x.MyOcmi1PxLqRxSGRV.5l/1wlDHA4Wli', NULL, 10, 1663901545, 1663902097, '2022-09-23 02:52:25', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(124, '998908812071', 'Zokirova Ezoza', '998908812071', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SRwGCbs8glz9JotVFPoqN1AaV4yf6c78', '$2y$13$z1sDwRg0Ulg1c8MNHi14EOqjjaaeMUZN26.PDNmKZdX3CeeCgBGoS', NULL, 10, 1663901574, 1663902075, '2022-09-23 02:52:54', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(125, '998914539772', 'Primov Alinur', '998914539772', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1eYcVQbS4WpsvMSpxAw6caVJmsl8Qdi3', '$2y$13$IJgAx4tTEN/JlzE8flNGFeGeftAE6oV5gyp5UszDglseMYE967Yja', NULL, 10, 1663901603, 1663902061, '2022-09-23 02:53:23', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(126, '998987777698', 'Nusratov Mehriddin', '998987777698', NULL, NULL, 35, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dQVLZYiKq8f3nPa2Sxe3bw_lyxCFVbGZ', '$2y$13$h2eZOZAbtfIssjGBHt/nsejRhV/T/kxANeH74SVoGUDyYLCqsXMri', NULL, 10, 1663901637, 1663902027, '2022-09-23 02:53:57', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(127, 'Tohirova Nozigul', 'Tohirova Nozigul', '998906074946', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hQYjDxtkNBOKnBRj50hR8hDGl9nk_lxV', '$2y$13$KmT33EZxFEUnctasHwQZzurjtKtJZyWm8GtujhvBalajHT1Gbjsam', NULL, 10, 1663901925, 1663901925, '2022-09-23 02:58:45', NULL, 'teacher', NULL, 20, 0, NULL, 0, NULL),
(128, '998972227870', 'Serobov Ruslan', '998972227870', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y0yjKJDMYwyHZ35_G_7cTT_C2CWZPVgg', '$2y$13$0DRtKGiYHNR7yRnJR.9CW.qUELu/ZGvpIZtf9F.CkusbAfI/OnA7O', NULL, 10, 1663960011, 1663961278, '2022-09-23 19:06:51', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(129, '998973808792', 'Zayniddinov Asomiddin', '998973808792', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BOLnKwRbveLn5ZjIdFcXPoiaoZlwZr6v', '$2y$13$W1XR2klH7O.CQgLM9dka7OsHGwgCe7llwtoZ0rC4FMI9/g0yWrZs.', NULL, 10, 1663960039, 1663961255, '2022-09-23 19:07:19', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(130, '998999581110', 'Xushvaqtov Shoxjahon', '998999581110', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'v_Eck8GrH47hitxNULw7abOS4lmRmc_3', '$2y$13$HPSwPPiB6.R4pPRASA2DuOtHXyQOb9qrknLJxmJa6szpUUR4h/hb2', NULL, 10, 1663960090, 1663961235, '2022-09-23 19:08:10', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(131, '998992020267', 'Haqnazarov Davlat', '998992020267', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wGYc4gUcrzI5GQRUIhhuouEpk-TwNhww', '$2y$13$XIKX.Nkf5XKczf50YTKdfOISemddPahE5blt3w/c/U8m0AsAVE35K', NULL, 10, 1663960120, 1663961205, '2022-09-23 19:08:40', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(132, '998991220679', 'Xayrullayev Abdulaziz', '998991220679', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'qV52TCq196ODyEfBE5H8rBFMuI--de58', '$2y$13$ULsmhvoeihmPbRgBRKDgv.M4w14oLQ9YXmeduWByfiUV2YDe15UD6', NULL, 10, 1663960165, 1663961172, '2022-09-23 19:09:25', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(133, '998907164000', 'Usmonova Asal', '998907164000', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'QcJLYYxCJguwASEe5BZMmwF7kXfdmo02', '$2y$13$NbGfnDCZwTekmbhTbhREP.Eu/Qd8YViIlSTrtzwKzqjoBA3mhcIPS', NULL, 10, 1663960191, 1663961136, '2022-09-23 19:09:51', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(134, '998997575373', 'Qilichov Rustam', '998997575373', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'L0r3XTJjT0mZh15sstPb3tlES8VYIZDp', '$2y$13$uBDNI9TfCEhQQKZx7MfXDuyJxwhbVpgfQFV8qE3JDvZ./bcILMVUO', NULL, 10, 1663960219, 1663961103, '2022-09-23 19:10:19', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(135, '998942926090', 'Maxmarajabov Bahodir', '998942926090', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8x0j5hLw1de9l8n_6EwniTEgT5qC0gVr', '$2y$13$R7Cn4t.PdI3VDVl42FDGeuFYtCGRfEmXIxHEiRKQgLxzi9UfN5BGa', NULL, 10, 1663960247, 1663961050, '2022-09-23 19:10:47', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(136, '998973112290', 'To\'lqinov Akrom', '998973112290', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ZoIC3UmbBceATUhcOwmubwoPu8cJSXBy', '$2y$13$a3esx0/qtHX6LZaOEzDfZe7/lnQB9y/CTlk5xfMHftBPFfkw6WbPO', NULL, 10, 1663960282, 1663961020, '2022-09-23 19:11:22', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(137, '998906094751', 'Panjiyev Asad', '998906094751', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nuOJwhCQ9eCoEMAgNL61Cdp8kHk_L9i6', '$2y$13$JFadphWZyszi0sdaRrMOd.XFDWsWFibLIe1n./..bkF6.FY3l8mKa', NULL, 10, 1663960313, 1663961000, '2022-09-23 19:11:53', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(138, '998903149900', 'Rahmonova Madinabonu', '998903149900', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '664Mnng4_gxc-lzl_TFohLezuTUoiKT-', '$2y$13$d/4zJ6dCSWzTe./8N4EZWeJKuco84ZLkW.avBOJSL5umgyVVfqcEO', NULL, 10, 1663960351, 1663960975, '2022-09-23 19:12:31', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(139, '998912137077', 'Bekchayeva Gulira\'no', '998912137077', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '_SQNkvi03ddBbGH5L5zJiMpOTFIeRqUu', '$2y$13$a4fKS5ezwti3.AQ0dj0kPunWrKZMmziixRo1Eu7OtA0UyZjoBAdQq', NULL, 10, 1663960379, 1663960953, '2022-09-23 19:12:59', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(140, '998914728377', 'Shodmonov Javohir', '998914728377', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'xnAIxhuAt1J6512xJemlTLHWYVvlBYpN', '$2y$13$gI8vqkvsbdQWMdTYYkxvIeeQSJWDWV2Iz.19yc4aMfzzAEj1DtJJO', NULL, 10, 1663960408, 1663960923, '2022-09-23 19:13:28', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(141, '998996895139', 'Nurmamatov Sanjar', '998996895139', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9PD7v6I32eJ2Mn_IqRqrzUR_aX_VIymQ', '$2y$13$9PHURNHHLmkZbqgew2rCP.CBw665Rjf6tC32LdiwBwVKTz56NCxjC', NULL, 10, 1663960463, 1663960883, '2022-09-23 19:14:23', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(142, '998999441816', 'Teshayev Said', '998999441816', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HL02fvYndfWQjw512EVJlx721vZ7kbak', '$2y$13$SJsZGsGpIkw1YagPe2doQuFl3b6ORpO/OSLOyeeZ3qetFPROFRi..', NULL, 10, 1663960515, 1663960859, '2022-09-23 19:15:15', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(143, '998914651083', 'O\'rolov Azamat', '998914651083', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'r4FxH-gr8rUgL6XWpCAEN8mHVTeRY6bu', '$2y$13$CGKV9O/8oq2o/KyhQHKmUeO0fiFuwUqqK65/Ox9mDojeI.85VX9YS', NULL, 10, 1663960543, 1663960838, '2022-09-23 19:15:43', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(144, '998999847679', 'Saidnabiyev Ja\'far', '998999847679', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WtCj4VFP1zaUbATFUOQmEA2dEt-pDnqn', '$2y$13$SjW2AYjI9f8uGicBrZ9OV.M9y4VE0pnw8SvNz6X40Cco8LxAjhfUC', NULL, 10, 1663960568, 1663960818, '2022-09-23 19:16:08', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(145, '998993561483', 'Shodiyev Bunyod', '998993561483', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yYA-wm83OWM3BuVYz61SUlVxV9f9np1s', '$2y$13$gHvWFCaIsmjuaU95EMMf7.BUcTlGpT2vRQA/evhRJdZ38R0QqFbQq', NULL, 10, 1663960601, 1663960802, '2022-09-23 19:16:41', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(146, '998997055020', 'Shoqosimov Bunyod', '998997055020', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6PP4Z_zv-Wr9gDe0l1r1K-Xgrn-D1LBx', '$2y$13$2AnkdGV10Ul/.SjKmze.zeOfeKGs8nyt8UllCFKCcO2M2y4Q9qAKi', NULL, 10, 1663960624, 1663960783, '2022-09-23 19:17:04', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(147, '998934208888', 'Fayzullayev Sayfullo', '998934208888', NULL, NULL, 36, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '_MPw6T-YGLuHCBCb0oOXnd2m3idI4HLk', '$2y$13$AzFjYFCmZ8c2vOOM27bJ2Otorpv8f1M7fyDS8PIfdhKLckgmVnfPq', NULL, 10, 1663960655, 1663960762, '2022-09-23 19:17:35', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(148, '998912244719', 'Ro\'ziyev Abduvali Jasur o\'g\'li', '998912244719', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2fRActR2Qt8XP4l14NKnf1hrSb9tvv9x', '$2y$13$fIdZgkQnKqkS8SusHnRBiuXCaeiQzn3uICpZqc5xP2V2xupWVOaui', NULL, 10, 1663987416, 1663989710, '2022-09-24 02:43:36', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(149, '998995572223', 'Bobonazarov Asilbek Axror o\'g\'li', '998995572223', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VmvYlUYb_zJvMlxHWTGpV1S_Z4DH719P', '$2y$13$1jPmrI2VoGBFpCysSc/qwuEua6PVWnHF5ucVsLNFr2lb4DYRtWPh2', NULL, 10, 1663987453, 1663989696, '2022-09-24 02:44:13', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(150, '998970070177', 'Rahimov Kamron Mirzohid o\'g\'li', '998970070177', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'xYw6JbqSjgQEj---5KhvGf_WNrMzAWTp', '$2y$13$ThLYU1a1UCFFus14ny72/OjBC.CE1zM8DBckZt5lMmQvL3XMMqCqa', NULL, 10, 1663987494, 1663989682, '2022-09-24 02:44:54', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(151, '998906092224', 'Botirov Firdavs Elbekovich', '998906092224', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mo3dlaroirKH0q41E8qMMU3y9kyu7opa', '$2y$13$dlfVFVcEivbI3.sJaeqbm.ky8oahqdH.MEi1POuUv0Gi4kOjdePru', NULL, 10, 1663987539, 1663989666, '2022-09-24 02:45:39', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(152, '988908878602', 'Abdualimov Abdulfarid Davron o\'g\'li', '988908878602', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'iyjTdiSWalnX_dn6KpnKCG95at7ZiHCN', '$2y$13$I1vPspzxU3qjrEYW0Jo8heYKWVaak15fyi8HfJ54ehEuaOqej/DHq', NULL, 10, 1663987689, 1663989652, '2022-09-24 02:48:09', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(153, '998990598159', 'Boboyev Alisher Telman o\'g\'li', '998990598159', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gz3z88QOZXIeutBgnFOA1OB3Pi0E9VDh', '$2y$13$TzZb8RLYztt7AUeN4VVl9.rgczIrI4RtwRAWKFBdEC.6BbVVlVBFi', NULL, 10, 1663987729, 1663989629, '2022-09-24 02:48:49', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(154, '998900702278', 'Murodov Ruslan Sirojiddinovich', '998900702278', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'srM5nsetuEjch7TyzHINxH1h7SelxZVc', '$2y$13$mZrNKs.kP09O11tZzJE62OM9qL/xoRvBFfLYjrM7KSy2BEYXrvAMy', NULL, 10, 1663987772, 1663989615, '2022-09-24 02:49:32', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(155, '+79096654095', 'Nurlanov Hasan Nurlanovich', '+79096654095', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dvb5ywlaSpTcJmufylNQsu-VK3xsRqKg', '$2y$13$T6p.jXowomln.SNiFW5ZlOMHvyB.qhZBWSX8DOb85mRh95cb3Tgzm', NULL, 10, 1663987821, 1663989564, '2022-09-24 02:50:21', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(156, '+79629155859', 'Nurlanov Husan Nurlanovich', '+79629155859', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6cWsMhuCjpTFHF938tm51TDF3MJHKSA_', '$2y$13$AbaCNFIoum9mJBl6idAkK.LO4XbywdFjPyqwRT0.89E18QNpncnWi', NULL, 10, 1663987876, 1663989553, '2022-09-24 02:51:16', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(157, '998995433368', 'Toirova Diana Komil qizi', '998995433368', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NF42OxWNuyDkYir1IM1EyMHKgxgBvHfF', '$2y$13$3AoZYyEqF68qs8fuEJWrf..rbzeUEfCGsIRdC6bh6kl9Fqp.lG2Di', NULL, 10, 1663987940, 1663989531, '2022-09-24 02:52:20', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(158, '998908893503', 'Haydarov Otabek Samijon o\'g\'li', '998908893503', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dJkU52z4WOMQZHRNrsYn2IEz_16mrJVf', '$2y$13$Fh8kCqAVHZOEieSaZ.e77OQlFIdb6Xzp7fi3Hh1OXhLRSFJHN1tae', NULL, 10, 1663987998, 1663989516, '2022-09-24 02:53:18', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(159, '998991085286', 'Bolliyev Sunatillo Farxod o\'g\'li', '998991085286', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Egvm0tnOQSEljATrC5vJYFlEE1cb0s41', '$2y$13$fmT3s4joT0AvJ/GMHPKA7.ojI.VxoZmkE.On9yG.lXeZMUsFzf4vm', NULL, 10, 1663988051, 1663989503, '2022-09-24 02:54:11', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(160, '998908784049', 'Fayzullayeva Parizoda Mirjalol qizi', '998908784049', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jy-4YbzU0I_nwrKUzyvJgDFzVtOGdJ3y', '$2y$13$6/awY1oVsAxkWg4DQN5dsePKXBfU66nc7WLsQufsz/MTpbPt77YwO', NULL, 10, 1663988135, 1663989487, '2022-09-24 02:55:35', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(161, '998942928111', 'Xolmatov Bardor Abdisattor o\'g\'li', '998942928111', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'X8b3RKYq1a4I0VCU-Fw-ursoCV5KSH0Y', '$2y$13$VRPfJb/ADvFrmZm88Oul8.i7FVRd9O9tRcAliGmmcsnFhz0m7WzOm', NULL, 10, 1663988174, 1663989469, '2022-09-24 02:56:14', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(162, '998930720058', 'Omonjonov Bobosher Ulug\'bek o\'g\'li', '998930720058', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'y1ddrWG--SKV4RJJ0Pw7Vmfx0I4bcYC4', '$2y$13$j11gEaYnXo5xC6mScGnx2Ohz1ZbQu7QS5DjMhEsq65hkqR2Xj6kLS', NULL, 10, 1663988212, 1663989452, '2022-09-24 02:56:52', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(163, '998883106970', 'Ochilov Quvonchbek Shuhrat o\'g\'li', '998883106970', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PaTPrd2E-NTofxxWTZ-h0VrAK9Qb_opy', '$2y$13$UNHW17dS25xyKyzd15/UXukIHWdhIH2VAJBNcKpUk8vJlMGlIWSBW', NULL, 10, 1663988256, 1663989432, '2022-09-24 02:57:36', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(164, '998914547309', 'Abdurahimova Oyisha Axrorjon qizi', '998914547309', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TvH-aNc-whUcVIel-LGPykvxWTEhHwXA', '$2y$13$PoGn93iA8hn4WiYdXLmW.exY6SwIIVoUia33FlFNcdm2/BUROEiC2', NULL, 10, 1663988310, 1663989417, '2022-09-24 02:58:30', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(165, '998912206528', 'Ziyodullayeva Mahliyo Azizbek qizi', '998912206528', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pHkZAeO_D5m-PtC9vSiHoXum_Mhwj0uS', '$2y$13$2vmHuOGC70OqFmmH.EVipu4uUnDgtztgPLffhO6EzNSclvCN2kMKi', NULL, 10, 1663988356, 1663989402, '2022-09-24 02:59:16', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(166, '998881511005', 'Murodov Ruslan Sirojiddinovich', '998881511005', NULL, NULL, 37, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'qkdhKLRMcjV9nL5OXjxXAL7mYCVBqZl6', '$2y$13$WcSDEDK6amXGXEXeqG5fo.2B8YgFOzd8zlsEGPajgbyZcZ7IOywGG', NULL, 10, 1663988397, 1663989380, '2022-09-24 02:59:57', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(167, 'Qobilova Gavhar', 'Qobilova Gavhar', '998919484864', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vhA3WEjv-qRfV3P6K0Q-R13vU-DyvEky', '$2y$13$gRyhRYwM8OAh1vuYzURjBemBRXMImXHCYovdxFu.1HEAbI/4ekwT6', NULL, 10, 1663989289, 1663989289, '2022-09-24 03:14:49', NULL, 'teacher', NULL, 20, 0, NULL, 0, NULL),
(168, '998913217507', 'Bozorov Avazbek Baxtiyor o\'g\'li', '998913217507', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uOcoHoC-oU9gz1YA70uVwVk-xTNO-JJE', '$2y$13$hC7FEzZf6KHe7MvBIlw75u/8VpKWrK/M0HjXjrEIfuPbCnU4Ub..m', NULL, 10, 1663989977, 1663991297, '2022-09-24 03:26:17', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(169, '998972001316', 'Bahromov Farzona Bekzodovna', '998972001316', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WbfF0cKlHoYECi-lKnntno6gcYWuZJDx', '$2y$13$Djg5/bZPeOaX9kaSElyDye0FYfmY3tOBunKJQXoOzJji50DLSzM4K', NULL, 10, 1663990025, 1663991287, '2022-09-24 03:27:05', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(170, '998906070909', 'Jonimqulov Sarvar Vohidovich', '998906070909', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4Gr0YEwj7S-g5aqAnX4WMhZBFihjSCS9', '$2y$13$ynCH6LTcD.TOdFctB43z4Ofa9IkB.wKiwO4Ry2TcVP52goHcmBiFa', NULL, 10, 1663990078, 1663991275, '2022-09-24 03:27:58', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(171, '998914546420', 'Zamonov Shohabbos Otabek o\'g\'li', '998914546420', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WucUklWmryifk-bQ-LBCZLikIya0nMYL', '$2y$13$2li5HArsCNaT4dBOVj9eWe1Vw5un17sTANksjUCXFr6OMpW/3eZla', NULL, 10, 1663990120, 1663991259, '2022-09-24 03:28:40', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(172, '998904420024', 'Qo\'ziyev Alisher Komil o\'g\'li', '998904420024', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-BUBYvaLs7QPEplKOfdTcPG9Ks3Vz_7K', '$2y$13$BsAvxOayYZAWZsYsV9Q98Og6MIzEkre8apAREZoJVCH8PNLyjGM8O', NULL, 10, 1663990161, 1663991244, '2022-09-24 03:29:21', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(173, '998914532901', 'Norpo\'latov Asadbek Asror o\'g\'li', '998914532901', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'prnRItdMClRliZctvI1XWrlgQFhJN0SN', '$2y$13$WIKoERUgYHkFMnRiZrebbOMXI/lVVsY3/wI0yLdBUsIMfRdtyqnKO', NULL, 10, 1663990197, 1663991230, '2022-09-24 03:29:57', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(174, '998912206109', 'Rahmonova Mohinur', '998912206109', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ZD3Yvl94wHf_tXHuLszG8iZhgKk4IWAj', '$2y$13$Mk.0UKJHLtfeR1XMhTe2FuV..wpYNdT51hP62ZTvd9rrx3ZZawV8O', NULL, 10, 1663990253, 1663991214, '2022-09-24 03:30:53', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(175, '998912196781', 'Saidovitov Xasan Nodirjon o\'g\'li', '998912196781', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TCYM0eRB9Msumqu_iNru3ddCAfcmaLMV', '$2y$13$iKzZTrDkCYLNszWsq92Azu8IcyQgdUKEdqQWz2Nr86WA2tLOr4F1e', NULL, 10, 1663990301, 1663991180, '2022-09-24 03:31:41', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(176, '998916333234', 'Sayfullayev Yorqin Tolib o\'g\'li', '998916333234', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NaqsmJ4jvLdv1Ku0pH1egJnokDyAbf9V', '$2y$13$Pmvt5smWV7re9lxcFsst3.xpyKq8wMSJ3mZE87SaIxkY7xyQ8uxnq', NULL, 10, 1663990336, 1663991166, '2022-09-24 03:32:16', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(177, '998913213532', 'Sayfullayev Yorqin Tolib o\'g\'li', '998913213532', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lq9F6Q6U5OTuH4Y6cSSfq7DqUlqYKi9Z', '$2y$13$mUUfrdMBG7yjbX69V/7.iOwGloeXvB80ljAL/D9fL35V.EC8hx0GO', NULL, 10, 1663990356, 1663990356, '2022-09-24 03:32:36', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(178, '998996670179', 'G\'afforova Aziza Ramish qizi', '998996670179', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15EaazK2gIalpHblWzEPBQxQcTu54rjB', '$2y$13$MVj/TNOBBp3sEIZH.0Nzp.yWqHleWEsHsyi5Yot/FyuFdpe86bj.a', NULL, 10, 1663990394, 1663990997, '2022-09-24 03:33:14', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(179, '998914619179', 'To\'rayev Temur Botir o\'g\'li', '998914619179', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COE8Q5uscTnulLRgNA8b3YC3EDNMBny4', '$2y$13$RuKztgtSw6qOGbKGrapJnO3Rtep3ZepP6QaWhMufFZ9k20c4L72K.', NULL, 10, 1663990436, 1663990974, '2022-09-24 03:33:56', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(180, '998915620553', 'Usmonov Sarvar Said o\'g\'li', '998915620553', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jtqnsElDMG1dOH2724AKAE0mRWgF1kMc', '$2y$13$tfDSVRoeLlkmaO5AA6Z1weW68w6PSzW4p0Diy6qqNETOWGSK8.IA6', NULL, 10, 1663990478, 1663990957, '2022-09-24 03:34:38', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(181, '998919563487', 'Umarov Nosir Faxriddin o\'g\'li', '998919563487', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'iZ3uglp3hi1204HY4ySm0sWBVdns0F7x', '$2y$13$F1R74vjysekpoz6HdcDVeOopnQR.fuZdHqRKyS996ed5ZGEZ5piGy', NULL, 10, 1663990518, 1663990942, '2022-09-24 03:35:18', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(182, '998912224932', 'Xo\'jaqulov Asror', '998912224932', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Uo0GyKQ_7mIkZb_gmOw6mHR0ZtHfQsWn', '$2y$13$Tqod7BwkIiu28Nw0QogFOOe0ZOCSSMM0nEHaAktncykDrxWrdp/q2', NULL, 10, 1663990542, 1663990929, '2022-09-24 03:35:42', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(183, '998939027200', 'Xayrullayev Asliddin G\'aybulla o\'g\'li', '998939027200', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NA0L5pfnQhB-MezrQC7TG2shSjtJKu26', '$2y$13$.9wDT/R.xzxhytYS.1Btl.iUZ7JRpszxNySZ5n0xVtdWCna7K9zt2', NULL, 10, 1663990594, 1663990916, '2022-09-24 03:36:34', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(184, '998919480072', 'Hamdamov Diyorbek Normurod o\'g\'li', '998919480072', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SnPVloZqxCs8Pr0SOb5TTVwYhEANvGxk', '$2y$13$0QkWN5ymnENLMD0rERPyE.HA503QuREHEE6P7JC0BkLQ7M3rUfrO.', NULL, 10, 1663990684, 1663990894, '2022-09-24 03:38:04', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(185, '998942996029', 'Shomurodov Qaxramon Zakir o\'g\'li', '998942996029', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I_hxvVM6tFEdcNv-59wx_nAagioXF68z', '$2y$13$40McKMrQ1nLcA8WfqN/NKeoqhrmAjpN0OcADCQ4wGgSbr2dBt3AGi', NULL, 10, 1663990726, 1663990882, '2022-09-24 03:38:46', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(186, '998914500035', 'Arslonov Shaxriyor O\'tkirjon o\'g\'li', '998914500035', NULL, NULL, 38, NULL, NULL, NULL, NULL, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eLfz-dl2Pc_niEk3qY1Xk_MuL-zShKNo', '$2y$13$cVhAxgn1T8Iy0GOqncerB.wHYbqBSpBDgxubP4kib1/XL1kXQVIDO', NULL, 10, 1663990766, 1663990871, '2022-09-24 03:39:26', NULL, 'pupil', NULL, 20, 0, NULL, 0, NULL),
(187, 'Nuraliyeva Gulandon', 'Nuraliyeva Gulandon', '998971990040', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'i2iQR_fYHRUqhlVatwZjm03YluFfhkcc', '$2y$13$HPprsyTh.6kwvmRiSov33OXxUo1o4gTD/g8ewLPogO8STGQn2eSl2', NULL, 10, 1664004758, 1664004758, '2022-09-24 07:32:38', NULL, 'teacher', NULL, 20, 0, NULL, 0, NULL),
(188, '998908985879', 'Ergashev Tolibjon', '998908985879', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '_MXFwe3Z1ZsnwqadJW23SD11Bzic6meu', '$2y$13$ksdiTHCPxcsghSa1aPdTfeO6/hLBSIl7ztKcEEYguYvAsmIK2SIii', NULL, 10, 1666071056, 1666071437, '2022-10-18 05:30:56', NULL, 'pupil', NULL, 20, 0, NULL, 0, 5),
(189, '998977695879', 'Tirkashov Og\'abek', '998977695879', NULL, NULL, 40, NULL, NULL, NULL, NULL, '2022-10-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ZEYcDpw8lFlRltUilWrpYXJFWj23voUw', '$2y$13$dHF1SowlSs3/7BNzQJFMoOYdx5.cJflJjunFHhf5LB/c7tkPMmnh.', NULL, 10, 1666073304, 1666074758, '2022-10-18 06:08:24', NULL, 'pupil', NULL, 20, 0, NULL, 0, 5),
(190, '998919536123', 'Tirkashov Og\'abek', '998919536123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'syXrATI9vev4iCWbDSGgvex1eANr_2eE', '$2y$13$Z8DtRy1HECLVrRmsL0Cbdeuk7tpXPxLO4YTiOkOlI9eVtT84.NAGO', NULL, 10, 1666074115, 1666074733, '2022-10-18 06:21:55', NULL, 'pupil', NULL, 20, 0, NULL, 0, 5),
(191, 'testtttt', 'Ergashev Tolibjon', '998991512117', '', '08:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1LQ2HF0HhNdnWaF2Eqmhjky1lATeFPn4', '$2y$13$no/Rq.KAly91KdTPt5e3FOTlcEfGIUj8Wj8ICXKN2dz48yt1mNA7W', NULL, 10, 1666074288, 1666074346, '2022-10-18 06:24:48', NULL, 'admin', 9, 20, 0, NULL, 0, NULL),
(192, 'superadmin', 'Simply Admin', '998975861122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rSypb5L--NJGVD4hS_L0ZUeUKG1cJIMB', '$2y$13$QFJVEfYEkQhzQg.GnY.S8eGgOAkZT1aUWNA.NVQaSf7P7dovGMZ/G', NULL, 10, 1667196595, 1667196595, '2022-10-31 06:09:55', NULL, 'superadmin', NULL, 20, 0, NULL, 0, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `attendance_employee`
--
ALTER TABLE `attendance_employee`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ball`
--
ALTER TABLE `ball`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_group_id_ball` (`group_id`),
  ADD KEY `fk_user_id_ball` (`user_id`);

--
-- Индексы таблицы `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chat_log`
--
ALTER TABLE `chat_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `control_expenses`
--
ALTER TABLE `control_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `davomat`
--
ALTER TABLE `davomat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_davomat_user_id` (`user_id`),
  ADD KEY `fk_group_id` (`group_id`);

--
-- Индексы таблицы `debts`
--
ALTER TABLE `debts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `debts_check_time`
--
ALTER TABLE `debts_check_time`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `expencess_type`
--
ALTER TABLE `expencess_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_branch_id_expenses` (`branch_id`);

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_branch_id_groups` (`branch_id`);

--
-- Индексы таблицы `group_archive_users`
--
ALTER TABLE `group_archive_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lids`
--
ALTER TABLE `lids`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lids_user`
--
ALTER TABLE `lids_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `months_pay`
--
ALTER TABLE `months_pay`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pupil_pay`
--
ALTER TABLE `pupil_pay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_group_id_pupil_pay88` (`guruh_id`),
  ADD KEY `fk_user_id_pupil_pay88` (`user_id`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id_questions` (`user_id`);

--
-- Индексы таблицы `questions_group`
--
ALTER TABLE `questions_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id_questions_group` (`user_id`);

--
-- Индексы таблицы `questions_group_ids`
--
ALTER TABLE `questions_group_ids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_questions_group_id_questions_group_ids` (`questions_group_id`),
  ADD KEY `fk_questions_id_questions_group_ids` (`questions_id`);

--
-- Индексы таблицы `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id_quiz` (`user_id`),
  ADD KEY `fk_group_id_quiz` (`group_id`),
  ADD KEY `fk_questions_group_id_quiz` (`questions_group_id`);

--
-- Индексы таблицы `quiz_pay`
--
ALTER TABLE `quiz_pay`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `quiz_result`
--
ALTER TABLE `quiz_result`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `request_money`
--
ALTER TABLE `request_money`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_branch_id_rooms` (`branch_id`);

--
-- Индексы таблицы `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teacher_pay`
--
ALTER TABLE `teacher_pay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id_teacher_pay` (`user_id`);

--
-- Индексы таблицы `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `trash`
--
ALTER TABLE `trash`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-trash-user_id` (`user_id`),
  ADD KEY `idx-trash-group_id` (`group_id`),
  ADD KEY `idx-trash-created_by` (`created_by`),
  ADD KEY `idx-trash-updated_by` (`updated_by`);

--
-- Индексы таблицы `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`),
  ADD KEY `fk_branch_id_user` (`branch_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `attendance_employee`
--
ALTER TABLE `attendance_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `ball`
--
ALTER TABLE `ball`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `chat_log`
--
ALTER TABLE `chat_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `control_expenses`
--
ALTER TABLE `control_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `davomat`
--
ALTER TABLE `davomat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `debts`
--
ALTER TABLE `debts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT для таблицы `debts_check_time`
--
ALTER TABLE `debts_check_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `expencess_type`
--
ALTER TABLE `expencess_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `group_archive_users`
--
ALTER TABLE `group_archive_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `lids`
--
ALTER TABLE `lids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lids_user`
--
ALTER TABLE `lids_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `months_pay`
--
ALTER TABLE `months_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `pupil_pay`
--
ALTER TABLE `pupil_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `questions_group`
--
ALTER TABLE `questions_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `questions_group_ids`
--
ALTER TABLE `questions_group_ids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `quiz_pay`
--
ALTER TABLE `quiz_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `quiz_result`
--
ALTER TABLE `quiz_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `request_money`
--
ALTER TABLE `request_money`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `teacher_pay`
--
ALTER TABLE `teacher_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `trash`
--
ALTER TABLE `trash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `ball`
--
ALTER TABLE `ball`
  ADD CONSTRAINT `fk_group_id_ball` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_id_ball` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `davomat`
--
ALTER TABLE `davomat`
  ADD CONSTRAINT `fk_group_id_davomat` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_id_davomat` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `fk_branch_id_expenses` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `fk_branch_id_groups` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `pupil_pay`
--
ALTER TABLE `pupil_pay`
  ADD CONSTRAINT `fk_group_id_pupil_pay88` FOREIGN KEY (`guruh_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_id_pupil_pay88` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fk_user_id_questions` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `questions_group`
--
ALTER TABLE `questions_group`
  ADD CONSTRAINT `fk_user_id_questions_group` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `questions_group_ids`
--
ALTER TABLE `questions_group_ids`
  ADD CONSTRAINT `fk_questions_group_id_questions_group_ids` FOREIGN KEY (`questions_group_id`) REFERENCES `questions_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_questions_id_questions_group_ids` FOREIGN KEY (`questions_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `fk_group_id_quiz` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_questions_group_id_quiz` FOREIGN KEY (`questions_group_id`) REFERENCES `questions_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_id_quiz` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `fk_branch_id_rooms` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `teacher_pay`
--
ALTER TABLE `teacher_pay`
  ADD CONSTRAINT `fk_user_id_teacher_pay` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `trash`
--
ALTER TABLE `trash`
  ADD CONSTRAINT `fk-trash-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-trash-group_id` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-trash-updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-trash-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_branch_id_user` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
