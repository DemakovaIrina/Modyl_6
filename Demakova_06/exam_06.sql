-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 18 2024 г., 14:37
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `exam_06`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ayditoriya`
--

CREATE TABLE `ayditoriya` (
  `ID_Ayditorii` int(11) NOT NULL,
  `Nazvanie` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `ayditoriya`
--

INSERT INTO `ayditoriya` (`ID_Ayditorii`, `Nazvanie`) VALUES
(1, 'А310'),
(2, 'А312');

-- --------------------------------------------------------

--
-- Структура таблицы `gryppa`
--

CREATE TABLE `gryppa` (
  `ID_Gryppa` int(11) NOT NULL,
  `Nazvanie` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `gryppa`
--

INSERT INTO `gryppa` (`ID_Gryppa`, `Nazvanie`) VALUES
(1, 'ИС1-11'),
(2, 'ДИ1-15');

-- --------------------------------------------------------

--
-- Структура таблицы `polzovateli`
--

CREATE TABLE `polzovateli` (
  `ID_Polzovatelya` int(11) NOT NULL,
  `Email` char(100) NOT NULL,
  `Password` char(100) NOT NULL,
  `Imya` char(100) NOT NULL,
  `Familiya` char(100) NOT NULL,
  `ID_Roli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `polzovateli`
--

INSERT INTO `polzovateli` (`ID_Polzovatelya`, `Email`, `Password`, `Imya`, `Familiya`, `ID_Roli`) VALUES
(1, 'Feshorin@gmail.com', '123', 'Антон', 'Фешорин', 1),
(2, 'Petryshkin@gmail.com', '141414', 'Алексей', 'Петрушкин', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `raspisanie`
--

CREATE TABLE `raspisanie` (
  `ID_Raspisanie` int(11) NOT NULL,
  `ID_Ayditorii` int(11) NOT NULL,
  `ID_Polzovatelya` int(11) NOT NULL,
  `Den_nedeli` char(100) NOT NULL,
  `Vremya_nachala` time NOT NULL,
  `Vremya_okonchaniya` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roli`
--

CREATE TABLE `roli` (
  `ID_Roli` int(11) NOT NULL,
  `Nazvanie` char(100) NOT NULL,
  `ID_Gryppy` int(11) NOT NULL,
  `ID_Specialnosty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `roli`
--

INSERT INTO `roli` (`ID_Roli`, `Nazvanie`, `ID_Gryppy`, `ID_Specialnosty`) VALUES
(1, 'Админ', 1, 1),
(2, 'Преподаватель', 1, 1),
(3, 'Студент', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `specialnost`
--

CREATE TABLE `specialnost` (
  `ID_Specialnost` int(11) NOT NULL,
  `Nazvanie` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `specialnost`
--

INSERT INTO `specialnost` (`ID_Specialnost`, `Nazvanie`) VALUES
(1, 'Литературник'),
(2, 'Медик'),
(3, 'Матеатик\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `specialnost_prepodavatel`
--

CREATE TABLE `specialnost_prepodavatel` (
  `ID_SP` int(11) NOT NULL,
  `ID_Prepodavatel` int(11) NOT NULL,
  `ID_Specialnosti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ayditoriya`
--
ALTER TABLE `ayditoriya`
  ADD PRIMARY KEY (`ID_Ayditorii`);

--
-- Индексы таблицы `gryppa`
--
ALTER TABLE `gryppa`
  ADD PRIMARY KEY (`ID_Gryppa`);

--
-- Индексы таблицы `polzovateli`
--
ALTER TABLE `polzovateli`
  ADD PRIMARY KEY (`ID_Polzovatelya`),
  ADD KEY `ID_Roli` (`ID_Roli`);

--
-- Индексы таблицы `raspisanie`
--
ALTER TABLE `raspisanie`
  ADD PRIMARY KEY (`ID_Raspisanie`),
  ADD KEY `ID_Ayditorii` (`ID_Ayditorii`),
  ADD KEY `ID_Polzovatelya` (`ID_Polzovatelya`);

--
-- Индексы таблицы `roli`
--
ALTER TABLE `roli`
  ADD PRIMARY KEY (`ID_Roli`),
  ADD KEY `ID_Gryppy` (`ID_Gryppy`),
  ADD KEY `ID_Specialnosty` (`ID_Specialnosty`);

--
-- Индексы таблицы `specialnost`
--
ALTER TABLE `specialnost`
  ADD PRIMARY KEY (`ID_Specialnost`);

--
-- Индексы таблицы `specialnost_prepodavatel`
--
ALTER TABLE `specialnost_prepodavatel`
  ADD PRIMARY KEY (`ID_SP`),
  ADD KEY `ID_Prepodavatel` (`ID_Prepodavatel`),
  ADD KEY `ID_Specialnosti` (`ID_Specialnosti`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ayditoriya`
--
ALTER TABLE `ayditoriya`
  MODIFY `ID_Ayditorii` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `gryppa`
--
ALTER TABLE `gryppa`
  MODIFY `ID_Gryppa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `polzovateli`
--
ALTER TABLE `polzovateli`
  MODIFY `ID_Polzovatelya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `raspisanie`
--
ALTER TABLE `raspisanie`
  MODIFY `ID_Raspisanie` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roli`
--
ALTER TABLE `roli`
  MODIFY `ID_Roli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `specialnost`
--
ALTER TABLE `specialnost`
  MODIFY `ID_Specialnost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `specialnost_prepodavatel`
--
ALTER TABLE `specialnost_prepodavatel`
  MODIFY `ID_SP` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `polzovateli`
--
ALTER TABLE `polzovateli`
  ADD CONSTRAINT `polzovateli_ibfk_1` FOREIGN KEY (`ID_Roli`) REFERENCES `roli` (`ID_Roli`);

--
-- Ограничения внешнего ключа таблицы `raspisanie`
--
ALTER TABLE `raspisanie`
  ADD CONSTRAINT `raspisanie_ibfk_1` FOREIGN KEY (`ID_Ayditorii`) REFERENCES `ayditoriya` (`ID_Ayditorii`),
  ADD CONSTRAINT `raspisanie_ibfk_2` FOREIGN KEY (`ID_Polzovatelya`) REFERENCES `polzovateli` (`ID_Polzovatelya`);

--
-- Ограничения внешнего ключа таблицы `roli`
--
ALTER TABLE `roli`
  ADD CONSTRAINT `roli_ibfk_1` FOREIGN KEY (`ID_Gryppy`) REFERENCES `gryppa` (`ID_Gryppa`),
  ADD CONSTRAINT `roli_ibfk_2` FOREIGN KEY (`ID_Specialnosty`) REFERENCES `specialnost` (`ID_Specialnost`);

--
-- Ограничения внешнего ключа таблицы `specialnost_prepodavatel`
--
ALTER TABLE `specialnost_prepodavatel`
  ADD CONSTRAINT `specialnost_prepodavatel_ibfk_1` FOREIGN KEY (`ID_Prepodavatel`) REFERENCES `polzovateli` (`ID_Polzovatelya`),
  ADD CONSTRAINT `specialnost_prepodavatel_ibfk_2` FOREIGN KEY (`ID_Specialnosti`) REFERENCES `specialnost` (`ID_Specialnost`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
