-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 07 2023 г., 15:13
-- Версия сервера: 5.6.51
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testtesttest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1669665136),
('m130524_201442_init', 1669665139),
('m190124_110200_add_verification_token_column_to_user_table', 1669665139),
('m221102_121414_create_address_table', 1669665139),
('m221102_121904_create_attendance_employee_table', 1669665139),
('m221103_092816_create_back_money_table', 1669665139),
('m221103_093306_create_ball_table', 1669665139),
('m221103_093531_create_branches_table', 1669665139),
('m221103_093730_create_chat_table', 1669665139),
('m221103_094504_create_chat_log_table', 1669665139),
('m221103_094738_create_contact_table', 1669665139),
('m221103_095137_create_control_expenses_table', 1669665139),
('m221103_100339_create_davomat_table', 1669665139),
('m221103_100815_create_debts_table', 1669665139),
('m221103_101037_create_debts_check_time_table', 1669665139),
('m221103_102138_create_debts_employe_table', 1669665139),
('m221103_102402_create_expencess_type_table', 1669665140),
('m221103_102724_create_expenses_table', 1669665140),
('m221103_103349_create_groups_table', 1669665140),
('m221103_103657_create_groups_pupils_table', 1669665140),
('m221103_103930_create_group_archive_users_table', 1669665140),
('m221103_104454_create_lids_table', 1669665140),
('m221103_104813_create_lids_user_table', 1669665140),
('m221103_104952_create_months_pay_table', 1669665140),
('m221103_105104_create_positions_table', 1669665140),
('m221103_105329_create_pupil_pay_table', 1669665140),
('m221103_105532_create_questions_table', 1669665140),
('m221103_105715_create_questions_group_table', 1669665140),
('m221103_105812_create_questions_group_ids_table', 1669665140),
('m221103_110243_create_quiz_table', 1669665140),
('m221103_110421_create_quiz_pay_table', 1669665140),
('m221103_111207_create_quiz_result_table', 1669665140),
('m221103_111400_create_request_money_table', 1669665140),
('m221103_111500_create_rooms_table', 1669665140),
('m221103_111542_create_social_table', 1669665140),
('m221103_111715_create_teacher_pay_table', 1669665140),
('m221103_111947_create_transactions_table', 1669665140),
('m221103_112040_create_type_table', 1669665140),
('m221103_123447_create_avans_table', 1669665141),
('m221103_173328_create_all_razdel_table', 1669665141),
('m221106_142338_create_ID_table', 1669665141),
('m221110_155942_alter_table_debts_employe', 1669665141),
('m221114_180554_add_salary_salary_status_column_to_user_table', 1669665141),
('m221129_174455_create_bot_table', 1670335747),
('m221129_174607_create_bot_user_table', 1670335747),
('m221130_181136_add_status_column_to_bot_user_table', 1670335747),
('m221201_175540_add_bot_token_column_to_address_table', 1670335747);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
