-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生日期: 2017 年 09 月 01 日 03:51
-- 伺服器版本: 5.1.44-community
-- PHP 版本: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `test_left_join`
--
CREATE DATABASE IF NOT EXISTS `test_left_join` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test_left_join`;

-- --------------------------------------------------------

--
-- 表的結構 `gz`
--

CREATE TABLE IF NOT EXISTS `gz` (
  `Man_Id` int(11) NOT NULL,
  `Money` int(11) NOT NULL,
  `Sex_Id` int(11) NOT NULL,
  PRIMARY KEY (`Man_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `gz`
--

INSERT INTO `gz` (`Man_Id`, `Money`, `Sex_Id`) VALUES
(1, 2500, 1),
(2, 4000, 2);

-- --------------------------------------------------------

--
-- 表的結構 `man`
--

CREATE TABLE IF NOT EXISTS `man` (
  `Man_Id` int(11) NOT NULL,
  `Man_Name` text NOT NULL,
  `Zw_Id` int(11) NOT NULL,
  PRIMARY KEY (`Man_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `man`
--

INSERT INTO `man` (`Man_Id`, `Man_Name`, `Zw_Id`) VALUES
(1, '貂蟬', 2),
(2, '曹操', 1);

-- --------------------------------------------------------

--
-- 表的結構 `xb`
--

CREATE TABLE IF NOT EXISTS `xb` (
  `Sex_Id` int(11) NOT NULL,
  `Sex_Name` text NOT NULL,
  PRIMARY KEY (`Sex_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `xb`
--

INSERT INTO `xb` (`Sex_Id`, `Sex_Name`) VALUES
(1, '女'),
(2, '男');

-- --------------------------------------------------------

--
-- 表的結構 `zw`
--

CREATE TABLE IF NOT EXISTS `zw` (
  `Zw_Id` int(11) NOT NULL,
  `Zw_Name` text NOT NULL,
  PRIMARY KEY (`Zw_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `zw`
--

INSERT INTO `zw` (`Zw_Id`, `Zw_Name`) VALUES
(1, '校長'),
(2, '主任');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
