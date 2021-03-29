-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 26 2021 г., 21:26
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `course_project`
--

-- --------------------------------------------------------

--
-- Структура таблицы `city`
--

CREATE TABLE `city` (
  `ID_города` int(11) NOT NULL,
  `ID_Страны` int(11) NOT NULL,
  `Название города` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `concerts`
--

CREATE TABLE `concerts` (
  `ID_тура` int(11) NOT NULL,
  `ID_города` int(11) NOT NULL,
  `Дата_начала` date NOT NULL,
  `Дата_окончания` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE `country` (
  `ID_Страны` int(11) NOT NULL,
  `Название страны` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `group`
--

CREATE TABLE `group` (
  `Инфо_о_группе` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_Фотографии` int(11) NOT NULL,
  `ID_Песни` int(11) NOT NULL,
  `Дата_созд_гр` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `groupmembers`
--

CREATE TABLE `groupmembers` (
  `ID_участника` int(11) NOT NULL,
  `ФИО` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Биография` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Фото_участника` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Роль_в_составе` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `ID_изображ` int(11) NOT NULL,
  `Изображение` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `music`
--

CREATE TABLE `music` (
  `ID_песни` int(11) NOT NULL,
  `Название_песни` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Текст_песни` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Клип` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Музыка` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tours`
--

CREATE TABLE `tours` (
  `ID_Тура` int(11) NOT NULL,
  `Дата_начала` date NOT NULL,
  `Дата_окончания` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`ID_города`),
  ADD KEY `ID_country` (`ID_Страны`);

--
-- Индексы таблицы `concerts`
--
ALTER TABLE `concerts`
  ADD KEY `ID_tour` (`ID_тура`),
  ADD KEY `ID_city` (`ID_города`);

--
-- Индексы таблицы `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`ID_Страны`);

--
-- Индексы таблицы `group`
--
ALTER TABLE `group`
  ADD KEY `ID_photo` (`ID_Фотографии`),
  ADD KEY `ID_music` (`ID_Песни`);

--
-- Индексы таблицы `groupmembers`
--
ALTER TABLE `groupmembers`
  ADD PRIMARY KEY (`ID_участника`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ID_изображ`);

--
-- Индексы таблицы `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`ID_песни`);

--
-- Индексы таблицы `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`ID_Тура`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `city`
--
ALTER TABLE `city`
  MODIFY `ID_города` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `country`
--
ALTER TABLE `country`
  MODIFY `ID_Страны` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `groupmembers`
--
ALTER TABLE `groupmembers`
  MODIFY `ID_участника` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `ID_изображ` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `music`
--
ALTER TABLE `music`
  MODIFY `ID_песни` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tours`
--
ALTER TABLE `tours`
  MODIFY `ID_Тура` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `ID_country` FOREIGN KEY (`ID_Страны`) REFERENCES `country` (`ID_Страны`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `concerts`
--
ALTER TABLE `concerts`
  ADD CONSTRAINT `ID_city` FOREIGN KEY (`ID_города`) REFERENCES `city` (`ID_города`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ID_tour` FOREIGN KEY (`ID_тура`) REFERENCES `tours` (`ID_Тура`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `group`
--
ALTER TABLE `group`
  ADD CONSTRAINT `ID_music` FOREIGN KEY (`ID_Песни`) REFERENCES `music` (`ID_песни`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ID_photo` FOREIGN KEY (`ID_Фотографии`) REFERENCES `images` (`ID_изображ`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
