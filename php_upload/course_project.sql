-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 07 2021 г., 21:41
-- Версия сервера: 8.0.19
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
-- Структура таблицы `aboutgroup`
--

CREATE TABLE `aboutgroup` (
  `Info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `founder` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_creation` year NOT NULL,
  `events_ID` int DEFAULT NULL
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
  `ID` int NOT NULL,
  `countries_ID` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `concerts`
--

CREATE TABLE `concerts` (
  `ID` int NOT NULL,
  `cities_ID` int NOT NULL,
  `stat_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `ID` int NOT NULL,
  `name` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `discographies`
--

CREATE TABLE `discographies` (
  `ID` int NOT NULL,
  `musics_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE `events` (
  `ID` int NOT NULL,
  `date_of_event` year DEFAULT NULL,
  `descr_of_event` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
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
  `ID` int NOT NULL,
  `full_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `biography` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles_ID` int NOT NULL,
  `career` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `group_members`
--

INSERT INTO `group_members` (`ID`, `full_name`, `biography`, `photo`, `roles_ID`, `career`) VALUES
(1, 'Джон Ландрум Купер', 'Джон Ландрум Купер - \n                        (англ. John Landrum Cooper, род. 7 апреля 1975) —                             американский музыкант, вокалист и басист номинированной на Грэмми христианской рок-группы Skillet c 1996.<br><br> Джон женат на Кори                           Купер(имя при рождении Korene Marie Pingitore) — клавишнице и ритм-гитаристке группы Skillet. У                            обоих имеются свадебные тату на пальцах в виде обручальных колец вместо традиционных драгоценностей.                       У них есть двое детей: Александрия (Alexandria) (родилась в 2002), и Ксавьер (Xavier) (родился в                           2005).<br><br> Джон — большой поклонник безалкогольного газированного напитка Dr Pepper, и его можно                           увидеть пьющим его в многочисленных подкастах Skillet. Это происходит так часто, что второй                                гитарист группы Бен Касика обращался к Джону как к профессиональному знатоку содовой в одном из                            подкастов. Джон так же утверждал что любит Ted’s Mexican в городе Оклахома-Сити. Он также любит                            коллекционировать постеры Человека-паука и Бэтмена. <br><br> Джон при игре на бас-гитаре никогда не                            использует медиатор. Он использует его при игре на акустической гитаре. Помимо баса и гитары он                            играет на клавишных.', 'John_Cooper.jpg', 1, '<h3>Seraph</h3>\r\n                                    Джон состоял в группе Seraph. Перед тем, как прекратить деятельность, этот коллектив выпустил 4                            песни.<br><br>\r\n               \r\n                                    <h3>Skillet</h3>\r\n                                    Ещё в детстве Джон принял христианское учение как единственно верное, именно это отразилось в ближайшем                    будущем на творчестве его группы. В ранние годы он стал осваивать гитару, пробуя писать первые                             песни.<br><br>\r\n               \r\n                                    Участие в первой команде он принял в возрасте 15 лет. Тогда Джон с друзьями основал группу                                 «Tribulation». Далее он стал играть в группе, основанной при церковном приходе. Решающую роль сыграл                       местный священник, который предложил ему собрать собственную группу и записать первое демо. Так                            собралась группа Skillet. Незадолго до этого, у Джона появился кумир — Курт Кобейн (Nirvana), в                            собранном составе он был самым молодым участником, но его этот факт нисколько не смутил. <br><br>\r\n               \r\n                                    Естественно, поначалу основной уклон шёл на стиль Grunge и Post Industrial. Grunge, как стиль стал                         постепенно вымирать, поэтому ребята стали искать новые альтернативные варианты. В то время у всех                          участников были разные музыкальные вкусы, поэтому альбом получился весьма разноплановым, но при записи                     второго альбома, все участники точно решили в каком направлении стоит работать.<br><br>\r\n               \r\n                                    Во время первого гастрольного тура в состав группы присоединилась жена Джона — Кори Купер.<br><br>\r\n               \r\n               \r\n                                    1998 год — стартует первый тур по городам Европы. 2000 год — группа получает различные номинации и                         награды и завоёвывает популярность, на группу обращает свое внимание СМИ.<br><br>\r\n               \r\n                                    Было заметно, что Skillet звучат на концертах гораздо лучше, чем на записях и все стали считать это                        особенностью группы. Это подтолкнуло Джона на запись концертного альбома. <br><br>\r\n               \r\n                                    Сегодня Skillet успешно прогрессирует (развивается) и дает много концертов. Они смогли занять свою нишу                    на мировой рок-музыкальной арене. На одном из концертов Джон играл на ударных, а Джен Леджер пела                          .<br><br>\r\n               \r\n                                    <h3>Другие проекты</h3>\r\n                                    Джон участвовал в качестве вокалиста в Hero: The Rock Opera. Согласно рецензии Купер не участвовал в                       туре рок-оперы (он только исполнил вокальную партию Рабби Каи в саундтреке), а на его месте был                            вокалист из Fusebox Билли Буханан.<br><br>\r\n               \r\n                                    Джон принимал участие в написании сингла группы Decyfer Down «Best I Can».<br><br>\r\n               \r\n                                    Купер также пел в альбоме Tobymac «Tonight» в заглавном треке.<br><br>\r\n               \r\n                                    Джон пел в песне группы We As Human — Zombie.<br><br>\r\n               \r\n                                    В 2018 выпустил сингл My Demons в новой созданной группе Fight The Fury. Группа создана в 2018 году                        совместно с Сетом Моррисоном.<br><br>\r\n               \r\n                                    26 октября 2018 года у группы Fight The Fury выпущен первый EP—альбом «Still Breathing», который достиг                    первой строчки в Billboard Heatseekers Albums.'),
(6, 'Кори Купер ', 'Ко́ри Ку́пер (англ. Korey Cooper; род. 21 июля 1972 года) — клавишница, гитаристка и бэк-вокалистка американской христианской рок-группы Skillet из города Кеноши. Её муж, Джон Купер, вокалист и бас-гитарист группы, также ещё и основатель коллектива. <br><br> Перед вступлением в группу Кори была членом группы Alkeme вместе с Лори Петерс, а также с другими людьми из её церкви и со своей сестрой.  Во время турне в защиту Hey You, I Love Your Soul к Skillet присоединилась жена Джона — Кори Купер. Кори родилась в христианской семье, и, подрастая, занялась музыкой, впоследствии став лидером прославления в церкви вместе с Джоном, где пастором был её отец. Ещё с юного возраста Кори любила слушать U2, Питера Габриела (Peter Gabriel), Сару МакЛахлан (Sarah McLachlan) и т.п.', 'Korey Cooper_1617727693.jpg', 3, 'Клавишница и бэк-вокалистка группы Skillet (1999 — текущее время)'),
(7, 'Джен Леджер', 'Дженнифер Кэрол Леджер (англ. Jennifer Carole Ledger; род. 8 декабря 1989) – британская барабанщица и бэк-вокалистка христианской хард-рок-группы Skillet. В возрасте 18 лет она стала их барабанщицей, после того, как их оставила предыдущая барабанщица, Лори Петерс.<br><br> Джен родилась в Ковентри, в Англии. В возрасте 13 лет она начала играть на барабанах. Обучалась в Bluecoat school в родном Ковентри, где получила среднее образование. Играла на ударных в местной группе и была финалистом конкурса «Ударник года в Соединённом Королевстве» 2006 года.<br>В 16 лет Леджер получила стипендию на обучение в американской системе курсов духовной музыки Living Light School of Worship и прошла курс игры на ударных в городе Кеноше, штат Висконсин.  Джен вошла в состав группы The Spark, но, поскольку место барабанщика было занято, она играла на бас-гитаре', 'Jen Ledger_1617819600.jpg', 4, '<b>Skillet</b> <br><br>Участники группы Skillet обнаружили Леджер, когда посещали церковь в городе, где она в то время жила. Они гастролировали в школе, где Джен обучалась, и попросили Леджер прослушаться на место барабанщика в группе. С 18 лет, начиная с «Comatose Tour», она является барабанщицей и бэк-вокалисткой Skillet, а иногда – вокалисткой. <br><br>  <b>Ledger</b> <br><br> Леджер заявила, что она и коллега по группе Кори Купер начали работать над материалом альбома своего собственного проекта примерно в 2012 году.<br> В марте 2018 года было объявлено, что её дебютный мини-альбом, Ledger планируется выпустить 13 апреля. Она заключила контракт с Atlantic Records и учреждённым супругами Джоном и Кори Купер, а также менеджером Закари Келмом лейблом Hear it Loud. Мини-альбом Ledger был спродюсирован Кори Купер вместе с соавтором песен и продюсером Сетом Моусли. Проект Ledger выступал на разогреве у Skillet во время Unleashed tour. 6 апреля Джен выпустила официальное аудио для песни «Not Dead Yet» на YouTube. <br> 8 октября 2018 года было объявлено, что Ledger будет выступать на Winter Jam Tour Spectacular 2019 вместе с Newsboys , Дэнни Гоки , Мандисой и Rend Collective. <br> 15 февраля 2019 года Леджер выпустила свой неальбомный сингл «Completely», за которым последовало музыкальное видео, опубликованное 27 марта. <br> 14 февраля 2020 года Леджер выпустила свой второй неальбомный сингл «My Arms», который в тот же день сопровождался лирическим видео.');

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `ID` int NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `musics`
--

CREATE TABLE `musics` (
  `ID` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sound` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `ID` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`ID`, `name`) VALUES
(1, 'вокалист и басист'),
(2, 'соло-гитара'),
(3, 'клавишные'),
(4, 'ударные'),
(5, 'соло-гитара'),
(6, 'скрипка'),
(7, 'ритм-гитара'),
(8, 'бэк-вокал ');

-- --------------------------------------------------------

--
-- Структура таблицы `tours`
--

CREATE TABLE `tours` (
  `ID` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `name_of_tour` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `group_members`
--
ALTER TABLE `group_members`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `musics`
--
ALTER TABLE `musics`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `tours`
--
ALTER TABLE `tours`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

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
