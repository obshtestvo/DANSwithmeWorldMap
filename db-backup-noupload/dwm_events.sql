
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
-- Table structure for table `dwm_events`
--

CREATE TABLE `dwm_events` (
  `code` varchar(4) collate utf8_bin NOT NULL,
  `people` int(11) NOT NULL default '0',
  `day` int(11) NOT NULL default '0',
  `link` varchar(256) collate utf8_bin NOT NULL,
  `source` varchar(50) collate utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dwm_events`
--

INSERT INTO `dwm_events` VALUES('SOF', 30000, 24, 'http://www.novinite.com/view_news.php?id=151843', 'novinite.com');
INSERT INTO `dwm_events` VALUES('PLD', 10000, 3, 'http://news.plovdiv24.bg/438179.html', 'plovdiv24.bg');
INSERT INTO `dwm_events` VALUES('VRN', 6000, 3, 'http://news.varna24.bg/438191.html', 'varna24.bg');
INSERT INTO `dwm_events` VALUES('BRGS', 500, 3, 'http://www.focus-radio.net/?action=news&id=672741%AE=1', 'focus-radio.net');
INSERT INTO `dwm_events` VALUES('YMBL', 200, 22, 'http://bta.bg/bg/c/BO/id/633503', 'bta.bg');
INSERT INTO `dwm_events` VALUES('STZ', 200, 1, 'http://offnews.bg/index.php/206525/protestite-sreshtu-peevski-v-stranata', 'offnews.bg');
INSERT INTO `dwm_events` VALUES('SLVN', 200, 4, 'http://www.blitz.bg/news/article/206014', 'blitz.bg');
INSERT INTO `dwm_events` VALUES('PZRD', 150, 25, 'http://pa-media.net/new/news.php?extend.5099.12', 'pa-media.net');
INSERT INTO `dwm_events` VALUES('RUSE', 100, 2, 'http://ruse.topnovini.bg/node/52960', 'topnovini.bg');
INSERT INTO `dwm_events` VALUES('SHMN', 100, 1, 'http://grada.bg/149655/%D0%B8-%D0%B2-%D1%88%D1%83%D0%BC%D0%B5%D0%BD-%D0%BF%D1%80%D0%BE%D1%82%D0%B5%D1%81%D1%82-%D1%81%D1%80%D0%B5%D1%89%D1%83-%D0%B8%D0%B7%D0%B1%D0%BE%D1%80%D0%B0-%D0%BD%D0%B0-%D0%B4%D0%B5%D0%BB%D1%8F%D0%BD/', 'grada.bg');
INSERT INTO `dwm_events` VALUES('VLKT', 70, 4, 'http://www.focus-news.net/?id=n1796016', 'focus-news.net');
INSERT INTO `dwm_events` VALUES('SID', 0, 0, 'https://www.facebook.com/media/set/?set=a.396639847114348.1073741918.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('VN', 0, 0, 'https://www.facebook.com/media/set/?set=a.396639637114369.1073741917.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('LND', 0, 0, 'https://www.facebook.com/media/set/?set=a.399410006837332.1073741941.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('BRSL', 0, 0, 'http://www.youtube.com/watch?v=IZXjhS1-ukk', 'youtube.com');
INSERT INTO `dwm_events` VALUES('BER', 0, 0, 'https://www.facebook.com/media/set/?set=a.393994667378866.1073741898.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('KRLS', 0, 0, 'https://www.facebook.com/media/set/?set=a.396634250448241.1073741905.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('KOLN', 0, 0, 'https://www.facebook.com/photo.php?fbid=536609756401098&set=pb.216543211741089.-2207520000.1372117963.&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('MGDB', 0, 0, 'https://www.facebook.com/media/set/?set=a.391115917666741.1073741859.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('MNHM', 0, 0, 'https://www.facebook.com/media/set/?set=a.393902980721368.1073741886.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('MUN', 0, 0, 'https://www.facebook.com/media/set/?set=a.399410863503913.1073741944.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('FRBG', 0, 0, 'https://www.facebook.com/media/set/?set=a.391111974333802.1073741850.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('FRNK', 0, 0, 'https://www.facebook.com/media/set/?set=a.399395293505470.1073741937.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('HAM', 0, 0, 'https://www.facebook.com/media/set/?set=a.391114731000193.1073741852.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('STGT', 0, 0, 'https://www.facebook.com/media/set/?set=a.396648010446865.1073741929.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('DUB', 0, 0, 'http://irishdanswithme.blogspot.ie/2013/07/blog-post.html?m=1', 'blogspot.ie');
INSERT INTO `dwm_events` VALUES('MADR', 30, 0, 'https://www.facebook.com/media/set/?set=a.667160346633677.1073741841.618718288144550&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('FLRN', 0, 0, 'https://www.facebook.com/media/set/?set=a.398739340237732.1073741935.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('MNTR', 0, 0, 'https://www.facebook.com/media/set/?set=a.396640397114293.1073741921.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('TRNT', 0, 0, 'https://www.facebook.com/media/set/?set=a.399410970170569.1073741945.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('AUCK', 0, 0, 'https://www.facebook.com/media/set/?set=a.396643843780615.1073741926.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('OSL', 0, 0, 'https://www.facebook.com/media/set/?set=a.393903640721302.1073741890.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('BOS', 0, 0, 'https://www.facebook.com/media/set/?set=a.399410473503952.1073741942.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('WASH', 0, 0, 'https://www.facebook.com/media/set/?set=a.396641957114137.1073741923.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('DAVN', 0, 0, 'https://www.facebook.com/media/set/?set=a.391111974333802.1073741850.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('LA', 0, 0, 'https://www.facebook.com/media/set/?set=a.399411576837175.1073741947.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('NANT', 0, 0, 'https://www.facebook.com/media/set/?set=a.391685864276413.1073741878.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('NY', 130, 30, 'http://www.youtube.com/watch?v=oEMxjeX6c6U', 'youtube.com');
INSERT INTO `dwm_events` VALUES('SF', 100, 10, 'https://www.youtube.com/watch?v=-lzDOqYc1tI', 'youtube.com');
INSERT INTO `dwm_events` VALUES('STL', 0, 0, 'https://www.facebook.com/media/set/?set=a.398175503627449.1073741934.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('CHIC', 0, 0, 'http://www.youtube.com/watch?v=uP47IvYH3s4', 'facebook.com');
INSERT INTO `dwm_events` VALUES('PRS', 0, 0, 'https://www.facebook.com/photo.php?fbid=536100729785334&set=pb.216543211741089.-2207520000.1372118008.&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('TLS', 0, 0, 'https://www.facebook.com/media/set/?set=a.396635440448122.1073741910.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('AMST', 0, 0, 'https://www.facebook.com/media/set/?set=a.399396203505379.1073741938.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('ZUR', 0, 0, 'https://www.facebook.com/media/set/?set=a.396644187113914.1073741927.387062214738778&type=3', 'facebook.com');
INSERT INTO `dwm_events` VALUES('SEOU', 0, 0, 'https://www.facebook.com/media/set/?set=a.391111467667186.1073741848.387062214738778&type=3', 'facebook.com');
