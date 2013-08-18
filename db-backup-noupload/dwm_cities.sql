
-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Generation Time: Aug 18, 2013 at 01:33 PM
-- Server version: 5.0.96
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------

--
-- Table structure for table `dwm_cities`
--

CREATE TABLE `dwm_cities` (
  `city` varchar(20) collate utf8_bin NOT NULL,
  `country` varchar(20) collate utf8_bin NOT NULL,
  `lat` decimal(8,4) NOT NULL,
  `long` decimal(8,4) NOT NULL,
  `code` varchar(4) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dwm_cities`
--

INSERT INTO `dwm_cities` VALUES('Сидни', 'Австралия', -33.8683, 151.2111, 'SID');
INSERT INTO `dwm_cities` VALUES('Виена', 'Австрия', 48.2088, 16.3726, 'VN');
INSERT INTO `dwm_cities` VALUES('Брюксел', 'Белгия', 50.8500, 4.3500, 'BRSL');
INSERT INTO `dwm_cities` VALUES('София', 'България', 42.6544, 23.3333, 'SOF');
INSERT INTO `dwm_cities` VALUES('Пловдив', 'България', 42.1500, 24.7500, 'PLD');
INSERT INTO `dwm_cities` VALUES('Варна', 'България', 43.2167, 27.9167, 'VRN');
INSERT INTO `dwm_cities` VALUES('Бургас', 'България', 42.5000, 27.4667, 'BRGS');
INSERT INTO `dwm_cities` VALUES('Ямбол', 'България', 42.4167, 26.5167, 'YMBL');
INSERT INTO `dwm_cities` VALUES('Стара Загора', 'България', 42.4333, 25.6500, 'STZ');
INSERT INTO `dwm_cities` VALUES('Сливен', 'България', 42.7248, 26.3150, 'SLVN');
INSERT INTO `dwm_cities` VALUES('Пазарджик', 'България', 42.2000, 24.3333, 'PZRD');
INSERT INTO `dwm_cities` VALUES('Русе', 'България', 43.8500, 25.9667, 'RUSE');
INSERT INTO `dwm_cities` VALUES('Шумен', 'България', 43.2715, 26.9333, 'SHMN');
INSERT INTO `dwm_cities` VALUES('Велико Търново', 'България', 43.0794, 25.6500, 'VLKT');
INSERT INTO `dwm_cities` VALUES('Монреал', 'Канада', 45.5081, -73.5550, 'MNTR');
INSERT INTO `dwm_cities` VALUES('Торонто', 'Канада', 43.6481, -79.4042, 'TRNT');
INSERT INTO `dwm_cities` VALUES('Лондон', 'Англия', 51.5171, 0.0000, 'LND');
INSERT INTO `dwm_cities` VALUES('Париж', 'Франция', 48.8567, 2.3508, 'PRS');
INSERT INTO `dwm_cities` VALUES('Тулуза', 'Франция', 43.6045, 1.4440, 'TLS');
INSERT INTO `dwm_cities` VALUES('Берлин', 'Германия', 52.5167, 13.4127, 'BER');
INSERT INTO `dwm_cities` VALUES('Карлсруе', 'Германия', 49.0135, 8.4044, 'KRLS');
INSERT INTO `dwm_cities` VALUES('Кьолн', 'Германия', 50.9500, 7.0292, 'KOLN');
INSERT INTO `dwm_cities` VALUES('Магдебург', 'Германия', 52.1333, 11.6167, 'MGDB');
INSERT INTO `dwm_cities` VALUES('Манхайм', 'Германия', 49.4890, 8.4692, 'MNHM');
INSERT INTO `dwm_cities` VALUES('Мюнхен', 'Германия', 48.1333, 11.5667, 'MUN');
INSERT INTO `dwm_cities` VALUES('Фрайбург', 'Германия', 47.9973, 7.8525, 'FRBG');
INSERT INTO `dwm_cities` VALUES('Франфурт', 'Германия', 50.1117, 8.6858, 'FRNK');
INSERT INTO `dwm_cities` VALUES('Хамбург', 'Германия', 53.5686, 10.0014, 'HAM');
INSERT INTO `dwm_cities` VALUES('Щутгарт', 'Германия', 48.7767, 9.1794, 'STGT');
INSERT INTO `dwm_cities` VALUES('Дъблин', 'Ирландия', 53.3428, -6.2661, 'DUB');
INSERT INTO `dwm_cities` VALUES('Флоренция', 'Италия', 43.7833, 11.2536, 'FLRN');
INSERT INTO `dwm_cities` VALUES('Оукланд', 'Нова Зеландия', -36.8404, 174.7399, 'AUCK');
INSERT INTO `dwm_cities` VALUES('Осло', 'Норвегия', 59.9494, 10.7564, 'OSL');
INSERT INTO `dwm_cities` VALUES('Сеул', 'Южна Корея', 37.5833, 126.9780, 'SEOU');
INSERT INTO `dwm_cities` VALUES('Мадрид', 'Испания', 40.4000, -3.6833, 'MADR');
INSERT INTO `dwm_cities` VALUES('Цюрих', 'Швейцария', 47.2690, 8.5500, 'ZUR');
INSERT INTO `dwm_cities` VALUES('Бостън', 'САЩ', 42.3583, -71.0636, 'BOS');
INSERT INTO `dwm_cities` VALUES('Вашингтон', 'САЩ', 38.8951, -77.0367, 'WASH');
INSERT INTO `dwm_cities` VALUES('Дейвънпорт', 'САЩ', 41.5431, -90.5775, 'DAVN');
INSERT INTO `dwm_cities` VALUES('Лос Анджелис', 'САЩ', 34.0522, -118.2428, 'LA');
INSERT INTO `dwm_cities` VALUES('Нантъкет', 'САЩ', 41.2833, -70.1000, 'NANT');
INSERT INTO `dwm_cities` VALUES('Ню Йорк', 'САЩ', 40.7142, -74.0064, 'NY');
INSERT INTO `dwm_cities` VALUES('Сан Франциско', 'САЩ', 37.7750, -122.4183, 'SF');
INSERT INTO `dwm_cities` VALUES('Сиатъл', 'САЩ', 47.6097, -122.3331, 'STL');
INSERT INTO `dwm_cities` VALUES('Чикаго', 'САЩ', 41.8819, -87.6500, 'CHIC');
INSERT INTO `dwm_cities` VALUES('Амстердам', 'Холандия', 52.3700, 4.8900, 'AMST');
