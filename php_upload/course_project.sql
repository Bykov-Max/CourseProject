-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 03 2021 г., 09:55
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

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
-- Структура таблицы `aboutgroup`
--

CREATE TABLE `aboutgroup` (
  `Info` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `founder` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_creation` year(4) NOT NULL,
  `events_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `aboutgroup`
--

INSERT INTO `aboutgroup` (`Info`, `founder`, `date_of_creation`, `events_ID`) VALUES
('Skillet — американская христианская рок-группа из города Мемфис, штат Теннесси, основанная в 1996 году. На данный момент группой выпущено десять студийных альбомов, четыре EP и два концертных альбома.<br><br>\r\n\r\nСостав группы: Джон Купер (бас-гитара, вокал) и его жена Кори Купер (клавишные, ритм-гитара, бэк-вокал), а также Джен Леджер (ударные, бэк-вокал), Сет Моррисон (соло-гитара). За двадцать лет состав группы неоднократно менялся. Джон Купер — единственный участник группы первоначального состава.<br><br>\r\n\r\nАльбом Collide в 2005 году был номинирован на премию Грэмми в номинации «Лучший рок госпел альбом», и в 2007 Comatose был номинирован на премию Грэмми за «Лучший рок госпел альбом».', 'Джон Купер', 1996, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `ID` int(11) NOT NULL,
  `countries_ID` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `concerts`
--

CREATE TABLE `concerts` (
  `ID` int(11) NOT NULL,
  `cities_ID` int(11) NOT NULL,
  `stat_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `ID` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `discographies`
--

CREATE TABLE `discographies` (
  `ID` int(11) NOT NULL,
  `musics_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE `events` (
  `ID` int(11) NOT NULL,
  `date_of_event` year(4) DEFAULT NULL,
  `descr_of_event` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`ID`, `date_of_event`, `descr_of_event`) VALUES
(1, 1992, 'First Album');

-- --------------------------------------------------------

--
-- Структура таблицы `group_members`
--

CREATE TABLE `group_members` (
  `ID` int(11) NOT NULL,
  `full_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `biography` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles_ID` int(11) NOT NULL,
  `career` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `group_members`
--

INSERT INTO `group_members` (`ID`, `full_name`, `biography`, `photo`, `roles_ID`, `career`) VALUES
(1, 'Джон Ландрум Купер', 'Джон Ландрум Купер - \n                        (англ. John Landrum Cooper, род. 7 апреля 1975) —                             американский музыкант, вокалист и басист номинированной на Грэмми христианской рок-группы Skillet c 1996.<br><br> Джон женат на Кори                           Купер(имя при рождении Korene Marie Pingitore) — клавишнице и ритм-гитаристке группы Skillet. У                            обоих имеются свадебные тату на пальцах в виде обручальных колец вместо традиционных драгоценностей.                       У них есть двое детей: Александрия (Alexandria) (родилась в 2002), и Ксавьер (Xavier) (родился в                           2005).<br><br> Джон — большой поклонник безалкогольного газированного напитка Dr Pepper, и его можно                           увидеть пьющим его в многочисленных подкастах Skillet. Это происходит так часто, что второй                                гитарист группы Бен Касика обращался к Джону как к профессиональному знатоку содовой в одном из                            подкастов. Джон так же утверждал что любит Ted’s Mexican в городе Оклахома-Сити. Он также любит                            коллекционировать постеры Человека-паука и Бэтмена. <br><br> Джон при игре на бас-гитаре никогда не                            использует медиатор. Он использует его при игре на акустической гитаре. Помимо баса и гитары он                            играет на клавишных.', 'John_Cooper.jpg', 1, '<h3>Seraph</h3>\r\n                                    Джон состоял в группе Seraph. Перед тем, как прекратить деятельность, этот коллектив выпустил 4                            песни.<br><br>\r\n               \r\n                                    <h3>Skillet</h3>\r\n                                    Ещё в детстве Джон принял христианское учение как единственно верное, именно это отразилось в ближайшем                    будущем на творчестве его группы. В ранние годы он стал осваивать гитару, пробуя писать первые                             песни.<br><br>\r\n               \r\n                                    Участие в первой команде он принял в возрасте 15 лет. Тогда Джон с друзьями основал группу                                 «Tribulation». Далее он стал играть в группе, основанной при церковном приходе. Решающую роль сыграл                       местный священник, который предложил ему собрать собственную группу и записать первое демо. Так                            собралась группа Skillet. Незадолго до этого, у Джона появился кумир — Курт Кобейн (Nirvana), в                            собранном составе он был самым молодым участником, но его этот факт нисколько не смутил. <br><br>\r\n               \r\n                                    Естественно, поначалу основной уклон шёл на стиль Grunge и Post Industrial. Grunge, как стиль стал                         постепенно вымирать, поэтому ребята стали искать новые альтернативные варианты. В то время у всех                          участников были разные музыкальные вкусы, поэтому альбом получился весьма разноплановым, но при записи                     второго альбома, все участники точно решили в каком направлении стоит работать.<br><br>\r\n               \r\n                                    Во время первого гастрольного тура в состав группы присоединилась жена Джона — Кори Купер.<br><br>\r\n               \r\n               \r\n                                    1998 год — стартует первый тур по городам Европы. 2000 год — группа получает различные номинации и                         награды и завоёвывает популярность, на группу обращает свое внимание СМИ.<br><br>\r\n               \r\n                                    Было заметно, что Skillet звучат на концертах гораздо лучше, чем на записях и все стали считать это                        особенностью группы. Это подтолкнуло Джона на запись концертного альбома. <br><br>\r\n               \r\n                                    Сегодня Skillet успешно прогрессирует (развивается) и дает много концертов. Они смогли занять свою нишу                    на мировой рок-музыкальной арене. На одном из концертов Джон играл на ударных, а Джен Леджер пела                          .<br><br>\r\n               \r\n                                    <h3>Другие проекты</h3>\r\n                                    Джон участвовал в качестве вокалиста в Hero: The Rock Opera. Согласно рецензии Купер не участвовал в                       туре рок-оперы (он только исполнил вокальную партию Рабби Каи в саундтреке), а на его месте был                            вокалист из Fusebox Билли Буханан.<br><br>\r\n               \r\n                                    Джон принимал участие в написании сингла группы Decyfer Down «Best I Can».<br><br>\r\n               \r\n                                    Купер также пел в альбоме Tobymac «Tonight» в заглавном треке.<br><br>\r\n               \r\n                                    Джон пел в песне группы We As Human — Zombie.<br><br>\r\n               \r\n                                    В 2018 выпустил сингл My Demons в новой созданной группе Fight The Fury. Группа создана в 2018 году                        совместно с Сетом Моррисоном.<br><br>\r\n               \r\n                                    26 октября 2018 года у группы Fight The Fury выпущен первый EP—альбом «Still Breathing», который достиг                    первой строчки в Billboard Heatseekers Albums.');

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `ID` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `musics`
--

CREATE TABLE `musics` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sound` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `ID` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`ID`, `name`) VALUES
(1, 'вокалист и басист');

-- --------------------------------------------------------

--
-- Структура таблицы `tours`
--

CREATE TABLE `tours` (
  `ID` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `name_of_tour` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_country` (`countries_ID`);

--
-- Индексы таблицы `concerts`
--
ALTER TABLE `concerts`
  ADD KEY `ID_tour` (`ID`),
  ADD KEY `ID_city` (`cities_ID`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `discographies`
--
ALTER TABLE `discographies`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `discographies_ID_uindex` (`ID`);

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `group_members`
--
ALTER TABLE `group_members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `musics`
--
ALTER TABLE `musics`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tours`
--
ALTER TABLE `tours`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `ID_country` FOREIGN KEY (`countries_ID`) REFERENCES `countries` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `concerts`
--
ALTER TABLE `concerts`
  ADD CONSTRAINT `ID_city` FOREIGN KEY (`cities_ID`) REFERENCES `cities` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ID_tour` FOREIGN KEY (`ID`) REFERENCES `tours` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
