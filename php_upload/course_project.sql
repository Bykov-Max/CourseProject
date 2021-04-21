-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 19 2021 г., 19:49
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
-- Структура таблицы `about_group`
--

CREATE TABLE `about_group` (
  `info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `founder` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_creation` year NOT NULL,
  `history` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `about_group`
--

INSERT INTO `about_group` (`info`, `founder`, `date_of_creation`, `history`) VALUES
('          <b>Skillet</b> — американская христианская рок-группа из города Мемфис, штат Теннесси, основанная в 1996 году. На данный момент группой выпущено десять студийных альбомов, четыре EP и два концертных альбома.<br><br>Состав группы: Джон Купер (бас-гитара, вокал) и его жена Кори Купер (клавишные, ритм-гитара, бэк-вокал), а также Джен Леджер (ударные, бэк-вокал), Сет Моррисон (соло-гитара). За двадцать лет состав группы неоднократно менялся. Джон Купер — единственный участник группы первоначального состава.<br><br>Альбом Collide в 2005 году был номинирован на премию Грэмми в номинации «Лучший рок госпел альбом», и в 2007 Comatose был номинирован на премию Грэмми за «Лучший рок госпел альбом».          ', 'Джон Купер', 1996, '      <h3>Формирование и первые альбомы (1996—1999 годы)</h3>\r\nОснователи группы Skillet: бас-гитарист и вокалист Джон Купер и гитарист Кен Стюарт. Изначально они играли в двух разных христианских группах: Seraph и Urgent Cry. В 1996 году, по совету своего пастора, они вместе выступили на разогреве у группы Fold Zandura и записали несколько совместных демозаписей. Позже, в качестве барабанщика, к Джону и Кену присоединился Трей Макларкин. Примерно через месяц после того, как ребята стали играть вместе, ими заинтересовался лейбл ForeFront Records, и предложил им заключить контракт. Кен и Джон согласились на это предложение, так как давно хотели играть вместе. <br><br>\r\n\r\nНазвание Skillet (рус. Сковородка) для группы предложил тот же самый пастор, который и посоветовал Кену и Джону создать группу. Такое название должно было символизировать смесь различных музыкальных направлений воедино.<br><br>\r\n\r\nВ 1996 году вместе с продюсером Полом Эмберсолдом музыканты записали и выпустили свой дебютный одноименный альбом. Песни для альбома написали Стюарт и Купер. Диск был в целом положительно встречен музыкальными критиками, однако не имел коммерческого успеха: альбом не смог попасть ни в один из американских хит-парадов.<br><br>\r\n\r\nВ 1997 году Skillet начали запись своего второго альбома, Hey You, I Love Your Soul, который был выпущен в 1998 году. Этот альбом обозначил смену стиля группы — переход от гранжа к более спокойному альтернативному року. Во время турне в его поддержку к Skillet присоединилась жена Джона — Кори Купер, играющая на синтезаторе и электрогитаре.<br><br>\r\n\r\n<h3>Invincible, Alien Youth (1999—2003)</h3>\r\nВ 1999 году Кен покинул коллектив, чтобы больше времени проводить вместе с семьёй и поступить в колледж. С этого момента Купер становится главным автором песен для группы. Место Стюарта занял гитарист Кевин Халанд. Кори Купер решила остаться в Skillet на постоянной основе. 1 февраля 2000 года группа выпустила свой третий альбом, названный Invincible. Вследствие изменений состава группы изменился и музыкальный стиль: качество пост-индастриала в аудиозаписях стало более явным и современным, также в альбоме присутствовали элементы техно и электронной музыки.<br><br>\r\n\r\nПосле выхода Invincible Трей покинул коллектив. На его место приходит барабанщица Лори Петерс, которая до этого играла вместе с Кори в христианской группе Alkeme. Спустя семь месяцев после релиза Invincible Skillet выпустили свой первый концертный альбом Ardent Worship, который был записан в стиле богопочитание (worship music). В альбом вошли 10 записей группы с концерта на Chi Music Room в Мемфисе. В записи двух песен, «Safe With You» и «Shout to the Lord», приняли участие бывшие участники Skillet: МакЛаркин и Кен Стюартс. В 2001 из Skillet уходит Кевин Халанд. Через знакомство с Кори на место покинувшего коллектив Кевина, приходит Бен Касика.<br><br>\r\n\r\n28 августа 2001 года вышел четвёртый альбом группы, получивший название Alien Youth. Он занял 141 место в американском чарте Billboard 200, став тем самым первым альбомом Skillet, который попал в данный чарт. В 2002 и 2003 годах песни «Alien Youth» и «Vapor» были номинированы на премию GMA Dove Award.<br><br>\r\n\r\n<h3>Collide (2003—2005)</h3>\r\nС 2002 года Skillet собирали новый материал для записи следующего альбома. Первой песней стала «A Little More».<br><br>\r\n\r\nНад записью альбома с музыкантами группы поработал Пол Эмберсолд, с которым они трудились над дебютом, в знак признательности за то, что они помогли ему в работе с группой Stir на Capital Records, а также помогли группе Dropline.<br><br>\r\n\r\nПол сам предложил Skillet перебраться на мейнстрим-лейбл Lava. На момент предложения у Skillet не было достаточно средств на новую аудиостудию, но Пола это не волновало. Он просто сам хотел раскрутить группу, которую любил уже несколько лет.<br><br>\r\n\r\nАудиозапись Savior продержалась на первом месте в хит-параде R&R’s более двух месяцев, и даже на Rock Radio, CMJ и так далее.<br><br>\r\n\r\n25 мая вышел переизданный альбом Collide специально для мейнстрима, с дополнительным треком Open Wounds, который стартовал сразу же со второго места в хит-параде R&R.<br><br>\r\n\r\nПозже Skillet отправились в совместный тур с Saliva.<br><br>\r\n\r\nВесной 2004 года Джон получил премию Dove awards за участие в мюзикле Hero The Rock Opera, постановщиком которого был Эдди Дегармо. Джон для подготовки к своей роли долго работал со знаменитым Питом Стюартом (Pete Stewart, Grammatrain, The Accidental Experiment). Hero The Rock Opera — одно из главных событий в христианской музыке 2003 года.<br><br>\r\n\r\nВ марте 2004 года Skillet отправились хедлайнером в совместный тур с 12 Stones, Pillar, Big Dismal, Grits, и каждый из этих христианских коллективов, на тот момент, имел контракт с мейджор-лейблом. Collide стал одним из самых громких событий за последние несколько лет.<br><br>\r\n\r\n<h3>Comatose (2006—2008)</h3>\r\nНа одном из фестивалей в 2006 году группа прямо со сцены анонсировала свой новый альбом Comatose, который вышел 3 октября 2006 года. Первыми песнями стали «Rebirthing», «Whispers In The Dark» и «The Last Night». Вот что сказал об альбоме Джон Купер: «Как только я оказываюсь на сцене, для меня не важно, сколько человек пришло на концерт, я все равно отдам им все, что смогу. Я постараюсь сделать лучшее шоу, на которое только способен; сумасшедшее шоу. Я взорву их. Думаю, что нам удалось сохранить это чувство на альбоме».<br><br>\r\n\r\nВ январе 2008 года Skillet объявили, что Лори Петерс покидает коллектив. Как она сама прокомментировала: «Для меня пришло время начать новую главу в своей жизни». На место Лори в декабре 2007 приходит молодая барабанщица из Англии Джен Леджер (На момент прихода в Skillet Джен было всего 18 лет).<br><br>\r\n\r\n21 октября 2008 года группа выпускает Comatose Comes Alive на CD и DVD (концертная запись 9 мая 2008, Чаттануга, Теннесси).<br><br>\r\n\r\nВ 2009 году Comatose был присужден золотой статус.<br><br>\r\n\r\n<h3>Awake (2009—2011)</h3>\r\nАльбом «Awake» был выпущен 25 августа 2009 года. Он занял 2 место в хит-параде альбомов Billboard Top 200. В первую неделю релиза альбома было продано более 68 тысяч копий. На текущий момент данный альбом является самым популярным альбомом группы.<br><br>\r\n\r\nДжон Купер заявил, что «Hero» не была песней для этого альбома. Она была включена в альбом лишь в марте 2010 года. Примерно в это же время, альбом претерпел различные изменения. Так например, в сингле «Monster» добавили рычание, и были добавлены две дополнительные песни «Dead Inside» и «Would It Matter».<br><br>\r\n\r\nAwake имел значительную популярность не только у фанатов Skillet. Аудиозаписи «Hero» и «Monster» попадали в различные телепередачи, становились саундтреками для видео-игр. «Hero» использовалась при рекламе первого футбольного матча NFL 2009 сезона между Pittsburgh Steelers и Tennessee Titans[источник не указан 2694 дня]. Так же эта песня является саундтреком видеоигры WWE SmackDown vs. Raw 2010. «Monster» была использована в эпизоде «Jason: The Pretty-Boy Bully» на MTV в «Bully Beatdown». Также она была темой для «Королевская битва (2010)» и «Ад в Клетке».<br><br>\r\n\r\n12 ноября 2010 года был выпущен мини-альбом «iTunes Session». Песни альбомов «Awake» и «Comatose» зазвучали по-новому. 21 марта 2011 года группа выпустила альбом «Awake And Remixed — EP», в который вошли ремиксы таких песен, как «Hero», «Awake and Alive», «Monster» и «Don’t Wake Me».<br><br>\r\n\r\n16 февраля 2011 года Skillet объявили, что гитарист Бен Касика покидает группу. Последний запланированный концерт он провел 20 марта. На его место группа выбрала Джонатана Саласа в качестве нового гитариста. Но 9 апреля, через twitter Салас подтверждает, что покидает группу. В результате, Бен Касика временно возвращается в состав Skillet. 16 апреля в группу приходит новый музыкант Сет Моррисон. По словам Сета, играть в Skillet — это его мечта, которую он воплотил в жизнь.<br><br>\r\n\r\nТакже «Awake» выиграл премию «Top Christian Album» в Billboard Music Awards 2011, а песня «Awake and Alive» стала саундтреком к фильму «Трансформеры 3: Тёмная сторона Луны».<br><br>\r\n\r\n<h3>Rise (2012—2014)</h3>\r\n21 июня 2011 года Купер в своём Твиттере сообщил, что группа отрепетировала некоторые песни с ожидаемого альбома.<br><br>\r\n\r\n18 июля 2012 года в интервью для RadioU, Джон Купер сказал, что на момент данного интервью Skillet записали шестьдесят одну демо, и что запись альбома планируется на октябрь. 14 декабря в Твиттере Джона появилась новость о том, что они уже закончили запись альбома и собираются начать миксовать его.<br><br>\r\n\r\nВ интервью с CCM Magazine, Джон Купер описал свой альбом как «американские горки». Он сказал: \"Новый альбом будет содержать агрессивные треки в новом для них направлении. Песни будут содержать симфонику и немного изменений . Одна из песен названа «Salvation».<br><br>\r\n\r\nВ интервью Beaumont TX 26 января 2013 года Купер анонсировал альбом и сообщил, что он будет назван Rise и будет выпущен в июне 2013 года Первый сингл же с альбома будет выпущен в апреле 2013.<br><br>\r\n\r\n9 апреля был выпущен первый сингл с Rise, получивший название «Sick of It». Позднее за ним последовали «American Noise» (16 апреля), «Rise» (14 мая), «Not Gonna Die» (10 июня). На синглы с альбома также стали выходить клипы — 7 июня состоялась премьера клипа на «Sick of It», 3 июля — «American Noise», а 5 февраля (уже 2014 года) — «Not Gonna Die».<br><br>\r\n\r\n20 июня альбом уже был доступен для онлайн-покупки, на физических носителях он был выпущен всего на пять дней позднее.<br><br>\r\n\r\n13 октября 2014 года был выпущен эксклюзивный для европейских стран сборник Vital Signs.<br><br>\r\n\r\n16 февраля 2015 года состоялся анонс девятого студийного альбома, выход которого был запланирован на 2016 год.<br><br>\r\n\r\n<h3>Unleashed (2016—2019)</h3>\r\n20 мая 2016 года был выпущен сингл «Feel Invincible» из девятого студийного альбома «Unleashed». В этот же день был опубликован список песен нового альбома. 26 мая 2016 года был выпущен сингл «Stars», 29 июня 2016 состоялась премьера клипа на сингл «Feel Invincible», 8 июля 2016 года был выпущен сингл «Back From The Dead», 29 июля 2016 года — сингл «I Want To Live», 5 августа 2016 года были опубликованы все песни альбома на канале группы на сайте YouTube. 9 сентября 2016 состоялась премьера клипа на сингл «Stars», 14 марта 2017 года — премьера клипа на сингл «Back From The Dead». 17 ноября 2017 года была выпущена расширенная версия альбома Unleashed — Unleashed: Beyond.<br><br>\r\n\r\n<h3>Victorious (2019 — настоящее)</h3>\r\n7 мая 2019 года группа выпустила первый сингл «Legendary» с их десятого альбома Victorious, релиз которого был запланирован на Atlantic Records 2 августа 2019 года. 14 июня 2019 года группа выпустила ещё два новых сингла: «Save Me» и «Anchor». 27 июня был выпущен ещё один сингл «You Ain’t Ready». Выпуск альбома состоялся 2 августа 2019 года.<br><br>      ');

-- --------------------------------------------------------

--
-- Структура таблицы `albums`
--

CREATE TABLE `albums` (
  `ID` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `photoOfAlbum` varchar(100) NOT NULL,
  `dateOfCreation` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `albums`
--

INSERT INTO `albums` (`ID`, `name`, `photoOfAlbum`, `dateOfCreation`) VALUES
(1, 'Skillet', 'Skillet.jpeg', '29 октября 1996'),
(2, 'Hey You, I Love Your Soul', 'Hey_You,_I_Love_Your_Soul.jpeg', '21 апреля 1998'),
(3, 'Invincible', 'Invincible.jpeg', '1 февраля 2000'),
(4, 'Alien Youth', 'Alien_Youth.jpeg', '22 августа 2001'),
(5, 'Collide', 'Collide.jpg', '18 ноября 2003'),
(6, 'Comatose', 'Comatose.jpg', '3 октября 2006'),
(7, 'Awake', 'Awake.jpg', '25 августа 2009'),
(8, 'Rise', 'Rise.jpg', '25 июня 2013'),
(9, 'Unleashed', 'Unleashed.jpg', '5 августа 2016'),
(10, 'Victorious', 'Victorious.jpg', '2 августа 2019');

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
  `albums_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Джон Ландрум Купер', 'Джон Ландрум Купер - \n                        (англ. John Landrum Cooper, род. 7 апреля 1975) —                             американский музыкант, вокалист и басист номинированной на Грэмми христианской рок-группы Skillet c 1996.<br><br> Джон женат на Кори                           Купер(имя при рождении Korene Marie Pingitore) — клавишнице и ритм-гитаристке группы Skillet. У                            обоих имеются свадебные тату на пальцах в виде обручальных колец вместо традиционных драгоценностей.                       У них есть двое детей: Александрия (Alexandria) (родилась в 2002), и Ксавьер (Xavier) (родился в                           2005).<br><br> Джон — большой поклонник безалкогольного газированного напитка Dr Pepper, и его можно                           увидеть пьющим его в многочисленных подкастах Skillet. Это происходит так часто, что второй                                гитарист группы Бен Касика обращался к Джону как к профессиональному знатоку содовой в одном из                            подкастов. Джон так же утверждал что любит Ted’s Mexican в городе Оклахома-Сити. Он также любит                            коллекционировать постеры Человека-паука и Бэтмена. <br><br> Джон при игре на бас-гитаре никогда не                            использует медиатор. Он использует его при игре на акустической гитаре. Помимо баса и гитары он                            играет на клавишных.', 'John_Cooper.jpg', 1, '<h3>Seraph</h3> \r\n                                    Джон состоял в группе Seraph. Перед тем, как прекратить деятельность, этот коллектив выпустил 4                            песни.<br><br>\r\n               \r\n                                    <h3>Skillet</h3>\r\n                                    Ещё в детстве Джон принял христианское учение как единственно верное, именно это отразилось в ближайшем                    будущем на творчестве его группы. В ранние годы он стал осваивать гитару, пробуя писать первые                             песни.<br><br>\r\n               \r\n                                    Участие в первой команде он принял в возрасте 15 лет. Тогда Джон с друзьями основал группу                                 «Tribulation». Далее он стал играть в группе, основанной при церковном приходе. Решающую роль сыграл                       местный священник, который предложил ему собрать собственную группу и записать первое демо. Так                            собралась группа Skillet. Незадолго до этого, у Джона появился кумир — Курт Кобейн (Nirvana), в                            собранном составе он был самым молодым участником, но его этот факт нисколько не смутил. <br><br>\r\n               \r\n                                    Естественно, поначалу основной уклон шёл на стиль Grunge и Post Industrial. Grunge, как стиль стал                         постепенно вымирать, поэтому ребята стали искать новые альтернативные варианты. В то время у всех                          участников были разные музыкальные вкусы, поэтому альбом получился весьма разноплановым, но при записи                     второго альбома, все участники точно решили в каком направлении стоит работать.<br><br>\r\n               \r\n                                    Во время первого гастрольного тура в состав группы присоединилась жена Джона — Кори Купер.<br><br>\r\n               \r\n               \r\n                                    1998 год — стартует первый тур по городам Европы. 2000 год — группа получает различные номинации и                         награды и завоёвывает популярность, на группу обращает свое внимание СМИ.<br><br>\r\n               \r\n                                    Было заметно, что Skillet звучат на концертах гораздо лучше, чем на записях и все стали считать это                        особенностью группы. Это подтолкнуло Джона на запись концертного альбома. <br><br>\r\n               \r\n                                    Сегодня Skillet успешно прогрессирует (развивается) и дает много концертов. Они смогли занять свою нишу                    на мировой рок-музыкальной арене. На одном из концертов Джон играл на ударных, а Джен Леджер пела                          .<br><br>\r\n               \r\n                                    <h3>Другие проекты</h3>\r\n                                    Джон участвовал в качестве вокалиста в Hero: The Rock Opera. Согласно рецензии Купер не участвовал в                       туре рок-оперы (он только исполнил вокальную партию Рабби Каи в саундтреке), а на его месте был                            вокалист из Fusebox Билли Буханан.<br><br>\r\n               \r\n                                    Джон принимал участие в написании сингла группы Decyfer Down «Best I Can».<br><br>\r\n               \r\n                                    Купер также пел в альбоме Tobymac «Tonight» в заглавном треке.<br><br>\r\n               \r\n                                    Джон пел в песне группы We As Human — Zombie.<br><br>\r\n               \r\n                                    В 2018 выпустил сингл My Demons в новой созданной группе Fight The Fury. Группа создана в 2018 году                        совместно с Сетом Моррисоном.<br><br>\r\n               \r\n                                    26 октября 2018 года у группы Fight The Fury выпущен первый EP—альбом «Still Breathing», который достиг                    первой строчки в Billboard Heatseekers Albums.'),
(2, 'Кори Купер ', 'Ко́ри Ку́пер (англ. Korey Cooper; род. 21 июля 1972 года) — клавишница, гитаристка и бэк-вокалистка американской христианской рок-группы Skillet из города Кеноши. Её муж, Джон Купер, вокалист и бас-гитарист группы, также ещё и основатель коллектива. <br><br> Перед вступлением в группу Кори была членом группы Alkeme вместе с Лори Петерс, а также с другими людьми из её церкви и со своей сестрой.  Во время турне в защиту Hey You, I Love Your Soul к Skillet присоединилась жена Джона — Кори Купер. Кори родилась в христианской семье, и, подрастая, занялась музыкой, впоследствии став лидером прославления в церкви вместе с Джоном, где пастором был её отец. Ещё с юного возраста Кори любила слушать U2, Питера Габриела (Peter Gabriel), Сару МакЛахлан (Sarah McLachlan) и т.п.', 'Korey Cooper_1617727693.jpg', 3, 'Клавишница и бэк-вокалистка группы Skillet (1999 — текущее время)'),
(3, 'Джен Леджер', 'Дженнифер Кэрол Леджер (англ. Jennifer Carole Ledger; род. 8 декабря 1989) – британская барабанщица и бэк-вокалистка христианской хард-рок-группы Skillet. В возрасте 18 лет она стала их барабанщицей, после того, как их оставила предыдущая барабанщица, Лори Петерс.<br><br> Джен родилась в Ковентри, в Англии. В возрасте 13 лет она начала играть на барабанах. Обучалась в Bluecoat school в родном Ковентри, где получила среднее образование. Играла на ударных в местной группе и была финалистом конкурса «Ударник года в Соединённом Королевстве» 2006 года.<br>В 16 лет Леджер получила стипендию на обучение в американской системе курсов духовной музыки Living Light School of Worship и прошла курс игры на ударных в городе Кеноше, штат Висконсин.  Джен вошла в состав группы The Spark, но, поскольку место барабанщика было занято, она играла на бас-гитаре', 'Jen Ledger_1617819600.jpg', 4, '<b>Skillet</b> <br><br>Участники группы Skillet обнаружили Леджер, когда посещали церковь в городе, где она в то время жила. Они гастролировали в школе, где Джен обучалась, и попросили Леджер прослушаться на место барабанщика в группе. С 18 лет, начиная с «Comatose Tour», она является барабанщицей и бэк-вокалисткой Skillet, а иногда – вокалисткой. <br><br>  <b>Ledger</b> <br><br> Леджер заявила, что она и коллега по группе Кори Купер начали работать над материалом альбома своего собственного проекта примерно в 2012 году.<br> В марте 2018 года было объявлено, что её дебютный мини-альбом, Ledger планируется выпустить 13 апреля. Она заключила контракт с Atlantic Records и учреждённым супругами Джоном и Кори Купер, а также менеджером Закари Келмом лейблом Hear it Loud. Мини-альбом Ledger был спродюсирован Кори Купер вместе с соавтором песен и продюсером Сетом Моусли. Проект Ledger выступал на разогреве у Skillet во время Unleashed tour. 6 апреля Джен выпустила официальное аудио для песни «Not Dead Yet» на YouTube. <br> 8 октября 2018 года было объявлено, что Ledger будет выступать на Winter Jam Tour Spectacular 2019 вместе с Newsboys , Дэнни Гоки , Мандисой и Rend Collective. <br> 15 февраля 2019 года Леджер выпустила свой неальбомный сингл «Completely», за которым последовало музыкальное видео, опубликованное 27 марта. <br> 14 февраля 2020 года Леджер выпустила свой второй неальбомный сингл «My Arms», который в тот же день сопровождался лирическим видео.'),
(8, 'Сет Моррисон', 'Джейкоб Сет Моррисон (родился 19 февраля, 1988) — соло-гитарист американской христианской рок-группы Skillet. Сет официально присоединился к группе с 1 июня 2012 года. Женат на Хилари Моррисон (Ноел).', 'Set Morrison_1618504248.jpg', 2, 'Выступать Сет начал в юном возрасте, а именно в 13 лет с группой 3PO. В 2004 году у него появилась возможность отправиться в Европу с группой Justifide, а также пару раз засветившись на сцене в США, пока группа окончательно не расформировалась. Другие его гастроли включают Haley McGuire, Our Heart’s Hero, The Crabb Family, Crabb Revival & и местный проект Everlasting Fire. На данный момент Моррисон является соло-гитаристом группы Skillet (официально с 1 июня 2012 года). По словам Сета, играть в Skillet - это его мечта, которую он воплотил в жизнь.');

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
  `nameOfText` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `albums_ID` int DEFAULT NULL,
  `video` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sound` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `musics`
--

INSERT INTO `musics` (`ID`, `nameOfText`, `text`, `albums_ID`, `video`, `sound`) VALUES
(1, 'I Can', 'Looking on the sad times, the guilt and all the shame <br>\r\nI have learned to submit my existing hurts and pains <br>\r\nAll the grief I\'ve learned to set aside <br>\r\n\'Cause I am, I am, I am, I am... <br><br>\r\n\r\n[Припев:]<br>\r\nFeeling under rooted, feeling undermined <br>\r\nCan this grace of God cover me this time? <br>\r\nAnd when I feel the pain I know why I feel strange <br> \r\nAnd when I hear the rooster crow I am ashamed <br><br>\r\n\r\nJesus on the cross and this cross upon my back <br>\r\nI have learned to submit then I whine about my lie <br> \r\nSometimes I drop my cross deserve a little rest <br>\r\nThat\'s when I run to You and I nail Your feet and Your wrist <br><br>\r\n\r\n[Припев:]<br>\r\nFeeling under rooted, feeling undermined <br>\r\nCan this grace of God cover me this time? <br>\r\nAnd when I feel the pain I know why I feel strange <br>\r\nAnd when I hear the rooster crow I am ashamed <br><br>\r\n\r\nAnd when I feel the pain I know why I feel strange <br>\r\nAnd when I hear the rooster crow I am ashamed <br> \r\nAnd do You really love my soul, even after I hated You? <br>\r\nAnd do You really know my name, can I really come to You? <br><br>\r\n\r\nAre you really more faithful than <br>\r\nThe changing of the seasons and the morning sun? <br>\r\nAnd do You really know my name, can I really come to You? <br>\r\nI can, I can, I can, I can, I can, I can, I can, I can <br>\r\nI can, I can, I can, I can, I can, I can, I can <br>\r\nI don\'t care if the rooster crows, if the rooster crows <br>\r\nIf the rooster crows, if the rooster crows, I can <br>', 1, 'https://www.youtube.com/embed/4iqhCgbLdqw', 'https://music.yandex.ru/iframe/#track/24426672/489742'),
(2, 'Gasoline', '<pre>\r\nI am sitting with my heart out on the table\r\nI am doing a face to face with God\r\nHe picked up my heat and said\r\nWhat you want me to do with this?\r\nI just blinked my eyes no smile, no laugh, no tears\r\nNo shrugging my shoulders\r\nIt crossed my mind, Yeah I got an idea\r\nYou could take my heart and put it in a padlocked box\r\nWhat if they grab too hard or smash it, or throw it down\r\nI am scared of being hurt, I just want to live, live a happy life!\r\n\r\n[Припев:]\r\nYou want to, you want to\r\nSoak my heart in gasoline\r\nLight a match and consume me\r\nSoak my pride in gasoline all of you and none of me\r\n\r\n\r\nI was reminded my heart reeks of gasoline\r\nIt bears the mark of a slave committed to life\r\nAnyone who wants it\r\nWill have to grab it from a real big God try to touch me\r\nYou will be consumed, you¬ will be consumed I want to, I want to\r\n\r\n[Припев:]\r\nI am sitting here with my heart out on the table\r\nNext to a bloody mess that was once a man\'s heart\r\nI looked at God and said, What do you want me to do with this?\r\nHe said, Already done, already done, that heart was Jesus \r\n</pre>', 1, 'https://www.youtube.com/embed/bURrpxHSdT0', 'https://music.yandex.ru/iframe/#track/24426673/489742'),
(3, 'Saturn', '<pre>\r\nI ask him\r\nWhen will I\r\nBe free\r\nHe said I am asking Him\r\nWhen will I change\r\nHe said\r\nNo matter now\r\nNo matter now\r\n\r\nSaturn has a ring around it\r\nYou can never see it with your eyes\r\nSaturn has a ring around it\r\nMany moons know this to be true\r\n\r\nYou ask him\r\nHow can you\r\nBe real\r\nHe Said you\'ll be\r\nKnowing him\r\nHow you do\r\nNow he says\r\nRest in this\r\nRest in this\r\n\r\nSaturn has a ring around it\r\nYou can never see it with your eyes\r\nSaturn has a ring around it\r\nMany moons know this to be true\r\nHeaven has a ring around it\r\nThe angels sing a song over you\r\nHeaven has a ring around you\r\nIf you don\'t see it know that it\'s true \r\n</pre>', 1, 'https://www.youtube.com/embed/N_Dc3a4Ry-0', 'https://music.yandex.ru/iframe/#track/24426674/489742'),
(4, 'My beautifull robe', '<pre>\r\nI want pleasure in Your sight\r\nI want to subscribe to Your delight\r\nSo hold on and see what I do for You\r\nOh by the way, did you see me dressed in my beautiful robe?\r\nMy head was bleeding so red\r\nBut of all the thorns in my crown, the roses blended\r\nInstead with my beautiful robe carries on, I\'ll carry on\r\nI cut down a tree said, \"Man would you look at me\"\r\nI stuck my head in a thorn bush\r\nMan I was deceived\r\nOh my brother, your hands are full of sores\r\nИсточник teksty-pesenok.ru\r\nBut God bless you brother, my nails are longer than yours\r\nI was crucified with Christ but how come I\'m not dead\r\nGod gave me a cross but I made my own instead\r\nMy beautiful cross carries on, I\'ll carry on\r\nI cut down a tree\r\nI nailed myself to the wood\r\nI screamed in agony\r\n\'Cause the glory wasn\'t so good\r\nI fell to my knees and I remember\r\nThe words of God pierced so hard, \"Your righteousness is like filthy rags\"\r\nAnd I fell to my knees and said, \"God my filthy robe\"\r\n</pre>', 1, 'https://www.youtube.com/embed/yOgqmj6oE84', 'https://music.yandex.ru/iframe/#track/24426675/489742'),
(5, 'Promise Blender', '<pre>\r\nWhen I was a young boy\r\nSaw a vision of your face\r\nI made my first promise to you\r\nYeah ya know it took some time\r\nBut I love you now I realize\r\n\r\nI am the promise maker\r\nI am the promise breaker\r\n\r\nOn the road to faithfulness\r\nI sometimes forget your name\r\nBut I can still see your face\r\n\r\nAnd time after time\r\nI hear you calling my name\r\nI gotta name for me\r\nI gotta name for me\r\nI gotta name for me\r\nI gotta name\r\n\r\nI am the promise maker\r\nI am the promise breaker\r\n\r\nOn my knees for the last time\r\nI could rip my heart out everyday\r\nI made my last promise to you\r\n\r\nYeah I could cry I could cry\r\nA million tears a day\r\nAnd all I would hear you\r\nAll I would hear you say\r\n\r\nIs you are the promise taker\r\nYou are the promise taker\r\nYou are the promise taker\r\nPut them in your promise blender\r\n\r\nYou took me\r\nAnd you own me\r\nAnd you bought me\r\nand you love me\r\n\r\nPromise keeper, keeper, keeper \r\n</pre>', 1, 'https://www.youtube.com/embed/FOl7SwfAwz0', 'https://music.yandex.ru/iframe/#track/24426676/489742'),
(6, 'Paint', '<pre>\r\nWe take a walk in the garden\r\nWe share the fruits of life\r\nWe live beneath this canopy\r\nWhy did we take that bite?\r\nWe cover up our shame\r\nWe walk in black and white\r\nWe turn this ground for hunger\r\nWhy did we take that bite?\r\nPaint me with an endless sunrise, Paint me\r\nPaint me open eyes, Paint me with the color of love\r\nYou took a walk on the planet\r\nYou gave us shad and light\r\nYou create mood and substance\r\nHow can I can take a bite?\r\nPaint me with an endless sunrise, Paint me\r\nPaint me open eyes, Paint me with the color of love\r\nPaint me, mark me up,\r\nIn these frail, dot-to-dot lines\r\nColor me from one red stream\r\nFrom which all others flow\r\nTake my black and white and yellow\r\nBrown and pink and pain and sorrow\r\nTake my black and white and yellow\r\nBrown and pink and hate and sorrow\r\nPaint me with an endless sunrise, Paint me\r\nPaint me open eyes, Paint me with the color of love \r\n</pre>', 1, 'https://www.youtube.com/embed/OZBLZdHmVVE', 'https://music.yandex.ru/iframe/#track/24426677/489742'),
(7, 'Safe with You', '<pre>\r\nLearning inside\r\nI will be safe with You tonight\r\nYou cause the smile\r\nAnd the teardrops in my eyes\r\nLocked inside Your every movement\r\nWill I stand or will I fall?\r\nTrapped inside Your walls of glory\r\nI am just as the dead leaves fall, yup\r\nChaos in my head\r\nThe whole universe is at rest\r\nWhen I\'m in Your arms, Jesus\r\nWhen I feel the best\r\nLocked inside Your creative being\r\nWorld abound in Your unfailing truth\r\nAttacked with power by ferocious love\r\nSalvation alone belongs to You\r\nLifting up my voice\r\nTo the God who really sees\r\nThe God who is consumed\r\nWith loving thoughts of me\r\nThe screaming winds\r\nAnd the crashing of the oceans\r\nShifting sand and the changing of seasons\r\nAs I stand in awe and wonder\r\nNothin\' in the world prepared me for You!\r\nNever prepared me for You!\r\nSafe with You\r\nI\'ll be safe with You\r\nI\'ll be safe with You\r\nYeah-yeah\r\nI\'ll be safe with You\r\nJesus, Jesus, I\'ll be safe with You\r\nJesus, Jesus, I\'ll be safe with You\r\nYeah, yeah-yeah\r\n</pre>', 1, 'https://www.youtube.com/embed/HADzLnaTTaI', 'https://music.yandex.ru/iframe/#track/24426678/489742'),
(8, 'You thought', '<pre> \r\n[Verse 1]\r\nYou try to answer slow\r\nYou put your head down low\r\nC¬ome on take your time\r\nTry to choose the most believable lie\r\nYou try to walk away\r\nAnd tell me everything\'s okay\r\nYou think you a¬re are saved by words\r\nBut you are drowning in the absurd\r\n\r\n[Chorus]\r\nBut to me it is no big surprise\r\nYou thought I never saw your eyes\r\n\r\n[Verse 2]\r\nDeparted with a smile\r\nJust like walking down the isle\r\nYou shook the preacher\'s hand\r\nBut your smile cannot hide your sin\r\nYour eyes tell me what you feel\r\nYou eyes tell me what is real\r\nNobody\'s perfect is your prediction\r\nYour life is proving your conviction!\r\n\r\n[Chorus]\r\nTo me it is no big surprise\r\nI saw the emptiness in your eyes\r\n</pre>', 1, 'https://www.youtube.com/embed/Qea9spulx44', 'https://music.yandex.ru/iframe/#track/24426679/489742'),
(9, 'Boundaries', '<pre>\r\n[Куплет 1]\r\nI stand here closed and open\r\nPraying for the summer rains\r\nReaching in to pull back the curtains\r\nRuling in this desolate land\r\n\r\n[Припев]\r\nI will let me go\r\nMy walls melt away\r\nYou have no boundaries\r\nYou cross my borders\r\nYou have no boundaries\r\nYou crash my borders\r\n\r\n[Куплет 2]\r\nI lie here clothed and naked\r\nDam bursts to cool ocean waves\r\nBlack water cleans the highway\r\nResting in the washing away\r\n\r\n[Припев]\r\nI will let me go\r\nMy walls melt away\r\nYou have no boundaries\r\nYou cross my borders\r\nYou have no boundaries\r\nYou crash my borders\r\n\r\n[Куплет 3]\r\nYou are more than all that is outside of me\r\nYou are more than that which is inside of me\r\n\r\n[Припев]\r\nYou have no boundaries\r\nI have no borders from you\r\nYou have no boundaries\r\nI have no borders\r\n</pre> ', 1, 'https://www.youtube.com/embed/jPOLQRkVQ_c', 'https://music.yandex.ru/iframe/#track/24426680/489742'),
(10, 'Splinter', '<pre>\r\n[Куплет 1]\r\nHere I lie again inside this broken body\r\nWrestle against the tree, my muscles aching\r\nTo get up now is death, to die is to really live\r\nFlesh is restless, twisting, spasms in my back increasing\r\n\r\n[Припев]\r\nSplinter me, splinter me\r\nMy heart, my head\r\nSplinter me\r\n\r\n[Куплет 2]\r\nHere I think again to try to solve this puzzle\r\nWhat is not yours I do not want, my mind aching\r\nTo reconstruct my thoughts or let it blow away\r\nYou are all-knowing, changing, yeah you arekilling me\r\n\r\n[Припев]\r\nSplinter me, splinter me\r\nMy heart, my head\r\nSplinter me\r\n\r\n[Куплет 3]\r\nJesus whispered softly, Jesus shouted it out\r\nHis kingdom body coming\r\nBut we nail him up and hate each other\r\n\r\n\r\n[Припев]\r\nSplinter me, splinter me\r\nMy broken body\r\nSplinter me\r\nSplinter me, splinter me\r\nMy broken body\r\nSplinter me\r\n</pre> ', 1, 'https://www.youtube.com/embed/8IoHU_zG3mw', 'https://music.yandex.ru/iframe/#track/24426681/489742'),
(11, 'Hey You, I love your soul', '<pre>\r\n[Куплет 1]\r\nAm I a man who knows how to love\r\nWhen you hate what you fear the most\r\nI will wash your feet as you spit in my face\r\nHey you, I love your soul\r\nI am going love you when you hate\r\nYou can\'t outrun or escape this liquid\r\nMy life poured out like water\r\nI am gonna to drown you with maddening forgiveness\r\nHey you, I love your soul\r\n\r\n[Припев]\r\nI cannot depend on your hate to define my love\r\nAm I strong enough to love your soul\r\n\r\n[Куплет 2]\r\nLove doesn\'t care to receive what it gives\r\nBleeding compassion to extreme\r\nLove stretches out to die for its enemies\r\nHey you, I love your soul\r\n\r\n[Припев]\r\nI can\'t depend on your hate to define my love\r\nAm I strong enough to love your soul\r\nNo bounds on the deep, no bounds on the wide\r\nAm I deep enough to love your soul\r\n\r\n\r\n[Бридж]\r\nGod I want to swim in the deep of You\r\nGod in You I am strong enough\r\nStrong enough, strong enough\r\n\r\n[Припев]\r\nI can\'t depend on your hate to define my love\r\nAm I strong enough to love your soul\r\nNo bounds on the deep, no bounds on the wide\r\nAm I deep enough to love your soul\r\n</pre>', 2, 'https://www.youtube.com/embed/Ld7fB3HmYHw', 'https://music.yandex.ru/iframe/#track/24426660/489741'),
(12, 'Deeper', '<pre>\r\n[Куплет 1]\r\nJesus pure truth\r\nRecollect my mind (ya-da-da-da)\r\nHurt that I push down\r\nShows my anger why\r\nI can\'t go underground\r\n\r\n[Припев]\r\nEverything I bury gets exhumed\r\nI got to dig deeper\r\nAnd all the things I bury gets exhumed\r\nI got to dig deeper\r\n\r\n[Куплет 2]\r\nI must get used\r\nTo strength out of weak (ya-di-da-da-da)\r\nBecoming by what I give\r\nNot by what I can keep\r\nExposed before You\r\n\r\n[Припев]\r\nEverything I bury gets exhumed\r\nI got to dig deeper\r\nAnd all the things I bury gets exhumed\r\nI got to dig deeper\r\n\r\n\r\n[Заключение]\r\nHow can I hide deeper\r\nHow I fly deeper in You\r\nHow can I hide deeper\r\nHow I fly deeper in You\r\nHow can I hide deeper\r\nHow I fly deeper in you\r\nHow can I hide deeper\r\nHow I fly deeper in you\r\nHow can I hide deeper\r\nHow I fly deeper in you\r\nAnd everything I bury gets exhumed\r\nAnd all the things I bury gets exhumed\r\n</pre>', 2, 'https://www.youtube.com/embed/UZc0tFuai_w', 'https://music.yandex.ru/iframe/#track/24426661/489741'),
(13, 'Locked in a Cage', '<pre>\r\n[Куплет 1]\r\nI wanna be locked in a cage\r\nI wanna be strapped in a chair, hey hey\r\nI wanna be where you are\r\nIf my insanity comes, hey hey hey\r\nWrapped up inside your\r\nI want to break my legs\r\nIn case of thought to escape, hey hey\r\nKeep the hammer out of my reach\r\nIf my pounding impulse comes, hey hey hey\r\nWrapped up inside Your arms\r\nLocked up inside You\r\n\r\n[Припев]\r\nHold me down cause I want to know You\r\nYou bring calm to my rage\r\nYou are life and I am thirsting for You\r\nHold me, hold me, locked in a cage\r\n\r\n[Куплет 2]\r\nI love to be caught in you\r\nI wanna be trapped in Your arms, hey hey\r\nYour cage is rest to my bones\r\nYour cage is peace to my soul, hey hey hey\r\nWrapped up inside Your arms\r\nLocked up inside You\r\n\r\n\r\n[Припев]\r\nHold me down cause I want to know You\r\nYou bring calm to my rage\r\nYou are life and I\'m thirsting for You\r\nHold me, hold me, locked in a cage\r\n\r\n[Бридж]\r\nWrapped up inside Your\r\nWrapped up inside Your arms\r\nI\'m inside Your arms\r\nI\'m inside Your arms\r\n\r\n[Припев]\r\nHold me down cause I want to know You\r\nYou bring calm to my rage\r\nYou are life and I\'m thirsting for You\r\nHold me, hold me, locked in a cage\r\nHold me down cause I want to know You\r\nYou bring calm to my rage\r\nYou are life and I\'m thirsting for You\r\nHold me, hold me, locked in a cage\r\n\r\n[Заключение]\r\nI\'m locked, I\'m locked\r\nI\'m locked, I\'m locked\r\nI\'m locked, I\'m locked\r\nI\'m locked\r\n</pre>', 2, 'https://www.youtube.com/embed/v7Lv0cwpiAk', 'https://music.yandex.ru/iframe/#track/24426662/489741'),
(14, 'Your Love (Keeps Me Alive)', '<pre>\r\n[Куплет 1]\r\nI walk through the desert, hide from the sun\r\nAll that I desire is You\r\nOccasional water cools my thirst\r\nAll that I desire is You\r\nI don\'t want to live dying on the inside\r\n\r\n[Припев 2]\r\nI breathe so softly, don\'t feel too content\r\nApathy whispers and makes me think\r\nAm I just another man whose time went fast\r\nWhat does it take to be called great\r\nI don\'t want to live dying on the inside\r\n\r\n[Куплет]\r\nBecause Your love is better than life\r\nBecause Your voice heals me inside\r\nBecause my soul is satisfied\r\nBecause Your love keeps me alive\r\n\r\n[Куплет 3]\r\nI cannot be silent, I am crying out\r\nMy soul is cold, my heart is numb\r\nI break from my old self and step into You\r\nYou complete what was never enough\r\nI don\'t want to live dying on the inside\r\n\r\n[Припев]\r\nBecause Your love is better than life\r\nBecause Your voice heals me inside\r\nBecause my soul is satisfied\r\nBecause Your love keeps me alive\r\n\r\n[Бридж]\r\nKeeps me alive with the strength to speak\r\nThis generation is dying to see\r\nWho You are and how You free\r\nCome Lord Jesus come\r\n\r\n[Куплет 3]\r\nI have seen lots of dead men walking around\r\nMake my heart, make my heart alive\r\n\r\n[Припев]\r\nBecause Your love is better than life\r\nBecause Your voice heals me inside\r\nBecause my soul is satisfied\r\nBecause Your love keeps me alive\r\nBecause Your love is better than life\r\nBecause Your voice heals me inside\r\nBecause my soul is satisfied\r\nBecause Your love keeps me alive\r\nKeeps me alive\r\nKeeps me alive\r\n</pre>', 2, 'https://www.youtube.com/embed/vtX31bEliXk', 'https://music.yandex.ru/iframe/#track/24426663/489741'),
(15, 'More faithful', '<pre>\r\n[Куплет 1]\r\nAll the things my feet thought to be firm\r\nAre falling with urgency\r\nTearing back my false sense of security\r\nSome say things change, nothing stays the same\r\nBut the sweetness in my ears\r\nSafe in your arms speak the words I love to hear\r\n\r\n[Припев]\r\nYou have been more faithful than the morning sun\r\nYou have been more faithful than knowing the night will come\r\nYou have been more faithful than the changing of seasons\r\n\r\n[Куплет 2]\r\nAll things I thought that I used to know\r\nAre falling down again\r\nOur disillusionment is how we grow\r\nSome say things change, nothing stays the same\r\nIn a world of inconsistency\r\nWhen everything\'s a lie\r\nWhat can cause my heart to believe\r\n\r\n[Припев]\r\nYou have been more faithful than the morning sun\r\nYou have been more faithful than knowing the night will come\r\nYou have been more faithful than the changing of seasons\r\n\r\n\r\n\r\n[Припев]\r\nYou have been more faithful than the morning sun\r\nYou have been more faithful than knowing the night will come\r\nYou have been more faithful than the morning sun\r\nYou have been more faithful than knowing the night will come\r\nYou have been more faithful than the changing of seasons\r\nYou have been more faithful than the morning sun\r\nYou have been more faithful than knowing the night will come\r\nYou have been more faithful than the changing of seasons\r\n</pre>', 2, 'https://www.youtube.com/embed/ATEfPkhj7Zw', 'https://music.yandex.ru/iframe/#track/24426664/489741'),
(16, 'Pour', '<pre>\r\n[Куплет 1]\r\nEverything I am is resting in my jar\r\nHolding nothing back from entering my jar\r\nMy hopes and dreams I put in my jar\r\nYou find my jar as beautiful\r\n\r\n[Куплет 2]\r\nDeep the sorrow and pain I put in my jar\r\nTimes seem so hard I put them in my jar\r\nMy violence burns You have consumed my heart\r\nDesperation ends with desertion in\r\n\r\n[Пред-припев]\r\nA moment of intimacy my life explained and unpronounced\r\nFalling at Your feet I kneel perpetually\r\nStaring at my jar I proceed to pour it out\r\nThe loss and gain goes on and on and on\r\n\r\n[Припев]\r\nYou are in the blood and you\'re all around\r\nBeauty speaks without a sound\r\nRaging flood, peace I need\r\nDown, pour down\r\n\r\n[Куплет 2]\r\nAll my fears and needs I put in my jar\r\nI\'d give everything to know who You are\r\nThe open space around Your feet\r\nBecomes my resting place, my destiny\r\n\r\n\r\n\r\n[Предприпев]\r\nStaring at my jar I proceed to pour it out\r\nThe loss and gain goes on and on and on\r\n\r\n[Припев]\r\nYou\'re in the blood and you\'re all around\r\nBeauty speaks without a sound\r\nRaging flood, peace I need\r\nDown, pour down\r\nYou\'re in the blood and you\'re all around\r\nBeauty speaks without a sound\r\nRaging flood, peace I need\r\nDown, pour down\r\n\r\n[Бридж]\r\nAnd all You are, is all I need\r\nYou are all I need\r\n\r\n[Предприпев]\r\nA moment of intimacy my life explained and unpronounced\r\nFalling at Your feet I kneel perpetually\r\nStaring at my jar I proceed to pour it out\r\nThe loss and gain goes on and on and on\r\n\r\n[Припев]\r\nYou\'re in the blood and you\'re all around\r\nBeauty speaks without a sound\r\nRaging flood, peace I need\r\nDown, pour down\r\nYou\'re in the blood and you\'re all around\r\nBeauty speaks without a sound\r\nRaging flood, peace I need\r\nDown, pour down\r\nYou\'re in my blood, in my blood\r\nIn my blood, in my blood\r\nIn my blood, in my blood\r\nIn my blood, in my blood\r\n\r\n\r\n[Заключение]\r\nAnd all You are, is all I need\r\nYes all I need, yes all I need\r\n</pre>', 2, 'https://www.youtube.com/embed/PjKFebhpLDQ', 'https://music.yandex.ru/iframe/#track/24426665/489741'),
(17, 'Suspended in You', '<pre>\r\n[Куплет 1]\r\nThought You\'d put me in a box\r\nThought You\'d push me into a clump\r\nMake me smaller than I was before\r\nThough You would press me and mold me\r\nTook a step and felt the pressure on\r\nExploding me into open space\r\n\r\n[Припев]\r\nNow You pull me apart\r\nI\'m suspended in You\r\nStretch me bigger\r\nReveal Yourself to be\r\nThe frame that holds me tightly in center\r\nPulled into suspension in the middle of You\r\n\r\n[Verse 2]\r\nLet what was hidden be revealed\r\nWalls of fear broken wide\r\nInfinite Jesus spread all in You\r\nTowering over the horizons\r\nStretching to the horizons\r\nGushing with surrender in Your hands\r\n\r\n[Припев]\r\nNow You pull me apart\r\nI\'m suspended in You\r\nStretch me bigger\r\nReveal Yourself to be\r\nThe frame that holds me tightly in center\r\nPulled into suspension in the middle of You\r\n\r\n[Припев]\r\nNow You pull me apart\r\nI\'m suspended in You\r\nStretch me bigger\r\nReveal Yourself to be\r\nThe frame that holds me tightly in center\r\nPulled into suspension in the middle of You\r\n\r\n[Припев]\r\nNow You pull me apart\r\nI\'m suspended in You\r\nStretch me bigger\r\nReveal Yourself to be\r\nThe frame that holds me tightly in center\r\nPulled into suspension in the middle of You\r\n\r\n[Припев]\r\nNow You pull me apart\r\nI\'m suspended in You\r\nStretch me bigger\r\nReveal Yourself to be\r\nThe frame that holds me tightly in center\r\nPulled into suspension in the middle of You\r\n\r\n[Заключение]\r\nNow you pull me apart\r\nStretch me bigger\r\nFrame that holds me tightly in center\r\nPulled into suspension in the middle of You\r\n</pre>', 2, 'https://www.youtube.com/embed/c2U8pdW1FnY', 'https://music.yandex.ru/iframe/#track/24426666/489741'),
(18, 'Take', '<pre>\r\n[Куплет 1]\r\nTake my strength, take my pride\r\nTake my selfishness away\r\nTake my rights, take ambition\r\nCapture me, make me a slave\r\nBreak the walls, break my bones\r\nBreak my hardened heat\r\nRip my rule, rip my will\r\nRip in-dependency apart\r\n\r\n[Куплет 2]\r\nBreathe Your life\r\nBreathe Your love\r\nBreathe You breath and I\'m sustained\r\nTake my hate, take my hurt\r\nExpress healing to my pain\r\nTake my flesh in all its arrogance, my stability away\r\nTake my life, bring fire, till only You remain\r\n\r\n[Припев]\r\nLaid out on my face (yea)\r\nMy tongue hanging out to taste (yea)\r\nOf You and Your death (yea)\r\nAnd to know Your name (yea)\r\n\r\n[Куплет2]\r\nAccept my gifts, take my crowns\r\nI spread them at your feet\r\nWhen I bleed, I bleed with joy as I taste Your suffering\r\nFlood life, flood peace, speak acceptance to my shame\r\nAllow to kneel, allow to praise\r\nGive the right to speak Your name\r\n\r\n[Припев]\r\nLaid out on my face (yea)\r\nMy tongue hanging out to taste (yea)\r\nOf You and Your death (yea)\r\nAnd to know Your name (yea)\r\n\r\n[Припев]\r\nLaid out on my face (yea)\r\nMy tongue hanging out to taste (yea)\r\nOf You and Your death (yea)\r\nAnd to know Your name (yea)\r\n\r\n[Заключение]\r\nLaid out on my face\r\nWanting to know your name\r\nLaid out on my face\r\nWanting to know your name, yeah\r\n</pre>', 2, 'https://www.youtube.com/embed/TPpFwVO8YmE', 'https://music.yandex.ru/iframe/#track/24426667/489741'),
(19, 'Coming down', '<pre>\r\n[Куплет 1]\r\nThings are coming down\r\nThings are coming down I can tell you\r\nBeautiful the sound\r\nOf things coming cause I heard him say\r\n\r\n[Куплет 2]\r\nDivision\'s coming down\r\nI saw peace on a white horse riding\r\nLove is spreading around\r\nThe most contagious disease we\'ve ever known\r\n\r\n[Припев]\r\nI will drink from the well of the One who gives me life\r\nI will eat of the bread of the One sacrifice\r\nI will breathe of the breath of the body of God\r\nI will dive to the depths and I will raise a new man\r\n\r\n[Куплет 2]\r\nRacism\'s coming down\r\nNot from the law but a change in perception\r\nRevival\'s spreading around\r\nI hear the sound of reapers already say\r\n\r\n[Припев]\r\nI will drink from the well of the One who gives me life\r\nI will eat of the bread of the One sacrifice\r\nI will breathe of the breath of the body of God\r\nI will dive to the depths and I will raise a new man\r\n[Verse 3]\r\nOur knees are going down\r\nTo the One who brings fear to my every bone\r\nHis Kingdom\'s reigning down\r\nWho can stop the plans of the Lord I say\r\n\r\n[Припев]\r\nI will drink from the well of the One who gives me life\r\nI will eat of the bread of the One sacrifice\r\nI will breathe of the breath of the body of God\r\nI will dive to the depths and I will raise a new man\r\nI will drink from the well of the One who gives me life\r\nI will eat of the bread of the One sacrifice\r\nI will breathe of the breath of the body of God\r\nI will dive to the depths and I will raise a new man\r\n</pre> ', 2, 'https://www.youtube.com/embed/ncY0DtIIbLQ', 'https://music.yandex.ru/iframe/#track/24426668/489741'),
(20, 'Whirlwind', '<pre>\r\n[Куплет 1]\r\nTalking to God\r\nHearing what he wants\r\nHe moves in violence\r\nI stand in silence\r\nWho can question You, who can fathom You?\r\nIn your presence, who can stand?\r\nWorlds spin around and kings crumble down\r\nThere\'s no escape what You\'ve planned\r\n\r\n[Куплет 2]\r\nWinds approaching, clouds are forming\r\nGod in his power\r\nIs swirling around me\r\nCalling me, and you know my name\r\nSo jump in or be taken, yea I can\'t\r\nRun long enough, or go far enough\r\nTo escape the screaming rain\r\n\r\n[Припев]\r\nIt\'s alright\r\nIt\'s alright\r\nJump in the whirlwind\r\nI\'m letting go\r\nIt\'s alright\r\nIt\'s alright\r\nJump in the whirlwind\r\nI\'m letting go\r\n[Verse 2]\r\nMy world\'s at stake\r\nI want to break\r\nStop the striving\r\nStart the dying\r\nI\'m thrown into it\r\nIt\'s so imminent\r\nThere\'s no arguing what You say\r\nI got to keep fanning it, I keep fanning it\r\nI keep fanning the fire to flames\r\n\r\n[Припев]\r\nIt\'s alright\r\nIt\'s alright\r\nJump in the whirlwind\r\nI\'m letting go\r\nIt\'s alright\r\nIt\'s alright\r\nJump in the whirlwind\r\nI\'m letting go\r\nIt\'s alright\r\nIt\'s alright\r\nJump in the whirlwind\r\nI\'m letting go\r\n\r\n[Бридж]\r\nMaster and Savior, Sustainer and Creator\r\nYou move in power\r\nAnd winds and thunder\r\n[Chorus]\r\nIt\'s alright\r\nIt\'s alright\r\nJump in the whirlwind\r\nI\'m letting go\r\nIt\'s alright\r\nIt\'s alright\r\nJump in the whirlwind\r\nI\'m letting go\r\nIt\'s alright\r\nIt\'s alright\r\nJump in the whirlwind\r\nI\'m letting go\r\nIt\'s alright\r\nIt\'s alright\r\nJump in the whirlwind\r\nI\'m letting go\r\nLetting go – I\'m letting go, I\'m letting go, I\'m letting go\r\n</pre>', 2, 'https://www.youtube.com/embed/Ob9Pq8zCYxo', 'https://music.yandex.ru/iframe/#track/24426669/489741'),
(21, 'Dive over in', '<pre>\r\n[Куплет 1]\r\nI thought distinctly\r\nDifferent from now\r\nWonder dramatically\r\nAll about everything always\r\n\r\n[Пред-припев]\r\nAll my pushing\r\nBecomes nothing I shake the fear\r\n\r\n[Куплет 2]\r\nI used to compensate\r\nFor what I couldn\'t achieve\r\nI conquered dreams\r\nForgetting what they were\r\n\r\n[Пред-припев]\r\nAll my pushing\r\nBecomes nothing\r\nAll my falling\r\nIs into You\r\n\r\n[Припев]\r\nJump over on (Everybody now)\r\nDive over in (C\'mon yea-yea)\r\nBecause it\'s just not enough\r\nTo stand at the edge (You gotta dive over in)\r\n[Verse 3]\r\nNow I am voiceless\r\nSenseless at Your mercy\r\nYou draw me wildly\r\nAll my remainder\r\n\r\n[Пред-припев]\r\nAll my pushing\r\nBecomes nothing\r\nAll my falling\r\nIs into You\r\n\r\n[Припев]\r\nJump over on (Everybody now)\r\nDive over in (C\'mon yeah yeah)\r\nCause it is just not enough\r\nTo stand at the edge (you got to dive over in)\r\n\r\n[Пред-припев]\r\nAll my pushing\r\nBecomes nothing\r\nAll my falling\r\nIs into You\r\n\r\n[Припев]\r\nJump over on (Everybody now)\r\nDive over in (C\'mon yeah yeah)\r\nCause it is just not enough\r\nTo stand at the edge (you got to dive over in)\r\nJump over on (Everybody now)\r\nDive over in (C\'mon yeah yeah)\r\nCause it is just not enough\r\nTo stand at the edge (you got to dive over in)\r\n\r\n</pre> ', 2, 'https://www.youtube.com/embed/WHA2hLOdIsg', 'https://music.yandex.ru/iframe/#track/24426670/489741'),
(22, 'Scarecrow', '<pre>\r\n[Куплет 1]\r\nHanging on a post\r\nIn my dirty clothes\r\nTry to concentrate on You\r\nBut I keep forgetting\r\n\r\n[Пред-припев]\r\nSafe enough to not let go\r\nScared enough to not release\r\nOpen up to drink the wind\r\nYou tear me up when you come in\r\n\r\n[Припев]\r\nTake me down, shake me out\r\nGive me a brain, that I might know You better\r\nTake me down, shake me out\r\nGive me a brain, that I might know You better\r\n\r\n[Куплет 2]\r\nHanging in the sun\r\nWaiting for the rain\r\nSaw a field catch on fire\r\nI caught myself just watching\r\n\r\n[Пред-припев]\r\nSafe enough to not let go\r\nScared enough to not release\r\nOpen up to drink the wind\r\nYou tear me up when you come in\r\n\r\n[Припев]\r\nTake me down, shake me out\r\nGive me a heart, that I might love You better\r\nTake me down, shake me out\r\nGive me a heart, that I might love You better\r\n\r\n[Куплет 3]\r\nHanging on a post\r\nJust next to Yours\r\nI want to curse and spit\r\nI weep aloud at Your mercy\r\n\r\n[Припев]\r\nTake me down, shake me out\r\nGive me a life, that I might serve You better\r\nTake me down, shake me out\r\nGive me a life, that I might serve You better\r\nTake me down, shake me out\r\nGive me a life, that I might serve You better\r\nTake me down, shake me out\r\nGive me a life, that I might serve You better\r\nTake me down, shake me out\r\nGive me a life, that I might serve You better\r\nTake me down, shake me out\r\nGive me a life, that I might serve You better\r\n</pre> ', 2, 'https://www.youtube.com/embed/K0ZzTm89X9Y', 'https://music.yandex.ru/iframe/#track/24426671/489741');

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
-- Индексы таблицы `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`ID`);

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
  ADD KEY `album_ID` (`albums_ID`);

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
  ADD PRIMARY KEY (`ID`),
  ADD KEY `albums_ID` (`albums_ID`);

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
-- AUTO_INCREMENT для таблицы `albums`
--
ALTER TABLE `albums`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT для таблицы `group_members`
--
ALTER TABLE `group_members`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `musics`
--
ALTER TABLE `musics`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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

--
-- Ограничения внешнего ключа таблицы `discographies`
--
ALTER TABLE `discographies`
  ADD CONSTRAINT `album_ID` FOREIGN KEY (`albums_ID`) REFERENCES `albums` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `musics`
--
ALTER TABLE `musics`
  ADD CONSTRAINT `albums_ID` FOREIGN KEY (`albums_ID`) REFERENCES `albums` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
