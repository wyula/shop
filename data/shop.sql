SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `shop`
--

CREATE DATABASE IF NOT EXISTS `shop`;
USE `shop`;

-- --------------------------------------------------------

--
-- 表的结构 `shop_admin`
--

DROP TABLE IF EXISTS `shop_admin`;
CREATE TABLE IF NOT EXISTS `shop_admin` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` char(32) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `shop_album`
--

DROP TABLE IF EXISTS `shop_album`;
CREATE TABLE IF NOT EXISTS `shop_album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `albumPath` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `shop_cate`
--

DROP TABLE IF EXISTS `shop_cate`;
CREATE TABLE IF NOT EXISTS `shop_cate` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `shop_pro`
--

DROP TABLE IF EXISTS `shop_pro`;
CREATE TABLE IF NOT EXISTS `shop_pro` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pName` varchar(50) NOT NULL,
  `pSn` varchar(50) NOT NULL,
  `pNum` int(10) unsigned DEFAULT '1',
  `mPrice` decimal(10,2) NOT NULL,
  `iPrice` decimal(10,2) NOT NULL,
  `pDesc` text,
  `pImg` varchar(50) NOT NULL,
  `pubTime` int(10) unsigned NOT NULL,
  `isShow` tinyint(1) DEFAULT '1',
  `isHot` tinyint(1) DEFAULT '0',
  `cId` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pName` (`pName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `shop_user`
--

DROP TABLE IF EXISTS `shop_user`;
CREATE TABLE IF NOT EXISTS `shop_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` char(32) NOT NULL,
  `sex` enum('男','女','保密') NOT NULL DEFAULT '保密',
  `face` varchar(50) NOT NULL,
  `regtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
