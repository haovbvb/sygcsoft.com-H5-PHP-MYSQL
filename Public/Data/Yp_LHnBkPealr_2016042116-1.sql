-- Yourphp SQL Backup
-- Time:2016-04-21 16:56:52
-- http://www.yourphp.cn 

--
-- Yourphp Table `yourphp_access`
-- 
DROP TABLE IF EXISTS `yourphp_access`;
CREATE TABLE `yourphp_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `model` varchar(50) NOT NULL DEFAULT '',
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_area`
-- 
DROP TABLE IF EXISTS `yourphp_area`;
CREATE TABLE `yourphp_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3267 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_article`
-- 
DROP TABLE IF EXISTS `yourphp_article`;
CREATE TABLE `yourphp_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `copyfrom` varchar(255) NOT NULL DEFAULT '',
  `fromlink` varchar(80) NOT NULL DEFAULT '0',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(30) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `readgroup` varchar(255) NOT NULL DEFAULT '',
  `readpoint` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `lang` (`id`,`lang`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_attachment`
-- 
DROP TABLE IF EXISTS `yourphp_attachment`;
CREATE TABLE `yourphp_attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(8) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(50) NOT NULL DEFAULT '',
  `filepath` varchar(80) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` char(10) NOT NULL DEFAULT '',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `uploadip` char(15) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_block`
-- 
DROP TABLE IF EXISTS `yourphp_block`;
CREATE TABLE `yourphp_block` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pos` char(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content` text,
  PRIMARY KEY (`id`),
  KEY `pos` (`pos`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_cart`
-- 
DROP TABLE IF EXISTS `yourphp_cart`;
CREATE TABLE `yourphp_cart` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sessionid` char(32) NOT NULL DEFAULT '',
  `moduleid` smallint(3) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_thumb` varchar(120) NOT NULL DEFAULT '',
  `product_name` varchar(120) NOT NULL DEFAULT '',
  `product_url` varchar(120) NOT NULL DEFAULT '',
  `product_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr` text NOT NULL,
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isgift` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sessionid` (`sessionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_category`
-- 
DROP TABLE IF EXISTS `yourphp_category`;
CREATE TABLE `yourphp_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `catname` varchar(30) NOT NULL DEFAULT '',
  `catdir` varchar(30) NOT NULL DEFAULT '',
  `parentdir` varchar(50) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `module` char(24) NOT NULL DEFAULT '',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `arrchildid` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT '',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `template_list` varchar(20) NOT NULL DEFAULT '',
  `template_show` varchar(20) NOT NULL DEFAULT '',
  `pagesize` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `listtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `urlruleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `presentpoint` tinyint(3) NOT NULL DEFAULT '0',
  `chargepoint` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `repeatchargedays` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `postgroup` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_config`
-- 
DROP TABLE IF EXISTS `yourphp_config`;
CREATE TABLE `yourphp_config` (
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `varname` (`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_dbsource`
-- 
DROP TABLE IF EXISTS `yourphp_dbsource`;
CREATE TABLE `yourphp_dbsource` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `host` varchar(20) NOT NULL DEFAULT '',
  `port` int(5) NOT NULL DEFAULT '3306',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `dbname` varchar(50) NOT NULL DEFAULT '',
  `dbtablepre` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_download`
-- 
DROP TABLE IF EXISTS `yourphp_download`;
CREATE TABLE `yourphp_download` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) unsigned NOT NULL,
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `file` varchar(80) NOT NULL DEFAULT '',
  `ext` varchar(10) NOT NULL DEFAULT '',
  `size` varchar(10) NOT NULL DEFAULT '',
  `downs` int(10) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `lang` (`id`,`status`,`lang`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_feedback`
-- 
DROP TABLE IF EXISTS `yourphp_feedback`;
CREATE TABLE `yourphp_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `telephone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `ip` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_field`
-- 
DROP TABLE IF EXISTS `yourphp_field`;
CREATE TABLE `yourphp_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `tips` varchar(150) NOT NULL DEFAULT '',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `errormsg` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `setup` mediumtext NOT NULL,
  `ispost` tinyint(1) NOT NULL DEFAULT '0',
  `unpostgroup` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_guestbook`
-- 
DROP TABLE IF EXISTS `yourphp_guestbook`;
CREATE TABLE `yourphp_guestbook` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `telephone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `reply_content` mediumtext NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_kefu`
-- 
DROP TABLE IF EXISTS `yourphp_kefu`;
CREATE TABLE `yourphp_kefu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `code` mediumtext NOT NULL,
  `skin` varchar(3) NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_lang`
-- 
DROP TABLE IF EXISTS `yourphp_lang`;
CREATE TABLE `yourphp_lang` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `mark` varchar(30) NOT NULL DEFAULT '',
  `flag` varchar(100) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `path` varchar(30) NOT NULL DEFAULT '',
  `domain` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_link`
-- 
DROP TABLE IF EXISTS `yourphp_link`;
CREATE TABLE `yourphp_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(80) NOT NULL DEFAULT '',
  `siteurl` varchar(150) NOT NULL DEFAULT '',
  `typeid` smallint(5) unsigned NOT NULL,
  `linktype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `siteinfo` mediumtext NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_log`
-- 
DROP TABLE IF EXISTS `yourphp_log`;
CREATE TABLE `yourphp_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `error` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `note` varchar(50) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`,`time`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_menu`
-- 
DROP TABLE IF EXISTS `yourphp_menu`;
CREATE TABLE `yourphp_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `model` char(20) NOT NULL DEFAULT '',
  `action` char(20) NOT NULL DEFAULT '',
  `data` char(50) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_module`
-- 
DROP TABLE IF EXISTS `yourphp_module`;
CREATE TABLE `yourphp_module` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listfields` varchar(255) NOT NULL DEFAULT '',
  `setup` mediumtext NOT NULL,
  `listorder` smallint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `postgroup` varchar(100) NOT NULL DEFAULT '',
  `ispost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_node`
-- 
DROP TABLE IF EXISTS `yourphp_node`;
CREATE TABLE `yourphp_node` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`status`,`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_online`
-- 
DROP TABLE IF EXISTS `yourphp_online`;
CREATE TABLE `yourphp_online` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL,
  `lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sessionid`),
  KEY `lastvisit` (`lastvisit`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_order`
-- 
DROP TABLE IF EXISTS `yourphp_order`;
CREATE TABLE `yourphp_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sn` bigint(19) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `area` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_sn` varchar(100) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_code` varchar(120) NOT NULL DEFAULT '',
  `amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `invoice_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `accept_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `point` int(5) unsigned NOT NULL DEFAULT '0',
  `invoice` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `invoice_title` varchar(100) NOT NULL DEFAULT '',
  `postmessage` varchar(255) NOT NULL DEFAULT '',
  `note` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sn` (`sn`),
  KEY `userid` (`userid`),
  KEY `status` (`status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_order_data`
-- 
DROP TABLE IF EXISTS `yourphp_order_data`;
CREATE TABLE `yourphp_order_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `moduleid` smallint(3) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_thumb` varchar(120) NOT NULL DEFAULT '',
  `product_name` varchar(120) NOT NULL DEFAULT '',
  `product_url` varchar(120) NOT NULL DEFAULT '',
  `product_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr` text NOT NULL,
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isgift` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `userid` (`userid`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_page`
-- 
DROP TABLE IF EXISTS `yourphp_page`;
CREATE TABLE `yourphp_page` (
  `id` smallint(5) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(250) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_payment`
-- 
DROP TABLE IF EXISTS `yourphp_payment`;
CREATE TABLE `yourphp_payment` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_fee_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_config` text NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `author` varchar(100) NOT NULL,
  `version` varchar(20) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_picture`
-- 
DROP TABLE IF EXISTS `yourphp_picture`;
CREATE TABLE `yourphp_picture` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(150) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `pics` mediumtext NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `lang` (`id`,`status`,`lang`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_posid`
-- 
DROP TABLE IF EXISTS `yourphp_posid`;
CREATE TABLE `yourphp_posid` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `listorder` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_product`
-- 
DROP TABLE IF EXISTS `yourphp_product`;
CREATE TABLE `yourphp_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `keywords` varchar(80) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `url` varchar(150) NOT NULL DEFAULT '',
  `xinghao` varchar(30) NOT NULL DEFAULT '',
  `pics` mediumtext NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `lang` (`id`,`status`,`lang`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_role`
-- 
DROP TABLE IF EXISTS `yourphp_role`;
CREATE TABLE `yourphp_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowpostverify` tinyint(1) unsigned NOT NULL,
  `allowsearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowupgrade` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowsendmessage` tinyint(1) unsigned NOT NULL,
  `allowattachment` tinyint(1) NOT NULL,
  `maxpostnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxmessagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price_y` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_m` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_d` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_role_user`
-- 
DROP TABLE IF EXISTS `yourphp_role_user`;
CREATE TABLE `yourphp_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_shipping`
-- 
DROP TABLE IF EXISTS `yourphp_shipping`;
CREATE TABLE `yourphp_shipping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(50) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `first_weight` int(11) unsigned NOT NULL DEFAULT '0',
  `second_weight` int(11) unsigned NOT NULL DEFAULT '0',
  `first_price` float(10,2) unsigned NOT NULL DEFAULT '0.00',
  `second_price` float(10,2) unsigned NOT NULL DEFAULT '0.00',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '99',
  `is_insure` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `insure_fee` int(11) unsigned NOT NULL DEFAULT '0',
  `insure_low_price` float(10,2) unsigned NOT NULL DEFAULT '0.00',
  `price_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_slide`
-- 
DROP TABLE IF EXISTS `yourphp_slide`;
CREATE TABLE `yourphp_slide` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `flashfile` varchar(150) NOT NULL DEFAULT '',
  `xmlfile` varchar(150) NOT NULL DEFAULT '',
  `tpl` varchar(30) NOT NULL DEFAULT '',
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `num` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_slide_data`
-- 
DROP TABLE IF EXISTS `yourphp_slide_data`;
CREATE TABLE `yourphp_slide_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` tinyint(3) unsigned DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `small` varchar(150) NOT NULL DEFAULT '',
  `pic` varchar(150) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_tags`
-- 
DROP TABLE IF EXISTS `yourphp_tags`;
CREATE TABLE `yourphp_tags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `slug` varchar(100) NOT NULL DEFAULT '',
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `module` varchar(30) NOT NULL DEFAULT '',
  `num` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`moduleid`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_tags_data`
-- 
DROP TABLE IF EXISTS `yourphp_tags_data`;
CREATE TABLE `yourphp_tags_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `tagid` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`tagid`),
  KEY `tagid` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_type`
-- 
DROP TABLE IF EXISTS `yourphp_type`;
CREATE TABLE `yourphp_type` (
  `typeid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`typeid`),
  KEY `parentid` (`parentid`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_urlrule`
-- 
DROP TABLE IF EXISTS `yourphp_urlrule`;
CREATE TABLE `yourphp_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `showurlrule` varchar(255) NOT NULL DEFAULT '',
  `showexample` varchar(255) NOT NULL DEFAULT '',
  `listurlrule` varchar(255) NOT NULL DEFAULT '',
  `listexample` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_user`
-- 
DROP TABLE IF EXISTS `yourphp_user`;
CREATE TABLE `yourphp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `question` varchar(50) NOT NULL DEFAULT '',
  `answer` varchar(50) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `web_url` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `login_count` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `last_logintime` int(11) unsigned NOT NULL DEFAULT '0',
  `reg_ip` char(15) NOT NULL DEFAULT '',
  `last_ip` char(15) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `avatar` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_user_address`
-- 
DROP TABLE IF EXISTS `yourphp_user_address`;
CREATE TABLE `yourphp_user_address` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `area` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yourphp_area` VALUES ('1','0','﻿北�\�','0');
INSERT INTO `yourphp_area` VALUES ('2','1','北京�\�','0');
INSERT INTO `yourphp_area` VALUES ('3','2','东城�\�','0');
INSERT INTO `yourphp_area` VALUES ('4','2','西城�\�','0');
INSERT INTO `yourphp_area` VALUES ('5','2','崇文�\�','0');
INSERT INTO `yourphp_area` VALUES ('6','2','宣武�\�','0');
INSERT INTO `yourphp_area` VALUES ('7','2','朝阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('8','2','丰台�\�','0');
INSERT INTO `yourphp_area` VALUES ('9','2','石景山区','0');
INSERT INTO `yourphp_area` VALUES ('10','2','海淀�\�','0');
INSERT INTO `yourphp_area` VALUES ('11','2','门头沟区','0');
INSERT INTO `yourphp_area` VALUES ('12','2','房山�\�','0');
INSERT INTO `yourphp_area` VALUES ('13','2','通州�\�','0');
INSERT INTO `yourphp_area` VALUES ('14','2','顺义�\�','0');
INSERT INTO `yourphp_area` VALUES ('15','2','昌平�\�','0');
INSERT INTO `yourphp_area` VALUES ('16','2','大兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('17','2','怀柔区','0');
INSERT INTO `yourphp_area` VALUES ('18','2','平谷�\�','0');
INSERT INTO `yourphp_area` VALUES ('19','2','密云�\�','0');
INSERT INTO `yourphp_area` VALUES ('20','2','延庆�\�','0');
INSERT INTO `yourphp_area` VALUES ('21','0','上海','0');
INSERT INTO `yourphp_area` VALUES ('22','21','上海�\�','0');
INSERT INTO `yourphp_area` VALUES ('23','22','黄浦�\�','0');
INSERT INTO `yourphp_area` VALUES ('24','22','卢湾�\�','0');
INSERT INTO `yourphp_area` VALUES ('25','22','徐汇�\�','0');
INSERT INTO `yourphp_area` VALUES ('26','22','长宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('27','22','静安�\�','0');
INSERT INTO `yourphp_area` VALUES ('28','22','普陀�\�','0');
INSERT INTO `yourphp_area` VALUES ('29','22','闸北�\�','0');
INSERT INTO `yourphp_area` VALUES ('30','22','虹口�\�','0');
INSERT INTO `yourphp_area` VALUES ('31','22','杨浦�\�','0');
INSERT INTO `yourphp_area` VALUES ('32','22','闵行�\�','0');
INSERT INTO `yourphp_area` VALUES ('33','22','宝山�\�','0');
INSERT INTO `yourphp_area` VALUES ('34','22','嘉定�\�','0');
INSERT INTO `yourphp_area` VALUES ('35','22','浦东新区','0');
INSERT INTO `yourphp_area` VALUES ('36','22','金山�\�','0');
INSERT INTO `yourphp_area` VALUES ('37','22','松江�\�','0');
INSERT INTO `yourphp_area` VALUES ('38','22','青浦�\�','0');
INSERT INTO `yourphp_area` VALUES ('39','22','南汇�\�','0');
INSERT INTO `yourphp_area` VALUES ('40','22','奉贤�\�','0');
INSERT INTO `yourphp_area` VALUES ('41','22','崇明�\�','0');
INSERT INTO `yourphp_area` VALUES ('42','0','天津','0');
INSERT INTO `yourphp_area` VALUES ('43','42','天津�\�','0');
INSERT INTO `yourphp_area` VALUES ('44','43','和平�\�','0');
INSERT INTO `yourphp_area` VALUES ('45','43','河东�\�','0');
INSERT INTO `yourphp_area` VALUES ('46','43','河西�\�','0');
INSERT INTO `yourphp_area` VALUES ('47','43','南开�\�','0');
INSERT INTO `yourphp_area` VALUES ('48','43','河北�\�','0');
INSERT INTO `yourphp_area` VALUES ('49','43','红桥�\�','0');
INSERT INTO `yourphp_area` VALUES ('50','43','塘沽�\�','0');
INSERT INTO `yourphp_area` VALUES ('51','43','汉沽�\�','0');
INSERT INTO `yourphp_area` VALUES ('52','43','大港�\�','0');
INSERT INTO `yourphp_area` VALUES ('53','43','东丽�\�','0');
INSERT INTO `yourphp_area` VALUES ('54','43','西青�\�','0');
INSERT INTO `yourphp_area` VALUES ('55','43','津南�\�','0');
INSERT INTO `yourphp_area` VALUES ('56','43','北辰�\�','0');
INSERT INTO `yourphp_area` VALUES ('57','43','武清�\�','0');
INSERT INTO `yourphp_area` VALUES ('58','43','宝坻�\�','0');
INSERT INTO `yourphp_area` VALUES ('59','43','宁河�\�','0');
INSERT INTO `yourphp_area` VALUES ('60','43','静海�\�','0');
INSERT INTO `yourphp_area` VALUES ('61','43','蓟县','0');
INSERT INTO `yourphp_area` VALUES ('62','0','重庆','0');
INSERT INTO `yourphp_area` VALUES ('63','62','重庆�\�','0');
INSERT INTO `yourphp_area` VALUES ('64','63','万州�\�','0');
INSERT INTO `yourphp_area` VALUES ('65','63','涪陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('66','63','渝中�\�','0');
INSERT INTO `yourphp_area` VALUES ('67','63','大渡口区','0');
INSERT INTO `yourphp_area` VALUES ('68','63','江北�\�','0');
INSERT INTO `yourphp_area` VALUES ('69','63','沙坪坝区','0');
INSERT INTO `yourphp_area` VALUES ('70','63','九龙坡区','0');
INSERT INTO `yourphp_area` VALUES ('71','63','南岸�\�','0');
INSERT INTO `yourphp_area` VALUES ('72','63','北碚�\�','0');
INSERT INTO `yourphp_area` VALUES ('73','63','万盛�\�','0');
INSERT INTO `yourphp_area` VALUES ('74','63','双桥�\�','0');
INSERT INTO `yourphp_area` VALUES ('75','63','渝北�\�','0');
INSERT INTO `yourphp_area` VALUES ('76','63','巴南�\�','0');
INSERT INTO `yourphp_area` VALUES ('77','63','黔江�\�','0');
INSERT INTO `yourphp_area` VALUES ('78','63','长寿�\�','0');
INSERT INTO `yourphp_area` VALUES ('79','63','綦江�\�','0');
INSERT INTO `yourphp_area` VALUES ('80','63','潼南�\�','0');
INSERT INTO `yourphp_area` VALUES ('81','63','铜梁�\�','0');
INSERT INTO `yourphp_area` VALUES ('82','63','大足�\�','0');
INSERT INTO `yourphp_area` VALUES ('83','63','荣昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('84','63','璧山�\�','0');
INSERT INTO `yourphp_area` VALUES ('85','63','梁平�\�','0');
INSERT INTO `yourphp_area` VALUES ('86','63','城口�\�','0');
INSERT INTO `yourphp_area` VALUES ('87','63','丰都�\�','0');
INSERT INTO `yourphp_area` VALUES ('88','63','垫江�\�','0');
INSERT INTO `yourphp_area` VALUES ('89','63','武隆�\�','0');
INSERT INTO `yourphp_area` VALUES ('90','63','忠县','0');
INSERT INTO `yourphp_area` VALUES ('91','63','开�\�','0');
INSERT INTO `yourphp_area` VALUES ('92','63','云阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('93','63','奉节�\�','0');
INSERT INTO `yourphp_area` VALUES ('94','63','巫山�\�','0');
INSERT INTO `yourphp_area` VALUES ('95','63','巫溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('96','63','石柱土家族自治县','0');
INSERT INTO `yourphp_area` VALUES ('97','63','秀山土家族苗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('98','63','酉阳土家族苗族自治县','0');
INSERT INTO `yourphp_area` VALUES ('99','63','彭水苗族土家族自治县','0');
INSERT INTO `yourphp_area` VALUES ('100','63','江津�\�','0');
INSERT INTO `yourphp_area` VALUES ('101','63','合川�\�','0');
INSERT INTO `yourphp_area` VALUES ('102','63','永川�\�','0');
INSERT INTO `yourphp_area` VALUES ('103','63','南川�\�','0');
INSERT INTO `yourphp_area` VALUES ('104','0','安徽','0');
INSERT INTO `yourphp_area` VALUES ('105','104','合肥�\�','0');
INSERT INTO `yourphp_area` VALUES ('106','105','瑶海�\�','0');
INSERT INTO `yourphp_area` VALUES ('107','105','庐阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('108','105','蜀山区','0');
INSERT INTO `yourphp_area` VALUES ('109','105','包河�\�','0');
INSERT INTO `yourphp_area` VALUES ('110','105','长丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('111','105','肥东�\�','0');
INSERT INTO `yourphp_area` VALUES ('112','105','肥西�\�','0');
INSERT INTO `yourphp_area` VALUES ('113','104','安庆�\�','0');
INSERT INTO `yourphp_area` VALUES ('114','113','迎江�\�','0');
INSERT INTO `yourphp_area` VALUES ('115','113','大观�\�','0');
INSERT INTO `yourphp_area` VALUES ('116','113','郊区','0');
INSERT INTO `yourphp_area` VALUES ('117','113','怀宁县','0');
INSERT INTO `yourphp_area` VALUES ('118','113','枞阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('119','113','潜山�\�','0');
INSERT INTO `yourphp_area` VALUES ('120','113','太湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('121','113','宿松�\�','0');
INSERT INTO `yourphp_area` VALUES ('122','113','望江�\�','0');
INSERT INTO `yourphp_area` VALUES ('123','113','岳西�\�','0');
INSERT INTO `yourphp_area` VALUES ('124','113','桐城�\�','0');
INSERT INTO `yourphp_area` VALUES ('125','104','蚌埠�\�','0');
INSERT INTO `yourphp_area` VALUES ('126','125','龙子湖区','0');
INSERT INTO `yourphp_area` VALUES ('127','125','蚌山�\�','0');
INSERT INTO `yourphp_area` VALUES ('128','125','禹会�\�','0');
INSERT INTO `yourphp_area` VALUES ('129','125','淮上�\�','0');
INSERT INTO `yourphp_area` VALUES ('130','125','怀远县','0');
INSERT INTO `yourphp_area` VALUES ('131','125','五河�\�','0');
INSERT INTO `yourphp_area` VALUES ('132','125','固镇�\�','0');
INSERT INTO `yourphp_area` VALUES ('133','104','亳州�\�','0');
INSERT INTO `yourphp_area` VALUES ('134','133','谯城�\�','0');
INSERT INTO `yourphp_area` VALUES ('135','133','涡阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('136','133','蒙城�\�','0');
INSERT INTO `yourphp_area` VALUES ('137','133','利辛�\�','0');
INSERT INTO `yourphp_area` VALUES ('138','104','巢湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('139','138','居巢�\�','0');
INSERT INTO `yourphp_area` VALUES ('140','138','庐江�\�','0');
INSERT INTO `yourphp_area` VALUES ('141','138','无为�\�','0');
INSERT INTO `yourphp_area` VALUES ('142','138','含山�\�','0');
INSERT INTO `yourphp_area` VALUES ('143','138','和县','0');
INSERT INTO `yourphp_area` VALUES ('144','104','池州�\�','0');
INSERT INTO `yourphp_area` VALUES ('145','144','贵池�\�','0');
INSERT INTO `yourphp_area` VALUES ('146','144','东至�\�','0');
INSERT INTO `yourphp_area` VALUES ('147','144','石台�\�','0');
INSERT INTO `yourphp_area` VALUES ('148','144','青阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('149','104','滁州�\�','0');
INSERT INTO `yourphp_area` VALUES ('150','149','琅琊�\�','0');
INSERT INTO `yourphp_area` VALUES ('151','149','南谯�\�','0');
INSERT INTO `yourphp_area` VALUES ('152','149','来安�\�','0');
INSERT INTO `yourphp_area` VALUES ('153','149','全椒�\�','0');
INSERT INTO `yourphp_area` VALUES ('154','149','定远�\�','0');
INSERT INTO `yourphp_area` VALUES ('155','149','凤阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('156','149','天长�\�','0');
INSERT INTO `yourphp_area` VALUES ('157','149','明光�\�','0');
INSERT INTO `yourphp_area` VALUES ('158','104','阜阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('159','158','颍州�\�','0');
INSERT INTO `yourphp_area` VALUES ('160','158','颍东�\�','0');
INSERT INTO `yourphp_area` VALUES ('161','158','颍泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('162','158','临泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('163','158','太和�\�','0');
INSERT INTO `yourphp_area` VALUES ('164','158','阜南�\�','0');
INSERT INTO `yourphp_area` VALUES ('165','158','颍上�\�','0');
INSERT INTO `yourphp_area` VALUES ('166','158','界首�\�','0');
INSERT INTO `yourphp_area` VALUES ('167','104','淮北�\�','0');
INSERT INTO `yourphp_area` VALUES ('168','167','杜集�\�','0');
INSERT INTO `yourphp_area` VALUES ('169','167','相山�\�','0');
INSERT INTO `yourphp_area` VALUES ('170','167','烈山�\�','0');
INSERT INTO `yourphp_area` VALUES ('171','167','濉溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('172','104','淮南�\�','0');
INSERT INTO `yourphp_area` VALUES ('173','172','大通区','0');
INSERT INTO `yourphp_area` VALUES ('174','172','田家庵区','0');
INSERT INTO `yourphp_area` VALUES ('175','172','谢家集区','0');
INSERT INTO `yourphp_area` VALUES ('176','172','八公山区','0');
INSERT INTO `yourphp_area` VALUES ('177','172','潘集�\�','0');
INSERT INTO `yourphp_area` VALUES ('178','172','凤台�\�','0');
INSERT INTO `yourphp_area` VALUES ('179','104','黄山�\�','0');
INSERT INTO `yourphp_area` VALUES ('180','179','屯溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('181','179','黄山�\�','0');
INSERT INTO `yourphp_area` VALUES ('182','179','徽州�\�','0');
INSERT INTO `yourphp_area` VALUES ('183','179','歙县','0');
INSERT INTO `yourphp_area` VALUES ('184','179','休宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('185','179','黟县','0');
INSERT INTO `yourphp_area` VALUES ('186','179','祁门�\�','0');
INSERT INTO `yourphp_area` VALUES ('187','104','六安�\�','0');
INSERT INTO `yourphp_area` VALUES ('188','187','金安�\�','0');
INSERT INTO `yourphp_area` VALUES ('189','187','裕安�\�','0');
INSERT INTO `yourphp_area` VALUES ('190','187','寿县','0');
INSERT INTO `yourphp_area` VALUES ('191','187','霍邱�\�','0');
INSERT INTO `yourphp_area` VALUES ('192','187','舒城�\�','0');
INSERT INTO `yourphp_area` VALUES ('193','187','金寨�\�','0');
INSERT INTO `yourphp_area` VALUES ('194','187','霍山�\�','0');
INSERT INTO `yourphp_area` VALUES ('195','104','马鞍山市','0');
INSERT INTO `yourphp_area` VALUES ('196','195','金家庄区','0');
INSERT INTO `yourphp_area` VALUES ('197','195','花山�\�','0');
INSERT INTO `yourphp_area` VALUES ('198','195','雨山�\�','0');
INSERT INTO `yourphp_area` VALUES ('199','195','当涂�\�','0');
INSERT INTO `yourphp_area` VALUES ('200','104','宿州�\�','0');
INSERT INTO `yourphp_area` VALUES ('201','200','墉桥�\�','0');
INSERT INTO `yourphp_area` VALUES ('202','200','砀山县','0');
INSERT INTO `yourphp_area` VALUES ('203','200','萧县','0');
INSERT INTO `yourphp_area` VALUES ('204','200','灵璧�\�','0');
INSERT INTO `yourphp_area` VALUES ('205','200','泗县','0');
INSERT INTO `yourphp_area` VALUES ('206','104','铜陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('207','206','铜官山区','0');
INSERT INTO `yourphp_area` VALUES ('208','206','狮子山区','0');
INSERT INTO `yourphp_area` VALUES ('209','206','郊区','0');
INSERT INTO `yourphp_area` VALUES ('210','206','铜陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('211','104','芜湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('212','211','镜湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('213','211','马塘�\�','0');
INSERT INTO `yourphp_area` VALUES ('214','211','新芜�\�','0');
INSERT INTO `yourphp_area` VALUES ('215','211','鸠江�\�','0');
INSERT INTO `yourphp_area` VALUES ('216','211','芜湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('217','211','繁昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('218','211','南陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('219','104','宣城�\�','0');
INSERT INTO `yourphp_area` VALUES ('220','219','宣州�\�','0');
INSERT INTO `yourphp_area` VALUES ('221','219','郎溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('222','219','广德�\�','0');
INSERT INTO `yourphp_area` VALUES ('223','219','泾县','0');
INSERT INTO `yourphp_area` VALUES ('224','219','绩溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('225','219','旌德�\�','0');
INSERT INTO `yourphp_area` VALUES ('226','219','宁国�\�','0');
INSERT INTO `yourphp_area` VALUES ('227','0','福建','0');
INSERT INTO `yourphp_area` VALUES ('228','227','福州�\�','0');
INSERT INTO `yourphp_area` VALUES ('229','228','鼓楼�\�','0');
INSERT INTO `yourphp_area` VALUES ('230','228','台江�\�','0');
INSERT INTO `yourphp_area` VALUES ('231','228','仓山�\�','0');
INSERT INTO `yourphp_area` VALUES ('232','228','马尾�\�','0');
INSERT INTO `yourphp_area` VALUES ('233','228','晋安�\�','0');
INSERT INTO `yourphp_area` VALUES ('234','228','闽侯�\�','0');
INSERT INTO `yourphp_area` VALUES ('235','228','连江�\�','0');
INSERT INTO `yourphp_area` VALUES ('236','228','罗源�\�','0');
INSERT INTO `yourphp_area` VALUES ('237','228','闽清�\�','0');
INSERT INTO `yourphp_area` VALUES ('238','228','永泰�\�','0');
INSERT INTO `yourphp_area` VALUES ('239','228','平潭�\�','0');
INSERT INTO `yourphp_area` VALUES ('240','228','福清�\�','0');
INSERT INTO `yourphp_area` VALUES ('241','228','长乐�\�','0');
INSERT INTO `yourphp_area` VALUES ('242','227','龙岩�\�','0');
INSERT INTO `yourphp_area` VALUES ('243','242','新罗�\�','0');
INSERT INTO `yourphp_area` VALUES ('244','242','长汀�\�','0');
INSERT INTO `yourphp_area` VALUES ('245','242','永定�\�','0');
INSERT INTO `yourphp_area` VALUES ('246','242','上杭�\�','0');
INSERT INTO `yourphp_area` VALUES ('247','242','武平�\�','0');
INSERT INTO `yourphp_area` VALUES ('248','242','连城�\�','0');
INSERT INTO `yourphp_area` VALUES ('249','242','漳平�\�','0');
INSERT INTO `yourphp_area` VALUES ('250','227','南平�\�','0');
INSERT INTO `yourphp_area` VALUES ('251','250','延平�\�','0');
INSERT INTO `yourphp_area` VALUES ('252','250','顺昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('253','250','浦城�\�','0');
INSERT INTO `yourphp_area` VALUES ('254','250','光泽�\�','0');
INSERT INTO `yourphp_area` VALUES ('255','250','松溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('256','250','政和�\�','0');
INSERT INTO `yourphp_area` VALUES ('257','250','邵武�\�','0');
INSERT INTO `yourphp_area` VALUES ('258','250','武夷山市','0');
INSERT INTO `yourphp_area` VALUES ('259','250','建瓯�\�','0');
INSERT INTO `yourphp_area` VALUES ('260','250','建阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('261','227','宁德�\�','0');
INSERT INTO `yourphp_area` VALUES ('262','261','蕉城�\�','0');
INSERT INTO `yourphp_area` VALUES ('263','261','霞浦�\�','0');
INSERT INTO `yourphp_area` VALUES ('264','261','古田�\�','0');
INSERT INTO `yourphp_area` VALUES ('265','261','屏南�\�','0');
INSERT INTO `yourphp_area` VALUES ('266','261','寿宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('267','261','周宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('268','261','柘荣�\�','0');
INSERT INTO `yourphp_area` VALUES ('269','261','福安�\�','0');
INSERT INTO `yourphp_area` VALUES ('270','261','福鼎�\�','0');
INSERT INTO `yourphp_area` VALUES ('271','227','莆田�\�','0');
INSERT INTO `yourphp_area` VALUES ('272','271','城厢�\�','0');
INSERT INTO `yourphp_area` VALUES ('273','271','涵江�\�','0');
INSERT INTO `yourphp_area` VALUES ('274','271','荔城�\�','0');
INSERT INTO `yourphp_area` VALUES ('275','271','秀屿区','0');
INSERT INTO `yourphp_area` VALUES ('276','271','仙游�\�','0');
INSERT INTO `yourphp_area` VALUES ('277','227','泉州�\�','0');
INSERT INTO `yourphp_area` VALUES ('278','277','鲤城�\�','0');
INSERT INTO `yourphp_area` VALUES ('279','277','丰泽�\�','0');
INSERT INTO `yourphp_area` VALUES ('280','277','洛江�\�','0');
INSERT INTO `yourphp_area` VALUES ('281','277','泉港�\�','0');
INSERT INTO `yourphp_area` VALUES ('282','277','惠安�\�','0');
INSERT INTO `yourphp_area` VALUES ('283','277','安溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('284','277','永春�\�','0');
INSERT INTO `yourphp_area` VALUES ('285','277','德化�\�','0');
INSERT INTO `yourphp_area` VALUES ('286','277','金门�\�','0');
INSERT INTO `yourphp_area` VALUES ('287','277','石狮�\�','0');
INSERT INTO `yourphp_area` VALUES ('288','277','晋江�\�','0');
INSERT INTO `yourphp_area` VALUES ('289','277','南安�\�','0');
INSERT INTO `yourphp_area` VALUES ('290','227','三明�\�','0');
INSERT INTO `yourphp_area` VALUES ('291','290','梅列�\�','0');
INSERT INTO `yourphp_area` VALUES ('292','290','三元�\�','0');
INSERT INTO `yourphp_area` VALUES ('293','290','明溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('294','290','清流�\�','0');
INSERT INTO `yourphp_area` VALUES ('295','290','宁化�\�','0');
INSERT INTO `yourphp_area` VALUES ('296','290','大田�\�','0');
INSERT INTO `yourphp_area` VALUES ('297','290','尤溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('298','290','沙县','0');
INSERT INTO `yourphp_area` VALUES ('299','290','将乐�\�','0');
INSERT INTO `yourphp_area` VALUES ('300','290','泰宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('301','290','建宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('302','290','永安�\�','0');
INSERT INTO `yourphp_area` VALUES ('303','227','厦门�\�','0');
INSERT INTO `yourphp_area` VALUES ('304','303','思明�\�','0');
INSERT INTO `yourphp_area` VALUES ('305','303','海沧�\�','0');
INSERT INTO `yourphp_area` VALUES ('306','303','湖里�\�','0');
INSERT INTO `yourphp_area` VALUES ('307','303','集美�\�','0');
INSERT INTO `yourphp_area` VALUES ('308','303','同安�\�','0');
INSERT INTO `yourphp_area` VALUES ('309','303','翔安�\�','0');
INSERT INTO `yourphp_area` VALUES ('310','227','漳州�\�','0');
INSERT INTO `yourphp_area` VALUES ('311','310','芗城�\�','0');
INSERT INTO `yourphp_area` VALUES ('312','310','龙文�\�','0');
INSERT INTO `yourphp_area` VALUES ('313','310','云霄�\�','0');
INSERT INTO `yourphp_area` VALUES ('314','310','漳浦�\�','0');
INSERT INTO `yourphp_area` VALUES ('315','310','诏安�\�','0');
INSERT INTO `yourphp_area` VALUES ('316','310','长泰�\�','0');
INSERT INTO `yourphp_area` VALUES ('317','310','东山�\�','0');
INSERT INTO `yourphp_area` VALUES ('318','310','南靖�\�','0');
INSERT INTO `yourphp_area` VALUES ('319','310','平和�\�','0');
INSERT INTO `yourphp_area` VALUES ('320','310','华安�\�','0');
INSERT INTO `yourphp_area` VALUES ('321','310','龙海�\�','0');
INSERT INTO `yourphp_area` VALUES ('322','0','甘肃','0');
INSERT INTO `yourphp_area` VALUES ('323','322','兰州�\�','0');
INSERT INTO `yourphp_area` VALUES ('324','323','城关�\�','0');
INSERT INTO `yourphp_area` VALUES ('325','323','七里河区','0');
INSERT INTO `yourphp_area` VALUES ('326','323','西固�\�','0');
INSERT INTO `yourphp_area` VALUES ('327','323','安宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('328','323','红古�\�','0');
INSERT INTO `yourphp_area` VALUES ('329','323','永登�\�','0');
INSERT INTO `yourphp_area` VALUES ('330','323','皋兰�\�','0');
INSERT INTO `yourphp_area` VALUES ('331','323','榆中�\�','0');
INSERT INTO `yourphp_area` VALUES ('332','322','白银�\�','0');
INSERT INTO `yourphp_area` VALUES ('333','332','白银�\�','0');
INSERT INTO `yourphp_area` VALUES ('334','332','平川�\�','0');
INSERT INTO `yourphp_area` VALUES ('335','332','靖远�\�','0');
INSERT INTO `yourphp_area` VALUES ('336','332','会宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('337','332','景泰�\�','0');
INSERT INTO `yourphp_area` VALUES ('338','322','定西�\�','0');
INSERT INTO `yourphp_area` VALUES ('339','338','安定�\�','0');
INSERT INTO `yourphp_area` VALUES ('340','338','通渭�\�','0');
INSERT INTO `yourphp_area` VALUES ('341','338','陇西�\�','0');
INSERT INTO `yourphp_area` VALUES ('342','338','渭源�\�','0');
INSERT INTO `yourphp_area` VALUES ('343','338','临洮�\�','0');
INSERT INTO `yourphp_area` VALUES ('344','338','漳县','0');
INSERT INTO `yourphp_area` VALUES ('345','338','岷县','0');
INSERT INTO `yourphp_area` VALUES ('346','322','甘南藏族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('347','346','合作�\�','0');
INSERT INTO `yourphp_area` VALUES ('348','346','临潭�\�','0');
INSERT INTO `yourphp_area` VALUES ('349','346','卓尼�\�','0');
INSERT INTO `yourphp_area` VALUES ('350','346','舟曲�\�','0');
INSERT INTO `yourphp_area` VALUES ('351','346','迭部�\�','0');
INSERT INTO `yourphp_area` VALUES ('352','346','玛曲�\�','0');
INSERT INTO `yourphp_area` VALUES ('353','346','碌曲�\�','0');
INSERT INTO `yourphp_area` VALUES ('354','346','夏河�\�','0');
INSERT INTO `yourphp_area` VALUES ('355','322','嘉峪关市','0');
INSERT INTO `yourphp_area` VALUES ('356','322','金昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('357','356','金川�\�','0');
INSERT INTO `yourphp_area` VALUES ('358','356','永昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('359','322','酒泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('360','359','肃州�\�','0');
INSERT INTO `yourphp_area` VALUES ('361','359','金塔�\�','0');
INSERT INTO `yourphp_area` VALUES ('362','359','安西�\�','0');
INSERT INTO `yourphp_area` VALUES ('363','359','肃北蒙古族自治县','0');
INSERT INTO `yourphp_area` VALUES ('364','359','阿克塞哈萨克族自治县','0');
INSERT INTO `yourphp_area` VALUES ('365','359','玉门�\�','0');
INSERT INTO `yourphp_area` VALUES ('366','359','敦煌�\�','0');
INSERT INTO `yourphp_area` VALUES ('367','322','临夏回族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('368','367','临夏�\�','0');
INSERT INTO `yourphp_area` VALUES ('369','367','临夏�\�','0');
INSERT INTO `yourphp_area` VALUES ('370','367','康乐�\�','0');
INSERT INTO `yourphp_area` VALUES ('371','367','永靖�\�','0');
INSERT INTO `yourphp_area` VALUES ('372','367','广河�\�','0');
INSERT INTO `yourphp_area` VALUES ('373','367','和政�\�','0');
INSERT INTO `yourphp_area` VALUES ('374','367','东乡族自治县','0');
INSERT INTO `yourphp_area` VALUES ('375','367','积石山保安族东乡族撒拉族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('376','322','陇南�\�','0');
INSERT INTO `yourphp_area` VALUES ('377','376','武都�\�','0');
INSERT INTO `yourphp_area` VALUES ('378','376','成县','0');
INSERT INTO `yourphp_area` VALUES ('379','376','文县','0');
INSERT INTO `yourphp_area` VALUES ('380','376','宕昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('381','376','康县','0');
INSERT INTO `yourphp_area` VALUES ('382','376','西和�\�','0');
INSERT INTO `yourphp_area` VALUES ('383','376','礼县','0');
INSERT INTO `yourphp_area` VALUES ('384','376','徽县','0');
INSERT INTO `yourphp_area` VALUES ('385','376','两当�\�','0');
INSERT INTO `yourphp_area` VALUES ('386','322','平凉�\�','0');
INSERT INTO `yourphp_area` VALUES ('387','386','崆峒�\�','0');
INSERT INTO `yourphp_area` VALUES ('388','386','泾川�\�','0');
INSERT INTO `yourphp_area` VALUES ('389','386','灵台�\�','0');
INSERT INTO `yourphp_area` VALUES ('390','386','崇信�\�','0');
INSERT INTO `yourphp_area` VALUES ('391','386','华亭�\�','0');
INSERT INTO `yourphp_area` VALUES ('392','386','庄浪�\�','0');
INSERT INTO `yourphp_area` VALUES ('393','386','静宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('394','322','庆阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('395','394','西峰�\�','0');
INSERT INTO `yourphp_area` VALUES ('396','394','庆城�\�','0');
INSERT INTO `yourphp_area` VALUES ('397','394','环县','0');
INSERT INTO `yourphp_area` VALUES ('398','394','华池�\�','0');
INSERT INTO `yourphp_area` VALUES ('399','394','合水�\�','0');
INSERT INTO `yourphp_area` VALUES ('400','394','正宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('401','394','宁县','0');
INSERT INTO `yourphp_area` VALUES ('402','394','镇原�\�','0');
INSERT INTO `yourphp_area` VALUES ('403','322','天水�\�','0');
INSERT INTO `yourphp_area` VALUES ('404','403','秦城�\�','0');
INSERT INTO `yourphp_area` VALUES ('405','403','北道�\�','0');
INSERT INTO `yourphp_area` VALUES ('406','403','清水�\�','0');
INSERT INTO `yourphp_area` VALUES ('407','403','秦安�\�','0');
INSERT INTO `yourphp_area` VALUES ('408','403','甘谷�\�','0');
INSERT INTO `yourphp_area` VALUES ('409','403','武山�\�','0');
INSERT INTO `yourphp_area` VALUES ('410','403','张家川回族自治县','0');
INSERT INTO `yourphp_area` VALUES ('411','322','武威�\�','0');
INSERT INTO `yourphp_area` VALUES ('412','411','凉州�\�','0');
INSERT INTO `yourphp_area` VALUES ('413','411','民勤�\�','0');
INSERT INTO `yourphp_area` VALUES ('414','411','古浪�\�','0');
INSERT INTO `yourphp_area` VALUES ('415','411','天祝藏族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('416','322','张掖�\�','0');
INSERT INTO `yourphp_area` VALUES ('417','416','甘州�\�','0');
INSERT INTO `yourphp_area` VALUES ('418','416','肃南裕固族自治县','0');
INSERT INTO `yourphp_area` VALUES ('419','416','民乐�\�','0');
INSERT INTO `yourphp_area` VALUES ('420','416','临泽�\�','0');
INSERT INTO `yourphp_area` VALUES ('421','416','高台�\�','0');
INSERT INTO `yourphp_area` VALUES ('422','416','山丹�\�','0');
INSERT INTO `yourphp_area` VALUES ('423','0','广东','0');
INSERT INTO `yourphp_area` VALUES ('424','423','广州�\�','0');
INSERT INTO `yourphp_area` VALUES ('425','424','东山�\�','0');
INSERT INTO `yourphp_area` VALUES ('426','424','荔湾�\�','0');
INSERT INTO `yourphp_area` VALUES ('427','424','越秀�\�','0');
INSERT INTO `yourphp_area` VALUES ('428','424','海珠�\�','0');
INSERT INTO `yourphp_area` VALUES ('429','424','天河�\�','0');
INSERT INTO `yourphp_area` VALUES ('430','424','芳村�\�','0');
INSERT INTO `yourphp_area` VALUES ('431','424','白云�\�','0');
INSERT INTO `yourphp_area` VALUES ('432','424','黄埔�\�','0');
INSERT INTO `yourphp_area` VALUES ('433','424','番禺�\�','0');
INSERT INTO `yourphp_area` VALUES ('434','424','花都�\�','0');
INSERT INTO `yourphp_area` VALUES ('435','424','增城�\�','0');
INSERT INTO `yourphp_area` VALUES ('436','424','从化�\�','0');
INSERT INTO `yourphp_area` VALUES ('437','423','潮州�\�','0');
INSERT INTO `yourphp_area` VALUES ('438','437','湘桥�\�','0');
INSERT INTO `yourphp_area` VALUES ('439','437','潮安�\�','0');
INSERT INTO `yourphp_area` VALUES ('440','437','饶平�\�','0');
INSERT INTO `yourphp_area` VALUES ('441','423','东莞�\�','0');
INSERT INTO `yourphp_area` VALUES ('442','423','佛山�\�','0');
INSERT INTO `yourphp_area` VALUES ('443','442','禅城�\�','0');
INSERT INTO `yourphp_area` VALUES ('444','442','南海�\�','0');
INSERT INTO `yourphp_area` VALUES ('445','442','顺德�\�','0');
INSERT INTO `yourphp_area` VALUES ('446','442','三水�\�','0');
INSERT INTO `yourphp_area` VALUES ('447','442','高明�\�','0');
INSERT INTO `yourphp_area` VALUES ('448','423','河源�\�','0');
INSERT INTO `yourphp_area` VALUES ('449','448','源城�\�','0');
INSERT INTO `yourphp_area` VALUES ('450','448','紫金�\�','0');
INSERT INTO `yourphp_area` VALUES ('451','448','龙川�\�','0');
INSERT INTO `yourphp_area` VALUES ('452','448','连平�\�','0');
INSERT INTO `yourphp_area` VALUES ('453','448','和平�\�','0');
INSERT INTO `yourphp_area` VALUES ('454','448','东源�\�','0');
INSERT INTO `yourphp_area` VALUES ('455','423','惠州�\�','0');
INSERT INTO `yourphp_area` VALUES ('456','455','惠城�\�','0');
INSERT INTO `yourphp_area` VALUES ('457','455','惠阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('458','455','博罗�\�','0');
INSERT INTO `yourphp_area` VALUES ('459','455','惠东�\�','0');
INSERT INTO `yourphp_area` VALUES ('460','455','龙门�\�','0');
INSERT INTO `yourphp_area` VALUES ('461','423','江门�\�','0');
INSERT INTO `yourphp_area` VALUES ('462','461','蓬江�\�','0');
INSERT INTO `yourphp_area` VALUES ('463','461','江海�\�','0');
INSERT INTO `yourphp_area` VALUES ('464','461','新会�\�','0');
INSERT INTO `yourphp_area` VALUES ('465','461','台山�\�','0');
INSERT INTO `yourphp_area` VALUES ('466','461','开平市','0');
INSERT INTO `yourphp_area` VALUES ('467','461','鹤山�\�','0');
INSERT INTO `yourphp_area` VALUES ('468','461','恩平�\�','0');
INSERT INTO `yourphp_area` VALUES ('469','423','揭阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('470','469','榕城�\�','0');
INSERT INTO `yourphp_area` VALUES ('471','469','揭东�\�','0');
INSERT INTO `yourphp_area` VALUES ('472','469','揭西�\�','0');
INSERT INTO `yourphp_area` VALUES ('473','469','惠来�\�','0');
INSERT INTO `yourphp_area` VALUES ('474','469','普宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('475','423','茂名�\�','0');
INSERT INTO `yourphp_area` VALUES ('476','475','茂南�\�','0');
INSERT INTO `yourphp_area` VALUES ('477','475','茂港�\�','0');
INSERT INTO `yourphp_area` VALUES ('478','475','电白�\�','0');
INSERT INTO `yourphp_area` VALUES ('479','475','高州�\�','0');
INSERT INTO `yourphp_area` VALUES ('480','475','化州�\�','0');
INSERT INTO `yourphp_area` VALUES ('481','475','信宜�\�','0');
INSERT INTO `yourphp_area` VALUES ('482','423','梅江�\�','0');
INSERT INTO `yourphp_area` VALUES ('483','423','梅州�\�','0');
INSERT INTO `yourphp_area` VALUES ('484','483','梅县','0');
INSERT INTO `yourphp_area` VALUES ('485','483','大埔�\�','0');
INSERT INTO `yourphp_area` VALUES ('486','483','丰顺�\�','0');
INSERT INTO `yourphp_area` VALUES ('487','483','五华�\�','0');
INSERT INTO `yourphp_area` VALUES ('488','483','平远�\�','0');
INSERT INTO `yourphp_area` VALUES ('489','483','蕉岭�\�','0');
INSERT INTO `yourphp_area` VALUES ('490','483','兴宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('491','423','清远�\�','0');
INSERT INTO `yourphp_area` VALUES ('492','491','清城�\�','0');
INSERT INTO `yourphp_area` VALUES ('493','491','佛冈�\�','0');
INSERT INTO `yourphp_area` VALUES ('494','491','阳山�\�','0');
INSERT INTO `yourphp_area` VALUES ('495','491','连山壮族瑶族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('496','491','连南瑶族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('497','491','清新�\�','0');
INSERT INTO `yourphp_area` VALUES ('498','491','英德�\�','0');
INSERT INTO `yourphp_area` VALUES ('499','491','连州�\�','0');
INSERT INTO `yourphp_area` VALUES ('500','423','汕头�\�','0');
INSERT INTO `yourphp_area` VALUES ('501','500','龙湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('502','500','金平�\�','0');
INSERT INTO `yourphp_area` VALUES ('503','500','濠江�\�','0');
INSERT INTO `yourphp_area` VALUES ('504','500','潮阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('505','500','潮南�\�','0');
INSERT INTO `yourphp_area` VALUES ('506','500','澄海�\�','0');
INSERT INTO `yourphp_area` VALUES ('507','500','南澳�\�','0');
INSERT INTO `yourphp_area` VALUES ('508','423','汕尾�\�','0');
INSERT INTO `yourphp_area` VALUES ('509','508','城区','0');
INSERT INTO `yourphp_area` VALUES ('510','508','海丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('511','508','陆河�\�','0');
INSERT INTO `yourphp_area` VALUES ('512','508','陆丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('513','423','韶关�\�','0');
INSERT INTO `yourphp_area` VALUES ('514','513','武江�\�','0');
INSERT INTO `yourphp_area` VALUES ('515','513','浈江�\�','0');
INSERT INTO `yourphp_area` VALUES ('516','513','曲江�\�','0');
INSERT INTO `yourphp_area` VALUES ('517','513','始兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('518','513','仁化�\�','0');
INSERT INTO `yourphp_area` VALUES ('519','513','翁源�\�','0');
INSERT INTO `yourphp_area` VALUES ('520','513','乳源瑶族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('521','513','新丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('522','513','乐昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('523','513','南雄�\�','0');
INSERT INTO `yourphp_area` VALUES ('524','423','深圳�\�','0');
INSERT INTO `yourphp_area` VALUES ('525','524','罗湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('526','524','福田�\�','0');
INSERT INTO `yourphp_area` VALUES ('527','524','南山�\�','0');
INSERT INTO `yourphp_area` VALUES ('528','524','宝安�\�','0');
INSERT INTO `yourphp_area` VALUES ('529','524','龙岗�\�','0');
INSERT INTO `yourphp_area` VALUES ('530','524','盐田�\�','0');
INSERT INTO `yourphp_area` VALUES ('531','423','阳江�\�','0');
INSERT INTO `yourphp_area` VALUES ('532','531','江城�\�','0');
INSERT INTO `yourphp_area` VALUES ('533','531','阳西�\�','0');
INSERT INTO `yourphp_area` VALUES ('534','531','阳东�\�','0');
INSERT INTO `yourphp_area` VALUES ('535','531','阳春�\�','0');
INSERT INTO `yourphp_area` VALUES ('536','423','云浮�\�','0');
INSERT INTO `yourphp_area` VALUES ('537','536','云城�\�','0');
INSERT INTO `yourphp_area` VALUES ('538','536','新兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('539','536','郁南�\�','0');
INSERT INTO `yourphp_area` VALUES ('540','536','云安�\�','0');
INSERT INTO `yourphp_area` VALUES ('541','536','罗定�\�','0');
INSERT INTO `yourphp_area` VALUES ('542','423','湛江�\�','0');
INSERT INTO `yourphp_area` VALUES ('543','542','赤坎�\�','0');
INSERT INTO `yourphp_area` VALUES ('544','542','霞山�\�','0');
INSERT INTO `yourphp_area` VALUES ('545','542','坡头�\�','0');
INSERT INTO `yourphp_area` VALUES ('546','542','麻章�\�','0');
INSERT INTO `yourphp_area` VALUES ('547','542','遂溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('548','542','徐闻�\�','0');
INSERT INTO `yourphp_area` VALUES ('549','542','廉江�\�','0');
INSERT INTO `yourphp_area` VALUES ('550','542','雷州�\�','0');
INSERT INTO `yourphp_area` VALUES ('551','542','吴川�\�','0');
INSERT INTO `yourphp_area` VALUES ('552','423','肇庆�\�','0');
INSERT INTO `yourphp_area` VALUES ('553','552','端州�\�','0');
INSERT INTO `yourphp_area` VALUES ('554','552','鼎湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('555','552','广宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('556','552','怀集县','0');
INSERT INTO `yourphp_area` VALUES ('557','552','封开�\�','0');
INSERT INTO `yourphp_area` VALUES ('558','552','德庆�\�','0');
INSERT INTO `yourphp_area` VALUES ('559','552','高要�\�','0');
INSERT INTO `yourphp_area` VALUES ('560','552','四会�\�','0');
INSERT INTO `yourphp_area` VALUES ('561','423','中山�\�','0');
INSERT INTO `yourphp_area` VALUES ('562','423','珠海�\�','0');
INSERT INTO `yourphp_area` VALUES ('563','562','香洲�\�','0');
INSERT INTO `yourphp_area` VALUES ('564','562','斗门�\�','0');
INSERT INTO `yourphp_area` VALUES ('565','562','金湾�\�','0');
INSERT INTO `yourphp_area` VALUES ('566','0','广西','0');
INSERT INTO `yourphp_area` VALUES ('567','566','南宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('568','567','兴宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('569','567','青秀�\�','0');
INSERT INTO `yourphp_area` VALUES ('570','567','江南�\�','0');
INSERT INTO `yourphp_area` VALUES ('571','567','西乡塘区','0');
INSERT INTO `yourphp_area` VALUES ('572','567','良庆�\�','0');
INSERT INTO `yourphp_area` VALUES ('573','567','邕宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('574','567','武鸣�\�','0');
INSERT INTO `yourphp_area` VALUES ('575','567','隆安�\�','0');
INSERT INTO `yourphp_area` VALUES ('576','567','马山�\�','0');
INSERT INTO `yourphp_area` VALUES ('577','567','上林�\�','0');
INSERT INTO `yourphp_area` VALUES ('578','567','宾阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('579','567','横县','0');
INSERT INTO `yourphp_area` VALUES ('580','566','百色�\�','0');
INSERT INTO `yourphp_area` VALUES ('581','580','右江�\�','0');
INSERT INTO `yourphp_area` VALUES ('582','580','田阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('583','580','田东�\�','0');
INSERT INTO `yourphp_area` VALUES ('584','580','平果�\�','0');
INSERT INTO `yourphp_area` VALUES ('585','580','德保�\�','0');
INSERT INTO `yourphp_area` VALUES ('586','580','靖西�\�','0');
INSERT INTO `yourphp_area` VALUES ('587','580','那坡�\�','0');
INSERT INTO `yourphp_area` VALUES ('588','580','凌云�\�','0');
INSERT INTO `yourphp_area` VALUES ('589','580','乐业�\�','0');
INSERT INTO `yourphp_area` VALUES ('590','580','田林�\�','0');
INSERT INTO `yourphp_area` VALUES ('591','580','西林�\�','0');
INSERT INTO `yourphp_area` VALUES ('592','580','隆林各族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('593','566','北海�\�','0');
INSERT INTO `yourphp_area` VALUES ('594','593','海城�\�','0');
INSERT INTO `yourphp_area` VALUES ('595','593','银海�\�','0');
INSERT INTO `yourphp_area` VALUES ('596','593','铁山港区','0');
INSERT INTO `yourphp_area` VALUES ('597','593','合浦�\�','0');
INSERT INTO `yourphp_area` VALUES ('598','566','崇左�\�','0');
INSERT INTO `yourphp_area` VALUES ('599','598','江洲�\�','0');
INSERT INTO `yourphp_area` VALUES ('600','598','扶绥�\�','0');
INSERT INTO `yourphp_area` VALUES ('601','598','宁明�\�','0');
INSERT INTO `yourphp_area` VALUES ('602','598','龙州�\�','0');
INSERT INTO `yourphp_area` VALUES ('603','598','大新�\�','0');
INSERT INTO `yourphp_area` VALUES ('604','598','天等�\�','0');
INSERT INTO `yourphp_area` VALUES ('605','598','凭祥�\�','0');
INSERT INTO `yourphp_area` VALUES ('606','566','防城港市','0');
INSERT INTO `yourphp_area` VALUES ('607','606','港口�\�','0');
INSERT INTO `yourphp_area` VALUES ('608','606','防城�\�','0');
INSERT INTO `yourphp_area` VALUES ('609','606','上思县','0');
INSERT INTO `yourphp_area` VALUES ('610','606','东兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('611','566','贵港�\�','0');
INSERT INTO `yourphp_area` VALUES ('612','611','港北�\�','0');
INSERT INTO `yourphp_area` VALUES ('613','611','港南�\�','0');
INSERT INTO `yourphp_area` VALUES ('614','611','覃塘�\�','0');
INSERT INTO `yourphp_area` VALUES ('615','611','平南�\�','0');
INSERT INTO `yourphp_area` VALUES ('616','611','桂平�\�','0');
INSERT INTO `yourphp_area` VALUES ('617','566','桂林�\�','0');
INSERT INTO `yourphp_area` VALUES ('618','617','秀峰区','0');
INSERT INTO `yourphp_area` VALUES ('619','617','叠彩�\�','0');
INSERT INTO `yourphp_area` VALUES ('620','617','象山�\�','0');
INSERT INTO `yourphp_area` VALUES ('621','617','七星�\�','0');
INSERT INTO `yourphp_area` VALUES ('622','617','雁山�\�','0');
INSERT INTO `yourphp_area` VALUES ('623','617','阳朔�\�','0');
INSERT INTO `yourphp_area` VALUES ('624','617','临桂�\�','0');
INSERT INTO `yourphp_area` VALUES ('625','617','灵川�\�','0');
INSERT INTO `yourphp_area` VALUES ('626','617','全州�\�','0');
INSERT INTO `yourphp_area` VALUES ('627','617','兴安�\�','0');
INSERT INTO `yourphp_area` VALUES ('628','617','永福�\�','0');
INSERT INTO `yourphp_area` VALUES ('629','617','灌阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('630','617','龙胜各族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('631','617','资源�\�','0');
INSERT INTO `yourphp_area` VALUES ('632','617','平乐�\�','0');
INSERT INTO `yourphp_area` VALUES ('633','617','荔蒲�\�','0');
INSERT INTO `yourphp_area` VALUES ('634','617','恭城瑶族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('635','566','河池�\�','0');
INSERT INTO `yourphp_area` VALUES ('636','635','金城江区','0');
INSERT INTO `yourphp_area` VALUES ('637','635','南丹�\�','0');
INSERT INTO `yourphp_area` VALUES ('638','635','天峨�\�','0');
INSERT INTO `yourphp_area` VALUES ('639','635','凤山�\�','0');
INSERT INTO `yourphp_area` VALUES ('640','635','东兰�\�','0');
INSERT INTO `yourphp_area` VALUES ('641','635','罗城仫佬族自治县','0');
INSERT INTO `yourphp_area` VALUES ('642','635','环江毛南族自治县','0');
INSERT INTO `yourphp_area` VALUES ('643','635','巴马瑶族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('644','635','都安瑶族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('645','635','大化瑶族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('646','635','宜州�\�','0');
INSERT INTO `yourphp_area` VALUES ('647','566','贺州�\�','0');
INSERT INTO `yourphp_area` VALUES ('648','647','八步�\�','0');
INSERT INTO `yourphp_area` VALUES ('649','647','昭平�\�','0');
INSERT INTO `yourphp_area` VALUES ('650','647','钟山�\�','0');
INSERT INTO `yourphp_area` VALUES ('651','647','富川瑶族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('652','566','来宾�\�','0');
INSERT INTO `yourphp_area` VALUES ('653','652','兴宾�\�','0');
INSERT INTO `yourphp_area` VALUES ('654','652','忻城�\�','0');
INSERT INTO `yourphp_area` VALUES ('655','652','象州�\�','0');
INSERT INTO `yourphp_area` VALUES ('656','652','武宣�\�','0');
INSERT INTO `yourphp_area` VALUES ('657','652','金秀瑶族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('658','652','合山�\�','0');
INSERT INTO `yourphp_area` VALUES ('659','566','柳州�\�','0');
INSERT INTO `yourphp_area` VALUES ('660','659','城中�\�','0');
INSERT INTO `yourphp_area` VALUES ('661','659','鱼峰�\�','0');
INSERT INTO `yourphp_area` VALUES ('662','659','柳南�\�','0');
INSERT INTO `yourphp_area` VALUES ('663','659','柳北�\�','0');
INSERT INTO `yourphp_area` VALUES ('664','659','柳江�\�','0');
INSERT INTO `yourphp_area` VALUES ('665','659','柳城�\�','0');
INSERT INTO `yourphp_area` VALUES ('666','659','鹿寨�\�','0');
INSERT INTO `yourphp_area` VALUES ('667','659','融安�\�','0');
INSERT INTO `yourphp_area` VALUES ('668','659','融水苗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('669','659','三江侗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('670','566','钦州�\�','0');
INSERT INTO `yourphp_area` VALUES ('671','670','钦南�\�','0');
INSERT INTO `yourphp_area` VALUES ('672','670','钦北�\�','0');
INSERT INTO `yourphp_area` VALUES ('673','670','灵山�\�','0');
INSERT INTO `yourphp_area` VALUES ('674','670','浦北�\�','0');
INSERT INTO `yourphp_area` VALUES ('675','566','梧州�\�','0');
INSERT INTO `yourphp_area` VALUES ('676','675','万秀�\�','0');
INSERT INTO `yourphp_area` VALUES ('677','675','蝶山�\�','0');
INSERT INTO `yourphp_area` VALUES ('678','675','长洲�\�','0');
INSERT INTO `yourphp_area` VALUES ('679','675','苍梧�\�','0');
INSERT INTO `yourphp_area` VALUES ('680','675','藤县','0');
INSERT INTO `yourphp_area` VALUES ('681','675','蒙山�\�','0');
INSERT INTO `yourphp_area` VALUES ('682','675','岑溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('683','566','玉林�\�','0');
INSERT INTO `yourphp_area` VALUES ('684','683','玉州�\�','0');
INSERT INTO `yourphp_area` VALUES ('685','683','容县','0');
INSERT INTO `yourphp_area` VALUES ('686','683','陆川�\�','0');
INSERT INTO `yourphp_area` VALUES ('687','683','博白�\�','0');
INSERT INTO `yourphp_area` VALUES ('688','683','兴业�\�','0');
INSERT INTO `yourphp_area` VALUES ('689','683','北流�\�','0');
INSERT INTO `yourphp_area` VALUES ('690','0','贵州','0');
INSERT INTO `yourphp_area` VALUES ('691','690','贵阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('692','691','南明�\�','0');
INSERT INTO `yourphp_area` VALUES ('693','691','云岩�\�','0');
INSERT INTO `yourphp_area` VALUES ('694','691','花溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('695','691','乌当�\�','0');
INSERT INTO `yourphp_area` VALUES ('696','691','白云�\�','0');
INSERT INTO `yourphp_area` VALUES ('697','691','小河�\�','0');
INSERT INTO `yourphp_area` VALUES ('698','691','开阳县','0');
INSERT INTO `yourphp_area` VALUES ('699','691','息烽�\�','0');
INSERT INTO `yourphp_area` VALUES ('700','691','修文�\�','0');
INSERT INTO `yourphp_area` VALUES ('701','691','清镇�\�','0');
INSERT INTO `yourphp_area` VALUES ('702','690','安顺�\�','0');
INSERT INTO `yourphp_area` VALUES ('703','702','西秀�\�','0');
INSERT INTO `yourphp_area` VALUES ('704','702','平坝�\�','0');
INSERT INTO `yourphp_area` VALUES ('705','702','普定�\�','0');
INSERT INTO `yourphp_area` VALUES ('706','702','镇宁布依族苗族自治县','0');
INSERT INTO `yourphp_area` VALUES ('707','702','关岭布依族苗族自治县','0');
INSERT INTO `yourphp_area` VALUES ('708','702','紫云苗族布依族自治县','0');
INSERT INTO `yourphp_area` VALUES ('709','690','毕节地区','0');
INSERT INTO `yourphp_area` VALUES ('710','709','毕节�\�','0');
INSERT INTO `yourphp_area` VALUES ('711','709','大方�\�','0');
INSERT INTO `yourphp_area` VALUES ('712','709','黔西�\�','0');
INSERT INTO `yourphp_area` VALUES ('713','709','金沙�\�','0');
INSERT INTO `yourphp_area` VALUES ('714','709','织金�\�','0');
INSERT INTO `yourphp_area` VALUES ('715','709','纳雍�\�','0');
INSERT INTO `yourphp_area` VALUES ('716','709','威宁彝族回族苗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('717','709','赫章�\�','0');
INSERT INTO `yourphp_area` VALUES ('718','690','六盘水市','0');
INSERT INTO `yourphp_area` VALUES ('719','718','钟山�\�','0');
INSERT INTO `yourphp_area` VALUES ('720','718','六枝特区','0');
INSERT INTO `yourphp_area` VALUES ('721','718','水城�\�','0');
INSERT INTO `yourphp_area` VALUES ('722','718','盘县','0');
INSERT INTO `yourphp_area` VALUES ('723','690','黔东南苗族侗族自治州','0');
INSERT INTO `yourphp_area` VALUES ('724','723','凯里�\�','0');
INSERT INTO `yourphp_area` VALUES ('725','723','黄平�\�','0');
INSERT INTO `yourphp_area` VALUES ('726','723','施秉�\�','0');
INSERT INTO `yourphp_area` VALUES ('727','723','三穗�\�','0');
INSERT INTO `yourphp_area` VALUES ('728','723','镇远�\�','0');
INSERT INTO `yourphp_area` VALUES ('729','723','岑巩�\�','0');
INSERT INTO `yourphp_area` VALUES ('730','723','天柱�\�','0');
INSERT INTO `yourphp_area` VALUES ('731','723','锦屏�\�','0');
INSERT INTO `yourphp_area` VALUES ('732','723','剑河�\�','0');
INSERT INTO `yourphp_area` VALUES ('733','723','台江�\�','0');
INSERT INTO `yourphp_area` VALUES ('734','723','黎平�\�','0');
INSERT INTO `yourphp_area` VALUES ('735','723','榕江�\�','0');
INSERT INTO `yourphp_area` VALUES ('736','723','从江�\�','0');
INSERT INTO `yourphp_area` VALUES ('737','723','雷山�\�','0');
INSERT INTO `yourphp_area` VALUES ('738','723','麻江�\�','0');
INSERT INTO `yourphp_area` VALUES ('739','723','丹寨�\�','0');
INSERT INTO `yourphp_area` VALUES ('740','690','黔南布依族苗族自治州','0');
INSERT INTO `yourphp_area` VALUES ('741','740','都匀�\�','0');
INSERT INTO `yourphp_area` VALUES ('742','740','福泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('743','740','荔波�\�','0');
INSERT INTO `yourphp_area` VALUES ('744','740','贵定�\�','0');
INSERT INTO `yourphp_area` VALUES ('745','740','瓮安�\�','0');
INSERT INTO `yourphp_area` VALUES ('746','740','独山�\�','0');
INSERT INTO `yourphp_area` VALUES ('747','740','平塘�\�','0');
INSERT INTO `yourphp_area` VALUES ('748','740','罗甸�\�','0');
INSERT INTO `yourphp_area` VALUES ('749','740','长顺�\�','0');
INSERT INTO `yourphp_area` VALUES ('750','740','龙里�\�','0');
INSERT INTO `yourphp_area` VALUES ('751','740','惠水�\�','0');
INSERT INTO `yourphp_area` VALUES ('752','740','三都水族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('753','690','黔西南布依族苗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('754','753','兴义�\�','0');
INSERT INTO `yourphp_area` VALUES ('755','753','兴仁�\�','0');
INSERT INTO `yourphp_area` VALUES ('756','753','普安�\�','0');
INSERT INTO `yourphp_area` VALUES ('757','753','晴隆�\�','0');
INSERT INTO `yourphp_area` VALUES ('758','753','贞丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('759','753','望谟�\�','0');
INSERT INTO `yourphp_area` VALUES ('760','753','册亨�\�','0');
INSERT INTO `yourphp_area` VALUES ('761','753','安龙�\�','0');
INSERT INTO `yourphp_area` VALUES ('762','690','铜仁地区','0');
INSERT INTO `yourphp_area` VALUES ('763','762','铜仁�\�','0');
INSERT INTO `yourphp_area` VALUES ('764','762','江口�\�','0');
INSERT INTO `yourphp_area` VALUES ('765','762','玉屏侗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('766','762','石阡�\�','0');
INSERT INTO `yourphp_area` VALUES ('767','762','思南�\�','0');
INSERT INTO `yourphp_area` VALUES ('768','762','印江土家族苗族自治县','0');
INSERT INTO `yourphp_area` VALUES ('769','762','德江�\�','0');
INSERT INTO `yourphp_area` VALUES ('770','762','沿河土家族自治县','0');
INSERT INTO `yourphp_area` VALUES ('771','762','松桃苗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('772','762','万山特区','0');
INSERT INTO `yourphp_area` VALUES ('773','690','遵义�\�','0');
INSERT INTO `yourphp_area` VALUES ('774','773','红花岗区','0');
INSERT INTO `yourphp_area` VALUES ('775','773','汇川�\�','0');
INSERT INTO `yourphp_area` VALUES ('776','773','遵义�\�','0');
INSERT INTO `yourphp_area` VALUES ('777','773','桐梓�\�','0');
INSERT INTO `yourphp_area` VALUES ('778','773','绥阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('779','773','正安�\�','0');
INSERT INTO `yourphp_area` VALUES ('780','773','道真仡佬族苗族自治县','0');
INSERT INTO `yourphp_area` VALUES ('781','773','务川仡佬族苗族自治县','0');
INSERT INTO `yourphp_area` VALUES ('782','773','凤冈�\�','0');
INSERT INTO `yourphp_area` VALUES ('783','773','湄潭�\�','0');
INSERT INTO `yourphp_area` VALUES ('784','773','余庆�\�','0');
INSERT INTO `yourphp_area` VALUES ('785','773','习水�\�','0');
INSERT INTO `yourphp_area` VALUES ('786','773','赤水�\�','0');
INSERT INTO `yourphp_area` VALUES ('787','773','仁怀�\�','0');
INSERT INTO `yourphp_area` VALUES ('788','0','海南','0');
INSERT INTO `yourphp_area` VALUES ('789','788','海口�\�','0');
INSERT INTO `yourphp_area` VALUES ('790','789','秀英区','0');
INSERT INTO `yourphp_area` VALUES ('791','789','龙华�\�','0');
INSERT INTO `yourphp_area` VALUES ('792','789','琼山�\�','0');
INSERT INTO `yourphp_area` VALUES ('793','789','美兰�\�','0');
INSERT INTO `yourphp_area` VALUES ('794','788','白沙黎族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('795','788','保亭黎族苗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('796','788','昌江黎族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('797','788','澄迈�\�','0');
INSERT INTO `yourphp_area` VALUES ('798','788','儋州�\�','0');
INSERT INTO `yourphp_area` VALUES ('799','788','定安�\�','0');
INSERT INTO `yourphp_area` VALUES ('800','788','东方�\�','0');
INSERT INTO `yourphp_area` VALUES ('801','788','乐东黎族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('802','788','临高�\�','0');
INSERT INTO `yourphp_area` VALUES ('803','788','陵水黎族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('804','788','南沙群岛','0');
INSERT INTO `yourphp_area` VALUES ('805','788','琼海�\�','0');
INSERT INTO `yourphp_area` VALUES ('806','788','琼中黎族苗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('807','788','三亚�\�','0');
INSERT INTO `yourphp_area` VALUES ('808','788','屯昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('809','788','万宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('810','788','文昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('811','788','五指山市','0');
INSERT INTO `yourphp_area` VALUES ('812','788','西沙群岛','0');
INSERT INTO `yourphp_area` VALUES ('813','788','中沙群岛的岛礁及其海�\�','0');
INSERT INTO `yourphp_area` VALUES ('814','0','河北','0');
INSERT INTO `yourphp_area` VALUES ('815','814','石家庄市','0');
INSERT INTO `yourphp_area` VALUES ('816','815','长安�\�','0');
INSERT INTO `yourphp_area` VALUES ('817','815','桥东�\�','0');
INSERT INTO `yourphp_area` VALUES ('818','815','桥西�\�','0');
INSERT INTO `yourphp_area` VALUES ('819','815','新华�\�','0');
INSERT INTO `yourphp_area` VALUES ('820','815','井陉矿区','0');
INSERT INTO `yourphp_area` VALUES ('821','815','裕华�\�','0');
INSERT INTO `yourphp_area` VALUES ('822','815','井陉�\�','0');
INSERT INTO `yourphp_area` VALUES ('823','815','正定�\�','0');
INSERT INTO `yourphp_area` VALUES ('824','815','栾城�\�','0');
INSERT INTO `yourphp_area` VALUES ('825','815','行唐�\�','0');
INSERT INTO `yourphp_area` VALUES ('826','815','灵寿�\�','0');
INSERT INTO `yourphp_area` VALUES ('827','815','高邑�\�','0');
INSERT INTO `yourphp_area` VALUES ('828','815','深泽�\�','0');
INSERT INTO `yourphp_area` VALUES ('829','815','赞皇�\�','0');
INSERT INTO `yourphp_area` VALUES ('830','815','无极�\�','0');
INSERT INTO `yourphp_area` VALUES ('831','815','平山�\�','0');
INSERT INTO `yourphp_area` VALUES ('832','815','元氏�\�','0');
INSERT INTO `yourphp_area` VALUES ('833','815','赵县','0');
INSERT INTO `yourphp_area` VALUES ('834','815','辛集�\�','0');
INSERT INTO `yourphp_area` VALUES ('835','815','藁城�\�','0');
INSERT INTO `yourphp_area` VALUES ('836','815','晋州�\�','0');
INSERT INTO `yourphp_area` VALUES ('837','815','新乐�\�','0');
INSERT INTO `yourphp_area` VALUES ('838','815','鹿泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('839','814','保定�\�','0');
INSERT INTO `yourphp_area` VALUES ('840','839','新市�\�','0');
INSERT INTO `yourphp_area` VALUES ('841','839','北市�\�','0');
INSERT INTO `yourphp_area` VALUES ('842','839','南市�\�','0');
INSERT INTO `yourphp_area` VALUES ('843','839','满城�\�','0');
INSERT INTO `yourphp_area` VALUES ('844','839','清苑�\�','0');
INSERT INTO `yourphp_area` VALUES ('845','839','涞水�\�','0');
INSERT INTO `yourphp_area` VALUES ('846','839','阜平�\�','0');
INSERT INTO `yourphp_area` VALUES ('847','839','徐水�\�','0');
INSERT INTO `yourphp_area` VALUES ('848','839','定兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('849','839','唐县','0');
INSERT INTO `yourphp_area` VALUES ('850','839','高阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('851','839','容城�\�','0');
INSERT INTO `yourphp_area` VALUES ('852','839','涞源�\�','0');
INSERT INTO `yourphp_area` VALUES ('853','839','望都�\�','0');
INSERT INTO `yourphp_area` VALUES ('854','839','安新�\�','0');
INSERT INTO `yourphp_area` VALUES ('855','839','易县','0');
INSERT INTO `yourphp_area` VALUES ('856','839','曲阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('857','839','蠡县','0');
INSERT INTO `yourphp_area` VALUES ('858','839','顺平�\�','0');
INSERT INTO `yourphp_area` VALUES ('859','839','博野�\�','0');
INSERT INTO `yourphp_area` VALUES ('860','839','雄县','0');
INSERT INTO `yourphp_area` VALUES ('861','839','涿州�\�','0');
INSERT INTO `yourphp_area` VALUES ('862','839','定州�\�','0');
INSERT INTO `yourphp_area` VALUES ('863','839','安国�\�','0');
INSERT INTO `yourphp_area` VALUES ('864','839','高碑店市','0');
INSERT INTO `yourphp_area` VALUES ('865','814','沧州�\�','0');
INSERT INTO `yourphp_area` VALUES ('866','865','新华�\�','0');
INSERT INTO `yourphp_area` VALUES ('867','865','运河�\�','0');
INSERT INTO `yourphp_area` VALUES ('868','865','沧县','0');
INSERT INTO `yourphp_area` VALUES ('869','865','青县','0');
INSERT INTO `yourphp_area` VALUES ('870','865','东光�\�','0');
INSERT INTO `yourphp_area` VALUES ('871','865','海兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('872','865','盐山�\�','0');
INSERT INTO `yourphp_area` VALUES ('873','865','肃宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('874','865','南皮�\�','0');
INSERT INTO `yourphp_area` VALUES ('875','865','吴桥�\�','0');
INSERT INTO `yourphp_area` VALUES ('876','865','献县','0');
INSERT INTO `yourphp_area` VALUES ('877','865','孟村回族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('878','865','泊头�\�','0');
INSERT INTO `yourphp_area` VALUES ('879','865','任丘�\�','0');
INSERT INTO `yourphp_area` VALUES ('880','865','黄骅�\�','0');
INSERT INTO `yourphp_area` VALUES ('881','865','河间�\�','0');
INSERT INTO `yourphp_area` VALUES ('882','814','承德�\�','0');
INSERT INTO `yourphp_area` VALUES ('883','882','双桥�\�','0');
INSERT INTO `yourphp_area` VALUES ('884','882','双滦�\�','0');
INSERT INTO `yourphp_area` VALUES ('885','882','鹰手营子矿区','0');
INSERT INTO `yourphp_area` VALUES ('886','882','承德�\�','0');
INSERT INTO `yourphp_area` VALUES ('887','882','兴隆�\�','0');
INSERT INTO `yourphp_area` VALUES ('888','882','平泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('889','882','滦平�\�','0');
INSERT INTO `yourphp_area` VALUES ('890','882','隆化�\�','0');
INSERT INTO `yourphp_area` VALUES ('891','882','丰宁满族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('892','882','宽城满族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('893','882','围场满族蒙古族自治县','0');
INSERT INTO `yourphp_area` VALUES ('894','814','邯郸�\�','0');
INSERT INTO `yourphp_area` VALUES ('895','894','邯山�\�','0');
INSERT INTO `yourphp_area` VALUES ('896','894','丛台�\�','0');
INSERT INTO `yourphp_area` VALUES ('897','894','复兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('898','894','峰峰矿区','0');
INSERT INTO `yourphp_area` VALUES ('899','894','邯郸�\�','0');
INSERT INTO `yourphp_area` VALUES ('900','894','临漳�\�','0');
INSERT INTO `yourphp_area` VALUES ('901','894','成安�\�','0');
INSERT INTO `yourphp_area` VALUES ('902','894','大名�\�','0');
INSERT INTO `yourphp_area` VALUES ('903','894','涉县','0');
INSERT INTO `yourphp_area` VALUES ('904','894','磁县','0');
INSERT INTO `yourphp_area` VALUES ('905','894','肥乡�\�','0');
INSERT INTO `yourphp_area` VALUES ('906','894','永年�\�','0');
INSERT INTO `yourphp_area` VALUES ('907','894','邱县','0');
INSERT INTO `yourphp_area` VALUES ('908','894','鸡泽�\�','0');
INSERT INTO `yourphp_area` VALUES ('909','894','广平�\�','0');
INSERT INTO `yourphp_area` VALUES ('910','894','馆陶�\�','0');
INSERT INTO `yourphp_area` VALUES ('911','894','魏县','0');
INSERT INTO `yourphp_area` VALUES ('912','894','曲周�\�','0');
INSERT INTO `yourphp_area` VALUES ('913','894','武安�\�','0');
INSERT INTO `yourphp_area` VALUES ('914','814','衡水�\�','0');
INSERT INTO `yourphp_area` VALUES ('915','914','桃城�\�','0');
INSERT INTO `yourphp_area` VALUES ('916','914','枣强�\�','0');
INSERT INTO `yourphp_area` VALUES ('917','914','武邑�\�','0');
INSERT INTO `yourphp_area` VALUES ('918','914','武强�\�','0');
INSERT INTO `yourphp_area` VALUES ('919','914','饶阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('920','914','安平�\�','0');
INSERT INTO `yourphp_area` VALUES ('921','914','故城�\�','0');
INSERT INTO `yourphp_area` VALUES ('922','914','景县','0');
INSERT INTO `yourphp_area` VALUES ('923','914','阜城�\�','0');
INSERT INTO `yourphp_area` VALUES ('924','914','冀州市','0');
INSERT INTO `yourphp_area` VALUES ('925','914','深州�\�','0');
INSERT INTO `yourphp_area` VALUES ('926','814','廊坊�\�','0');
INSERT INTO `yourphp_area` VALUES ('927','926','安次�\�','0');
INSERT INTO `yourphp_area` VALUES ('928','926','广阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('929','926','固安�\�','0');
INSERT INTO `yourphp_area` VALUES ('930','926','永清�\�','0');
INSERT INTO `yourphp_area` VALUES ('931','926','香河�\�','0');
INSERT INTO `yourphp_area` VALUES ('932','926','大城�\�','0');
INSERT INTO `yourphp_area` VALUES ('933','926','文安�\�','0');
INSERT INTO `yourphp_area` VALUES ('934','926','大厂回族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('935','926','霸州�\�','0');
INSERT INTO `yourphp_area` VALUES ('936','926','三河�\�','0');
INSERT INTO `yourphp_area` VALUES ('937','814','秦皇岛市','0');
INSERT INTO `yourphp_area` VALUES ('938','937','海港�\�','0');
INSERT INTO `yourphp_area` VALUES ('939','937','山海关区','0');
INSERT INTO `yourphp_area` VALUES ('940','937','北戴河区','0');
INSERT INTO `yourphp_area` VALUES ('941','937','青龙满族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('942','937','昌黎�\�','0');
INSERT INTO `yourphp_area` VALUES ('943','937','抚宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('944','937','卢龙�\�','0');
INSERT INTO `yourphp_area` VALUES ('945','814','唐山�\�','0');
INSERT INTO `yourphp_area` VALUES ('946','945','路南�\�','0');
INSERT INTO `yourphp_area` VALUES ('947','945','路北�\�','0');
INSERT INTO `yourphp_area` VALUES ('948','945','古冶�\�','0');
INSERT INTO `yourphp_area` VALUES ('949','945','开平区','0');
INSERT INTO `yourphp_area` VALUES ('950','945','丰南�\�','0');
INSERT INTO `yourphp_area` VALUES ('951','945','丰润�\�','0');
INSERT INTO `yourphp_area` VALUES ('952','945','滦县','0');
INSERT INTO `yourphp_area` VALUES ('953','945','滦南�\�','0');
INSERT INTO `yourphp_area` VALUES ('954','945','乐亭�\�','0');
INSERT INTO `yourphp_area` VALUES ('955','945','迁西�\�','0');
INSERT INTO `yourphp_area` VALUES ('956','945','玉田�\�','0');
INSERT INTO `yourphp_area` VALUES ('957','945','唐海�\�','0');
INSERT INTO `yourphp_area` VALUES ('958','945','遵化�\�','0');
INSERT INTO `yourphp_area` VALUES ('959','945','迁安�\�','0');
INSERT INTO `yourphp_area` VALUES ('960','814','邢台�\�','0');
INSERT INTO `yourphp_area` VALUES ('961','960','桥东�\�','0');
INSERT INTO `yourphp_area` VALUES ('962','960','桥西�\�','0');
INSERT INTO `yourphp_area` VALUES ('963','960','邢台�\�','0');
INSERT INTO `yourphp_area` VALUES ('964','960','临城�\�','0');
INSERT INTO `yourphp_area` VALUES ('965','960','内丘�\�','0');
INSERT INTO `yourphp_area` VALUES ('966','960','柏乡�\�','0');
INSERT INTO `yourphp_area` VALUES ('967','960','隆尧�\�','0');
INSERT INTO `yourphp_area` VALUES ('968','960','任县','0');
INSERT INTO `yourphp_area` VALUES ('969','960','南和�\�','0');
INSERT INTO `yourphp_area` VALUES ('970','960','宁晋�\�','0');
INSERT INTO `yourphp_area` VALUES ('971','960','巨鹿�\�','0');
INSERT INTO `yourphp_area` VALUES ('972','960','新河�\�','0');
INSERT INTO `yourphp_area` VALUES ('973','960','广宗�\�','0');
INSERT INTO `yourphp_area` VALUES ('974','960','平乡�\�','0');
INSERT INTO `yourphp_area` VALUES ('975','960','威县','0');
INSERT INTO `yourphp_area` VALUES ('976','960','清河�\�','0');
INSERT INTO `yourphp_area` VALUES ('977','960','临西�\�','0');
INSERT INTO `yourphp_area` VALUES ('978','960','南宫�\�','0');
INSERT INTO `yourphp_area` VALUES ('979','960','沙河�\�','0');
INSERT INTO `yourphp_area` VALUES ('980','814','张家口市','0');
INSERT INTO `yourphp_area` VALUES ('981','980','桥东�\�','0');
INSERT INTO `yourphp_area` VALUES ('982','980','桥西�\�','0');
INSERT INTO `yourphp_area` VALUES ('983','980','宣化�\�','0');
INSERT INTO `yourphp_area` VALUES ('984','980','下花园区','0');
INSERT INTO `yourphp_area` VALUES ('985','980','宣化�\�','0');
INSERT INTO `yourphp_area` VALUES ('986','980','张北�\�','0');
INSERT INTO `yourphp_area` VALUES ('987','980','康保�\�','0');
INSERT INTO `yourphp_area` VALUES ('988','980','沽源�\�','0');
INSERT INTO `yourphp_area` VALUES ('989','980','尚义�\�','0');
INSERT INTO `yourphp_area` VALUES ('990','980','蔚县','0');
INSERT INTO `yourphp_area` VALUES ('991','980','阳原�\�','0');
INSERT INTO `yourphp_area` VALUES ('992','980','怀安县','0');
INSERT INTO `yourphp_area` VALUES ('993','980','万全�\�','0');
INSERT INTO `yourphp_area` VALUES ('994','980','怀来县','0');
INSERT INTO `yourphp_area` VALUES ('995','980','涿鹿�\�','0');
INSERT INTO `yourphp_area` VALUES ('996','980','赤城�\�','0');
INSERT INTO `yourphp_area` VALUES ('997','980','崇礼�\�','0');
INSERT INTO `yourphp_area` VALUES ('998','0','河南','0');
INSERT INTO `yourphp_area` VALUES ('999','998','郑州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1000','999','中原�\�','0');
INSERT INTO `yourphp_area` VALUES ('1001','999','二七�\�','0');
INSERT INTO `yourphp_area` VALUES ('1002','999','管城回族�\�','0');
INSERT INTO `yourphp_area` VALUES ('1003','999','金水�\�','0');
INSERT INTO `yourphp_area` VALUES ('1004','999','上街�\�','0');
INSERT INTO `yourphp_area` VALUES ('1005','999','邙山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1006','999','中牟�\�','0');
INSERT INTO `yourphp_area` VALUES ('1007','999','巩义�\�','0');
INSERT INTO `yourphp_area` VALUES ('1008','999','荥阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1009','999','新密�\�','0');
INSERT INTO `yourphp_area` VALUES ('1010','999','新郑�\�','0');
INSERT INTO `yourphp_area` VALUES ('1011','999','登封�\�','0');
INSERT INTO `yourphp_area` VALUES ('1012','998','安阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1013','1012','文峰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1014','1012','北关�\�','0');
INSERT INTO `yourphp_area` VALUES ('1015','1012','殷都�\�','0');
INSERT INTO `yourphp_area` VALUES ('1016','1012','龙安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1017','1012','安阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1018','1012','汤阴�\�','0');
INSERT INTO `yourphp_area` VALUES ('1019','1012','滑县','0');
INSERT INTO `yourphp_area` VALUES ('1020','1012','内黄�\�','0');
INSERT INTO `yourphp_area` VALUES ('1021','1012','林州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1022','998','鹤壁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1023','1022','鹤山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1024','1022','山城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1025','1022','淇滨�\�','0');
INSERT INTO `yourphp_area` VALUES ('1026','1022','浚县','0');
INSERT INTO `yourphp_area` VALUES ('1027','1022','淇县','0');
INSERT INTO `yourphp_area` VALUES ('1028','998','济源�\�','0');
INSERT INTO `yourphp_area` VALUES ('1029','998','焦作�\�','0');
INSERT INTO `yourphp_area` VALUES ('1030','1029','解放�\�','0');
INSERT INTO `yourphp_area` VALUES ('1031','1029','中站�\�','0');
INSERT INTO `yourphp_area` VALUES ('1032','1029','马村�\�','0');
INSERT INTO `yourphp_area` VALUES ('1033','1029','山阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1034','1029','修武�\�','0');
INSERT INTO `yourphp_area` VALUES ('1035','1029','博爱�\�','0');
INSERT INTO `yourphp_area` VALUES ('1036','1029','武陟�\�','0');
INSERT INTO `yourphp_area` VALUES ('1037','1029','温县','0');
INSERT INTO `yourphp_area` VALUES ('1038','1029','济源�\�','0');
INSERT INTO `yourphp_area` VALUES ('1039','1029','沁阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1040','1029','孟州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1041','998','开封市','0');
INSERT INTO `yourphp_area` VALUES ('1042','1041','龙亭�\�','0');
INSERT INTO `yourphp_area` VALUES ('1043','1041','顺河回族�\�','0');
INSERT INTO `yourphp_area` VALUES ('1044','1041','鼓楼�\�','0');
INSERT INTO `yourphp_area` VALUES ('1045','1041','南关�\�','0');
INSERT INTO `yourphp_area` VALUES ('1046','1041','郊区','0');
INSERT INTO `yourphp_area` VALUES ('1047','1041','杞县','0');
INSERT INTO `yourphp_area` VALUES ('1048','1041','通许�\�','0');
INSERT INTO `yourphp_area` VALUES ('1049','1041','尉氏�\�','0');
INSERT INTO `yourphp_area` VALUES ('1050','1041','开封县','0');
INSERT INTO `yourphp_area` VALUES ('1051','1041','兰考县','0');
INSERT INTO `yourphp_area` VALUES ('1052','998','洛阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1053','1052','老城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1054','1052','西工�\�','0');
INSERT INTO `yourphp_area` VALUES ('1055','1052','廛河回族�\�','0');
INSERT INTO `yourphp_area` VALUES ('1056','1052','涧西�\�','0');
INSERT INTO `yourphp_area` VALUES ('1057','1052','吉利�\�','0');
INSERT INTO `yourphp_area` VALUES ('1058','1052','洛龙�\�','0');
INSERT INTO `yourphp_area` VALUES ('1059','1052','孟津�\�','0');
INSERT INTO `yourphp_area` VALUES ('1060','1052','新安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1061','1052','栾川�\�','0');
INSERT INTO `yourphp_area` VALUES ('1062','1052','嵩县','0');
INSERT INTO `yourphp_area` VALUES ('1063','1052','汝阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1064','1052','宜阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1065','1052','洛宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1066','1052','伊川�\�','0');
INSERT INTO `yourphp_area` VALUES ('1067','1052','偃师�\�','0');
INSERT INTO `yourphp_area` VALUES ('1068','998','漯河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1069','1068','源汇�\�','0');
INSERT INTO `yourphp_area` VALUES ('1070','1068','郾城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1071','1068','召陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('1072','1068','舞阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1073','1068','临颍�\�','0');
INSERT INTO `yourphp_area` VALUES ('1074','998','南阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1075','1074','宛城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1076','1074','卧龙�\�','0');
INSERT INTO `yourphp_area` VALUES ('1077','1074','南召�\�','0');
INSERT INTO `yourphp_area` VALUES ('1078','1074','方城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1079','1074','西峡�\�','0');
INSERT INTO `yourphp_area` VALUES ('1080','1074','镇平�\�','0');
INSERT INTO `yourphp_area` VALUES ('1081','1074','内乡�\�','0');
INSERT INTO `yourphp_area` VALUES ('1082','1074','淅川�\�','0');
INSERT INTO `yourphp_area` VALUES ('1083','1074','社旗�\�','0');
INSERT INTO `yourphp_area` VALUES ('1084','1074','唐河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1085','1074','新野�\�','0');
INSERT INTO `yourphp_area` VALUES ('1086','1074','桐柏�\�','0');
INSERT INTO `yourphp_area` VALUES ('1087','1074','邓州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1088','998','平顶山市','0');
INSERT INTO `yourphp_area` VALUES ('1089','1088','新华�\�','0');
INSERT INTO `yourphp_area` VALUES ('1090','1088','卫东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1091','1088','石龙�\�','0');
INSERT INTO `yourphp_area` VALUES ('1092','1088','湛河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1093','1088','宝丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1094','1088','叶县','0');
INSERT INTO `yourphp_area` VALUES ('1095','1088','鲁山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1096','1088','郏县','0');
INSERT INTO `yourphp_area` VALUES ('1097','1088','舞钢�\�','0');
INSERT INTO `yourphp_area` VALUES ('1098','1088','汝州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1099','998','濮阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1100','1099','华龙�\�','0');
INSERT INTO `yourphp_area` VALUES ('1101','1099','清丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1102','1099','南乐�\�','0');
INSERT INTO `yourphp_area` VALUES ('1103','1099','范县','0');
INSERT INTO `yourphp_area` VALUES ('1104','1099','台前�\�','0');
INSERT INTO `yourphp_area` VALUES ('1105','1099','濮阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1106','998','三门峡市','0');
INSERT INTO `yourphp_area` VALUES ('1107','1106','湖滨�\�','0');
INSERT INTO `yourphp_area` VALUES ('1108','1106','渑池�\�','0');
INSERT INTO `yourphp_area` VALUES ('1109','1106','陕县','0');
INSERT INTO `yourphp_area` VALUES ('1110','1106','卢氏�\�','0');
INSERT INTO `yourphp_area` VALUES ('1111','1106','义马�\�','0');
INSERT INTO `yourphp_area` VALUES ('1112','1106','灵宝�\�','0');
INSERT INTO `yourphp_area` VALUES ('1113','998','商丘�\�','0');
INSERT INTO `yourphp_area` VALUES ('1114','1113','梁园�\�','0');
INSERT INTO `yourphp_area` VALUES ('1115','1113','睢阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1116','1113','民权�\�','0');
INSERT INTO `yourphp_area` VALUES ('1117','1113','睢县','0');
INSERT INTO `yourphp_area` VALUES ('1118','1113','宁陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('1119','1113','柘城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1120','1113','虞城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1121','1113','夏邑�\�','0');
INSERT INTO `yourphp_area` VALUES ('1122','1113','永城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1123','998','新乡�\�','0');
INSERT INTO `yourphp_area` VALUES ('1124','1123','红旗�\�','0');
INSERT INTO `yourphp_area` VALUES ('1125','1123','卫滨�\�','0');
INSERT INTO `yourphp_area` VALUES ('1126','1123','凤泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('1127','1123','牧野�\�','0');
INSERT INTO `yourphp_area` VALUES ('1128','1123','新乡�\�','0');
INSERT INTO `yourphp_area` VALUES ('1129','1123','获嘉�\�','0');
INSERT INTO `yourphp_area` VALUES ('1130','1123','原阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1131','1123','延津�\�','0');
INSERT INTO `yourphp_area` VALUES ('1132','1123','封丘�\�','0');
INSERT INTO `yourphp_area` VALUES ('1133','1123','长垣�\�','0');
INSERT INTO `yourphp_area` VALUES ('1134','1123','卫辉�\�','0');
INSERT INTO `yourphp_area` VALUES ('1135','1123','辉县�\�','0');
INSERT INTO `yourphp_area` VALUES ('1136','998','信阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1137','1136','师河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1138','1136','平桥�\�','0');
INSERT INTO `yourphp_area` VALUES ('1139','1136','罗山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1140','1136','光山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1141','1136','新县','0');
INSERT INTO `yourphp_area` VALUES ('1142','1136','商城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1143','1136','固始�\�','0');
INSERT INTO `yourphp_area` VALUES ('1144','1136','潢川�\�','0');
INSERT INTO `yourphp_area` VALUES ('1145','1136','淮滨�\�','0');
INSERT INTO `yourphp_area` VALUES ('1146','1136','息县','0');
INSERT INTO `yourphp_area` VALUES ('1147','998','许昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('1148','1147','魏都�\�','0');
INSERT INTO `yourphp_area` VALUES ('1149','1147','许昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('1150','1147','鄢陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('1151','1147','襄城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1152','1147','禹州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1153','1147','长葛�\�','0');
INSERT INTO `yourphp_area` VALUES ('1154','998','周口�\�','0');
INSERT INTO `yourphp_area` VALUES ('1155','1154','川汇�\�','0');
INSERT INTO `yourphp_area` VALUES ('1156','1154','扶沟�\�','0');
INSERT INTO `yourphp_area` VALUES ('1157','1154','西华�\�','0');
INSERT INTO `yourphp_area` VALUES ('1158','1154','商水�\�','0');
INSERT INTO `yourphp_area` VALUES ('1159','1154','沈丘�\�','0');
INSERT INTO `yourphp_area` VALUES ('1160','1154','郸城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1161','1154','淮阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1162','1154','太康�\�','0');
INSERT INTO `yourphp_area` VALUES ('1163','1154','鹿邑�\�','0');
INSERT INTO `yourphp_area` VALUES ('1164','1154','项城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1165','998','驻马店市','0');
INSERT INTO `yourphp_area` VALUES ('1166','1165','驿城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1167','1165','西平�\�','0');
INSERT INTO `yourphp_area` VALUES ('1168','1165','上蔡�\�','0');
INSERT INTO `yourphp_area` VALUES ('1169','1165','平舆�\�','0');
INSERT INTO `yourphp_area` VALUES ('1170','1165','正阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1171','1165','确山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1172','1165','泌阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1173','1165','汝南�\�','0');
INSERT INTO `yourphp_area` VALUES ('1174','1165','遂平�\�','0');
INSERT INTO `yourphp_area` VALUES ('1175','1165','新蔡�\�','0');
INSERT INTO `yourphp_area` VALUES ('1176','0','黑龙�\�','0');
INSERT INTO `yourphp_area` VALUES ('1177','1176','哈尔滨市','0');
INSERT INTO `yourphp_area` VALUES ('1178','1177','道里�\�','0');
INSERT INTO `yourphp_area` VALUES ('1179','1177','南岗�\�','0');
INSERT INTO `yourphp_area` VALUES ('1180','1177','道外�\�','0');
INSERT INTO `yourphp_area` VALUES ('1181','1177','香坊�\�','0');
INSERT INTO `yourphp_area` VALUES ('1182','1177','动力�\�','0');
INSERT INTO `yourphp_area` VALUES ('1183','1177','平房�\�','0');
INSERT INTO `yourphp_area` VALUES ('1184','1177','松北�\�','0');
INSERT INTO `yourphp_area` VALUES ('1185','1177','呼兰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1186','1177','依兰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1187','1177','方正�\�','0');
INSERT INTO `yourphp_area` VALUES ('1188','1177','宾县','0');
INSERT INTO `yourphp_area` VALUES ('1189','1177','巴彦�\�','0');
INSERT INTO `yourphp_area` VALUES ('1190','1177','木兰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1191','1177','通河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1192','1177','延寿�\�','0');
INSERT INTO `yourphp_area` VALUES ('1193','1177','阿城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1194','1177','双城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1195','1177','尚志�\�','0');
INSERT INTO `yourphp_area` VALUES ('1196','1177','五常�\�','0');
INSERT INTO `yourphp_area` VALUES ('1197','1176','大庆�\�','0');
INSERT INTO `yourphp_area` VALUES ('1198','1197','萨尔图区','0');
INSERT INTO `yourphp_area` VALUES ('1199','1197','龙凤�\�','0');
INSERT INTO `yourphp_area` VALUES ('1200','1197','让胡路区','0');
INSERT INTO `yourphp_area` VALUES ('1201','1197','红岗�\�','0');
INSERT INTO `yourphp_area` VALUES ('1202','1197','大同�\�','0');
INSERT INTO `yourphp_area` VALUES ('1203','1197','肇州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1204','1197','肇源�\�','0');
INSERT INTO `yourphp_area` VALUES ('1205','1197','林甸�\�','0');
INSERT INTO `yourphp_area` VALUES ('1206','1197','杜尔伯特蒙古族自治县','0');
INSERT INTO `yourphp_area` VALUES ('1207','1176','大兴安岭地区','0');
INSERT INTO `yourphp_area` VALUES ('1208','1207','呼玛�\�','0');
INSERT INTO `yourphp_area` VALUES ('1209','1207','塔河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1210','1207','漠河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1211','1176','鹤岗�\�','0');
INSERT INTO `yourphp_area` VALUES ('1212','1211','向阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1213','1211','工农�\�','0');
INSERT INTO `yourphp_area` VALUES ('1214','1211','南山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1215','1211','兴安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1216','1211','东山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1217','1211','兴山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1218','1211','萝北�\�','0');
INSERT INTO `yourphp_area` VALUES ('1219','1211','绥滨�\�','0');
INSERT INTO `yourphp_area` VALUES ('1220','1176','黑河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1221','1220','爱辉�\�','0');
INSERT INTO `yourphp_area` VALUES ('1222','1220','嫩江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1223','1220','逊克�\�','0');
INSERT INTO `yourphp_area` VALUES ('1224','1220','孙吴�\�','0');
INSERT INTO `yourphp_area` VALUES ('1225','1220','北安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1226','1220','五大连池�\�','0');
INSERT INTO `yourphp_area` VALUES ('1227','1176','鸡西�\�','0');
INSERT INTO `yourphp_area` VALUES ('1228','1227','鸡冠�\�','0');
INSERT INTO `yourphp_area` VALUES ('1229','1227','恒山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1230','1227','滴道�\�','0');
INSERT INTO `yourphp_area` VALUES ('1231','1227','梨树�\�','0');
INSERT INTO `yourphp_area` VALUES ('1232','1227','城子河区','0');
INSERT INTO `yourphp_area` VALUES ('1233','1227','麻山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1234','1227','鸡东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1235','1227','虎林�\�','0');
INSERT INTO `yourphp_area` VALUES ('1236','1227','密山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1237','1176','佳木斯市','0');
INSERT INTO `yourphp_area` VALUES ('1238','1237','永红�\�','0');
INSERT INTO `yourphp_area` VALUES ('1239','1237','向阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1240','1237','前进�\�','0');
INSERT INTO `yourphp_area` VALUES ('1241','1237','东风�\�','0');
INSERT INTO `yourphp_area` VALUES ('1242','1237','郊区','0');
INSERT INTO `yourphp_area` VALUES ('1243','1237','桦南�\�','0');
INSERT INTO `yourphp_area` VALUES ('1244','1237','桦川�\�','0');
INSERT INTO `yourphp_area` VALUES ('1245','1237','汤原�\�','0');
INSERT INTO `yourphp_area` VALUES ('1246','1237','抚远�\�','0');
INSERT INTO `yourphp_area` VALUES ('1247','1237','同江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1248','1237','富锦�\�','0');
INSERT INTO `yourphp_area` VALUES ('1249','1176','牡丹江市','0');
INSERT INTO `yourphp_area` VALUES ('1250','1249','东安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1251','1249','阳明�\�','0');
INSERT INTO `yourphp_area` VALUES ('1252','1249','爱民�\�','0');
INSERT INTO `yourphp_area` VALUES ('1253','1249','西安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1254','1249','东宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1255','1249','林口�\�','0');
INSERT INTO `yourphp_area` VALUES ('1256','1249','绥芬河市','0');
INSERT INTO `yourphp_area` VALUES ('1257','1249','海林�\�','0');
INSERT INTO `yourphp_area` VALUES ('1258','1249','宁安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1259','1249','穆棱�\�','0');
INSERT INTO `yourphp_area` VALUES ('1260','1176','七台河市','0');
INSERT INTO `yourphp_area` VALUES ('1261','1260','新兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('1262','1260','桃山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1263','1260','茄子河区','0');
INSERT INTO `yourphp_area` VALUES ('1264','1260','勃利�\�','0');
INSERT INTO `yourphp_area` VALUES ('1265','1176','齐齐哈尔�\�','0');
INSERT INTO `yourphp_area` VALUES ('1266','1265','龙沙�\�','0');
INSERT INTO `yourphp_area` VALUES ('1267','1265','建华�\�','0');
INSERT INTO `yourphp_area` VALUES ('1268','1265','铁锋�\�','0');
INSERT INTO `yourphp_area` VALUES ('1269','1265','昂昂溪区','0');
INSERT INTO `yourphp_area` VALUES ('1270','1265','富拉尔基�\�','0');
INSERT INTO `yourphp_area` VALUES ('1271','1265','碾子山区','0');
INSERT INTO `yourphp_area` VALUES ('1272','1265','梅里斯达斡尔族区','0');
INSERT INTO `yourphp_area` VALUES ('1273','1265','龙江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1274','1265','依安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1275','1265','泰来�\�','0');
INSERT INTO `yourphp_area` VALUES ('1276','1265','甘南�\�','0');
INSERT INTO `yourphp_area` VALUES ('1277','1265','富裕�\�','0');
INSERT INTO `yourphp_area` VALUES ('1278','1265','克山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1279','1265','克东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1280','1265','拜泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('1281','1265','讷河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1282','1176','双鸭山市','0');
INSERT INTO `yourphp_area` VALUES ('1283','1282','尖山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1284','1282','岭东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1285','1282','四方台区','0');
INSERT INTO `yourphp_area` VALUES ('1286','1282','宝山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1287','1282','集贤�\�','0');
INSERT INTO `yourphp_area` VALUES ('1288','1282','友谊�\�','0');
INSERT INTO `yourphp_area` VALUES ('1289','1282','宝清�\�','0');
INSERT INTO `yourphp_area` VALUES ('1290','1282','饶河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1291','1176','绥化�\�','0');
INSERT INTO `yourphp_area` VALUES ('1292','1291','北林�\�','0');
INSERT INTO `yourphp_area` VALUES ('1293','1291','望奎�\�','0');
INSERT INTO `yourphp_area` VALUES ('1294','1291','兰西�\�','0');
INSERT INTO `yourphp_area` VALUES ('1295','1291','青冈�\�','0');
INSERT INTO `yourphp_area` VALUES ('1296','1291','庆安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1297','1291','明水�\�','0');
INSERT INTO `yourphp_area` VALUES ('1298','1291','绥棱�\�','0');
INSERT INTO `yourphp_area` VALUES ('1299','1291','安达�\�','0');
INSERT INTO `yourphp_area` VALUES ('1300','1291','肇东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1301','1291','海伦�\�','0');
INSERT INTO `yourphp_area` VALUES ('1302','1176','伊春�\�','0');
INSERT INTO `yourphp_area` VALUES ('1303','1302','伊春�\�','0');
INSERT INTO `yourphp_area` VALUES ('1304','1302','南岔�\�','0');
INSERT INTO `yourphp_area` VALUES ('1305','1302','友好�\�','0');
INSERT INTO `yourphp_area` VALUES ('1306','1302','西林�\�','0');
INSERT INTO `yourphp_area` VALUES ('1307','1302','翠峦�\�','0');
INSERT INTO `yourphp_area` VALUES ('1308','1302','新青�\�','0');
INSERT INTO `yourphp_area` VALUES ('1309','1302','美溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('1310','1302','金山屯区','0');
INSERT INTO `yourphp_area` VALUES ('1311','1302','五营�\�','0');
INSERT INTO `yourphp_area` VALUES ('1312','1302','乌马河区','0');
INSERT INTO `yourphp_area` VALUES ('1313','1302','汤旺河区','0');
INSERT INTO `yourphp_area` VALUES ('1314','1302','带岭�\�','0');
INSERT INTO `yourphp_area` VALUES ('1315','1302','乌伊岭区','0');
INSERT INTO `yourphp_area` VALUES ('1316','1302','红星�\�','0');
INSERT INTO `yourphp_area` VALUES ('1317','1302','上甘岭区','0');
INSERT INTO `yourphp_area` VALUES ('1318','1302','嘉荫�\�','0');
INSERT INTO `yourphp_area` VALUES ('1319','1302','铁力�\�','0');
INSERT INTO `yourphp_area` VALUES ('1320','0','湖北','0');
INSERT INTO `yourphp_area` VALUES ('1321','1320','武汉�\�','0');
INSERT INTO `yourphp_area` VALUES ('1322','1321','江岸�\�','0');
INSERT INTO `yourphp_area` VALUES ('1323','1321','江汉�\�','0');
INSERT INTO `yourphp_area` VALUES ('1324','1321','乔口�\�','0');
INSERT INTO `yourphp_area` VALUES ('1325','1321','汉阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1326','1321','武昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('1327','1321','青山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1328','1321','洪山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1329','1321','东西湖区','0');
INSERT INTO `yourphp_area` VALUES ('1330','1321','汉南�\�','0');
INSERT INTO `yourphp_area` VALUES ('1331','1321','蔡甸�\�','0');
INSERT INTO `yourphp_area` VALUES ('1332','1321','江夏�\�','0');
INSERT INTO `yourphp_area` VALUES ('1333','1321','黄陂�\�','0');
INSERT INTO `yourphp_area` VALUES ('1334','1321','新洲�\�','0');
INSERT INTO `yourphp_area` VALUES ('1335','1320','鄂州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1336','1335','梁子湖区','0');
INSERT INTO `yourphp_area` VALUES ('1337','1335','华容�\�','0');
INSERT INTO `yourphp_area` VALUES ('1338','1335','鄂城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1339','1320','恩施土家族苗族自治州','0');
INSERT INTO `yourphp_area` VALUES ('1340','1339','恩施�\�','0');
INSERT INTO `yourphp_area` VALUES ('1341','1339','利川�\�','0');
INSERT INTO `yourphp_area` VALUES ('1342','1339','建始�\�','0');
INSERT INTO `yourphp_area` VALUES ('1343','1339','巴东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1344','1339','宣恩�\�','0');
INSERT INTO `yourphp_area` VALUES ('1345','1339','咸丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1346','1339','来凤�\�','0');
INSERT INTO `yourphp_area` VALUES ('1347','1339','鹤峰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1348','1320','黄冈�\�','0');
INSERT INTO `yourphp_area` VALUES ('1349','1348','黄州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1350','1348','团风�\�','0');
INSERT INTO `yourphp_area` VALUES ('1351','1348','红安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1352','1348','罗田�\�','0');
INSERT INTO `yourphp_area` VALUES ('1353','1348','英山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1354','1348','浠水�\�','0');
INSERT INTO `yourphp_area` VALUES ('1355','1348','蕲春�\�','0');
INSERT INTO `yourphp_area` VALUES ('1356','1348','黄梅�\�','0');
INSERT INTO `yourphp_area` VALUES ('1357','1348','麻城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1358','1348','武穴�\�','0');
INSERT INTO `yourphp_area` VALUES ('1359','1320','黄石�\�','0');
INSERT INTO `yourphp_area` VALUES ('1360','1359','黄石港区','0');
INSERT INTO `yourphp_area` VALUES ('1361','1359','西塞山区','0');
INSERT INTO `yourphp_area` VALUES ('1362','1359','下陆�\�','0');
INSERT INTO `yourphp_area` VALUES ('1363','1359','铁山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1364','1359','阳新�\�','0');
INSERT INTO `yourphp_area` VALUES ('1365','1359','大冶�\�','0');
INSERT INTO `yourphp_area` VALUES ('1366','1320','荆门�\�','0');
INSERT INTO `yourphp_area` VALUES ('1367','1366','东宝�\�','0');
INSERT INTO `yourphp_area` VALUES ('1368','1366','掇刀�\�','0');
INSERT INTO `yourphp_area` VALUES ('1369','1366','京山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1370','1366','沙洋�\�','0');
INSERT INTO `yourphp_area` VALUES ('1371','1366','钟祥�\�','0');
INSERT INTO `yourphp_area` VALUES ('1372','1320','荆州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1373','1372','沙市�\�','0');
INSERT INTO `yourphp_area` VALUES ('1374','1372','荆州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1375','1372','公安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1376','1372','监利�\�','0');
INSERT INTO `yourphp_area` VALUES ('1377','1372','江陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('1378','1372','石首�\�','0');
INSERT INTO `yourphp_area` VALUES ('1379','1372','洪湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('1380','1372','松滋�\�','0');
INSERT INTO `yourphp_area` VALUES ('1381','1320','潜江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1382','1320','神农架林�\�','0');
INSERT INTO `yourphp_area` VALUES ('1383','1320','十堰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1384','1383','茅箭�\�','0');
INSERT INTO `yourphp_area` VALUES ('1385','1383','张湾�\�','0');
INSERT INTO `yourphp_area` VALUES ('1386','1383','郧县','0');
INSERT INTO `yourphp_area` VALUES ('1387','1383','郧西�\�','0');
INSERT INTO `yourphp_area` VALUES ('1388','1383','竹山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1389','1383','竹溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('1390','1383','房县','0');
INSERT INTO `yourphp_area` VALUES ('1391','1383','丹江口市','0');
INSERT INTO `yourphp_area` VALUES ('1392','1320','随州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1393','1392','曾都�\�','0');
INSERT INTO `yourphp_area` VALUES ('1394','1392','广水�\�','0');
INSERT INTO `yourphp_area` VALUES ('1395','1320','天门�\�','0');
INSERT INTO `yourphp_area` VALUES ('1396','1320','仙桃�\�','0');
INSERT INTO `yourphp_area` VALUES ('1397','1320','咸宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1398','1397','咸安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1399','1397','嘉鱼�\�','0');
INSERT INTO `yourphp_area` VALUES ('1400','1397','通城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1401','1397','崇阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1402','1397','通山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1403','1397','赤壁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1404','1320','襄樊�\�','0');
INSERT INTO `yourphp_area` VALUES ('1405','1404','襄城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1406','1404','樊城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1407','1404','襄阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1408','1404','南漳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1409','1404','谷城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1410','1404','保康�\�','0');
INSERT INTO `yourphp_area` VALUES ('1411','1404','老河口市','0');
INSERT INTO `yourphp_area` VALUES ('1412','1404','枣阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1413','1404','宜城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1414','1320','孝感�\�','0');
INSERT INTO `yourphp_area` VALUES ('1415','1414','孝南�\�','0');
INSERT INTO `yourphp_area` VALUES ('1416','1414','孝昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('1417','1414','大悟�\�','0');
INSERT INTO `yourphp_area` VALUES ('1418','1414','云梦�\�','0');
INSERT INTO `yourphp_area` VALUES ('1419','1414','应城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1420','1414','安陆�\�','0');
INSERT INTO `yourphp_area` VALUES ('1421','1414','汉川�\�','0');
INSERT INTO `yourphp_area` VALUES ('1422','1320','宜昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('1423','1422','西陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('1424','1422','伍家岗区','0');
INSERT INTO `yourphp_area` VALUES ('1425','1422','点军�\�','0');
INSERT INTO `yourphp_area` VALUES ('1426','1422','猇亭�\�','0');
INSERT INTO `yourphp_area` VALUES ('1427','1422','夷陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('1428','1422','远安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1429','1422','兴山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1430','1422','秭归�\�','0');
INSERT INTO `yourphp_area` VALUES ('1431','1422','长阳土家族自治县','0');
INSERT INTO `yourphp_area` VALUES ('1432','1422','五峰土家族自治县','0');
INSERT INTO `yourphp_area` VALUES ('1433','1422','宜都�\�','0');
INSERT INTO `yourphp_area` VALUES ('1434','1422','当阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1435','1422','枝江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1436','0','湖南','0');
INSERT INTO `yourphp_area` VALUES ('1437','1436','长沙�\�','0');
INSERT INTO `yourphp_area` VALUES ('1438','1437','芙蓉�\�','0');
INSERT INTO `yourphp_area` VALUES ('1439','1437','天心�\�','0');
INSERT INTO `yourphp_area` VALUES ('1440','1437','岳麓�\�','0');
INSERT INTO `yourphp_area` VALUES ('1441','1437','开福区','0');
INSERT INTO `yourphp_area` VALUES ('1442','1437','雨花�\�','0');
INSERT INTO `yourphp_area` VALUES ('1443','1437','长沙�\�','0');
INSERT INTO `yourphp_area` VALUES ('1444','1437','望城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1445','1437','宁乡�\�','0');
INSERT INTO `yourphp_area` VALUES ('1446','1437','浏阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1447','1436','常德�\�','0');
INSERT INTO `yourphp_area` VALUES ('1448','1447','武陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('1449','1447','鼎城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1450','1447','安乡�\�','0');
INSERT INTO `yourphp_area` VALUES ('1451','1447','汉寿�\�','0');
INSERT INTO `yourphp_area` VALUES ('1452','1447','澧县','0');
INSERT INTO `yourphp_area` VALUES ('1453','1447','临澧�\�','0');
INSERT INTO `yourphp_area` VALUES ('1454','1447','桃源�\�','0');
INSERT INTO `yourphp_area` VALUES ('1455','1447','石门�\�','0');
INSERT INTO `yourphp_area` VALUES ('1456','1447','津市�\�','0');
INSERT INTO `yourphp_area` VALUES ('1457','1436','郴州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1458','1457','北湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('1459','1457','苏仙�\�','0');
INSERT INTO `yourphp_area` VALUES ('1460','1457','桂阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1461','1457','宜章�\�','0');
INSERT INTO `yourphp_area` VALUES ('1462','1457','永兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('1463','1457','嘉禾�\�','0');
INSERT INTO `yourphp_area` VALUES ('1464','1457','临武�\�','0');
INSERT INTO `yourphp_area` VALUES ('1465','1457','汝城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1466','1457','桂东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1467','1457','安仁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1468','1457','资兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('1469','1436','衡阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1470','1469','珠晖�\�','0');
INSERT INTO `yourphp_area` VALUES ('1471','1469','雁峰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1472','1469','石鼓�\�','0');
INSERT INTO `yourphp_area` VALUES ('1473','1469','蒸湘�\�','0');
INSERT INTO `yourphp_area` VALUES ('1474','1469','南岳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1475','1469','衡阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1476','1469','衡南�\�','0');
INSERT INTO `yourphp_area` VALUES ('1477','1469','衡山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1478','1469','衡东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1479','1469','祁东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1480','1469','耒阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1481','1469','常宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1482','1436','怀化市','0');
INSERT INTO `yourphp_area` VALUES ('1483','1482','鹤城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1484','1482','中方�\�','0');
INSERT INTO `yourphp_area` VALUES ('1485','1482','沅陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('1486','1482','辰溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('1487','1482','溆浦�\�','0');
INSERT INTO `yourphp_area` VALUES ('1488','1482','会同�\�','0');
INSERT INTO `yourphp_area` VALUES ('1489','1482','麻阳苗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('1490','1482','新晃侗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('1491','1482','芷江侗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('1492','1482','靖州苗族侗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('1493','1482','通道侗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('1494','1482','洪江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1495','1436','娄底�\�','0');
INSERT INTO `yourphp_area` VALUES ('1496','1495','娄星�\�','0');
INSERT INTO `yourphp_area` VALUES ('1497','1495','双峰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1498','1495','新化�\�','0');
INSERT INTO `yourphp_area` VALUES ('1499','1495','冷水江市','0');
INSERT INTO `yourphp_area` VALUES ('1500','1495','涟源�\�','0');
INSERT INTO `yourphp_area` VALUES ('1501','1436','邵阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1502','1501','双清�\�','0');
INSERT INTO `yourphp_area` VALUES ('1503','1501','大祥�\�','0');
INSERT INTO `yourphp_area` VALUES ('1504','1501','北塔�\�','0');
INSERT INTO `yourphp_area` VALUES ('1505','1501','邵东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1506','1501','新邵�\�','0');
INSERT INTO `yourphp_area` VALUES ('1507','1501','邵阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1508','1501','隆回�\�','0');
INSERT INTO `yourphp_area` VALUES ('1509','1501','洞口�\�','0');
INSERT INTO `yourphp_area` VALUES ('1510','1501','绥宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1511','1501','新宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1512','1501','城步苗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('1513','1501','武冈�\�','0');
INSERT INTO `yourphp_area` VALUES ('1514','1436','湘潭�\�','0');
INSERT INTO `yourphp_area` VALUES ('1515','1514','雨湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('1516','1514','岳塘�\�','0');
INSERT INTO `yourphp_area` VALUES ('1517','1514','湘潭�\�','0');
INSERT INTO `yourphp_area` VALUES ('1518','1514','湘乡�\�','0');
INSERT INTO `yourphp_area` VALUES ('1519','1514','韶山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1520','1436','湘西土家族苗族自治州','0');
INSERT INTO `yourphp_area` VALUES ('1521','1520','吉首�\�','0');
INSERT INTO `yourphp_area` VALUES ('1522','1520','泸溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('1523','1520','凤凰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1524','1520','花垣�\�','0');
INSERT INTO `yourphp_area` VALUES ('1525','1520','保靖�\�','0');
INSERT INTO `yourphp_area` VALUES ('1526','1520','古丈�\�','0');
INSERT INTO `yourphp_area` VALUES ('1527','1520','永顺�\�','0');
INSERT INTO `yourphp_area` VALUES ('1528','1520','龙山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1529','1436','益阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1530','1529','资阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1531','1529','赫山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1532','1529','南县','0');
INSERT INTO `yourphp_area` VALUES ('1533','1529','桃江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1534','1529','安化�\�','0');
INSERT INTO `yourphp_area` VALUES ('1535','1529','沅江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1536','1436','永州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1537','1536','芝山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1538','1536','冷水滩区','0');
INSERT INTO `yourphp_area` VALUES ('1539','1536','祁阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1540','1536','东安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1541','1536','双牌�\�','0');
INSERT INTO `yourphp_area` VALUES ('1542','1536','道县','0');
INSERT INTO `yourphp_area` VALUES ('1543','1536','江永�\�','0');
INSERT INTO `yourphp_area` VALUES ('1544','1536','宁远�\�','0');
INSERT INTO `yourphp_area` VALUES ('1545','1536','蓝山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1546','1536','新田�\�','0');
INSERT INTO `yourphp_area` VALUES ('1547','1536','江华瑶族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('1548','1436','岳阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1549','1548','岳阳楼区','0');
INSERT INTO `yourphp_area` VALUES ('1550','1548','云溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('1551','1548','君山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1552','1548','岳阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1553','1548','华容�\�','0');
INSERT INTO `yourphp_area` VALUES ('1554','1548','湘阴�\�','0');
INSERT INTO `yourphp_area` VALUES ('1555','1548','平江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1556','1548','汨罗�\�','0');
INSERT INTO `yourphp_area` VALUES ('1557','1548','临湘�\�','0');
INSERT INTO `yourphp_area` VALUES ('1558','1436','张家界市','0');
INSERT INTO `yourphp_area` VALUES ('1559','1558','永定�\�','0');
INSERT INTO `yourphp_area` VALUES ('1560','1558','武陵源区','0');
INSERT INTO `yourphp_area` VALUES ('1561','1558','慈利�\�','0');
INSERT INTO `yourphp_area` VALUES ('1562','1558','桑植�\�','0');
INSERT INTO `yourphp_area` VALUES ('1563','1436','株洲�\�','0');
INSERT INTO `yourphp_area` VALUES ('1564','1563','荷塘�\�','0');
INSERT INTO `yourphp_area` VALUES ('1565','1563','芦淞�\�','0');
INSERT INTO `yourphp_area` VALUES ('1566','1563','石峰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1567','1563','天元�\�','0');
INSERT INTO `yourphp_area` VALUES ('1568','1563','株洲�\�','0');
INSERT INTO `yourphp_area` VALUES ('1569','1563','攸县','0');
INSERT INTO `yourphp_area` VALUES ('1570','1563','茶陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('1571','1563','炎陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('1572','1563','醴陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('1573','0','吉林','0');
INSERT INTO `yourphp_area` VALUES ('1574','1573','长春�\�','0');
INSERT INTO `yourphp_area` VALUES ('1575','1574','南关�\�','0');
INSERT INTO `yourphp_area` VALUES ('1576','1574','宽城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1577','1574','朝阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1578','1574','二道�\�','0');
INSERT INTO `yourphp_area` VALUES ('1579','1574','绿园�\�','0');
INSERT INTO `yourphp_area` VALUES ('1580','1574','双阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1581','1574','农安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1582','1574','九台�\�','0');
INSERT INTO `yourphp_area` VALUES ('1583','1574','榆树�\�','0');
INSERT INTO `yourphp_area` VALUES ('1584','1574','德惠�\�','0');
INSERT INTO `yourphp_area` VALUES ('1585','1573','白城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1586','1585','洮北�\�','0');
INSERT INTO `yourphp_area` VALUES ('1587','1585','镇赉�\�','0');
INSERT INTO `yourphp_area` VALUES ('1588','1585','通榆�\�','0');
INSERT INTO `yourphp_area` VALUES ('1589','1585','洮南�\�','0');
INSERT INTO `yourphp_area` VALUES ('1590','1585','大安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1591','1573','白山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1592','1591','八道江区','0');
INSERT INTO `yourphp_area` VALUES ('1593','1591','抚松�\�','0');
INSERT INTO `yourphp_area` VALUES ('1594','1591','靖宇�\�','0');
INSERT INTO `yourphp_area` VALUES ('1595','1591','长白朝鲜族自治县','0');
INSERT INTO `yourphp_area` VALUES ('1596','1591','江源�\�','0');
INSERT INTO `yourphp_area` VALUES ('1597','1591','临江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1598','1573','吉林�\�','0');
INSERT INTO `yourphp_area` VALUES ('1599','1598','昌邑�\�','0');
INSERT INTO `yourphp_area` VALUES ('1600','1598','龙潭�\�','0');
INSERT INTO `yourphp_area` VALUES ('1601','1598','船营�\�','0');
INSERT INTO `yourphp_area` VALUES ('1602','1598','丰满�\�','0');
INSERT INTO `yourphp_area` VALUES ('1603','1598','永吉�\�','0');
INSERT INTO `yourphp_area` VALUES ('1604','1598','蛟河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1605','1598','桦甸�\�','0');
INSERT INTO `yourphp_area` VALUES ('1606','1598','舒兰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1607','1598','磐石�\�','0');
INSERT INTO `yourphp_area` VALUES ('1608','1573','辽源�\�','0');
INSERT INTO `yourphp_area` VALUES ('1609','1608','龙山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1610','1608','西安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1611','1608','东丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1612','1608','东辽�\�','0');
INSERT INTO `yourphp_area` VALUES ('1613','1573','四平�\�','0');
INSERT INTO `yourphp_area` VALUES ('1614','1613','铁西�\�','0');
INSERT INTO `yourphp_area` VALUES ('1615','1613','铁东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1616','1613','梨树�\�','0');
INSERT INTO `yourphp_area` VALUES ('1617','1613','伊通满族自治县','0');
INSERT INTO `yourphp_area` VALUES ('1618','1613','公主岭市','0');
INSERT INTO `yourphp_area` VALUES ('1619','1613','双辽�\�','0');
INSERT INTO `yourphp_area` VALUES ('1620','1573','松原�\�','0');
INSERT INTO `yourphp_area` VALUES ('1621','1620','宁江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1622','1620','前郭尔罗斯蒙古族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('1623','1620','长岭�\�','0');
INSERT INTO `yourphp_area` VALUES ('1624','1620','乾安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1625','1620','扶余�\�','0');
INSERT INTO `yourphp_area` VALUES ('1626','1573','通化�\�','0');
INSERT INTO `yourphp_area` VALUES ('1627','1626','东昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('1628','1626','二道江区','0');
INSERT INTO `yourphp_area` VALUES ('1629','1626','通化�\�','0');
INSERT INTO `yourphp_area` VALUES ('1630','1626','辉南�\�','0');
INSERT INTO `yourphp_area` VALUES ('1631','1626','柳河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1632','1626','梅河口市','0');
INSERT INTO `yourphp_area` VALUES ('1633','1626','集安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1634','1573','延边朝鲜族自治州','0');
INSERT INTO `yourphp_area` VALUES ('1635','1634','延吉�\�','0');
INSERT INTO `yourphp_area` VALUES ('1636','1634','图们�\�','0');
INSERT INTO `yourphp_area` VALUES ('1637','1634','敦化�\�','0');
INSERT INTO `yourphp_area` VALUES ('1638','1634','珲春�\�','0');
INSERT INTO `yourphp_area` VALUES ('1639','1634','龙井�\�','0');
INSERT INTO `yourphp_area` VALUES ('1640','1634','和龙�\�','0');
INSERT INTO `yourphp_area` VALUES ('1641','1634','汪清�\�','0');
INSERT INTO `yourphp_area` VALUES ('1642','1634','安图�\�','0');
INSERT INTO `yourphp_area` VALUES ('1643','0','江苏','0');
INSERT INTO `yourphp_area` VALUES ('1644','1643','南京�\�','0');
INSERT INTO `yourphp_area` VALUES ('1645','1644','玄武�\�','0');
INSERT INTO `yourphp_area` VALUES ('1646','1644','白下�\�','0');
INSERT INTO `yourphp_area` VALUES ('1647','1644','秦淮�\�','0');
INSERT INTO `yourphp_area` VALUES ('1648','1644','建邺�\�','0');
INSERT INTO `yourphp_area` VALUES ('1649','1644','鼓楼�\�','0');
INSERT INTO `yourphp_area` VALUES ('1650','1644','下关�\�','0');
INSERT INTO `yourphp_area` VALUES ('1651','1644','浦口�\�','0');
INSERT INTO `yourphp_area` VALUES ('1652','1644','栖霞�\�','0');
INSERT INTO `yourphp_area` VALUES ('1653','1644','雨花台区','0');
INSERT INTO `yourphp_area` VALUES ('1654','1644','江宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1655','1644','六合�\�','0');
INSERT INTO `yourphp_area` VALUES ('1656','1644','溧水�\�','0');
INSERT INTO `yourphp_area` VALUES ('1657','1644','高淳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1658','1643','常州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1659','1658','天宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1660','1658','钟楼�\�','0');
INSERT INTO `yourphp_area` VALUES ('1661','1658','戚墅堰区','0');
INSERT INTO `yourphp_area` VALUES ('1662','1658','新北�\�','0');
INSERT INTO `yourphp_area` VALUES ('1663','1658','武进�\�','0');
INSERT INTO `yourphp_area` VALUES ('1664','1658','溧阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1665','1658','金坛�\�','0');
INSERT INTO `yourphp_area` VALUES ('1666','1643','淮安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1667','1666','清河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1668','1666','楚州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1669','1666','淮阴�\�','0');
INSERT INTO `yourphp_area` VALUES ('1670','1666','清浦�\�','0');
INSERT INTO `yourphp_area` VALUES ('1671','1666','涟水�\�','0');
INSERT INTO `yourphp_area` VALUES ('1672','1666','洪泽�\�','0');
INSERT INTO `yourphp_area` VALUES ('1673','1666','盱眙�\�','0');
INSERT INTO `yourphp_area` VALUES ('1674','1666','金湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('1675','1643','连云港市','0');
INSERT INTO `yourphp_area` VALUES ('1676','1675','连云�\�','0');
INSERT INTO `yourphp_area` VALUES ('1677','1675','新浦�\�','0');
INSERT INTO `yourphp_area` VALUES ('1678','1675','海州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1679','1675','赣榆�\�','0');
INSERT INTO `yourphp_area` VALUES ('1680','1675','东海�\�','0');
INSERT INTO `yourphp_area` VALUES ('1681','1675','灌云�\�','0');
INSERT INTO `yourphp_area` VALUES ('1682','1675','灌南�\�','0');
INSERT INTO `yourphp_area` VALUES ('1683','1643','南通市','0');
INSERT INTO `yourphp_area` VALUES ('1684','1683','崇川�\�','0');
INSERT INTO `yourphp_area` VALUES ('1685','1683','港闸�\�','0');
INSERT INTO `yourphp_area` VALUES ('1686','1683','海安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1687','1683','如东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1688','1683','启东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1689','1683','如皋�\�','0');
INSERT INTO `yourphp_area` VALUES ('1690','1683','通州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1691','1683','海门�\�','0');
INSERT INTO `yourphp_area` VALUES ('1692','1643','苏州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1693','1692','沧浪�\�','0');
INSERT INTO `yourphp_area` VALUES ('1694','1692','平江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1695','1692','金阊�\�','0');
INSERT INTO `yourphp_area` VALUES ('1696','1692','虎丘�\�','0');
INSERT INTO `yourphp_area` VALUES ('1697','1692','吴中�\�','0');
INSERT INTO `yourphp_area` VALUES ('1698','1692','相城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1699','1692','常熟�\�','0');
INSERT INTO `yourphp_area` VALUES ('1700','1692','张家港市','0');
INSERT INTO `yourphp_area` VALUES ('1701','1692','昆山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1702','1692','吴江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1703','1692','太仓�\�','0');
INSERT INTO `yourphp_area` VALUES ('1704','1643','宿迁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1705','1704','宿城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1706','1704','宿豫�\�','0');
INSERT INTO `yourphp_area` VALUES ('1707','1704','沭阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1708','1704','泗阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1709','1704','泗洪�\�','0');
INSERT INTO `yourphp_area` VALUES ('1710','1643','泰州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1711','1710','海陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('1712','1710','高港�\�','0');
INSERT INTO `yourphp_area` VALUES ('1713','1710','兴化�\�','0');
INSERT INTO `yourphp_area` VALUES ('1714','1710','靖江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1715','1710','泰兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('1716','1710','姜堰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1717','1643','无锡�\�','0');
INSERT INTO `yourphp_area` VALUES ('1718','1717','崇安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1719','1717','南长�\�','0');
INSERT INTO `yourphp_area` VALUES ('1720','1717','北塘�\�','0');
INSERT INTO `yourphp_area` VALUES ('1721','1717','锡山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1722','1717','惠山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1723','1717','滨湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('1724','1717','江阴�\�','0');
INSERT INTO `yourphp_area` VALUES ('1725','1717','宜兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('1726','1643','徐州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1727','1726','鼓楼�\�','0');
INSERT INTO `yourphp_area` VALUES ('1728','1726','云龙�\�','0');
INSERT INTO `yourphp_area` VALUES ('1729','1726','九里�\�','0');
INSERT INTO `yourphp_area` VALUES ('1730','1726','贾汪�\�','0');
INSERT INTO `yourphp_area` VALUES ('1731','1726','泉山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1732','1726','丰县','0');
INSERT INTO `yourphp_area` VALUES ('1733','1726','沛县','0');
INSERT INTO `yourphp_area` VALUES ('1734','1726','铜山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1735','1726','睢宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1736','1726','新沂�\�','0');
INSERT INTO `yourphp_area` VALUES ('1737','1726','邳州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1738','1643','盐城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1739','1738','亭湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('1740','1738','盐都�\�','0');
INSERT INTO `yourphp_area` VALUES ('1741','1738','响水�\�','0');
INSERT INTO `yourphp_area` VALUES ('1742','1738','滨海�\�','0');
INSERT INTO `yourphp_area` VALUES ('1743','1738','阜宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1744','1738','射阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1745','1738','建湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('1746','1738','东台�\�','0');
INSERT INTO `yourphp_area` VALUES ('1747','1738','大丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1748','1643','扬州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1749','1748','广陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('1750','1748','邗江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1751','1748','郊区','0');
INSERT INTO `yourphp_area` VALUES ('1752','1748','宝应�\�','0');
INSERT INTO `yourphp_area` VALUES ('1753','1748','仪征�\�','0');
INSERT INTO `yourphp_area` VALUES ('1754','1748','高邮�\�','0');
INSERT INTO `yourphp_area` VALUES ('1755','1748','江都�\�','0');
INSERT INTO `yourphp_area` VALUES ('1756','1643','镇江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1757','1756','京口�\�','0');
INSERT INTO `yourphp_area` VALUES ('1758','1756','润州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1759','1756','丹徒�\�','0');
INSERT INTO `yourphp_area` VALUES ('1760','1756','丹阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1761','1756','扬中�\�','0');
INSERT INTO `yourphp_area` VALUES ('1762','1756','句容�\�','0');
INSERT INTO `yourphp_area` VALUES ('1763','0','江西','0');
INSERT INTO `yourphp_area` VALUES ('1764','1763','南昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('1765','1764','东湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('1766','1764','西湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('1767','1764','青云谱区','0');
INSERT INTO `yourphp_area` VALUES ('1768','1764','湾里�\�','0');
INSERT INTO `yourphp_area` VALUES ('1769','1764','青山湖区','0');
INSERT INTO `yourphp_area` VALUES ('1770','1764','南昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('1771','1764','新建�\�','0');
INSERT INTO `yourphp_area` VALUES ('1772','1764','安义�\�','0');
INSERT INTO `yourphp_area` VALUES ('1773','1764','进贤�\�','0');
INSERT INTO `yourphp_area` VALUES ('1774','1763','抚州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1775','1774','临川�\�','0');
INSERT INTO `yourphp_area` VALUES ('1776','1774','南城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1777','1774','黎川�\�','0');
INSERT INTO `yourphp_area` VALUES ('1778','1774','南丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1779','1774','崇仁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1780','1774','乐安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1781','1774','宜黄�\�','0');
INSERT INTO `yourphp_area` VALUES ('1782','1774','金溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('1783','1774','资溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('1784','1774','东乡�\�','0');
INSERT INTO `yourphp_area` VALUES ('1785','1774','广昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('1786','1763','赣州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1787','1786','章贡�\�','0');
INSERT INTO `yourphp_area` VALUES ('1788','1786','赣县','0');
INSERT INTO `yourphp_area` VALUES ('1789','1786','信丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1790','1786','大余�\�','0');
INSERT INTO `yourphp_area` VALUES ('1791','1786','上犹�\�','0');
INSERT INTO `yourphp_area` VALUES ('1792','1786','崇义�\�','0');
INSERT INTO `yourphp_area` VALUES ('1793','1786','安远�\�','0');
INSERT INTO `yourphp_area` VALUES ('1794','1786','龙南�\�','0');
INSERT INTO `yourphp_area` VALUES ('1795','1786','定南�\�','0');
INSERT INTO `yourphp_area` VALUES ('1796','1786','全南�\�','0');
INSERT INTO `yourphp_area` VALUES ('1797','1786','宁都�\�','0');
INSERT INTO `yourphp_area` VALUES ('1798','1786','于都�\�','0');
INSERT INTO `yourphp_area` VALUES ('1799','1786','兴国�\�','0');
INSERT INTO `yourphp_area` VALUES ('1800','1786','会昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('1801','1786','寻乌�\�','0');
INSERT INTO `yourphp_area` VALUES ('1802','1786','石城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1803','1786','瑞金�\�','0');
INSERT INTO `yourphp_area` VALUES ('1804','1786','南康�\�','0');
INSERT INTO `yourphp_area` VALUES ('1805','1763','吉安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1806','1805','吉州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1807','1805','青原�\�','0');
INSERT INTO `yourphp_area` VALUES ('1808','1805','吉安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1809','1805','吉水�\�','0');
INSERT INTO `yourphp_area` VALUES ('1810','1805','峡江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1811','1805','新干�\�','0');
INSERT INTO `yourphp_area` VALUES ('1812','1805','永丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1813','1805','泰和�\�','0');
INSERT INTO `yourphp_area` VALUES ('1814','1805','遂川�\�','0');
INSERT INTO `yourphp_area` VALUES ('1815','1805','万安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1816','1805','安福�\�','0');
INSERT INTO `yourphp_area` VALUES ('1817','1805','永新�\�','0');
INSERT INTO `yourphp_area` VALUES ('1818','1805','井冈山市','0');
INSERT INTO `yourphp_area` VALUES ('1819','1763','景德镇市','0');
INSERT INTO `yourphp_area` VALUES ('1820','1819','昌江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1821','1819','珠山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1822','1819','浮梁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1823','1819','乐平�\�','0');
INSERT INTO `yourphp_area` VALUES ('1824','1763','九江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1825','1824','庐山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1826','1824','浔阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1827','1824','九江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1828','1824','武宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1829','1824','修水�\�','0');
INSERT INTO `yourphp_area` VALUES ('1830','1824','永修�\�','0');
INSERT INTO `yourphp_area` VALUES ('1831','1824','德安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1832','1824','星子�\�','0');
INSERT INTO `yourphp_area` VALUES ('1833','1824','都昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('1834','1824','湖口�\�','0');
INSERT INTO `yourphp_area` VALUES ('1835','1824','彭泽�\�','0');
INSERT INTO `yourphp_area` VALUES ('1836','1824','瑞昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('1837','1763','萍乡�\�','0');
INSERT INTO `yourphp_area` VALUES ('1838','1837','安源�\�','0');
INSERT INTO `yourphp_area` VALUES ('1839','1837','湘东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1840','1837','莲花�\�','0');
INSERT INTO `yourphp_area` VALUES ('1841','1837','上栗�\�','0');
INSERT INTO `yourphp_area` VALUES ('1842','1837','芦溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('1843','1763','上饶�\�','0');
INSERT INTO `yourphp_area` VALUES ('1844','1843','信州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1845','1843','上饶�\�','0');
INSERT INTO `yourphp_area` VALUES ('1846','1843','广丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1847','1843','玉山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1848','1843','铅山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1849','1843','横峰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1850','1843','弋阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1851','1843','余干�\�','0');
INSERT INTO `yourphp_area` VALUES ('1852','1843','鄱阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1853','1843','万年�\�','0');
INSERT INTO `yourphp_area` VALUES ('1854','1843','婺源�\�','0');
INSERT INTO `yourphp_area` VALUES ('1855','1843','德兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('1856','1763','新余�\�','0');
INSERT INTO `yourphp_area` VALUES ('1857','1856','渝水�\�','0');
INSERT INTO `yourphp_area` VALUES ('1858','1856','分宜�\�','0');
INSERT INTO `yourphp_area` VALUES ('1859','1763','宜春�\�','0');
INSERT INTO `yourphp_area` VALUES ('1860','1859','袁州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1861','1859','奉新�\�','0');
INSERT INTO `yourphp_area` VALUES ('1862','1859','万载�\�','0');
INSERT INTO `yourphp_area` VALUES ('1863','1859','上高�\�','0');
INSERT INTO `yourphp_area` VALUES ('1864','1859','宜丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1865','1859','靖安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1866','1859','铜鼓�\�','0');
INSERT INTO `yourphp_area` VALUES ('1867','1859','丰城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1868','1859','樟树�\�','0');
INSERT INTO `yourphp_area` VALUES ('1869','1859','高安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1870','1763','鹰潭�\�','0');
INSERT INTO `yourphp_area` VALUES ('1871','1870','月湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('1872','1870','余江�\�','0');
INSERT INTO `yourphp_area` VALUES ('1873','1870','贵溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('1874','0','辽宁','0');
INSERT INTO `yourphp_area` VALUES ('1875','1874','沈阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1876','1875','和平�\�','0');
INSERT INTO `yourphp_area` VALUES ('1877','1875','沈河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1878','1875','大东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1879','1875','皇姑�\�','0');
INSERT INTO `yourphp_area` VALUES ('1880','1875','铁西�\�','0');
INSERT INTO `yourphp_area` VALUES ('1881','1875','苏家屯区','0');
INSERT INTO `yourphp_area` VALUES ('1882','1875','东陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('1883','1875','新城子区','0');
INSERT INTO `yourphp_area` VALUES ('1884','1875','于洪�\�','0');
INSERT INTO `yourphp_area` VALUES ('1885','1875','辽中�\�','0');
INSERT INTO `yourphp_area` VALUES ('1886','1875','康平�\�','0');
INSERT INTO `yourphp_area` VALUES ('1887','1875','法库�\�','0');
INSERT INTO `yourphp_area` VALUES ('1888','1875','新民�\�','0');
INSERT INTO `yourphp_area` VALUES ('1889','1874','鞍山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1890','1889','铁东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1891','1889','铁西�\�','0');
INSERT INTO `yourphp_area` VALUES ('1892','1889','立山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1893','1889','千山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1894','1889','台安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1895','1889','岫岩满族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('1896','1889','海城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1897','1874','本溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('1898','1897','平山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1899','1897','溪湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('1900','1897','明山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1901','1897','南芬�\�','0');
INSERT INTO `yourphp_area` VALUES ('1902','1897','本溪满族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('1903','1897','桓仁满族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('1904','1874','朝阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1905','1904','双塔�\�','0');
INSERT INTO `yourphp_area` VALUES ('1906','1904','龙城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1907','1904','朝阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1908','1904','建平�\�','0');
INSERT INTO `yourphp_area` VALUES ('1909','1904','喀喇沁左翼蒙古族自治县','0');
INSERT INTO `yourphp_area` VALUES ('1910','1904','北票�\�','0');
INSERT INTO `yourphp_area` VALUES ('1911','1904','凌源�\�','0');
INSERT INTO `yourphp_area` VALUES ('1912','1874','大连�\�','0');
INSERT INTO `yourphp_area` VALUES ('1913','1912','中山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1914','1912','西岗�\�','0');
INSERT INTO `yourphp_area` VALUES ('1915','1912','沙河口区','0');
INSERT INTO `yourphp_area` VALUES ('1916','1912','甘井子区','0');
INSERT INTO `yourphp_area` VALUES ('1917','1912','旅顺口区','0');
INSERT INTO `yourphp_area` VALUES ('1918','1912','金州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1919','1912','长海�\�','0');
INSERT INTO `yourphp_area` VALUES ('1920','1912','瓦房店市','0');
INSERT INTO `yourphp_area` VALUES ('1921','1912','普兰店市','0');
INSERT INTO `yourphp_area` VALUES ('1922','1912','庄河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1923','1874','丹东�\�','0');
INSERT INTO `yourphp_area` VALUES ('1924','1923','元宝�\�','0');
INSERT INTO `yourphp_area` VALUES ('1925','1923','振兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('1926','1923','振安�\�','0');
INSERT INTO `yourphp_area` VALUES ('1927','1923','宽甸满族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('1928','1923','东港�\�','0');
INSERT INTO `yourphp_area` VALUES ('1929','1923','凤城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1930','1874','抚顺�\�','0');
INSERT INTO `yourphp_area` VALUES ('1931','1930','新抚�\�','0');
INSERT INTO `yourphp_area` VALUES ('1932','1930','东洲�\�','0');
INSERT INTO `yourphp_area` VALUES ('1933','1930','望花�\�','0');
INSERT INTO `yourphp_area` VALUES ('1934','1930','顺城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1935','1930','抚顺�\�','0');
INSERT INTO `yourphp_area` VALUES ('1936','1930','新宾满族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('1937','1930','清原满族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('1938','1874','阜新�\�','0');
INSERT INTO `yourphp_area` VALUES ('1939','1938','海州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1940','1938','新邱�\�','0');
INSERT INTO `yourphp_area` VALUES ('1941','1938','太平�\�','0');
INSERT INTO `yourphp_area` VALUES ('1942','1938','清河门区','0');
INSERT INTO `yourphp_area` VALUES ('1943','1938','细河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1944','1938','阜新蒙古族自治县','0');
INSERT INTO `yourphp_area` VALUES ('1945','1938','彰武�\�','0');
INSERT INTO `yourphp_area` VALUES ('1946','1874','葫芦岛市','0');
INSERT INTO `yourphp_area` VALUES ('1947','1946','连山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1948','1946','龙港�\�','0');
INSERT INTO `yourphp_area` VALUES ('1949','1946','南票�\�','0');
INSERT INTO `yourphp_area` VALUES ('1950','1946','绥中�\�','0');
INSERT INTO `yourphp_area` VALUES ('1951','1946','建昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('1952','1946','兴城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1953','1874','锦州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1954','1953','古塔�\�','0');
INSERT INTO `yourphp_area` VALUES ('1955','1953','凌河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1956','1953','太和�\�','0');
INSERT INTO `yourphp_area` VALUES ('1957','1953','黑山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1958','1953','义县','0');
INSERT INTO `yourphp_area` VALUES ('1959','1953','凌海�\�','0');
INSERT INTO `yourphp_area` VALUES ('1960','1953','北宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('1961','1874','辽阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1962','1961','白塔�\�','0');
INSERT INTO `yourphp_area` VALUES ('1963','1961','文圣�\�','0');
INSERT INTO `yourphp_area` VALUES ('1964','1961','宏伟�\�','0');
INSERT INTO `yourphp_area` VALUES ('1965','1961','弓长岭区','0');
INSERT INTO `yourphp_area` VALUES ('1966','1961','太子河区','0');
INSERT INTO `yourphp_area` VALUES ('1967','1961','辽阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('1968','1961','灯塔�\�','0');
INSERT INTO `yourphp_area` VALUES ('1969','1874','盘锦�\�','0');
INSERT INTO `yourphp_area` VALUES ('1970','1969','双台子区','0');
INSERT INTO `yourphp_area` VALUES ('1971','1969','兴隆台区','0');
INSERT INTO `yourphp_area` VALUES ('1972','1969','大洼�\�','0');
INSERT INTO `yourphp_area` VALUES ('1973','1969','盘山�\�','0');
INSERT INTO `yourphp_area` VALUES ('1974','1874','铁岭�\�','0');
INSERT INTO `yourphp_area` VALUES ('1975','1974','银州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1976','1974','清河�\�','0');
INSERT INTO `yourphp_area` VALUES ('1977','1974','铁岭�\�','0');
INSERT INTO `yourphp_area` VALUES ('1978','1974','西丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('1979','1974','昌图�\�','0');
INSERT INTO `yourphp_area` VALUES ('1980','1974','调兵山市','0');
INSERT INTO `yourphp_area` VALUES ('1981','1974','开原市','0');
INSERT INTO `yourphp_area` VALUES ('1982','1874','营口�\�','0');
INSERT INTO `yourphp_area` VALUES ('1983','1982','站前�\�','0');
INSERT INTO `yourphp_area` VALUES ('1984','1982','西市�\�','0');
INSERT INTO `yourphp_area` VALUES ('1985','1982','鲅鱼圈区','0');
INSERT INTO `yourphp_area` VALUES ('1986','1982','老边�\�','0');
INSERT INTO `yourphp_area` VALUES ('1987','1982','盖州�\�','0');
INSERT INTO `yourphp_area` VALUES ('1988','1982','大石桥市','0');
INSERT INTO `yourphp_area` VALUES ('1989','0','内蒙�\�','0');
INSERT INTO `yourphp_area` VALUES ('1990','1989','呼和浩特�\�','0');
INSERT INTO `yourphp_area` VALUES ('1991','1990','新城�\�','0');
INSERT INTO `yourphp_area` VALUES ('1992','1990','回民�\�','0');
INSERT INTO `yourphp_area` VALUES ('1993','1990','玉泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('1994','1990','赛罕�\�','0');
INSERT INTO `yourphp_area` VALUES ('1995','1990','土默特左�\�','0');
INSERT INTO `yourphp_area` VALUES ('1996','1990','托克托县','0');
INSERT INTO `yourphp_area` VALUES ('1997','1990','和林格尔�\�','0');
INSERT INTO `yourphp_area` VALUES ('1998','1990','清水河县','0');
INSERT INTO `yourphp_area` VALUES ('1999','1990','武川�\�','0');
INSERT INTO `yourphp_area` VALUES ('2000','1989','阿拉善盟','0');
INSERT INTO `yourphp_area` VALUES ('2001','2000','阿拉善左�\�','0');
INSERT INTO `yourphp_area` VALUES ('2002','2000','阿拉善右�\�','0');
INSERT INTO `yourphp_area` VALUES ('2003','2000','额济纳旗','0');
INSERT INTO `yourphp_area` VALUES ('2004','1989','巴彦淖尔�\�','0');
INSERT INTO `yourphp_area` VALUES ('2005','2004','临河�\�','0');
INSERT INTO `yourphp_area` VALUES ('2006','2004','五原�\�','0');
INSERT INTO `yourphp_area` VALUES ('2007','2004','磴口�\�','0');
INSERT INTO `yourphp_area` VALUES ('2008','2004','乌拉特前�\�','0');
INSERT INTO `yourphp_area` VALUES ('2009','2004','乌拉特中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2010','2004','乌拉特后�\�','0');
INSERT INTO `yourphp_area` VALUES ('2011','2004','杭锦后旗','0');
INSERT INTO `yourphp_area` VALUES ('2012','1989','包头�\�','0');
INSERT INTO `yourphp_area` VALUES ('2013','2012','东河�\�','0');
INSERT INTO `yourphp_area` VALUES ('2014','2012','昆都仑区','0');
INSERT INTO `yourphp_area` VALUES ('2015','2012','青山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2016','2012','石拐�\�','0');
INSERT INTO `yourphp_area` VALUES ('2017','2012','白云矿区','0');
INSERT INTO `yourphp_area` VALUES ('2018','2012','九原�\�','0');
INSERT INTO `yourphp_area` VALUES ('2019','2012','土默特右�\�','0');
INSERT INTO `yourphp_area` VALUES ('2020','2012','固阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2021','2012','达尔罕茂明安联合�\�','0');
INSERT INTO `yourphp_area` VALUES ('2022','1989','赤峰�\�','0');
INSERT INTO `yourphp_area` VALUES ('2023','2022','红山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2024','2022','元宝山区','0');
INSERT INTO `yourphp_area` VALUES ('2025','2022','松山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2026','2022','阿鲁科尔沁旗','0');
INSERT INTO `yourphp_area` VALUES ('2027','2022','巴林左旗','0');
INSERT INTO `yourphp_area` VALUES ('2028','2022','巴林右旗','0');
INSERT INTO `yourphp_area` VALUES ('2029','2022','林西�\�','0');
INSERT INTO `yourphp_area` VALUES ('2030','2022','克什克腾�\�','0');
INSERT INTO `yourphp_area` VALUES ('2031','2022','翁牛特旗','0');
INSERT INTO `yourphp_area` VALUES ('2032','2022','喀喇沁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2033','2022','宁城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2034','2022','敖汉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2035','1989','鄂尔多斯�\�','0');
INSERT INTO `yourphp_area` VALUES ('2036','2035','东胜�\�','0');
INSERT INTO `yourphp_area` VALUES ('2037','2035','达拉特旗','0');
INSERT INTO `yourphp_area` VALUES ('2038','2035','准格尔旗','0');
INSERT INTO `yourphp_area` VALUES ('2039','2035','鄂托克前�\�','0');
INSERT INTO `yourphp_area` VALUES ('2040','2035','鄂托克旗','0');
INSERT INTO `yourphp_area` VALUES ('2041','2035','杭锦�\�','0');
INSERT INTO `yourphp_area` VALUES ('2042','2035','乌审�\�','0');
INSERT INTO `yourphp_area` VALUES ('2043','2035','伊金霍洛�\�','0');
INSERT INTO `yourphp_area` VALUES ('2044','1989','呼伦贝尔�\�','0');
INSERT INTO `yourphp_area` VALUES ('2045','2044','海拉尔区','0');
INSERT INTO `yourphp_area` VALUES ('2046','2044','阿荣�\�','0');
INSERT INTO `yourphp_area` VALUES ('2047','2044','莫力达瓦达斡尔族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2048','2044','鄂伦春自治旗','0');
INSERT INTO `yourphp_area` VALUES ('2049','2044','鄂温克族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2050','2044','陈巴尔虎�\�','0');
INSERT INTO `yourphp_area` VALUES ('2051','2044','新巴尔虎左旗','0');
INSERT INTO `yourphp_area` VALUES ('2052','2044','新巴尔虎右旗','0');
INSERT INTO `yourphp_area` VALUES ('2053','2044','满洲里市','0');
INSERT INTO `yourphp_area` VALUES ('2054','2044','牙克石市','0');
INSERT INTO `yourphp_area` VALUES ('2055','2044','扎兰屯市','0');
INSERT INTO `yourphp_area` VALUES ('2056','2044','额尔古纳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2057','2044','根河�\�','0');
INSERT INTO `yourphp_area` VALUES ('2058','1989','通辽�\�','0');
INSERT INTO `yourphp_area` VALUES ('2059','2058','科尔沁区','0');
INSERT INTO `yourphp_area` VALUES ('2060','2058','科尔沁左翼中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2061','2058','科尔沁左翼后�\�','0');
INSERT INTO `yourphp_area` VALUES ('2062','2058','开鲁县','0');
INSERT INTO `yourphp_area` VALUES ('2063','2058','库伦�\�','0');
INSERT INTO `yourphp_area` VALUES ('2064','2058','奈曼�\�','0');
INSERT INTO `yourphp_area` VALUES ('2065','2058','扎鲁特旗','0');
INSERT INTO `yourphp_area` VALUES ('2066','2058','霍林郭勒�\�','0');
INSERT INTO `yourphp_area` VALUES ('2067','1989','乌海�\�','0');
INSERT INTO `yourphp_area` VALUES ('2068','2067','海勃湾区','0');
INSERT INTO `yourphp_area` VALUES ('2069','2067','海南�\�','0');
INSERT INTO `yourphp_area` VALUES ('2070','2067','乌达�\�','0');
INSERT INTO `yourphp_area` VALUES ('2071','1989','乌兰察布�\�','0');
INSERT INTO `yourphp_area` VALUES ('2072','2071','集宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2073','2071','卓资�\�','0');
INSERT INTO `yourphp_area` VALUES ('2074','2071','化德�\�','0');
INSERT INTO `yourphp_area` VALUES ('2075','2071','商都�\�','0');
INSERT INTO `yourphp_area` VALUES ('2076','2071','兴和�\�','0');
INSERT INTO `yourphp_area` VALUES ('2077','2071','凉城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2078','2071','察哈尔右翼前�\�','0');
INSERT INTO `yourphp_area` VALUES ('2079','2071','察哈尔右翼中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2080','2071','察哈尔右翼后�\�','0');
INSERT INTO `yourphp_area` VALUES ('2081','2071','四子王旗','0');
INSERT INTO `yourphp_area` VALUES ('2082','2071','丰镇�\�','0');
INSERT INTO `yourphp_area` VALUES ('2083','1989','锡林郭勒�\�','0');
INSERT INTO `yourphp_area` VALUES ('2084','2083','二连浩特�\�','0');
INSERT INTO `yourphp_area` VALUES ('2085','2083','锡林浩特�\�','0');
INSERT INTO `yourphp_area` VALUES ('2086','2083','阿巴嘎旗','0');
INSERT INTO `yourphp_area` VALUES ('2087','2083','苏尼特左�\�','0');
INSERT INTO `yourphp_area` VALUES ('2088','2083','苏尼特右�\�','0');
INSERT INTO `yourphp_area` VALUES ('2089','2083','东乌珠穆沁旗','0');
INSERT INTO `yourphp_area` VALUES ('2090','2083','西乌珠穆沁旗','0');
INSERT INTO `yourphp_area` VALUES ('2091','2083','太仆寺旗','0');
INSERT INTO `yourphp_area` VALUES ('2092','2083','镶黄�\�','0');
INSERT INTO `yourphp_area` VALUES ('2093','2083','正镶白旗','0');
INSERT INTO `yourphp_area` VALUES ('2094','2083','正蓝�\�','0');
INSERT INTO `yourphp_area` VALUES ('2095','2083','多伦�\�','0');
INSERT INTO `yourphp_area` VALUES ('2096','1989','兴安�\�','0');
INSERT INTO `yourphp_area` VALUES ('2097','2096','乌兰浩特�\�','0');
INSERT INTO `yourphp_area` VALUES ('2098','2096','阿尔山市','0');
INSERT INTO `yourphp_area` VALUES ('2099','2096','科尔沁右翼前�\�','0');
INSERT INTO `yourphp_area` VALUES ('2100','2096','科尔沁右翼中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2101','2096','扎赉特旗','0');
INSERT INTO `yourphp_area` VALUES ('2102','2096','突泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2103','0','宁夏','0');
INSERT INTO `yourphp_area` VALUES ('2104','2103','银川�\�','0');
INSERT INTO `yourphp_area` VALUES ('2105','2104','兴庆�\�','0');
INSERT INTO `yourphp_area` VALUES ('2106','2104','西夏�\�','0');
INSERT INTO `yourphp_area` VALUES ('2107','2104','金凤�\�','0');
INSERT INTO `yourphp_area` VALUES ('2108','2104','永宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2109','2104','贺兰�\�','0');
INSERT INTO `yourphp_area` VALUES ('2110','2104','灵武�\�','0');
INSERT INTO `yourphp_area` VALUES ('2111','2103','固原�\�','0');
INSERT INTO `yourphp_area` VALUES ('2112','2111','原州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2113','2111','西吉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2114','2111','隆德�\�','0');
INSERT INTO `yourphp_area` VALUES ('2115','2111','泾源�\�','0');
INSERT INTO `yourphp_area` VALUES ('2116','2111','彭阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2117','2103','石嘴山市','0');
INSERT INTO `yourphp_area` VALUES ('2118','2117','大武口区','0');
INSERT INTO `yourphp_area` VALUES ('2119','2117','惠农�\�','0');
INSERT INTO `yourphp_area` VALUES ('2120','2117','平罗�\�','0');
INSERT INTO `yourphp_area` VALUES ('2121','2103','吴忠�\�','0');
INSERT INTO `yourphp_area` VALUES ('2122','2121','利通区','0');
INSERT INTO `yourphp_area` VALUES ('2123','2121','盐池�\�','0');
INSERT INTO `yourphp_area` VALUES ('2124','2121','同心�\�','0');
INSERT INTO `yourphp_area` VALUES ('2125','2121','青铜峡市','0');
INSERT INTO `yourphp_area` VALUES ('2126','2103','中卫�\�','0');
INSERT INTO `yourphp_area` VALUES ('2127','2126','沙坡头区','0');
INSERT INTO `yourphp_area` VALUES ('2128','2126','中宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2129','2126','海原�\�','0');
INSERT INTO `yourphp_area` VALUES ('2130','0','青海','0');
INSERT INTO `yourphp_area` VALUES ('2131','2130','西宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2132','2131','城东�\�','0');
INSERT INTO `yourphp_area` VALUES ('2133','2131','城中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2134','2131','城西�\�','0');
INSERT INTO `yourphp_area` VALUES ('2135','2131','城北�\�','0');
INSERT INTO `yourphp_area` VALUES ('2136','2131','大通回族土族自治县','0');
INSERT INTO `yourphp_area` VALUES ('2137','2131','湟中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2138','2131','湟源�\�','0');
INSERT INTO `yourphp_area` VALUES ('2139','2130','果洛藏族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2140','2139','玛沁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2141','2139','班玛�\�','0');
INSERT INTO `yourphp_area` VALUES ('2142','2139','甘德�\�','0');
INSERT INTO `yourphp_area` VALUES ('2143','2139','达日�\�','0');
INSERT INTO `yourphp_area` VALUES ('2144','2139','久治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2145','2139','玛多�\�','0');
INSERT INTO `yourphp_area` VALUES ('2146','2130','海北藏族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2147','2146','门源回族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2148','2146','祁连�\�','0');
INSERT INTO `yourphp_area` VALUES ('2149','2146','海晏�\�','0');
INSERT INTO `yourphp_area` VALUES ('2150','2146','刚察�\�','0');
INSERT INTO `yourphp_area` VALUES ('2151','2130','海东地区','0');
INSERT INTO `yourphp_area` VALUES ('2152','2151','平安�\�','0');
INSERT INTO `yourphp_area` VALUES ('2153','2151','民和回族土族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2154','2151','乐都�\�','0');
INSERT INTO `yourphp_area` VALUES ('2155','2151','互助土族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2156','2151','化隆回族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2157','2151','循化撒拉族自治县','0');
INSERT INTO `yourphp_area` VALUES ('2158','2130','海南藏族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2159','2158','共和�\�','0');
INSERT INTO `yourphp_area` VALUES ('2160','2158','同德�\�','0');
INSERT INTO `yourphp_area` VALUES ('2161','2158','贵德�\�','0');
INSERT INTO `yourphp_area` VALUES ('2162','2158','兴海�\�','0');
INSERT INTO `yourphp_area` VALUES ('2163','2158','贵南�\�','0');
INSERT INTO `yourphp_area` VALUES ('2164','2130','海西蒙古族藏族自治州','0');
INSERT INTO `yourphp_area` VALUES ('2165','2164','格尔木市','0');
INSERT INTO `yourphp_area` VALUES ('2166','2164','德令哈市','0');
INSERT INTO `yourphp_area` VALUES ('2167','2164','乌兰�\�','0');
INSERT INTO `yourphp_area` VALUES ('2168','2164','都兰�\�','0');
INSERT INTO `yourphp_area` VALUES ('2169','2164','天峻�\�','0');
INSERT INTO `yourphp_area` VALUES ('2170','2130','黄南藏族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2171','2170','同仁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2172','2170','尖扎�\�','0');
INSERT INTO `yourphp_area` VALUES ('2173','2170','泽库�\�','0');
INSERT INTO `yourphp_area` VALUES ('2174','2170','河南蒙古族自治县','0');
INSERT INTO `yourphp_area` VALUES ('2175','2130','玉树藏族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2176','2175','玉树�\�','0');
INSERT INTO `yourphp_area` VALUES ('2177','2175','杂多�\�','0');
INSERT INTO `yourphp_area` VALUES ('2178','2175','称多�\�','0');
INSERT INTO `yourphp_area` VALUES ('2179','2175','治多�\�','0');
INSERT INTO `yourphp_area` VALUES ('2180','2175','囊谦�\�','0');
INSERT INTO `yourphp_area` VALUES ('2181','2175','曲麻莱县','0');
INSERT INTO `yourphp_area` VALUES ('2182','0','山东','0');
INSERT INTO `yourphp_area` VALUES ('2183','2182','济南�\�','0');
INSERT INTO `yourphp_area` VALUES ('2184','2183','历下�\�','0');
INSERT INTO `yourphp_area` VALUES ('2185','2183','市中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2186','2183','槐荫�\�','0');
INSERT INTO `yourphp_area` VALUES ('2187','2183','天桥�\�','0');
INSERT INTO `yourphp_area` VALUES ('2188','2183','历城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2189','2183','长清�\�','0');
INSERT INTO `yourphp_area` VALUES ('2190','2183','平阴�\�','0');
INSERT INTO `yourphp_area` VALUES ('2191','2183','济阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2192','2183','商河�\�','0');
INSERT INTO `yourphp_area` VALUES ('2193','2183','章丘�\�','0');
INSERT INTO `yourphp_area` VALUES ('2194','2182','滨州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2195','2194','滨城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2196','2194','惠民�\�','0');
INSERT INTO `yourphp_area` VALUES ('2197','2194','阳信�\�','0');
INSERT INTO `yourphp_area` VALUES ('2198','2194','无棣�\�','0');
INSERT INTO `yourphp_area` VALUES ('2199','2194','沾化�\�','0');
INSERT INTO `yourphp_area` VALUES ('2200','2194','博兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('2201','2194','邹平�\�','0');
INSERT INTO `yourphp_area` VALUES ('2202','2182','德州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2203','2202','德城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2204','2202','陵县','0');
INSERT INTO `yourphp_area` VALUES ('2205','2202','宁津�\�','0');
INSERT INTO `yourphp_area` VALUES ('2206','2202','庆云�\�','0');
INSERT INTO `yourphp_area` VALUES ('2207','2202','临邑�\�','0');
INSERT INTO `yourphp_area` VALUES ('2208','2202','齐河�\�','0');
INSERT INTO `yourphp_area` VALUES ('2209','2202','平原�\�','0');
INSERT INTO `yourphp_area` VALUES ('2210','2202','夏津�\�','0');
INSERT INTO `yourphp_area` VALUES ('2211','2202','武城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2212','2202','乐陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('2213','2202','禹城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2214','2182','东营�\�','0');
INSERT INTO `yourphp_area` VALUES ('2215','2214','东营�\�','0');
INSERT INTO `yourphp_area` VALUES ('2216','2214','河口�\�','0');
INSERT INTO `yourphp_area` VALUES ('2217','2214','垦利�\�','0');
INSERT INTO `yourphp_area` VALUES ('2218','2214','利津�\�','0');
INSERT INTO `yourphp_area` VALUES ('2219','2214','广饶�\�','0');
INSERT INTO `yourphp_area` VALUES ('2220','2182','菏泽�\�','0');
INSERT INTO `yourphp_area` VALUES ('2221','2220','牡丹�\�','0');
INSERT INTO `yourphp_area` VALUES ('2222','2220','曹县','0');
INSERT INTO `yourphp_area` VALUES ('2223','2220','单县','0');
INSERT INTO `yourphp_area` VALUES ('2224','2220','成武�\�','0');
INSERT INTO `yourphp_area` VALUES ('2225','2220','巨野�\�','0');
INSERT INTO `yourphp_area` VALUES ('2226','2220','郓城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2227','2220','鄄城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2228','2220','定陶�\�','0');
INSERT INTO `yourphp_area` VALUES ('2229','2220','东明�\�','0');
INSERT INTO `yourphp_area` VALUES ('2230','2182','济宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2231','2230','市中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2232','2230','任城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2233','2230','微山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2234','2230','鱼台�\�','0');
INSERT INTO `yourphp_area` VALUES ('2235','2230','金乡�\�','0');
INSERT INTO `yourphp_area` VALUES ('2236','2230','嘉祥�\�','0');
INSERT INTO `yourphp_area` VALUES ('2237','2230','汶上�\�','0');
INSERT INTO `yourphp_area` VALUES ('2238','2230','泗水�\�','0');
INSERT INTO `yourphp_area` VALUES ('2239','2230','梁山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2240','2230','曲阜�\�','0');
INSERT INTO `yourphp_area` VALUES ('2241','2230','兖州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2242','2230','邹城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2243','2182','莱芜�\�','0');
INSERT INTO `yourphp_area` VALUES ('2244','2243','莱城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2245','2243','钢城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2246','2182','聊城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2247','2246','东昌府区','0');
INSERT INTO `yourphp_area` VALUES ('2248','2246','阳谷�\�','0');
INSERT INTO `yourphp_area` VALUES ('2249','2246','莘县','0');
INSERT INTO `yourphp_area` VALUES ('2250','2246','茌平�\�','0');
INSERT INTO `yourphp_area` VALUES ('2251','2246','东阿�\�','0');
INSERT INTO `yourphp_area` VALUES ('2252','2246','冠县','0');
INSERT INTO `yourphp_area` VALUES ('2253','2246','高唐�\�','0');
INSERT INTO `yourphp_area` VALUES ('2254','2246','临清�\�','0');
INSERT INTO `yourphp_area` VALUES ('2255','2182','临沂�\�','0');
INSERT INTO `yourphp_area` VALUES ('2256','2255','兰山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2257','2255','罗庄�\�','0');
INSERT INTO `yourphp_area` VALUES ('2258','2255','河东�\�','0');
INSERT INTO `yourphp_area` VALUES ('2259','2255','沂南�\�','0');
INSERT INTO `yourphp_area` VALUES ('2260','2255','郯城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2261','2255','沂水�\�','0');
INSERT INTO `yourphp_area` VALUES ('2262','2255','苍山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2263','2255','费县','0');
INSERT INTO `yourphp_area` VALUES ('2264','2255','平邑�\�','0');
INSERT INTO `yourphp_area` VALUES ('2265','2255','莒南�\�','0');
INSERT INTO `yourphp_area` VALUES ('2266','2255','蒙阴�\�','0');
INSERT INTO `yourphp_area` VALUES ('2267','2255','临沭�\�','0');
INSERT INTO `yourphp_area` VALUES ('2268','2182','青岛�\�','0');
INSERT INTO `yourphp_area` VALUES ('2269','2268','市南�\�','0');
INSERT INTO `yourphp_area` VALUES ('2270','2268','市北�\�','0');
INSERT INTO `yourphp_area` VALUES ('2271','2268','四方�\�','0');
INSERT INTO `yourphp_area` VALUES ('2272','2268','黄岛�\�','0');
INSERT INTO `yourphp_area` VALUES ('2273','2268','崂山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2274','2268','李沧�\�','0');
INSERT INTO `yourphp_area` VALUES ('2275','2268','城阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2276','2268','胶州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2277','2268','即墨�\�','0');
INSERT INTO `yourphp_area` VALUES ('2278','2268','平度�\�','0');
INSERT INTO `yourphp_area` VALUES ('2279','2268','胶南�\�','0');
INSERT INTO `yourphp_area` VALUES ('2280','2268','莱西�\�','0');
INSERT INTO `yourphp_area` VALUES ('2281','2182','日照�\�','0');
INSERT INTO `yourphp_area` VALUES ('2282','2281','东港�\�','0');
INSERT INTO `yourphp_area` VALUES ('2283','2281','岚山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2284','2281','五莲�\�','0');
INSERT INTO `yourphp_area` VALUES ('2285','2281','莒县','0');
INSERT INTO `yourphp_area` VALUES ('2286','2182','泰安�\�','0');
INSERT INTO `yourphp_area` VALUES ('2287','2286','泰山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2288','2286','岱岳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2289','2286','宁阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2290','2286','东平�\�','0');
INSERT INTO `yourphp_area` VALUES ('2291','2286','新泰�\�','0');
INSERT INTO `yourphp_area` VALUES ('2292','2286','肥城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2293','2182','威海�\�','0');
INSERT INTO `yourphp_area` VALUES ('2294','2293','环翠�\�','0');
INSERT INTO `yourphp_area` VALUES ('2295','2293','文登�\�','0');
INSERT INTO `yourphp_area` VALUES ('2296','2293','荣成�\�','0');
INSERT INTO `yourphp_area` VALUES ('2297','2293','乳山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2298','2182','潍坊�\�','0');
INSERT INTO `yourphp_area` VALUES ('2299','2298','潍城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2300','2298','寒亭�\�','0');
INSERT INTO `yourphp_area` VALUES ('2301','2298','坊子�\�','0');
INSERT INTO `yourphp_area` VALUES ('2302','2298','奎文�\�','0');
INSERT INTO `yourphp_area` VALUES ('2303','2298','临朐�\�','0');
INSERT INTO `yourphp_area` VALUES ('2304','2298','昌乐�\�','0');
INSERT INTO `yourphp_area` VALUES ('2305','2298','青州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2306','2298','诸城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2307','2298','寿光�\�','0');
INSERT INTO `yourphp_area` VALUES ('2308','2298','安丘�\�','0');
INSERT INTO `yourphp_area` VALUES ('2309','2298','高密�\�','0');
INSERT INTO `yourphp_area` VALUES ('2310','2298','昌邑�\�','0');
INSERT INTO `yourphp_area` VALUES ('2311','2182','烟台�\�','0');
INSERT INTO `yourphp_area` VALUES ('2312','2311','芝罘�\�','0');
INSERT INTO `yourphp_area` VALUES ('2313','2311','福山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2314','2311','牟平�\�','0');
INSERT INTO `yourphp_area` VALUES ('2315','2311','莱山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2316','2311','长岛�\�','0');
INSERT INTO `yourphp_area` VALUES ('2317','2311','龙口�\�','0');
INSERT INTO `yourphp_area` VALUES ('2318','2311','莱阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2319','2311','莱州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2320','2311','蓬莱�\�','0');
INSERT INTO `yourphp_area` VALUES ('2321','2311','招远�\�','0');
INSERT INTO `yourphp_area` VALUES ('2322','2311','栖霞�\�','0');
INSERT INTO `yourphp_area` VALUES ('2323','2311','海阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2324','2182','枣庄�\�','0');
INSERT INTO `yourphp_area` VALUES ('2325','2324','市中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2326','2324','薛城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2327','2324','峄城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2328','2324','台儿庄区','0');
INSERT INTO `yourphp_area` VALUES ('2329','2324','山亭�\�','0');
INSERT INTO `yourphp_area` VALUES ('2330','2324','滕州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2331','2182','淄博�\�','0');
INSERT INTO `yourphp_area` VALUES ('2332','2331','淄川�\�','0');
INSERT INTO `yourphp_area` VALUES ('2333','2331','张店�\�','0');
INSERT INTO `yourphp_area` VALUES ('2334','2331','博山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2335','2331','临淄�\�','0');
INSERT INTO `yourphp_area` VALUES ('2336','2331','周村�\�','0');
INSERT INTO `yourphp_area` VALUES ('2337','2331','桓台�\�','0');
INSERT INTO `yourphp_area` VALUES ('2338','2331','高青�\�','0');
INSERT INTO `yourphp_area` VALUES ('2339','2331','沂源�\�','0');
INSERT INTO `yourphp_area` VALUES ('2340','0','山西','0');
INSERT INTO `yourphp_area` VALUES ('2341','2340','太原�\�','0');
INSERT INTO `yourphp_area` VALUES ('2342','2341','小店�\�','0');
INSERT INTO `yourphp_area` VALUES ('2343','2341','迎泽�\�','0');
INSERT INTO `yourphp_area` VALUES ('2344','2341','杏花岭区','0');
INSERT INTO `yourphp_area` VALUES ('2345','2341','尖草坪区','0');
INSERT INTO `yourphp_area` VALUES ('2346','2341','万柏林区','0');
INSERT INTO `yourphp_area` VALUES ('2347','2341','晋源�\�','0');
INSERT INTO `yourphp_area` VALUES ('2348','2341','清徐�\�','0');
INSERT INTO `yourphp_area` VALUES ('2349','2341','阳曲�\�','0');
INSERT INTO `yourphp_area` VALUES ('2350','2341','娄烦�\�','0');
INSERT INTO `yourphp_area` VALUES ('2351','2341','古交�\�','0');
INSERT INTO `yourphp_area` VALUES ('2352','2340','长治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2353','2352','城区','0');
INSERT INTO `yourphp_area` VALUES ('2354','2352','郊区','0');
INSERT INTO `yourphp_area` VALUES ('2355','2352','长治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2356','2352','襄垣�\�','0');
INSERT INTO `yourphp_area` VALUES ('2357','2352','屯留�\�','0');
INSERT INTO `yourphp_area` VALUES ('2358','2352','平顺�\�','0');
INSERT INTO `yourphp_area` VALUES ('2359','2352','黎城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2360','2352','壶关�\�','0');
INSERT INTO `yourphp_area` VALUES ('2361','2352','长子�\�','0');
INSERT INTO `yourphp_area` VALUES ('2362','2352','武乡�\�','0');
INSERT INTO `yourphp_area` VALUES ('2363','2352','沁县','0');
INSERT INTO `yourphp_area` VALUES ('2364','2352','沁源�\�','0');
INSERT INTO `yourphp_area` VALUES ('2365','2352','潞城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2366','2340','大同�\�','0');
INSERT INTO `yourphp_area` VALUES ('2367','2366','城区','0');
INSERT INTO `yourphp_area` VALUES ('2368','2366','矿区','0');
INSERT INTO `yourphp_area` VALUES ('2369','2366','南郊�\�','0');
INSERT INTO `yourphp_area` VALUES ('2370','2366','新荣�\�','0');
INSERT INTO `yourphp_area` VALUES ('2371','2366','阳高�\�','0');
INSERT INTO `yourphp_area` VALUES ('2372','2366','天镇�\�','0');
INSERT INTO `yourphp_area` VALUES ('2373','2366','广灵�\�','0');
INSERT INTO `yourphp_area` VALUES ('2374','2366','灵丘�\�','0');
INSERT INTO `yourphp_area` VALUES ('2375','2366','浑源�\�','0');
INSERT INTO `yourphp_area` VALUES ('2376','2366','左云�\�','0');
INSERT INTO `yourphp_area` VALUES ('2377','2366','大同�\�','0');
INSERT INTO `yourphp_area` VALUES ('2378','2340','晋城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2379','2378','城区','0');
INSERT INTO `yourphp_area` VALUES ('2380','2378','沁水�\�','0');
INSERT INTO `yourphp_area` VALUES ('2381','2378','阳城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2382','2378','陵川�\�','0');
INSERT INTO `yourphp_area` VALUES ('2383','2378','泽州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2384','2378','高平�\�','0');
INSERT INTO `yourphp_area` VALUES ('2385','2340','晋中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2386','2385','榆次�\�','0');
INSERT INTO `yourphp_area` VALUES ('2387','2385','榆社�\�','0');
INSERT INTO `yourphp_area` VALUES ('2388','2385','左权�\�','0');
INSERT INTO `yourphp_area` VALUES ('2389','2385','和顺�\�','0');
INSERT INTO `yourphp_area` VALUES ('2390','2385','昔阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2391','2385','寿阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2392','2385','太谷�\�','0');
INSERT INTO `yourphp_area` VALUES ('2393','2385','祁县','0');
INSERT INTO `yourphp_area` VALUES ('2394','2385','平遥�\�','0');
INSERT INTO `yourphp_area` VALUES ('2395','2385','灵石�\�','0');
INSERT INTO `yourphp_area` VALUES ('2396','2385','介休�\�','0');
INSERT INTO `yourphp_area` VALUES ('2397','2340','临汾�\�','0');
INSERT INTO `yourphp_area` VALUES ('2398','2397','尧都�\�','0');
INSERT INTO `yourphp_area` VALUES ('2399','2397','曲沃�\�','0');
INSERT INTO `yourphp_area` VALUES ('2400','2397','翼城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2401','2397','襄汾�\�','0');
INSERT INTO `yourphp_area` VALUES ('2402','2397','洪洞�\�','0');
INSERT INTO `yourphp_area` VALUES ('2403','2397','古县','0');
INSERT INTO `yourphp_area` VALUES ('2404','2397','安泽�\�','0');
INSERT INTO `yourphp_area` VALUES ('2405','2397','浮山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2406','2397','吉县','0');
INSERT INTO `yourphp_area` VALUES ('2407','2397','乡宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2408','2397','大宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2409','2397','隰县','0');
INSERT INTO `yourphp_area` VALUES ('2410','2397','永和�\�','0');
INSERT INTO `yourphp_area` VALUES ('2411','2397','蒲县','0');
INSERT INTO `yourphp_area` VALUES ('2412','2397','汾西�\�','0');
INSERT INTO `yourphp_area` VALUES ('2413','2397','侯马�\�','0');
INSERT INTO `yourphp_area` VALUES ('2414','2397','霍州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2415','2340','吕梁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2416','2415','离石�\�','0');
INSERT INTO `yourphp_area` VALUES ('2417','2415','文水�\�','0');
INSERT INTO `yourphp_area` VALUES ('2418','2415','交城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2419','2415','兴县','0');
INSERT INTO `yourphp_area` VALUES ('2420','2415','临县','0');
INSERT INTO `yourphp_area` VALUES ('2421','2415','柳林�\�','0');
INSERT INTO `yourphp_area` VALUES ('2422','2415','石楼�\�','0');
INSERT INTO `yourphp_area` VALUES ('2423','2415','岚县','0');
INSERT INTO `yourphp_area` VALUES ('2424','2415','方山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2425','2415','中阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2426','2415','交口�\�','0');
INSERT INTO `yourphp_area` VALUES ('2427','2415','孝义�\�','0');
INSERT INTO `yourphp_area` VALUES ('2428','2415','汾阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2429','2340','朔州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2430','2429','朔城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2431','2429','平鲁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2432','2429','山阴�\�','0');
INSERT INTO `yourphp_area` VALUES ('2433','2429','应县','0');
INSERT INTO `yourphp_area` VALUES ('2434','2429','右玉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2435','2429','怀仁县','0');
INSERT INTO `yourphp_area` VALUES ('2436','2340','忻州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2437','2436','忻府�\�','0');
INSERT INTO `yourphp_area` VALUES ('2438','2436','定襄�\�','0');
INSERT INTO `yourphp_area` VALUES ('2439','2436','五台�\�','0');
INSERT INTO `yourphp_area` VALUES ('2440','2436','代县','0');
INSERT INTO `yourphp_area` VALUES ('2441','2436','繁峙�\�','0');
INSERT INTO `yourphp_area` VALUES ('2442','2436','宁武�\�','0');
INSERT INTO `yourphp_area` VALUES ('2443','2436','静乐�\�','0');
INSERT INTO `yourphp_area` VALUES ('2444','2436','神池�\�','0');
INSERT INTO `yourphp_area` VALUES ('2445','2436','五寨�\�','0');
INSERT INTO `yourphp_area` VALUES ('2446','2436','岢岚�\�','0');
INSERT INTO `yourphp_area` VALUES ('2447','2436','河曲�\�','0');
INSERT INTO `yourphp_area` VALUES ('2448','2436','保德�\�','0');
INSERT INTO `yourphp_area` VALUES ('2449','2436','偏关�\�','0');
INSERT INTO `yourphp_area` VALUES ('2450','2436','原平�\�','0');
INSERT INTO `yourphp_area` VALUES ('2451','2340','阳泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2452','2451','城区','0');
INSERT INTO `yourphp_area` VALUES ('2453','2451','矿区','0');
INSERT INTO `yourphp_area` VALUES ('2454','2451','郊区','0');
INSERT INTO `yourphp_area` VALUES ('2455','2451','平定�\�','0');
INSERT INTO `yourphp_area` VALUES ('2456','2451','盂县','0');
INSERT INTO `yourphp_area` VALUES ('2457','2340','运城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2458','2457','盐湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('2459','2457','临猗�\�','0');
INSERT INTO `yourphp_area` VALUES ('2460','2457','万荣�\�','0');
INSERT INTO `yourphp_area` VALUES ('2461','2457','闻喜�\�','0');
INSERT INTO `yourphp_area` VALUES ('2462','2457','稷山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2463','2457','新绛�\�','0');
INSERT INTO `yourphp_area` VALUES ('2464','2457','绛县','0');
INSERT INTO `yourphp_area` VALUES ('2465','2457','垣曲�\�','0');
INSERT INTO `yourphp_area` VALUES ('2466','2457','夏县','0');
INSERT INTO `yourphp_area` VALUES ('2467','2457','平陆�\�','0');
INSERT INTO `yourphp_area` VALUES ('2468','2457','芮城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2469','2457','永济�\�','0');
INSERT INTO `yourphp_area` VALUES ('2470','2457','河津�\�','0');
INSERT INTO `yourphp_area` VALUES ('2471','0','陕西','0');
INSERT INTO `yourphp_area` VALUES ('2472','2471','西安�\�','0');
INSERT INTO `yourphp_area` VALUES ('2473','2472','新城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2474','2472','碑林�\�','0');
INSERT INTO `yourphp_area` VALUES ('2475','2472','莲湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('2476','2472','灞桥�\�','0');
INSERT INTO `yourphp_area` VALUES ('2477','2472','未央�\�','0');
INSERT INTO `yourphp_area` VALUES ('2478','2472','雁塔�\�','0');
INSERT INTO `yourphp_area` VALUES ('2479','2472','阎良�\�','0');
INSERT INTO `yourphp_area` VALUES ('2480','2472','临潼�\�','0');
INSERT INTO `yourphp_area` VALUES ('2481','2472','长安�\�','0');
INSERT INTO `yourphp_area` VALUES ('2482','2472','蓝田�\�','0');
INSERT INTO `yourphp_area` VALUES ('2483','2472','周至�\�','0');
INSERT INTO `yourphp_area` VALUES ('2484','2472','户县','0');
INSERT INTO `yourphp_area` VALUES ('2485','2472','高陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('2486','2471','安康�\�','0');
INSERT INTO `yourphp_area` VALUES ('2487','2486','汉滨�\�','0');
INSERT INTO `yourphp_area` VALUES ('2488','2486','汉阴�\�','0');
INSERT INTO `yourphp_area` VALUES ('2489','2486','石泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2490','2486','宁陕�\�','0');
INSERT INTO `yourphp_area` VALUES ('2491','2486','紫阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2492','2486','岚皋�\�','0');
INSERT INTO `yourphp_area` VALUES ('2493','2486','平利�\�','0');
INSERT INTO `yourphp_area` VALUES ('2494','2486','镇坪�\�','0');
INSERT INTO `yourphp_area` VALUES ('2495','2486','旬阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2496','2486','白河�\�','0');
INSERT INTO `yourphp_area` VALUES ('2497','2471','宝鸡�\�','0');
INSERT INTO `yourphp_area` VALUES ('2498','2497','渭滨�\�','0');
INSERT INTO `yourphp_area` VALUES ('2499','2497','金台�\�','0');
INSERT INTO `yourphp_area` VALUES ('2500','2497','陈仓�\�','0');
INSERT INTO `yourphp_area` VALUES ('2501','2497','凤翔�\�','0');
INSERT INTO `yourphp_area` VALUES ('2502','2497','岐山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2503','2497','扶风�\�','0');
INSERT INTO `yourphp_area` VALUES ('2504','2497','眉县','0');
INSERT INTO `yourphp_area` VALUES ('2505','2497','陇县','0');
INSERT INTO `yourphp_area` VALUES ('2506','2497','千阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2507','2497','麟游�\�','0');
INSERT INTO `yourphp_area` VALUES ('2508','2497','凤县','0');
INSERT INTO `yourphp_area` VALUES ('2509','2497','太白�\�','0');
INSERT INTO `yourphp_area` VALUES ('2510','2471','汉中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2511','2510','汉台�\�','0');
INSERT INTO `yourphp_area` VALUES ('2512','2510','南郑�\�','0');
INSERT INTO `yourphp_area` VALUES ('2513','2510','城固�\�','0');
INSERT INTO `yourphp_area` VALUES ('2514','2510','洋县','0');
INSERT INTO `yourphp_area` VALUES ('2515','2510','西乡�\�','0');
INSERT INTO `yourphp_area` VALUES ('2516','2510','勉县','0');
INSERT INTO `yourphp_area` VALUES ('2517','2510','宁强�\�','0');
INSERT INTO `yourphp_area` VALUES ('2518','2510','略阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2519','2510','镇巴�\�','0');
INSERT INTO `yourphp_area` VALUES ('2520','2510','留坝�\�','0');
INSERT INTO `yourphp_area` VALUES ('2521','2510','佛坪�\�','0');
INSERT INTO `yourphp_area` VALUES ('2522','2471','商洛�\�','0');
INSERT INTO `yourphp_area` VALUES ('2523','2522','商州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2524','2522','洛南�\�','0');
INSERT INTO `yourphp_area` VALUES ('2525','2522','丹凤�\�','0');
INSERT INTO `yourphp_area` VALUES ('2526','2522','商南�\�','0');
INSERT INTO `yourphp_area` VALUES ('2527','2522','山阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2528','2522','镇安�\�','0');
INSERT INTO `yourphp_area` VALUES ('2529','2522','柞水�\�','0');
INSERT INTO `yourphp_area` VALUES ('2530','2471','铜川�\�','0');
INSERT INTO `yourphp_area` VALUES ('2531','2530','王益�\�','0');
INSERT INTO `yourphp_area` VALUES ('2532','2530','印台�\�','0');
INSERT INTO `yourphp_area` VALUES ('2533','2530','耀州区','0');
INSERT INTO `yourphp_area` VALUES ('2534','2530','宜君�\�','0');
INSERT INTO `yourphp_area` VALUES ('2535','2471','渭南�\�','0');
INSERT INTO `yourphp_area` VALUES ('2536','2535','临渭�\�','0');
INSERT INTO `yourphp_area` VALUES ('2537','2535','华县','0');
INSERT INTO `yourphp_area` VALUES ('2538','2535','潼关�\�','0');
INSERT INTO `yourphp_area` VALUES ('2539','2535','大荔�\�','0');
INSERT INTO `yourphp_area` VALUES ('2540','2535','合阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2541','2535','澄城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2542','2535','蒲城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2543','2535','白水�\�','0');
INSERT INTO `yourphp_area` VALUES ('2544','2535','富平�\�','0');
INSERT INTO `yourphp_area` VALUES ('2545','2535','韩城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2546','2535','华阴�\�','0');
INSERT INTO `yourphp_area` VALUES ('2547','2471','咸阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2548','2547','秦都�\�','0');
INSERT INTO `yourphp_area` VALUES ('2549','2547','杨凌�\�','0');
INSERT INTO `yourphp_area` VALUES ('2550','2547','渭城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2551','2547','三原�\�','0');
INSERT INTO `yourphp_area` VALUES ('2552','2547','泾阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2553','2547','乾县','0');
INSERT INTO `yourphp_area` VALUES ('2554','2547','礼泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2555','2547','永寿�\�','0');
INSERT INTO `yourphp_area` VALUES ('2556','2547','彬县','0');
INSERT INTO `yourphp_area` VALUES ('2557','2547','长武�\�','0');
INSERT INTO `yourphp_area` VALUES ('2558','2547','旬邑�\�','0');
INSERT INTO `yourphp_area` VALUES ('2559','2547','淳化�\�','0');
INSERT INTO `yourphp_area` VALUES ('2560','2547','武功�\�','0');
INSERT INTO `yourphp_area` VALUES ('2561','2547','兴平�\�','0');
INSERT INTO `yourphp_area` VALUES ('2562','2471','延安�\�','0');
INSERT INTO `yourphp_area` VALUES ('2563','2562','宝塔�\�','0');
INSERT INTO `yourphp_area` VALUES ('2564','2562','延长�\�','0');
INSERT INTO `yourphp_area` VALUES ('2565','2562','延川�\�','0');
INSERT INTO `yourphp_area` VALUES ('2566','2562','子长�\�','0');
INSERT INTO `yourphp_area` VALUES ('2567','2562','安塞�\�','0');
INSERT INTO `yourphp_area` VALUES ('2568','2562','志丹�\�','0');
INSERT INTO `yourphp_area` VALUES ('2569','2562','吴旗�\�','0');
INSERT INTO `yourphp_area` VALUES ('2570','2562','甘泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2571','2562','富县','0');
INSERT INTO `yourphp_area` VALUES ('2572','2562','洛川�\�','0');
INSERT INTO `yourphp_area` VALUES ('2573','2562','宜川�\�','0');
INSERT INTO `yourphp_area` VALUES ('2574','2562','黄龙�\�','0');
INSERT INTO `yourphp_area` VALUES ('2575','2562','黄陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('2576','2471','榆林�\�','0');
INSERT INTO `yourphp_area` VALUES ('2577','2576','榆阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2578','2576','神木�\�','0');
INSERT INTO `yourphp_area` VALUES ('2579','2576','府谷�\�','0');
INSERT INTO `yourphp_area` VALUES ('2580','2576','横山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2581','2576','靖边�\�','0');
INSERT INTO `yourphp_area` VALUES ('2582','2576','定边�\�','0');
INSERT INTO `yourphp_area` VALUES ('2583','2576','绥德�\�','0');
INSERT INTO `yourphp_area` VALUES ('2584','2576','米脂�\�','0');
INSERT INTO `yourphp_area` VALUES ('2585','2576','佳县','0');
INSERT INTO `yourphp_area` VALUES ('2586','2576','吴堡�\�','0');
INSERT INTO `yourphp_area` VALUES ('2587','2576','清涧�\�','0');
INSERT INTO `yourphp_area` VALUES ('2588','2576','子洲�\�','0');
INSERT INTO `yourphp_area` VALUES ('2589','0','四川','0');
INSERT INTO `yourphp_area` VALUES ('2590','2589','成都�\�','0');
INSERT INTO `yourphp_area` VALUES ('2591','2590','锦江�\�','0');
INSERT INTO `yourphp_area` VALUES ('2592','2590','青羊�\�','0');
INSERT INTO `yourphp_area` VALUES ('2593','2590','金牛�\�','0');
INSERT INTO `yourphp_area` VALUES ('2594','2590','武侯�\�','0');
INSERT INTO `yourphp_area` VALUES ('2595','2590','成华�\�','0');
INSERT INTO `yourphp_area` VALUES ('2596','2590','龙泉驿区','0');
INSERT INTO `yourphp_area` VALUES ('2597','2590','青白江区','0');
INSERT INTO `yourphp_area` VALUES ('2598','2590','新都�\�','0');
INSERT INTO `yourphp_area` VALUES ('2599','2590','温江�\�','0');
INSERT INTO `yourphp_area` VALUES ('2600','2590','金堂�\�','0');
INSERT INTO `yourphp_area` VALUES ('2601','2590','双流�\�','0');
INSERT INTO `yourphp_area` VALUES ('2602','2590','郫县','0');
INSERT INTO `yourphp_area` VALUES ('2603','2590','大邑�\�','0');
INSERT INTO `yourphp_area` VALUES ('2604','2590','蒲江�\�','0');
INSERT INTO `yourphp_area` VALUES ('2605','2590','新津�\�','0');
INSERT INTO `yourphp_area` VALUES ('2606','2590','都江堰市','0');
INSERT INTO `yourphp_area` VALUES ('2607','2590','彭州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2608','2590','邛崃�\�','0');
INSERT INTO `yourphp_area` VALUES ('2609','2590','崇州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2610','2589','阿坝藏族羌族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2611','2610','汶川�\�','0');
INSERT INTO `yourphp_area` VALUES ('2612','2610','理县','0');
INSERT INTO `yourphp_area` VALUES ('2613','2610','茂县','0');
INSERT INTO `yourphp_area` VALUES ('2614','2610','松潘�\�','0');
INSERT INTO `yourphp_area` VALUES ('2615','2610','九寨沟县','0');
INSERT INTO `yourphp_area` VALUES ('2616','2610','金川�\�','0');
INSERT INTO `yourphp_area` VALUES ('2617','2610','小金�\�','0');
INSERT INTO `yourphp_area` VALUES ('2618','2610','黑水�\�','0');
INSERT INTO `yourphp_area` VALUES ('2619','2610','马尔康县','0');
INSERT INTO `yourphp_area` VALUES ('2620','2610','壤塘�\�','0');
INSERT INTO `yourphp_area` VALUES ('2621','2610','阿坝�\�','0');
INSERT INTO `yourphp_area` VALUES ('2622','2610','若尔盖县','0');
INSERT INTO `yourphp_area` VALUES ('2623','2610','红原�\�','0');
INSERT INTO `yourphp_area` VALUES ('2624','2589','巴中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2625','2624','巴州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2626','2624','通江�\�','0');
INSERT INTO `yourphp_area` VALUES ('2627','2624','南江�\�','0');
INSERT INTO `yourphp_area` VALUES ('2628','2624','平昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('2629','2589','达州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2630','2629','通川�\�','0');
INSERT INTO `yourphp_area` VALUES ('2631','2629','达县','0');
INSERT INTO `yourphp_area` VALUES ('2632','2629','宣汉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2633','2629','开江县','0');
INSERT INTO `yourphp_area` VALUES ('2634','2629','大竹�\�','0');
INSERT INTO `yourphp_area` VALUES ('2635','2629','渠县','0');
INSERT INTO `yourphp_area` VALUES ('2636','2629','万源�\�','0');
INSERT INTO `yourphp_area` VALUES ('2637','2589','德阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2638','2637','旌阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2639','2637','中江�\�','0');
INSERT INTO `yourphp_area` VALUES ('2640','2637','罗江�\�','0');
INSERT INTO `yourphp_area` VALUES ('2641','2637','广汉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2642','2637','什邡市','0');
INSERT INTO `yourphp_area` VALUES ('2643','2637','绵竹�\�','0');
INSERT INTO `yourphp_area` VALUES ('2644','2589','甘孜藏族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2645','2644','康定�\�','0');
INSERT INTO `yourphp_area` VALUES ('2646','2644','泸定�\�','0');
INSERT INTO `yourphp_area` VALUES ('2647','2644','丹巴�\�','0');
INSERT INTO `yourphp_area` VALUES ('2648','2644','九龙�\�','0');
INSERT INTO `yourphp_area` VALUES ('2649','2644','雅江�\�','0');
INSERT INTO `yourphp_area` VALUES ('2650','2644','道孚�\�','0');
INSERT INTO `yourphp_area` VALUES ('2651','2644','炉霍�\�','0');
INSERT INTO `yourphp_area` VALUES ('2652','2644','甘孜�\�','0');
INSERT INTO `yourphp_area` VALUES ('2653','2644','新龙�\�','0');
INSERT INTO `yourphp_area` VALUES ('2654','2644','德格�\�','0');
INSERT INTO `yourphp_area` VALUES ('2655','2644','白玉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2656','2644','石渠�\�','0');
INSERT INTO `yourphp_area` VALUES ('2657','2644','色达�\�','0');
INSERT INTO `yourphp_area` VALUES ('2658','2644','理塘�\�','0');
INSERT INTO `yourphp_area` VALUES ('2659','2644','巴塘�\�','0');
INSERT INTO `yourphp_area` VALUES ('2660','2644','乡城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2661','2644','稻城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2662','2644','得荣�\�','0');
INSERT INTO `yourphp_area` VALUES ('2663','2589','广安�\�','0');
INSERT INTO `yourphp_area` VALUES ('2664','2663','广安�\�','0');
INSERT INTO `yourphp_area` VALUES ('2665','2663','岳池�\�','0');
INSERT INTO `yourphp_area` VALUES ('2666','2663','武胜�\�','0');
INSERT INTO `yourphp_area` VALUES ('2667','2663','邻水�\�','0');
INSERT INTO `yourphp_area` VALUES ('2668','2663','华莹�\�','0');
INSERT INTO `yourphp_area` VALUES ('2669','2589','广元�\�','0');
INSERT INTO `yourphp_area` VALUES ('2670','2669','市中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2671','2669','元坝�\�','0');
INSERT INTO `yourphp_area` VALUES ('2672','2669','朝天�\�','0');
INSERT INTO `yourphp_area` VALUES ('2673','2669','旺苍�\�','0');
INSERT INTO `yourphp_area` VALUES ('2674','2669','青川�\�','0');
INSERT INTO `yourphp_area` VALUES ('2675','2669','剑阁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2676','2669','苍溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('2677','2589','乐山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2678','2677','市中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2679','2677','沙湾�\�','0');
INSERT INTO `yourphp_area` VALUES ('2680','2677','五通桥�\�','0');
INSERT INTO `yourphp_area` VALUES ('2681','2677','金口河区','0');
INSERT INTO `yourphp_area` VALUES ('2682','2677','犍为�\�','0');
INSERT INTO `yourphp_area` VALUES ('2683','2677','井研�\�','0');
INSERT INTO `yourphp_area` VALUES ('2684','2677','夹江�\�','0');
INSERT INTO `yourphp_area` VALUES ('2685','2677','沐川�\�','0');
INSERT INTO `yourphp_area` VALUES ('2686','2677','峨边彝族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2687','2677','马边彝族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2688','2677','峨眉山市','0');
INSERT INTO `yourphp_area` VALUES ('2689','2589','凉山彝族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2690','2689','西昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('2691','2689','木里藏族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2692','2689','盐源�\�','0');
INSERT INTO `yourphp_area` VALUES ('2693','2689','德昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('2694','2689','会理�\�','0');
INSERT INTO `yourphp_area` VALUES ('2695','2689','会东�\�','0');
INSERT INTO `yourphp_area` VALUES ('2696','2689','宁南�\�','0');
INSERT INTO `yourphp_area` VALUES ('2697','2689','普格�\�','0');
INSERT INTO `yourphp_area` VALUES ('2698','2689','布拖�\�','0');
INSERT INTO `yourphp_area` VALUES ('2699','2689','金阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2700','2689','昭觉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2701','2689','喜德�\�','0');
INSERT INTO `yourphp_area` VALUES ('2702','2689','冕宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2703','2689','越西�\�','0');
INSERT INTO `yourphp_area` VALUES ('2704','2689','甘洛�\�','0');
INSERT INTO `yourphp_area` VALUES ('2705','2689','美姑�\�','0');
INSERT INTO `yourphp_area` VALUES ('2706','2689','雷波�\�','0');
INSERT INTO `yourphp_area` VALUES ('2707','2589','泸州�\�','0');
INSERT INTO `yourphp_area` VALUES ('2708','2707','江阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2709','2707','纳溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('2710','2707','龙马潭区','0');
INSERT INTO `yourphp_area` VALUES ('2711','2707','泸县','0');
INSERT INTO `yourphp_area` VALUES ('2712','2707','合江�\�','0');
INSERT INTO `yourphp_area` VALUES ('2713','2707','叙永�\�','0');
INSERT INTO `yourphp_area` VALUES ('2714','2707','古蔺�\�','0');
INSERT INTO `yourphp_area` VALUES ('2715','2589','眉山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2716','2715','东坡�\�','0');
INSERT INTO `yourphp_area` VALUES ('2717','2715','仁寿�\�','0');
INSERT INTO `yourphp_area` VALUES ('2718','2715','彭山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2719','2715','洪雅�\�','0');
INSERT INTO `yourphp_area` VALUES ('2720','2715','丹棱�\�','0');
INSERT INTO `yourphp_area` VALUES ('2721','2715','青神�\�','0');
INSERT INTO `yourphp_area` VALUES ('2722','2589','绵阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2723','2722','涪城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2724','2722','游仙�\�','0');
INSERT INTO `yourphp_area` VALUES ('2725','2722','三台�\�','0');
INSERT INTO `yourphp_area` VALUES ('2726','2722','盐亭�\�','0');
INSERT INTO `yourphp_area` VALUES ('2727','2722','安县','0');
INSERT INTO `yourphp_area` VALUES ('2728','2722','梓潼�\�','0');
INSERT INTO `yourphp_area` VALUES ('2729','2722','北川羌族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2730','2722','平武�\�','0');
INSERT INTO `yourphp_area` VALUES ('2731','2722','江油�\�','0');
INSERT INTO `yourphp_area` VALUES ('2732','2589','内江�\�','0');
INSERT INTO `yourphp_area` VALUES ('2733','2732','市中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2734','2732','东兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('2735','2732','威远�\�','0');
INSERT INTO `yourphp_area` VALUES ('2736','2732','资中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2737','2732','隆昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('2738','2589','南充�\�','0');
INSERT INTO `yourphp_area` VALUES ('2739','2738','顺庆�\�','0');
INSERT INTO `yourphp_area` VALUES ('2740','2738','高坪�\�','0');
INSERT INTO `yourphp_area` VALUES ('2741','2738','嘉陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('2742','2738','南部�\�','0');
INSERT INTO `yourphp_area` VALUES ('2743','2738','营山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2744','2738','蓬安�\�','0');
INSERT INTO `yourphp_area` VALUES ('2745','2738','仪陇�\�','0');
INSERT INTO `yourphp_area` VALUES ('2746','2738','西充�\�','0');
INSERT INTO `yourphp_area` VALUES ('2747','2738','阆中�\�','0');
INSERT INTO `yourphp_area` VALUES ('2748','2589','攀枝花�\�','0');
INSERT INTO `yourphp_area` VALUES ('2749','2748','东区','0');
INSERT INTO `yourphp_area` VALUES ('2750','2748','西区','0');
INSERT INTO `yourphp_area` VALUES ('2751','2748','仁和�\�','0');
INSERT INTO `yourphp_area` VALUES ('2752','2748','米易�\�','0');
INSERT INTO `yourphp_area` VALUES ('2753','2748','盐边�\�','0');
INSERT INTO `yourphp_area` VALUES ('2754','2589','遂宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2755','2754','船山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2756','2754','安居�\�','0');
INSERT INTO `yourphp_area` VALUES ('2757','2754','蓬溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('2758','2754','射洪�\�','0');
INSERT INTO `yourphp_area` VALUES ('2759','2754','大英�\�','0');
INSERT INTO `yourphp_area` VALUES ('2760','2589','雅安�\�','0');
INSERT INTO `yourphp_area` VALUES ('2761','2760','雨城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2762','2760','名山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2763','2760','荥经�\�','0');
INSERT INTO `yourphp_area` VALUES ('2764','2760','汉源�\�','0');
INSERT INTO `yourphp_area` VALUES ('2765','2760','石棉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2766','2760','天全�\�','0');
INSERT INTO `yourphp_area` VALUES ('2767','2760','芦山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2768','2760','宝兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('2769','2589','宜宾�\�','0');
INSERT INTO `yourphp_area` VALUES ('2770','2769','翠屏�\�','0');
INSERT INTO `yourphp_area` VALUES ('2771','2769','宜宾�\�','0');
INSERT INTO `yourphp_area` VALUES ('2772','2769','南溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('2773','2769','江安�\�','0');
INSERT INTO `yourphp_area` VALUES ('2774','2769','长宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2775','2769','高县','0');
INSERT INTO `yourphp_area` VALUES ('2776','2769','珙县','0');
INSERT INTO `yourphp_area` VALUES ('2777','2769','筠连�\�','0');
INSERT INTO `yourphp_area` VALUES ('2778','2769','兴文�\�','0');
INSERT INTO `yourphp_area` VALUES ('2779','2769','屏山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2780','2589','资阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2781','2780','雁江�\�','0');
INSERT INTO `yourphp_area` VALUES ('2782','2780','安岳�\�','0');
INSERT INTO `yourphp_area` VALUES ('2783','2780','乐至�\�','0');
INSERT INTO `yourphp_area` VALUES ('2784','2780','简阳市','0');
INSERT INTO `yourphp_area` VALUES ('2785','2589','自贡�\�','0');
INSERT INTO `yourphp_area` VALUES ('2786','2785','自流井区','0');
INSERT INTO `yourphp_area` VALUES ('2787','2785','贡井�\�','0');
INSERT INTO `yourphp_area` VALUES ('2788','2785','大安�\�','0');
INSERT INTO `yourphp_area` VALUES ('2789','2785','沿滩�\�','0');
INSERT INTO `yourphp_area` VALUES ('2790','2785','荣县','0');
INSERT INTO `yourphp_area` VALUES ('2791','2785','富顺�\�','0');
INSERT INTO `yourphp_area` VALUES ('2792','0','西藏','0');
INSERT INTO `yourphp_area` VALUES ('2793','2792','拉萨�\�','0');
INSERT INTO `yourphp_area` VALUES ('2794','2793','城关�\�','0');
INSERT INTO `yourphp_area` VALUES ('2795','2793','林周�\�','0');
INSERT INTO `yourphp_area` VALUES ('2796','2793','当雄�\�','0');
INSERT INTO `yourphp_area` VALUES ('2797','2793','尼木�\�','0');
INSERT INTO `yourphp_area` VALUES ('2798','2793','曲水�\�','0');
INSERT INTO `yourphp_area` VALUES ('2799','2793','堆龙德庆�\�','0');
INSERT INTO `yourphp_area` VALUES ('2800','2793','达孜�\�','0');
INSERT INTO `yourphp_area` VALUES ('2801','2793','墨竹工卡�\�','0');
INSERT INTO `yourphp_area` VALUES ('2802','2792','阿里地区','0');
INSERT INTO `yourphp_area` VALUES ('2803','2802','普兰�\�','0');
INSERT INTO `yourphp_area` VALUES ('2804','2802','札达�\�','0');
INSERT INTO `yourphp_area` VALUES ('2805','2802','噶尔�\�','0');
INSERT INTO `yourphp_area` VALUES ('2806','2802','日土�\�','0');
INSERT INTO `yourphp_area` VALUES ('2807','2802','革吉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2808','2802','改则�\�','0');
INSERT INTO `yourphp_area` VALUES ('2809','2802','措勤�\�','0');
INSERT INTO `yourphp_area` VALUES ('2810','2792','昌都地区','0');
INSERT INTO `yourphp_area` VALUES ('2811','2810','昌都�\�','0');
INSERT INTO `yourphp_area` VALUES ('2812','2810','江达�\�','0');
INSERT INTO `yourphp_area` VALUES ('2813','2810','贡觉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2814','2810','类乌齐县','0');
INSERT INTO `yourphp_area` VALUES ('2815','2810','丁青�\�','0');
INSERT INTO `yourphp_area` VALUES ('2816','2810','察雅�\�','0');
INSERT INTO `yourphp_area` VALUES ('2817','2810','八宿�\�','0');
INSERT INTO `yourphp_area` VALUES ('2818','2810','左贡�\�','0');
INSERT INTO `yourphp_area` VALUES ('2819','2810','芒康�\�','0');
INSERT INTO `yourphp_area` VALUES ('2820','2810','洛隆�\�','0');
INSERT INTO `yourphp_area` VALUES ('2821','2810','边坝�\�','0');
INSERT INTO `yourphp_area` VALUES ('2822','2792','林芝地区','0');
INSERT INTO `yourphp_area` VALUES ('2823','2822','林芝�\�','0');
INSERT INTO `yourphp_area` VALUES ('2824','2822','工布江达�\�','0');
INSERT INTO `yourphp_area` VALUES ('2825','2822','米林�\�','0');
INSERT INTO `yourphp_area` VALUES ('2826','2822','墨脱�\�','0');
INSERT INTO `yourphp_area` VALUES ('2827','2822','波密�\�','0');
INSERT INTO `yourphp_area` VALUES ('2828','2822','察隅�\�','0');
INSERT INTO `yourphp_area` VALUES ('2829','2822','朗县','0');
INSERT INTO `yourphp_area` VALUES ('2830','2792','那曲地区','0');
INSERT INTO `yourphp_area` VALUES ('2831','2830','那曲�\�','0');
INSERT INTO `yourphp_area` VALUES ('2832','2830','嘉黎�\�','0');
INSERT INTO `yourphp_area` VALUES ('2833','2830','比如�\�','0');
INSERT INTO `yourphp_area` VALUES ('2834','2830','聂荣�\�','0');
INSERT INTO `yourphp_area` VALUES ('2835','2830','安多�\�','0');
INSERT INTO `yourphp_area` VALUES ('2836','2830','申扎�\�','0');
INSERT INTO `yourphp_area` VALUES ('2837','2830','索县','0');
INSERT INTO `yourphp_area` VALUES ('2838','2830','班戈�\�','0');
INSERT INTO `yourphp_area` VALUES ('2839','2830','巴青�\�','0');
INSERT INTO `yourphp_area` VALUES ('2840','2830','尼玛�\�','0');
INSERT INTO `yourphp_area` VALUES ('2841','2792','日喀则地�\�','0');
INSERT INTO `yourphp_area` VALUES ('2842','2841','日喀则市','0');
INSERT INTO `yourphp_area` VALUES ('2843','2841','南木林县','0');
INSERT INTO `yourphp_area` VALUES ('2844','2841','江孜�\�','0');
INSERT INTO `yourphp_area` VALUES ('2845','2841','定日�\�','0');
INSERT INTO `yourphp_area` VALUES ('2846','2841','萨迦�\�','0');
INSERT INTO `yourphp_area` VALUES ('2847','2841','拉孜�\�','0');
INSERT INTO `yourphp_area` VALUES ('2848','2841','昂仁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2849','2841','谢通门�\�','0');
INSERT INTO `yourphp_area` VALUES ('2850','2841','白朗�\�','0');
INSERT INTO `yourphp_area` VALUES ('2851','2841','仁布�\�','0');
INSERT INTO `yourphp_area` VALUES ('2852','2841','康马�\�','0');
INSERT INTO `yourphp_area` VALUES ('2853','2841','定结�\�','0');
INSERT INTO `yourphp_area` VALUES ('2854','2841','仲巴�\�','0');
INSERT INTO `yourphp_area` VALUES ('2855','2841','亚东�\�','0');
INSERT INTO `yourphp_area` VALUES ('2856','2841','吉隆�\�','0');
INSERT INTO `yourphp_area` VALUES ('2857','2841','聂拉木县','0');
INSERT INTO `yourphp_area` VALUES ('2858','2841','萨嘎�\�','0');
INSERT INTO `yourphp_area` VALUES ('2859','2841','岗巴�\�','0');
INSERT INTO `yourphp_area` VALUES ('2860','2792','山南地区','0');
INSERT INTO `yourphp_area` VALUES ('2861','2860','乃东�\�','0');
INSERT INTO `yourphp_area` VALUES ('2862','2860','扎囊�\�','0');
INSERT INTO `yourphp_area` VALUES ('2863','2860','贡嘎�\�','0');
INSERT INTO `yourphp_area` VALUES ('2864','2860','桑日�\�','0');
INSERT INTO `yourphp_area` VALUES ('2865','2860','琼结�\�','0');
INSERT INTO `yourphp_area` VALUES ('2866','2860','曲松�\�','0');
INSERT INTO `yourphp_area` VALUES ('2867','2860','措美�\�','0');
INSERT INTO `yourphp_area` VALUES ('2868','2860','洛扎�\�','0');
INSERT INTO `yourphp_area` VALUES ('2869','2860','加查�\�','0');
INSERT INTO `yourphp_area` VALUES ('2870','2860','隆子�\�','0');
INSERT INTO `yourphp_area` VALUES ('2871','2860','错那�\�','0');
INSERT INTO `yourphp_area` VALUES ('2872','2860','浪卡子县','0');
INSERT INTO `yourphp_area` VALUES ('2873','0','新疆','0');
INSERT INTO `yourphp_area` VALUES ('2874','2873','乌鲁木齐�\�','0');
INSERT INTO `yourphp_area` VALUES ('2875','2874','天山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2876','2874','沙依巴克�\�','0');
INSERT INTO `yourphp_area` VALUES ('2877','2874','新市�\�','0');
INSERT INTO `yourphp_area` VALUES ('2878','2874','水磨沟区','0');
INSERT INTO `yourphp_area` VALUES ('2879','2874','头屯河区','0');
INSERT INTO `yourphp_area` VALUES ('2880','2874','达坂城区','0');
INSERT INTO `yourphp_area` VALUES ('2881','2874','东山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2882','2874','乌鲁木齐�\�','0');
INSERT INTO `yourphp_area` VALUES ('2883','2873','阿克苏地�\�','0');
INSERT INTO `yourphp_area` VALUES ('2884','2883','阿克苏市','0');
INSERT INTO `yourphp_area` VALUES ('2885','2883','温宿�\�','0');
INSERT INTO `yourphp_area` VALUES ('2886','2883','库车�\�','0');
INSERT INTO `yourphp_area` VALUES ('2887','2883','沙雅�\�','0');
INSERT INTO `yourphp_area` VALUES ('2888','2883','新和�\�','0');
INSERT INTO `yourphp_area` VALUES ('2889','2883','拜城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2890','2883','乌什�\�','0');
INSERT INTO `yourphp_area` VALUES ('2891','2883','阿瓦提县','0');
INSERT INTO `yourphp_area` VALUES ('2892','2883','柯坪�\�','0');
INSERT INTO `yourphp_area` VALUES ('2893','2873','阿拉尔市','0');
INSERT INTO `yourphp_area` VALUES ('2894','2873','阿勒泰地�\�','0');
INSERT INTO `yourphp_area` VALUES ('2895','2894','阿勒泰市','0');
INSERT INTO `yourphp_area` VALUES ('2896','2894','布尔津县','0');
INSERT INTO `yourphp_area` VALUES ('2897','2894','富蕴�\�','0');
INSERT INTO `yourphp_area` VALUES ('2898','2894','福海�\�','0');
INSERT INTO `yourphp_area` VALUES ('2899','2894','哈巴河县','0');
INSERT INTO `yourphp_area` VALUES ('2900','2894','青河�\�','0');
INSERT INTO `yourphp_area` VALUES ('2901','2894','吉木乃县','0');
INSERT INTO `yourphp_area` VALUES ('2902','2873','巴音郭楞蒙古自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2903','2902','库尔勒市','0');
INSERT INTO `yourphp_area` VALUES ('2904','2902','轮台�\�','0');
INSERT INTO `yourphp_area` VALUES ('2905','2902','尉犁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2906','2902','若羌�\�','0');
INSERT INTO `yourphp_area` VALUES ('2907','2902','且末�\�','0');
INSERT INTO `yourphp_area` VALUES ('2908','2902','焉耆回族自治县','0');
INSERT INTO `yourphp_area` VALUES ('2909','2902','和静�\�','0');
INSERT INTO `yourphp_area` VALUES ('2910','2902','和硕�\�','0');
INSERT INTO `yourphp_area` VALUES ('2911','2902','博湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('2912','2873','博尔塔拉蒙古自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2913','2912','博乐�\�','0');
INSERT INTO `yourphp_area` VALUES ('2914','2912','精河�\�','0');
INSERT INTO `yourphp_area` VALUES ('2915','2912','温泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2916','2873','昌吉回族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2917','2916','昌吉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2918','2916','阜康�\�','0');
INSERT INTO `yourphp_area` VALUES ('2919','2916','米泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2920','2916','呼图壁县','0');
INSERT INTO `yourphp_area` VALUES ('2921','2916','玛纳斯县','0');
INSERT INTO `yourphp_area` VALUES ('2922','2916','奇台�\�','0');
INSERT INTO `yourphp_area` VALUES ('2923','2916','吉木萨尔�\�','0');
INSERT INTO `yourphp_area` VALUES ('2924','2916','木垒哈萨克自治县','0');
INSERT INTO `yourphp_area` VALUES ('2925','2873','哈密地区','0');
INSERT INTO `yourphp_area` VALUES ('2926','2925','哈密�\�','0');
INSERT INTO `yourphp_area` VALUES ('2927','2925','巴里坤哈萨克自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2928','2925','伊吾�\�','0');
INSERT INTO `yourphp_area` VALUES ('2929','2873','和田地区','0');
INSERT INTO `yourphp_area` VALUES ('2930','2929','和田�\�','0');
INSERT INTO `yourphp_area` VALUES ('2931','2929','和田�\�','0');
INSERT INTO `yourphp_area` VALUES ('2932','2929','墨玉�\�','0');
INSERT INTO `yourphp_area` VALUES ('2933','2929','皮山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2934','2929','洛浦�\�','0');
INSERT INTO `yourphp_area` VALUES ('2935','2929','策勒�\�','0');
INSERT INTO `yourphp_area` VALUES ('2936','2929','于田�\�','0');
INSERT INTO `yourphp_area` VALUES ('2937','2929','民丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('2938','2873','喀什地区','0');
INSERT INTO `yourphp_area` VALUES ('2939','2938','喀什�\�','0');
INSERT INTO `yourphp_area` VALUES ('2940','2938','疏附�\�','0');
INSERT INTO `yourphp_area` VALUES ('2941','2938','疏勒�\�','0');
INSERT INTO `yourphp_area` VALUES ('2942','2938','英吉沙县','0');
INSERT INTO `yourphp_area` VALUES ('2943','2938','泽普�\�','0');
INSERT INTO `yourphp_area` VALUES ('2944','2938','莎车�\�','0');
INSERT INTO `yourphp_area` VALUES ('2945','2938','叶城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2946','2938','麦盖提县','0');
INSERT INTO `yourphp_area` VALUES ('2947','2938','岳普湖县','0');
INSERT INTO `yourphp_area` VALUES ('2948','2938','伽师�\�','0');
INSERT INTO `yourphp_area` VALUES ('2949','2938','巴楚�\�','0');
INSERT INTO `yourphp_area` VALUES ('2950','2938','塔什库尔干塔吉克自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2951','2873','克拉玛依�\�','0');
INSERT INTO `yourphp_area` VALUES ('2952','2951','独山子区','0');
INSERT INTO `yourphp_area` VALUES ('2953','2951','克拉玛依�\�','0');
INSERT INTO `yourphp_area` VALUES ('2954','2951','白碱滩区','0');
INSERT INTO `yourphp_area` VALUES ('2955','2951','乌尔禾区','0');
INSERT INTO `yourphp_area` VALUES ('2956','2873','克孜勒苏柯尔克孜自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2957','2956','阿图什�\�','0');
INSERT INTO `yourphp_area` VALUES ('2958','2956','阿克陶县','0');
INSERT INTO `yourphp_area` VALUES ('2959','2956','阿合奇县','0');
INSERT INTO `yourphp_area` VALUES ('2960','2956','乌恰�\�','0');
INSERT INTO `yourphp_area` VALUES ('2961','2873','石河子市','0');
INSERT INTO `yourphp_area` VALUES ('2962','2873','塔城地区','0');
INSERT INTO `yourphp_area` VALUES ('2963','2962','塔城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2964','2962','乌苏�\�','0');
INSERT INTO `yourphp_area` VALUES ('2965','2962','额敏�\�','0');
INSERT INTO `yourphp_area` VALUES ('2966','2962','沙湾�\�','0');
INSERT INTO `yourphp_area` VALUES ('2967','2962','托里�\�','0');
INSERT INTO `yourphp_area` VALUES ('2968','2962','裕民�\�','0');
INSERT INTO `yourphp_area` VALUES ('2969','2962','和布克赛尔蒙古自治县','0');
INSERT INTO `yourphp_area` VALUES ('2970','2873','图木舒克�\�','0');
INSERT INTO `yourphp_area` VALUES ('2971','2873','吐鲁番地�\�','0');
INSERT INTO `yourphp_area` VALUES ('2972','2971','吐鲁番市','0');
INSERT INTO `yourphp_area` VALUES ('2973','2971','鄯善�\�','0');
INSERT INTO `yourphp_area` VALUES ('2974','2971','托克逊县','0');
INSERT INTO `yourphp_area` VALUES ('2975','2873','五家渠市','0');
INSERT INTO `yourphp_area` VALUES ('2976','2873','伊犁哈萨克自治州','0');
INSERT INTO `yourphp_area` VALUES ('2977','2976','伊宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2978','2976','奎屯�\�','0');
INSERT INTO `yourphp_area` VALUES ('2979','2976','伊宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2980','2976','察布查尔锡伯自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2981','2976','霍城�\�','0');
INSERT INTO `yourphp_area` VALUES ('2982','2976','巩留�\�','0');
INSERT INTO `yourphp_area` VALUES ('2983','2976','新源�\�','0');
INSERT INTO `yourphp_area` VALUES ('2984','2976','昭苏�\�','0');
INSERT INTO `yourphp_area` VALUES ('2985','2976','特克斯县','0');
INSERT INTO `yourphp_area` VALUES ('2986','2976','尼勒克县','0');
INSERT INTO `yourphp_area` VALUES ('2987','0','云南','0');
INSERT INTO `yourphp_area` VALUES ('2988','2987','昆明�\�','0');
INSERT INTO `yourphp_area` VALUES ('2989','2988','五华�\�','0');
INSERT INTO `yourphp_area` VALUES ('2990','2988','盘龙�\�','0');
INSERT INTO `yourphp_area` VALUES ('2991','2988','官渡�\�','0');
INSERT INTO `yourphp_area` VALUES ('2992','2988','西山�\�','0');
INSERT INTO `yourphp_area` VALUES ('2993','2988','东川�\�','0');
INSERT INTO `yourphp_area` VALUES ('2994','2988','呈贡�\�','0');
INSERT INTO `yourphp_area` VALUES ('2995','2988','晋宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('2996','2988','富民�\�','0');
INSERT INTO `yourphp_area` VALUES ('2997','2988','宜良�\�','0');
INSERT INTO `yourphp_area` VALUES ('2998','2988','石林彝族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('2999','2988','嵩明�\�','0');
INSERT INTO `yourphp_area` VALUES ('3000','2988','禄劝彝族苗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3001','2988','寻甸回族彝族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3002','2988','安宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('3003','2987','保山�\�','0');
INSERT INTO `yourphp_area` VALUES ('3004','3003','隆阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('3005','3003','施甸�\�','0');
INSERT INTO `yourphp_area` VALUES ('3006','3003','腾冲�\�','0');
INSERT INTO `yourphp_area` VALUES ('3007','3003','龙陵�\�','0');
INSERT INTO `yourphp_area` VALUES ('3008','3003','昌宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('3009','2987','楚雄彝族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3010','3009','楚雄�\�','0');
INSERT INTO `yourphp_area` VALUES ('3011','3009','双柏�\�','0');
INSERT INTO `yourphp_area` VALUES ('3012','3009','牟定�\�','0');
INSERT INTO `yourphp_area` VALUES ('3013','3009','南华�\�','0');
INSERT INTO `yourphp_area` VALUES ('3014','3009','姚安�\�','0');
INSERT INTO `yourphp_area` VALUES ('3015','3009','大姚�\�','0');
INSERT INTO `yourphp_area` VALUES ('3016','3009','永仁�\�','0');
INSERT INTO `yourphp_area` VALUES ('3017','3009','元谋�\�','0');
INSERT INTO `yourphp_area` VALUES ('3018','3009','武定�\�','0');
INSERT INTO `yourphp_area` VALUES ('3019','3009','禄丰�\�','0');
INSERT INTO `yourphp_area` VALUES ('3020','2987','大理白族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3021','3020','大理�\�','0');
INSERT INTO `yourphp_area` VALUES ('3022','3020','漾濞彝族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3023','3020','祥云�\�','0');
INSERT INTO `yourphp_area` VALUES ('3024','3020','宾川�\�','0');
INSERT INTO `yourphp_area` VALUES ('3025','3020','弥渡�\�','0');
INSERT INTO `yourphp_area` VALUES ('3026','3020','南涧彝族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3027','3020','巍山彝族回族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3028','3020','永平�\�','0');
INSERT INTO `yourphp_area` VALUES ('3029','3020','云龙�\�','0');
INSERT INTO `yourphp_area` VALUES ('3030','3020','洱源�\�','0');
INSERT INTO `yourphp_area` VALUES ('3031','3020','剑川�\�','0');
INSERT INTO `yourphp_area` VALUES ('3032','3020','鹤庆�\�','0');
INSERT INTO `yourphp_area` VALUES ('3033','2987','德宏傣族景颇族自治州','0');
INSERT INTO `yourphp_area` VALUES ('3034','3033','瑞丽�\�','0');
INSERT INTO `yourphp_area` VALUES ('3035','3033','潞西�\�','0');
INSERT INTO `yourphp_area` VALUES ('3036','3033','梁河�\�','0');
INSERT INTO `yourphp_area` VALUES ('3037','3033','盈江�\�','0');
INSERT INTO `yourphp_area` VALUES ('3038','3033','陇川�\�','0');
INSERT INTO `yourphp_area` VALUES ('3039','2987','迪庆藏族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3040','3039','香格里拉�\�','0');
INSERT INTO `yourphp_area` VALUES ('3041','3039','德钦�\�','0');
INSERT INTO `yourphp_area` VALUES ('3042','3039','维西傈僳族自治县','0');
INSERT INTO `yourphp_area` VALUES ('3043','2987','红河哈尼族彝族自治州','0');
INSERT INTO `yourphp_area` VALUES ('3044','3043','个旧�\�','0');
INSERT INTO `yourphp_area` VALUES ('3045','3043','开远市','0');
INSERT INTO `yourphp_area` VALUES ('3046','3043','蒙自�\�','0');
INSERT INTO `yourphp_area` VALUES ('3047','3043','屏边苗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3048','3043','建水�\�','0');
INSERT INTO `yourphp_area` VALUES ('3049','3043','石屏�\�','0');
INSERT INTO `yourphp_area` VALUES ('3050','3043','弥勒�\�','0');
INSERT INTO `yourphp_area` VALUES ('3051','3043','泸西�\�','0');
INSERT INTO `yourphp_area` VALUES ('3052','3043','元阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('3053','3043','红河�\�','0');
INSERT INTO `yourphp_area` VALUES ('3054','3043','金平苗族瑶族傣族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3055','3043','绿春�\�','0');
INSERT INTO `yourphp_area` VALUES ('3056','3043','河口瑶族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3057','2987','丽江�\�','0');
INSERT INTO `yourphp_area` VALUES ('3058','3057','古城�\�','0');
INSERT INTO `yourphp_area` VALUES ('3059','3057','玉龙纳西族自治县','0');
INSERT INTO `yourphp_area` VALUES ('3060','3057','永胜�\�','0');
INSERT INTO `yourphp_area` VALUES ('3061','3057','华坪�\�','0');
INSERT INTO `yourphp_area` VALUES ('3062','3057','宁蒗彝族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3063','2987','临沧�\�','0');
INSERT INTO `yourphp_area` VALUES ('3064','3063','临翔�\�','0');
INSERT INTO `yourphp_area` VALUES ('3065','3063','凤庆�\�','0');
INSERT INTO `yourphp_area` VALUES ('3066','3063','云县','0');
INSERT INTO `yourphp_area` VALUES ('3067','3063','永德�\�','0');
INSERT INTO `yourphp_area` VALUES ('3068','3063','镇康�\�','0');
INSERT INTO `yourphp_area` VALUES ('3069','3063','双江拉祜族佤族布朗族傣族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3070','3063','耿马傣族佤族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3071','3063','沧源佤族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3072','2987','怒江傈僳族自治州','0');
INSERT INTO `yourphp_area` VALUES ('3073','3072','泸水�\�','0');
INSERT INTO `yourphp_area` VALUES ('3074','3072','福贡�\�','0');
INSERT INTO `yourphp_area` VALUES ('3075','3072','贡山独龙族怒族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3076','3072','兰坪白族普米族自治县','0');
INSERT INTO `yourphp_area` VALUES ('3077','2987','曲靖�\�','0');
INSERT INTO `yourphp_area` VALUES ('3078','3077','麒麟�\�','0');
INSERT INTO `yourphp_area` VALUES ('3079','3077','马龙�\�','0');
INSERT INTO `yourphp_area` VALUES ('3080','3077','陆良�\�','0');
INSERT INTO `yourphp_area` VALUES ('3081','3077','师宗�\�','0');
INSERT INTO `yourphp_area` VALUES ('3082','3077','罗平�\�','0');
INSERT INTO `yourphp_area` VALUES ('3083','3077','富源�\�','0');
INSERT INTO `yourphp_area` VALUES ('3084','3077','会泽�\�','0');
INSERT INTO `yourphp_area` VALUES ('3085','3077','沾益�\�','0');
INSERT INTO `yourphp_area` VALUES ('3086','3077','宣威�\�','0');
INSERT INTO `yourphp_area` VALUES ('3087','2987','思茅�\�','0');
INSERT INTO `yourphp_area` VALUES ('3088','3087','翠云�\�','0');
INSERT INTO `yourphp_area` VALUES ('3089','3087','普洱哈尼族彝族自治县','0');
INSERT INTO `yourphp_area` VALUES ('3090','3087','墨江哈尼族自治县','0');
INSERT INTO `yourphp_area` VALUES ('3091','3087','景东彝族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3092','3087','景谷傣族彝族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3093','3087','镇沅彝族哈尼族拉祜族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3094','3087','江城哈尼族彝族自治县','0');
INSERT INTO `yourphp_area` VALUES ('3095','3087','孟连傣族拉祜族佤族自治县','0');
INSERT INTO `yourphp_area` VALUES ('3096','3087','澜沧拉祜族自治县','0');
INSERT INTO `yourphp_area` VALUES ('3097','3087','西盟佤族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3098','2987','文山壮族苗族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3099','3098','文山�\�','0');
INSERT INTO `yourphp_area` VALUES ('3100','3098','砚山�\�','0');
INSERT INTO `yourphp_area` VALUES ('3101','3098','西畴�\�','0');
INSERT INTO `yourphp_area` VALUES ('3102','3098','麻栗坡县','0');
INSERT INTO `yourphp_area` VALUES ('3103','3098','马关�\�','0');
INSERT INTO `yourphp_area` VALUES ('3104','3098','丘北�\�','0');
INSERT INTO `yourphp_area` VALUES ('3105','3098','广南�\�','0');
INSERT INTO `yourphp_area` VALUES ('3106','3098','富宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('3107','2987','西双版纳傣族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3108','3107','景洪�\�','0');
INSERT INTO `yourphp_area` VALUES ('3109','3107','勐海�\�','0');
INSERT INTO `yourphp_area` VALUES ('3110','3107','勐腊�\�','0');
INSERT INTO `yourphp_area` VALUES ('3111','2987','玉溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('3112','3111','红塔�\�','0');
INSERT INTO `yourphp_area` VALUES ('3113','3111','江川�\�','0');
INSERT INTO `yourphp_area` VALUES ('3114','3111','澄江�\�','0');
INSERT INTO `yourphp_area` VALUES ('3115','3111','通海�\�','0');
INSERT INTO `yourphp_area` VALUES ('3116','3111','华宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('3117','3111','易门�\�','0');
INSERT INTO `yourphp_area` VALUES ('3118','3111','峨山彝族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3119','3111','新平彝族傣族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3120','3111','元江哈尼族彝族傣族自治县','0');
INSERT INTO `yourphp_area` VALUES ('3121','2987','昭通市','0');
INSERT INTO `yourphp_area` VALUES ('3122','3121','昭阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('3123','3121','鲁甸�\�','0');
INSERT INTO `yourphp_area` VALUES ('3124','3121','巧家�\�','0');
INSERT INTO `yourphp_area` VALUES ('3125','3121','盐津�\�','0');
INSERT INTO `yourphp_area` VALUES ('3126','3121','大关�\�','0');
INSERT INTO `yourphp_area` VALUES ('3127','3121','永善�\�','0');
INSERT INTO `yourphp_area` VALUES ('3128','3121','绥江�\�','0');
INSERT INTO `yourphp_area` VALUES ('3129','3121','镇雄�\�','0');
INSERT INTO `yourphp_area` VALUES ('3130','3121','彝良�\�','0');
INSERT INTO `yourphp_area` VALUES ('3131','3121','威信�\�','0');
INSERT INTO `yourphp_area` VALUES ('3132','3121','水富�\�','0');
INSERT INTO `yourphp_area` VALUES ('3133','0','浙江','0');
INSERT INTO `yourphp_area` VALUES ('3134','3133','杭州�\�','0');
INSERT INTO `yourphp_area` VALUES ('3135','3134','上城�\�','0');
INSERT INTO `yourphp_area` VALUES ('3136','3134','下城�\�','0');
INSERT INTO `yourphp_area` VALUES ('3137','3134','江干�\�','0');
INSERT INTO `yourphp_area` VALUES ('3138','3134','拱墅�\�','0');
INSERT INTO `yourphp_area` VALUES ('3139','3134','西湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('3140','3134','滨江�\�','0');
INSERT INTO `yourphp_area` VALUES ('3141','3134','萧山�\�','0');
INSERT INTO `yourphp_area` VALUES ('3142','3134','余杭�\�','0');
INSERT INTO `yourphp_area` VALUES ('3143','3134','桐庐�\�','0');
INSERT INTO `yourphp_area` VALUES ('3144','3134','淳安�\�','0');
INSERT INTO `yourphp_area` VALUES ('3145','3134','建德�\�','0');
INSERT INTO `yourphp_area` VALUES ('3146','3134','富阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('3147','3134','临安�\�','0');
INSERT INTO `yourphp_area` VALUES ('3148','3133','湖州�\�','0');
INSERT INTO `yourphp_area` VALUES ('3149','3148','吴兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('3150','3148','南浔�\�','0');
INSERT INTO `yourphp_area` VALUES ('3151','3148','德清�\�','0');
INSERT INTO `yourphp_area` VALUES ('3152','3148','长兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('3153','3148','安吉�\�','0');
INSERT INTO `yourphp_area` VALUES ('3154','3133','嘉兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('3155','3154','秀城区','0');
INSERT INTO `yourphp_area` VALUES ('3156','3154','秀洲区','0');
INSERT INTO `yourphp_area` VALUES ('3157','3154','嘉善�\�','0');
INSERT INTO `yourphp_area` VALUES ('3158','3154','海盐�\�','0');
INSERT INTO `yourphp_area` VALUES ('3159','3154','海宁�\�','0');
INSERT INTO `yourphp_area` VALUES ('3160','3154','平湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('3161','3154','桐乡�\�','0');
INSERT INTO `yourphp_area` VALUES ('3162','3133','金华�\�','0');
INSERT INTO `yourphp_area` VALUES ('3163','3162','婺城�\�','0');
INSERT INTO `yourphp_area` VALUES ('3164','3162','金东�\�','0');
INSERT INTO `yourphp_area` VALUES ('3165','3162','武义�\�','0');
INSERT INTO `yourphp_area` VALUES ('3166','3162','浦江�\�','0');
INSERT INTO `yourphp_area` VALUES ('3167','3162','磐安�\�','0');
INSERT INTO `yourphp_area` VALUES ('3168','3162','兰溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('3169','3162','义乌�\�','0');
INSERT INTO `yourphp_area` VALUES ('3170','3162','东阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('3171','3162','永康�\�','0');
INSERT INTO `yourphp_area` VALUES ('3172','3133','丽水�\�','0');
INSERT INTO `yourphp_area` VALUES ('3173','3172','莲都�\�','0');
INSERT INTO `yourphp_area` VALUES ('3174','3172','青田�\�','0');
INSERT INTO `yourphp_area` VALUES ('3175','3172','缙云�\�','0');
INSERT INTO `yourphp_area` VALUES ('3176','3172','遂昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('3177','3172','松阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('3178','3172','云和�\�','0');
INSERT INTO `yourphp_area` VALUES ('3179','3172','庆元�\�','0');
INSERT INTO `yourphp_area` VALUES ('3180','3172','景宁畲族自治�\�','0');
INSERT INTO `yourphp_area` VALUES ('3181','3172','龙泉�\�','0');
INSERT INTO `yourphp_area` VALUES ('3182','3133','宁波�\�','0');
INSERT INTO `yourphp_area` VALUES ('3183','3182','海曙�\�','0');
INSERT INTO `yourphp_area` VALUES ('3184','3182','江东�\�','0');
INSERT INTO `yourphp_area` VALUES ('3185','3182','江北�\�','0');
INSERT INTO `yourphp_area` VALUES ('3186','3182','北仑�\�','0');
INSERT INTO `yourphp_area` VALUES ('3187','3182','镇海�\�','0');
INSERT INTO `yourphp_area` VALUES ('3188','3182','鄞州�\�','0');
INSERT INTO `yourphp_area` VALUES ('3189','3182','象山�\�','0');
INSERT INTO `yourphp_area` VALUES ('3190','3182','宁海�\�','0');
INSERT INTO `yourphp_area` VALUES ('3191','3182','余姚�\�','0');
INSERT INTO `yourphp_area` VALUES ('3192','3182','慈溪�\�','0');
INSERT INTO `yourphp_area` VALUES ('3193','3182','奉化�\�','0');
INSERT INTO `yourphp_area` VALUES ('3194','3133','衢州�\�','0');
INSERT INTO `yourphp_area` VALUES ('3195','3194','柯城�\�','0');
INSERT INTO `yourphp_area` VALUES ('3196','3194','衢江�\�','0');
INSERT INTO `yourphp_area` VALUES ('3197','3194','常山�\�','0');
INSERT INTO `yourphp_area` VALUES ('3198','3194','开化县','0');
INSERT INTO `yourphp_area` VALUES ('3199','3194','龙游�\�','0');
INSERT INTO `yourphp_area` VALUES ('3200','3194','江山�\�','0');
INSERT INTO `yourphp_area` VALUES ('3201','3133','绍兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('3202','3201','越城�\�','0');
INSERT INTO `yourphp_area` VALUES ('3203','3201','绍兴�\�','0');
INSERT INTO `yourphp_area` VALUES ('3204','3201','新昌�\�','0');
INSERT INTO `yourphp_area` VALUES ('3205','3201','诸暨�\�','0');
INSERT INTO `yourphp_area` VALUES ('3206','3201','上虞�\�','0');
INSERT INTO `yourphp_area` VALUES ('3207','3201','嵊州�\�','0');
INSERT INTO `yourphp_area` VALUES ('3208','3133','台州�\�','0');
INSERT INTO `yourphp_area` VALUES ('3209','3208','椒江�\�','0');
INSERT INTO `yourphp_area` VALUES ('3210','3208','黄岩�\�','0');
INSERT INTO `yourphp_area` VALUES ('3211','3208','路桥�\�','0');
INSERT INTO `yourphp_area` VALUES ('3212','3208','玉环�\�','0');
INSERT INTO `yourphp_area` VALUES ('3213','3208','三门�\�','0');
INSERT INTO `yourphp_area` VALUES ('3214','3208','天台�\�','0');
INSERT INTO `yourphp_area` VALUES ('3215','3208','仙居�\�','0');
INSERT INTO `yourphp_area` VALUES ('3216','3208','温岭�\�','0');
INSERT INTO `yourphp_area` VALUES ('3217','3208','临海�\�','0');
INSERT INTO `yourphp_area` VALUES ('3218','3133','温州�\�','0');
INSERT INTO `yourphp_area` VALUES ('3219','3218','鹿城�\�','0');
INSERT INTO `yourphp_area` VALUES ('3220','3218','龙湾�\�','0');
INSERT INTO `yourphp_area` VALUES ('3221','3218','瓯海�\�','0');
INSERT INTO `yourphp_area` VALUES ('3222','3218','洞头�\�','0');
INSERT INTO `yourphp_area` VALUES ('3223','3218','永嘉�\�','0');
INSERT INTO `yourphp_area` VALUES ('3224','3218','平阳�\�','0');
INSERT INTO `yourphp_area` VALUES ('3225','3218','苍南�\�','0');
INSERT INTO `yourphp_area` VALUES ('3226','3218','文成�\�','0');
INSERT INTO `yourphp_area` VALUES ('3227','3218','泰顺�\�','0');
INSERT INTO `yourphp_area` VALUES ('3228','3218','瑞安�\�','0');
INSERT INTO `yourphp_area` VALUES ('3229','3218','乐清�\�','0');
INSERT INTO `yourphp_area` VALUES ('3230','3133','舟山�\�','0');
INSERT INTO `yourphp_area` VALUES ('3231','3230','定海�\�','0');
INSERT INTO `yourphp_area` VALUES ('3232','3230','普陀�\�','0');
INSERT INTO `yourphp_area` VALUES ('3233','3230','岱山�\�','0');
INSERT INTO `yourphp_area` VALUES ('3234','3230','嵊泗�\�','0');
INSERT INTO `yourphp_area` VALUES ('3235','0','香港','0');
INSERT INTO `yourphp_area` VALUES ('3236','3235','九龙','0');
INSERT INTO `yourphp_area` VALUES ('3237','3235','香港�\�','0');
INSERT INTO `yourphp_area` VALUES ('3238','3235','新界','0');
INSERT INTO `yourphp_area` VALUES ('3239','0','澳门','0');
INSERT INTO `yourphp_area` VALUES ('3240','3239','澳门半岛','0');
INSERT INTO `yourphp_area` VALUES ('3241','3239','离岛','0');
INSERT INTO `yourphp_area` VALUES ('3242','0','台湾','0');
INSERT INTO `yourphp_area` VALUES ('3243','3242','台北�\�','0');
INSERT INTO `yourphp_area` VALUES ('3244','3242','高雄�\�','0');
INSERT INTO `yourphp_area` VALUES ('3245','3242','高雄�\�','0');
INSERT INTO `yourphp_area` VALUES ('3246','3242','花莲�\�','0');
INSERT INTO `yourphp_area` VALUES ('3247','3242','基隆�\�','0');
INSERT INTO `yourphp_area` VALUES ('3248','3242','嘉义�\�','0');
INSERT INTO `yourphp_area` VALUES ('3249','3242','嘉义�\�','0');
INSERT INTO `yourphp_area` VALUES ('3250','3242','金门�\�','0');
INSERT INTO `yourphp_area` VALUES ('3251','3242','苗栗�\�','0');
INSERT INTO `yourphp_area` VALUES ('3252','3242','南投�\�','0');
INSERT INTO `yourphp_area` VALUES ('3253','3242','澎湖�\�','0');
INSERT INTO `yourphp_area` VALUES ('3254','3242','屏东�\�','0');
INSERT INTO `yourphp_area` VALUES ('3255','3242','台北�\�','0');
INSERT INTO `yourphp_area` VALUES ('3256','3242','台东�\�','0');
INSERT INTO `yourphp_area` VALUES ('3257','3242','台南�\�','0');
INSERT INTO `yourphp_area` VALUES ('3258','3242','台南�\�','0');
INSERT INTO `yourphp_area` VALUES ('3259','3242','台中�\�','0');
INSERT INTO `yourphp_area` VALUES ('3260','3242','台中�\�','0');
INSERT INTO `yourphp_area` VALUES ('3261','3242','桃园�\�','0');
INSERT INTO `yourphp_area` VALUES ('3262','3242','新竹�\�','0');
INSERT INTO `yourphp_area` VALUES ('3263','3242','新竹�\�','0');
INSERT INTO `yourphp_area` VALUES ('3264','3242','宜兰�\�','0');
INSERT INTO `yourphp_area` VALUES ('3265','3242','云林�\�','0');
INSERT INTO `yourphp_area` VALUES ('3266','3242','彰化�\�','0');
INSERT INTO `yourphp_article` VALUES ('2','24','1','pingphp','来投','','','','','来投是港交所公司上市的普惠金融集团瀚华金控旗下的个人金融综合服务平台，致力于为广大用户提供多层次、全方位、极致安全、极致体验的投资理财服务�\�','<p style=\"color:#3F3F3F;font-family:&quot;microsoft YAHEI&quot;;background-color:#FFFFFF;\">\r\n	<span style=\"color:black;font-family:Calibri;font-size:44pt;\"> </span><span style=\"color:black;font-family:宋体;font-size:16pt;\">�\�</span><span style=\"color:black;font-family:宋体;font-size:16pt;\">投是港交所公司上市的普惠金融集团瀚华金控旗下的个人金融综合服务平台，致力于为广大用户提供多层次、全方位、极致安全、极致体验的投资理财服务</span><span style=\"color:black;font-family:宋体;font-size:16pt;\">�\�</span>\r\n</p>','0','/Uploads/201603/56e5691c56624.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=2','42','1457493144','1457877211','','0');
INSERT INTO `yourphp_article` VALUES ('3','22','1','pingphp','医疗医药',';font-weight:bold','','','','所可靠数据统计，超过六成的智能手机用户会利用空余时间来使用健康医疗卫生类的APP应用。医疗卫生类的手机应用软件能拉近医疗机构与智能手机用户�\� 普通家庭使用者的距离，通过手机问医、手机健康测试、手机排号、手...','<p style=\"color:#888888;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>掌上医院<span>APP</span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"text-indent:21pt;\">在传统的医疗行业现状下，患者对医院缺乏了解、信息不对称，而看病难、看病烦、看病慢，服务不到位导致医患关系紧张，部分医院品牌形象缺乏。在移动互联网时代，只需轻动手指，则一站式改善就医体验�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp;</span><b style=\"text-indent:-28pt;\">核心目标</b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"text-indent:-21pt;\">一�\�</span><span style=\"text-indent:-21pt;\">提升医院品牌形象</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	掌上医院<span>APP</span>为用户展现医院整体形象、先进设备、权威专家及服务项目，让用户产生信任和好感�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<span>&nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"text-indent:21pt;\">二、吸引医患资�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	掌上医院<span>APP</span>可以让医院通过该移动应用平台做相关的宣传推广，已达到让医院通过该产品吸引大批用户的目标�\�\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"text-indent:21pt;\">三、缓解医院普遍存在的“三长一短”问�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"text-indent:21pt;\">掌上医院</span><span style=\"text-indent:21pt;\">APP</span><span style=\"text-indent:21pt;\">优化医院现有诊疗流程，缓解普遍存在的“三长一短”问题，即挂号排长队，缴费排长队，检查排长队，看医生时间短问题�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"text-indent:21pt;\">四、缓解医患信息不对称问题</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	掌上医院<span>APP</span>为患者提供自助服务，方便患者了解所患疾病、了解检查化验项目、了解相关药品、能够看懂检查化验单，能够看懂处方，能够索取自己的电子病历等�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>产品功能<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span style=\"text-indent:21pt;\">掌上医院</span><span style=\"text-indent:21pt;\">APP</span><span style=\"text-indent:21pt;\">是真正意义上的面向门诊全流程的移动医疗平台，是完全贴合医院就诊流程而设计，并且提供了有效的医患沟通平台，在提高了患者满意度的前提下，也提升了医生的服务水平。从问诊人体验出发，以消息通知为核心，覆盖门诊就医全流程，为问诊人提供便捷的门诊服务�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp;</span><b style=\"text-indent:-24pt;\">&nbsp; &nbsp; &nbsp; &nbsp;1.</b><b style=\"text-indent:-24pt;\">预约挂号</b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	用户能够通过<span>APP</span>进行在线预约看病服务，同时完善就医预约信息，系统就能够智能为用户匹配相关的专业医生进行就�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span style=\"text-indent:-28px;\">预约挂号→选择科室→选择医生</span><span style=\"text-indent:-21pt;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span> </span> \r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56e66f2f30491.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	抛弃了以往图形导诊过于专业化的疾病名词，从患者实际体验出发，改用以症状问答为核心的交互模式，帮助患者完成初步分诊，确定挂号科室�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	选择就诊时间<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span> </span> \r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56e66f89ec420.jpg\" /> \r\n</p>\r\n&nbsp;\r\n<p class=\"MsoNormal\">\r\n	<b>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;2.</b><b>在线支付<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.1pt;text-indent:-21.1pt;\">\r\n	<b><span>&nbsp;</span></b><span style=\"text-indent:21pt;\">手机支付，节省时间。网络医�\�</span><span style=\"text-indent:21pt;\">APP</span><span style=\"text-indent:21pt;\">可支付挂号费、药费、检查费等各类费用，免排队当然省时省心省力！</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp;</span><img src=\"/Uploads/201603/56e66fdb8f80e.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	<b>3.</b><b>诊断报告<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	用户在就诊的过程中，为用户记录门诊病历、体检报告、医生诊断、检查报告、监测数据等内容，为用户随时病历档案查询，方便医生及时了解患者的状况�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	<b>4.</b><b>医院形象<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:18.0pt;text-indent:-18.0pt;\">\r\n	<b>&nbsp;</b><b><u><img src=\"/Uploads/201603/56e66ff39ea4f.jpg\" /></u></b> \r\n</p>\r\n<b><u></u></b><b><u></u></b> \r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	<b>&nbsp;</b><b style=\"text-indent:-24pt;\">5.</b><b style=\"text-indent:-24pt;\">其他功能</b> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	实时挂号，可通过诊疗卡余额实时支付。实时获取门诊号源，实时锁定号源，实时余额支付或银行卡快捷支付，逆向流程窗口完成�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	智能候诊，实时掌握当前排队状态，减少患者焦虑，根据规则，提醒患者就诊，减少反复问询�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	诊疗卡充值，允许问诊人实时查询余额，支持主流银行卡、借记卡充值�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	诊后针对疗效和态度评价，即实现了公开监督，又可以帮助患者更准确的选择特长医生�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	消息推送：通过<span>APP</span>推送给用户最新的医疗政策、提醒用户按时用药、健康资讯等�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	患者病历管理：医生�\�<span>APP</span>上管理患者的病历，监控患者的身体现状�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	互动活动：通过发红包等方式，吸引用户到院检查身体�\�<span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"color:#888888;font-family:&quot;background-color:#FFFFFF;\">\r\n	<b></b> \r\n</p>','0','/Uploads/201603/56e27c7a87f10.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=3','152','1457493943','1458273813','','0');
INSERT INTO `yourphp_article` VALUES ('4','22','1','pingphp','移动办公',';font-weight:bold','','','','利用手机的APP定位、提醒与便携等特点，把对业务人员的管理和支持搬到手机上。实现对业务团队“移动化管理”APP定位一随时上报位置分配任务责任到人计划做事一有条不紊设置提醒避免忘事记录进展完全把控沟通和存储�\�...','<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>移动办公app</b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"text-indent:-28px;\">移动办公系统是面向企业提供部署的移动办公系统，具有可配置的功能模块，灵活的流程管理和配置模式�\�</span><span style=\"text-indent:-28px;\">简单易用的使用体验，并可以基于企业的需求进行私有部署和定制开发�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:-28px;margin-left:21pt;\">\r\n	<b style=\"text-indent:-28pt;\">核心目标</b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:-28px;margin-left:21pt;\">\r\n	<span style=\"text-indent:21pt;\">一、搭建商品信息在移动终端展示平台，提高企业服务能力；</span><span style=\"text-indent:21pt;\">&nbsp;</span><span style=\"text-indent:21pt;\">业务比较繁忙，经常出差，希望在外地也可以很方便地登录内部办公系统，及时呈报问题，调取资料，总结合作;</span><span style=\"text-indent:21pt;\">&nbsp;&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:-28px;margin-left:21pt;\">\r\n	<span style=\"text-indent:21pt;\">二、管理人员外联事务繁多，随时需要查看、调用、审批内部的资料文档，对公司事务进行管理，需要一种在任何场合、任何地点都能登录内部办公系统的信息化产品；</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:-28px;margin-left:21pt;\">\r\n	<span style=\"text-indent:21pt;\">三、快节奏的社会，免不了有一些突发和意外情况的发生，需要有一套系统，可以不受客观条件制约，能在事件发生的最短事件内，将事情上报、传达给内部的相关人员；</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:-28px;margin-left:21pt;\">\r\n	<span style=\"text-indent:21pt;\">四、相关人员和领导层能不受客观情况限制，快速及时对反映情况作出指示和决定�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>&nbsp;</b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>核心功能<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	一、群�\�<span>-</span>方便的组织和汇集资料\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span style=\"text-indent:21pt;\">所有用户均可建立群组，分公开和私密；</span><span style=\"text-indent:21pt;\">群组拥有者可管理群组内用户，移除、添加、设置群组管理员�\�</span> \r\n</p>\r\n<p>\r\n	二、通讯�\�-便利的查找和联系同事\r\n</p>\r\n<p>\r\n	<span style=\"text-indent:21pt;\">按同事（姓名）、部门分类显示，提供搜索功能。点击联系人可进入联系人详细信息，显示个人信息，可加关注、短信、通话、启动发送企业微信。按部门时，包含部门动态和部门文档�\�</span> \r\n</p>\r\n<p>\r\n	三、工作报�\�-关注员工每天的工作状�\�\r\n</p>\r\n<p style=\"text-indent:0px;\">\r\n	<span style=\"text-indent:21pt;\">分为提交给我的报告和我提交的报告，报告分日报和周报两类。在忘记提交报告时，可以通过微信消息自动提醒。报内容为本日总结、明日计划，周报内容为本周总结、下周计划；均设置批阅人和抄送人，批阅人唯一选择，抄送人可多选�\�</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	四、动�\�-企业内成员情况快速共�\�\r\n</p>\r\n<p>\r\n	<span style=\"text-indent:21pt;\">分为关注的动态、全部动态和我的收藏，分类显示。动态发布，默认公开发布信息，可同时@一人或多人，在通讯录选择人员；可发布图片、语音、地理位置等信息�\�</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56e574be46aed.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=4','180','1457518574','1457941845','','0');
INSERT INTO `yourphp_article` VALUES ('7','23','1','pingphp','掌上医院','','大数�\�,生活','','','掌上医院APP以移动互联网终端为载体，最大程度的简化就医流程，为实现高效、便捷优质的医疗服务创造环境。可实现预约挂号、排队查询、报告查询、名医介绍、医院导航、移动支付等功能�\�\r\n','<p style=\"text-align:justify;text-indent:2em;font-family:&quot;Hiragino Sans GB&quot;, &quot;Open Sans&quot;, Arial, &quot;Microsoft YaHei&quot;, 微软雅黑, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif;font-size:16px;vertical-align:baseline;\">\r\n	掌上医院APP以移动互联网终端为载体，最大程度的简化就医流程，为实现高效、便捷优质的医疗服务创造环境。可实现预约挂号、排队查询、报告查询、名医介绍、医院导航、移动支付等功能�\�\r\n</p>','0','/Uploads/201603/56e56a0b72465.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=7','28','1457597740','1457877082','','0');
INSERT INTO `yourphp_article` VALUES ('8','26','2','hello','好邻便利',';font-weight:bold','','','','好邻便利，是全国最新最全的便利店黄页，可以通过选择的地理位置或自动定位的方法，查找附近的便利店。同时提供这些便利店的电话及商品信息，方便用户购买�\�\r\n','<p align=\"left\" class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	好邻便利，是全国最新最全的便利店黄页，可以通过选择的地理位置或自动定位的方法，查找附近的便利店。同时提供这些便利店的电话及商品信息，方便用户购买�\�\r\n</p>','0','/Uploads/201603/56e568cf4d940.png','1','1','1','','0','0','/index.php?m=Article&a=show&id=8','32','1457689827','1457876863','','0');
INSERT INTO `yourphp_article` VALUES ('9','22','2','hello','电子商务',';font-weight:bold','','','','该移动解决方案旨在利用最先进的移动互联技术，以用户需求为中心，不断优化、提供无所不在的服务，为电商企业提供“更社交化、更低成本、更个性化”的服务，不断完善移动购物场景，...','<p class=\"MsoNormal\">\r\n	<b>移动商城<span>APP</span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:-28px;margin-left:21pt;\">\r\n	<span style=\"text-indent:21pt;\">&nbsp; &nbsp; &nbsp; &nbsp;思远高创</span><span style=\"text-indent:21pt;\">O2O</span><span style=\"text-indent:21pt;\">电商移动解决方案旨在利用最先进的移动互联技术，以用户需求为中心，不断优化、提供无所不在的服务，为电商企业提供“更社交化、更低成本、更个性化”的服务，不断完善移动购物场景，打造最佳用户体验，推动中国移动互联网行业的快速发展�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	因决策路径呈现出社交化的特性，该方案将重构传统电商模式。系统通过微博、微信�\�<span>H5</span>等社交工具进行商品信息的传播和分享，达到客户数量短期快速增长，提供基于社会化商品和服务的移动购物体验�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	&nbsp;\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.1pt;text-indent:-28.1pt;\">\r\n	<b>核心目标<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"text-indent:-21pt;\">一、搭建商品信息在移动终端展示平台，提高企业服务能力；</span><span style=\"text-indent:-21pt;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	二、手机随身携带，随时浏览，客户可以在网络实现订货，查看货品信息，商家可以提供更加快捷的服务，扩展业务线，提高客户忠诚度；<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	三、精准营销，占领先机。可以直观的，快捷的第一时间把商家的最新产品信息、促销信息等推送到客户手中�\�<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	四、方便集成地理位置系统，实现线上、线下联动；<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	五、方便拓展多种支付接口，增多商业机会�\�<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	六、通过后台可以管理和收集目标客户数据促成再次消费；<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	七、通过二维码、广告、搜索引擎推广等方式，引导目标客户安装本软件�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.1pt;text-indent:-28.1pt;\">\r\n	<b>商城模式<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.1pt;text-indent:-28.1pt;\">\r\n	<b>&nbsp;</b> \r\n</p>\r\n<p>\r\n	<b><img src=\"/Uploads/201603/56e66a345c69f.jpg\" /> </b> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:24.1pt;text-indent:-24.1pt;\">\r\n	<b>&nbsp;</b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.1pt;text-indent:-28.1pt;\">\r\n	<b>核心功能</b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.1pt;text-indent:-28.1pt;\">\r\n	<span style=\"text-indent:21pt;\">在移动互联网时代，电商平�\�</span><span style=\"text-indent:21pt;\">7</span><span style=\"text-indent:21pt;\">�\�</span><span style=\"text-indent:21pt;\">*24</span><span style=\"text-indent:21pt;\">小时不打烊，消费者通过碎片化时间完成交易，实现随时随地购物！手�\�</span><span style=\"text-indent:21pt;\">App</span><span style=\"text-indent:21pt;\">商城和微信微店一体化应用，为企业营销成长注入新动力！</span><span style=\"text-indent:21pt;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	一、通过手机<span>App</span>和微信微店，销售商品推广企业�\�<span style=\"text-indent:0cm;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoListParagraph\" align=\"left\" style=\"margin-left:21pt;text-indent:-21pt;\">\r\n	二、优惠折扣信息，推送到消费者手机和微信�\�<span style=\"text-indent:0cm;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoListParagraph\" align=\"left\" style=\"margin-left:21pt;text-indent:-21pt;\">\r\n	三、手机管理订单和咨询，实时服务�\�<span style=\"text-indent:0cm;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoListParagraph\" align=\"left\" style=\"margin-left:21pt;text-indent:-21pt;\">\r\n	四、有企业介绍<span>/</span>商品销�\�<span>/</span>问题咨询<span>/</span>手机支付<span>/</span>优惠折扣推�\�<span>/</span>会员管理等丰富功能�\�<span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<br />\r\n</p>','0','/Uploads/201603/56e5698bbac10.png','1','1','1','','0','0','/index.php?m=Article&a=show&id=9','154','1457876361','1458273990','','0');
INSERT INTO `yourphp_article` VALUES ('10','22','2','hello','餐饮外卖',';font-weight:bold','','','','通过餐厅APP可实现手机点餐、订餐、电子会员卡、导航到店、签到优惠、摇一摇、信息推送、一键呼叫、手机订位、二维码验证、在线支付、分析等互动功能�\�  ','<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>移动餐饮<span>APP</span></b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"text-indent:21pt;\">随着智能信息时代的进步，传统的经营模式正在逐步的被新的方式取代。适应移动互联网发展的经营模式才能让企业快速高效的发展。移�\�</span><span style=\"text-indent:21pt;\">app</span><span style=\"text-indent:21pt;\">营销将是企业致胜的法宝！</span><span style=\"text-indent:21pt;\">越来越多的商家抓住了普通大众的心理，在优惠信息和商家特色上都是花费了很大的精力。这是属于自己的一个内部品牌，直接影响着整个各户群体的走向。通过</span><span style=\"text-indent:21pt;\">app</span><span style=\"text-indent:21pt;\">能够将商家的特色、最新的优惠信息及时的推送到每个用户的手中。通过这种循序渐进的推送，可以将商家的特色大范围的宣传出去�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp;</span><img src=\"/Uploads/201603/56e5697a660d8.png\" /> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>核心目标<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	提升企业形象�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	移动互联网的发展推动了移�\�<span>app</span>品牌的大范围推广。越来越多的商家�\�<span>app</span>打造成自己的企业形象，从而替代传统的企业网站。树立良好的移动品牌�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>拓宽营销渠道�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	移动<span>app</span>可以精准定位受众人群，及时的将上级促销和优惠信息推送到每位顾客的手上。让顾客在第一时间了解，这将大大的减少宣传成本，减低运营费用。而且这种移动<span>app</span>营销渠道就有着可信度高、互动性极强的特点。并且还能有效的增加老客户的粘度，吸引再次消费�\�<span style=\"text-indent:0cm;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	智能化企业管理：<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	随着<span>app</span>的不断发展和完善，不但在企业运营商获得一致的好评，在企业智能化管理上更能完美的展现。在信息高速发展的今天，越来越多的用户都已经习惯了精简化的管理模式。企业内部的管理制度也完全可以依�\�<span>app</span>进行实时。可以优先的实现科学的企业管理�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	即时分享和评论：<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	现在越来越多的人群开始在商家服务商方面有着高要求。对于服务好的商家，顾客往往对其的评价一致很高并且这些顾客的粘度极好。他们会通过<span>app</span>将商家信息分享给自己的朋友，无形中也给商家做了一次宣传。目前很多的<span>app</span>中都会加入到评论和分享的模块，顾客可以讲自己的看到的、品尝到的一切分享给每个人。同事更能对商家的不足之处做出评论，有利于商家在服务方面的提升�\�\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"text-indent:0cm;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>模式<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	通过餐厅<span>APP</span>可实现手机点餐、订餐、电子会员卡、导航到店、签到优惠、摇一摇、信息推送、一键呼叫、手机订位、二维码验证、在线支付、分析等互动功能�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">\r\n	主要功能�\�<span>&nbsp; </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">\r\n	<span>1</span>、手机订餐；<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">\r\n	<span>2</span>、会员功�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">\r\n	<span>3</span>、签到优惠；<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">\r\n	<span>4</span>、信息推送；<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">\r\n	<span>5</span>、手机订位；<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">\r\n	<span>6</span>、在线支付等�\�<span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56e6685249419.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<div style=\"text-align:left;margin-left:0.38in;\">\r\n	<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n</div>','0','/Uploads/201603/56e5697a660d8.png','1','1','1','','0','0','/index.php?m=Article&a=show&id=10','189','1457877929','1458273781','','0');
INSERT INTO `yourphp_article` VALUES ('11','23','2','hello','云医','','','','','云医是为全国医生、药师、剂师、护士、医学生量身打造的移动社交App，云医实行实名认证，是最纯净的医护交流平台购�\�','云医是为全国医生、药师、剂师、护士、医学生量身打造的移动社交App，云医实行实名认证，是最纯净的医护交流平台购�\�','0','/Uploads/201603/56e569f4514db.png','0','1','1','','0','0','/index.php?m=Article&a=show&id=11','18','1457878402','1457878465','','0');
INSERT INTO `yourphp_article` VALUES ('12','26','2','hello','俏商�\�','','','','','俏商城移动应用客户端是顶级奢华抗衰护肤品牌俏十岁的官方APP，设有秒杀专区、团购专区，签到领积分，每日抽大奖，豪礼不停歇等功能，为客户带来全新购物体验�\�','俏商城移动应用客户端是顶级奢华抗衰护肤品牌俏十岁的官方APP，设有秒杀专区、团购专区，签到领积分，每日抽大奖，豪礼不停歇等功能，为客户带来全新购物体验�\�','0','/Uploads/201603/56e57719d3f5a.png','1','1','1','','0','0','/index.php?m=Article&a=show&id=12','58','1457878823','1457939077','','0');
INSERT INTO `yourphp_article` VALUES ('17','22','2','hello','生鲜电商','','','','','生鲜类APP开发方�\�     农产直供的形式是随着生鲜电商行业的崛起而产生，对于常温物流能够完成的产品，其投入成本更低，同时有效解决了供应链问题也随之解决，并且成为平台类和垂直生鲜电商不断发展...','<p style=\"font-weight:400;font-size:24px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:24px;\">生鲜类APP开�\�</span><span style=\"font-size:24px;\">方案</span> \r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56e8d09838fda.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"font-weight:400;font-size:24px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">&nbsp; &nbsp;&nbsp;农产直供的形式是随着生鲜电商行业的崛起而产生，对于常温物流能够完成的产品，其投入成本更低，同时有效解决了供应链问题也随之解决，并且成为平台类和垂直生鲜电商不断发展的方式。生鲜APP开发对于农产直供的方式有着深远的意义。企业怀着开放的心态，开展与线下零售伙伴各种形式的深度合作，将传统零售商已经积累的优质资源与我们的互联网技术、供应链管理优势相结合。传统零售商的触网将使他们更广泛地触达用户、扩大业务规模，而我们将借助B2C业务为消费者提供更卓越的用户体验，提升用户黏度的策略。线上线下携手，共创双赢模式、共同新发展带来的红利�\�</span><br />\r\n<span style=\"font-size:16px;\">&nbsp; &nbsp; 生鲜APP是针对社区的生鲜宅配平台手机客户端，以B2C电子商务为载体，以生鲜直投站为社区服务点，由农业生产基地直供地产生鲜至社区，短途冷链配送，直投保鲜柜智能保鲜，从农产品基地到餐桌全程监控农产品质量，全方位保障食品安全，为用户实现轻松便捷的购买生鲜食品�\�</span><br />\r\n<br />\r\n<span style=\"font-size:16px;\">生鲜APP面临的三大问题：</span><br />\r\n<span style=\"font-size:16px;\">&nbsp; &nbsp; 在生鲜电商APP定制开发运营中，物流问题是最大的阻碍因素之一。为此很多生鲜企业选择搭建专属的物流体系，如顺丰依靠物流优势推出顺丰优选；阿里巴巴启动了生鲜冷链物流。另外还有一些垂直电商平台选择与第三方合作，如天天果园借助京东的物流体系进一步扩大市场覆盖，解决仓储或流通问题�\�</span><br />\r\n<span style=\"font-size:16px;\">&nbsp; &nbsp; 食品安全问题。生鲜是每个家庭每个人每天要吃、每餐要吃的食品，不仅要吃得可口，更要吃得放心、吃得健康。可是，在目前的生产和市场环境下，想做到这点实在太难了。监管不力的农贸市场里卖的蔬菜、街头巷尾小商小贩卖的水果，用的是哪来的种子？在哪里种的？是谁种的？怎么种出来的？农药残留、重金属残留是否达到食用标准？作为普通消费者，很难去识别这一系列问题�\�</span><br />\r\n<span style=\"font-size:16px;\">食品价格贵的痛点。生鲜消费非常高频，这导致用户对价格极其敏感。可是，在生鲜（尤其是蔬菜）市场一直存在一个怪圈——逢好必贵。这其中一个很大的原因是，蔬菜从生产中的“菜园子”到消费者的“”菜篮子，其中要经历数不清的环节，成本不断叠加，最后到达消费者手中的时候，价格已经翻了几个跟斗�\�</span><br />\r\n<span style=\"font-size:16px;\">&nbsp; &nbsp; &nbsp;生鲜APP开发冷链物流问题：生鲜产品从出库到消费者手中需要全程冷链运输，目前冷链运输成本高、仓储费用高，导致生鲜产品冷链物流成本居高不下�\�</span><br />\r\n<br />\r\n<span style=\"font-size:16px;\">生鲜行业APP解决方案功能需求： &nbsp;</span><br />\r\n<span style=\"font-size:16px;\">1、产品展示：打开生鲜APP，用户可以看到不同品种的新鲜蔬菜、水果以及肉类�\�&nbsp;</span><br />\r\n<span style=\"font-size:16px;\">2、定时收货：买家可以预约收鲜时间，保存产品的新鲜�\�</span><br />\r\n<span style=\"font-size:16px;\">3、促销推送：将一些生鲜蔬果促销活动及时推送到用户的生鲜APP客户端上，价格优惠，吸引客户购买�\�</span><br />\r\n<span style=\"font-size:16px;\">4、地区分类购买：根据这个功能，可以设置你的生鲜地区范围，随时得知附近物流最快的生鲜定点，用高效率买到最想吃的生鲜食品�\�&nbsp;</span><br />\r\n<span style=\"font-size:16px;\">5、营养食谱：现在的人们生活节奏快，很多时候忘了给自己的身体补充营养，所以营养食谱是专门为了弥补现代人缺乏的营养补充意识而推出的功能�\�</span><br />\r\n<span style=\"font-size:16px;\">6、瘦身食谱：退出瘦身食谱功能，广大的甩肉狂人就能尽情的吃了，只要吃得健康，就不会发胖。由生鲜APP提供的瘦身食谱还可以根据当前的菜品做出调整，每天都有不同的瘦身餐吃�\�&nbsp;</span><br />\r\n<span style=\"font-size:16px;\">7、在线支付：直接下单，物流送达之后即可使用在线支付功能，完成订单付款环节�\�</span><br />\r\n<span style=\"font-size:16px;\">8、LBS位置定位：用户能够通过位置定位的功能，定位附近提供生鲜产品服务的商家，或者用户能够通过设置相应的搜素范围，随时获得商家的新品上市的信息，及时采购新鲜可口的商品�\�</span><br />\r\n<span style=\"font-size:16px;\">9、附近商家推送功能：用户能够通过关注相关的附近的商家，商家就能够为粉丝推送相关的新品上市、优惠信息等，实现精准营销�\�</span><br />\r\n<span style=\"font-size:16px;\">10、定时收货：买家可以预约收鲜时间，保存产品的新鲜�\�</span><br />\r\n<br />\r\n<span style=\"font-size:16px;\">生鲜APP开发：供应�\�</span><br />\r\n<span style=\"font-size:16px;\">&nbsp; &nbsp;&nbsp;我们都知道，在传统的销售模式中，品牌供应商进驻大型卖场需要花费的成本较高。但是移动平台的出现为供应商带来的好处有增加销售渠道，最大化降低销售成本，提升营销利润�\�</span> \r\n</p>\r\n<p style=\"font-weight:400;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> <span style=\"font-size:16px;\">生鲜APP开发：小卖�\�</span><br />\r\n<span style=\"font-size:16px;\">&nbsp; &nbsp;&nbsp;电子商务的发展，以及人们的习惯逐渐向移动端转移，线下的实体小卖部的销售受到较大的冲击。为此配送软件为用户提供了在线接单配送的服务，不仅能够为商家增强盈利的渠道，同时小卖部能够通过平台搭售店内的商品，以生活用品为主，因此也可以提高店内的销售额�\�</span> \r\n</p>\r\n<p style=\"font-weight:400;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> <span style=\"font-size:16px;\">生鲜APP开发：用户</span><br />\r\n<span style=\"font-size:16px;\">&nbsp; &nbsp; &nbsp; &nbsp; 生鲜配送APP开发最直接的获利者就是，主要解决用户网购过程中的物流问题，用户能够在最短时间内，买到和一般便利店有差异化的商品，包括有机蔬菜、冰淇淋、乳品等�\�</span> \r\n</p>','show','/Uploads/201603/56e8d09838fda.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=17','140','1458098368','1458205029','','0');
INSERT INTO `yourphp_article` VALUES ('18','10','2','hello','老板：网页、App、微信：应该做哪个？',';font-weight:bold','','','','作为一名不懂技术的CEO，你的问题可能会很多。比如在Idea（Nothing）阶段就会疑问：“我有一个好点子，是不是可以做个APP？微信公众号要做吗？还是做网站？”或者在idea还算靠谱的时候，又会疑惑：“我想搞一个blabl...','<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\"> </span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n&nbsp; &nbsp; &nbsp; &nbsp; <span style=\"font-size:16px;\">&nbsp;\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56e8d901b3118.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n</span><span style=\"font-size:16px;\">&nbsp; &nbsp; &nbsp; &nbsp;作为一名不懂技术的CEO，你的问题可能会很多�\�</span> \r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">比如在Idea（Nothing）阶段就会疑问：“我有一个好点子，是不是可以做个APP？微信公众号要做吗？还是做网站？�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">或者在idea还算靠谱的时候，又会疑惑：“我想搞一个blablabla的APP，找外包还是自己招人？招的话要招哪些人？需要多少钱？多久能搞出来？�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">雄心勃勃地开始扮演产品经理的角色一段时间后，你又傻了：“为什么我的项目看起来像永远也做不完了？一个完美的第一版产品长什么样？�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\"><span style=\"font-size:16px;\"><strong>网页、App、微信：第一版产品应该做哪个�\�</strong></span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">我们现在创业，多多少少都会有软件开发。软件开发大多是这几种：网页、App、微信。其实很多公司都是从微信公众号开始，做着做着觉得还不错，产品有挺多人用，于是他们就想再开发个App把微信公众号导流导过去。但事实会告诉你，从微信公众号导流导到App是件非常痛苦的事情。比如微信公众号可能�\�5万或�\�10万的粉丝，但是这5万�\�10万的粉丝在有了App之后会瞬间过去吗？不会的。这个过程非常困难。那么问题来了：</span> \r\n</p>\r\n<ul class=\"list-paddingleft-2\" style=\"color:#333333;font-family:\'microsoft yahei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<li>\r\n		<p style=\"text-indent:2em;font-size:18px;\">\r\n			<span style=\"font-size:16px;\">先做公众号还是直接做App�\�</span> \r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">在思考这个问题的时候，我觉得，如果你的产品强烈地依赖C端的传播，就应该先做公众号。因为微信内部的传播比App的传播要方便很多；C端很多的东西，其实在公众号里就能解决问题，不是一定需要App的�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">把公众号做好，比如将用户积累�\�10万，怎样再把�\�10万用户转化到App，这是后面的事情。但是这件事情非常的困难，转化率很低，而且要通过各种各样的方法去刺激转化�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">要理清思路，还是要从网站、App、微信开发的异同开始讲起�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';text-align:center;background-color:#FFFFFF;\">\r\n	<a href=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094522595.jpg\" target=\"_blank\"><img alt=\"\\\" src=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094522595.jpg\" style=\"height:auto;\" /></a> \r\n</p>\r\n<ul class=\"list-paddingleft-2\" style=\"color:#333333;font-family:\'microsoft yahei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<li>\r\n		<p style=\"text-indent:2em;font-size:18px;\">\r\n			<span style=\"font-size:16px;\">网站、App、微信开发有什么不一样的地方�\�</span> \r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">首先是流程不一样，第二是涉及到的技术支持不太一样，第三是开发的成本不一样�\�</span> \r\n</p>\r\n<blockquote style=\"color:#333333;font-family:\'microsoft yahei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<p style=\"text-indent:2em;font-size:18px;\">\r\n		<span style=\"font-size:16px;\">1、网站开�\�</span> \r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">网站其实是已经非常成熟的技术，成本也非常便宜。现在要做一个企业网站或者一个简单的社交网站，基本上�\�3�\�5万就可以做出来了�\�2�\�-3万人民币是在外包的情况下，往往还含设计费用，可以说，这其实是相对比较便宜的一个产品�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">如果要自己招团队来做的话，首先需要设计，然后需要一个后端程序员，还需要一个前端程序员去实现一些炫酷的效果。当然也有程序员叫全栈工程师，所谓的“全栈”就是说他什么都能干，即能写数据库又能写网页的效果，这样的程序员比较难招。所以从技能上来讲，做一个网站大概需要这三种人�\�</span> \r\n</p>\r\n<blockquote style=\"color:#333333;font-family:\'microsoft yahei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<p style=\"text-indent:2em;font-size:18px;\">\r\n		<span style=\"font-size:16px;\">2、App</span> \r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<a href=\"http://www.dongweinet.com/\"><span style=\"font-size:16px;\">开发App</span></a><span style=\"font-size:16px;\">相对来说就比较麻烦一点，也比较贵。做一个简单的App，大概有十几个页面这样的体量，可能就需要花10万块钱（这是指外包的情况下，包含设计、iOS代码及后台数据库的代码）�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">那么问题来了：为什�\�</span><a href=\"http://www.dongweinet.com/\"><span style=\"font-size:16px;\">开发App</span></a><span style=\"font-size:16px;\">会贵呢？这里主要就是因为iOS的开发比较贵。在刚才举例的App体量的基础上，如果再做一个Android的版本，那可能还需要增�\�5万到8万。因为两个版本的设计和后台基本上可以通用，所以可以省一些钱�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">但这都是在外包的前提下，如果要是自己招人做个App还要覆盖Android和iOS两个平台，那就费劲了�\�</span><a href=\"http://www.dongweinet.com/\"><span style=\"font-size:16px;\">App的开�\�</span></a><span style=\"font-size:16px;\">也需要三个角色：一个设计师，一个后台开发，iOS�\�</span><a href=\"http://www.dongweinet.com/\"><span style=\"font-size:16px;\">Android开�\�</span></a><span style=\"font-size:16px;\">，做两个版本就意味着要招一个iOS程序员和Android程序员，再加上设计师和后端，就变成了四个角色。这几个人还需要相对有经验，在接口的设计、应用和服务器交互等等这些方面要能配合得比较默契。在这种情况下，往往只有一两年经验的程序员和设计师又无法胜任�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';text-align:center;background-color:#FFFFFF;\">\r\n	<a href=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094525616.jpg\" target=\"_blank\"><img alt=\"\\\" src=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094525616.jpg\" style=\"height:auto;\" /></a> \r\n</p>\r\n<blockquote style=\"color:#333333;font-family:\'microsoft yahei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<p style=\"text-indent:2em;font-size:18px;\">\r\n		<span style=\"font-size:16px;\">3、微�\�</span> \r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">App开发比较费劲，那么有人就说我们只做微信行不行？微信很简单，现在开放了各种各样的接口，你点进去它就自动登录了，头像拿到了，用户名也拿到了。微信还有一个方便之处就是可以直接支付，也就是说开发团队也不需要额外去接入支付这个费事的事情了。现在通过H5，微信开发其实就跟网页开发是一样的。H5除了在微信朋友圈里传播，现在也嵌在很多微信公众号或者服务号的菜单里，点一下就会出现一个很漂亮的页面，可以获取到用户信息，可以调用微信的付款功能�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">而且它还基本不会涉及到兼容性问题。做一个网站的的，可能要考虑兼容Mac，兼容Windows。浏览器也有很多系列，比如有的网页在IE6上看起来很差，兼容性很费劲，这些都要去调整。但是做微信基本上就没有兼容性这个事情，因为手机浏览器出现得晚，没有那么多分歧，标准相对来说比较统一�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">做一个微信的开发，大概3�\�5万块钱就能搞定，这也是含设计的。微信的环境里，除了电商系统，否则设计的花样并不太多。就算要在微信环境里做电商系统，包括订单、购物车等等，外包的话大概也只要花费5�\�8万。自己招人做的话，找一个设计，再找一个全栈工程师就解决问题了�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">以上只是从技术的角度来讲有什么不一样。从运营的角度来讲，一般都是先有微信公众号，把这个服务号做强大，再考虑要不要做App，继而再考虑网站的事情�\�</span> \r\n</p>\r\n<ul class=\"list-paddingleft-2\" style=\"color:#333333;font-family:\'microsoft yahei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<li>\r\n		<p style=\"text-indent:2em;font-size:18px;\">\r\n			<span style=\"font-size:16px;\">做一个App要花多少时间�\�</span> \r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">以外包为标准，基本上都是三个月内搞定�\�</span><span style=\"font-size:16px;text-indent:2em;\">这里可以提供一个检测的小方法，在与一个还比较靠谱的外包团队做项目估算的时候，如果他说三个月做不出来，那就是你想做的东西太多了�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">创业者们的问题通常是对App的需求砍得不够，也就是想做的东西太多，哪个都舍不得丢，或者在一开始就要求iOS和Android两个版本都要做。其实很多时候，做App的开发只需要iOS一个平台就够了，因为最开始试验阶段，绝大部分的应用场景是在iOS，通过iPhone的用户就能看出来这个App行不行。如果iPhone那边行，再做Android�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';text-align:center;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">&nbsp;</span><a href=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094525449.jpg\" target=\"_blank\"><img alt=\"\\\" src=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094525449.jpg\" style=\"height:auto;\" /></a> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">为了能迅速验证一些问题，我们就要快速做出这个版本的App。刚才说了，只做iOS，同样需要一个设计、一个iOS、一个后端。如果这三个人是全职的团队，应该在一个月内做出东西来，否则要么是团队不够好，要么就是当初的需求没有理清楚�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">在看过很�\�</span><a href=\"http://www.dongweinet.com/\"><span style=\"font-size:16px;\">App的开�\�</span></a><span style=\"font-size:16px;\">之后，我认为App的需求是否合理是可以有一个标准来衡量的。以App作为例子来讲，可以拿“外�\�3个月做完”和“iOS团队1个月内出成果”作为标准来对标自己的产品�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\"><span style=\"font-size:16px;\">第一版产品：把需求砍到不能再砍才�\�</span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">在做Coding码市这个平台的时候，我也曾遇到很多很多的需求，并且参与分析过很多的需求。我发现，最开始做产品第一版时遇到最大的问题是：什么东西先做、什么东西后做、什么东西不做。这个也是很多创业项目在最开始的时候遇到的问题。我的建议是：无论是网站、App还是微信，第一版产品只抓主要矛盾，把需求砍到不能再砍，只要解决一个问题就够了�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';text-align:center;background-color:#FFFFFF;\">\r\n	<a href=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094525622.jpg\" target=\"_blank\"><img alt=\"\\\" src=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094525622.jpg\" style=\"height:auto;\" /></a> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">这个行业也许很乱，有很多很多的问题需要解决，但是第一个版本的产品要找一个最痛的痛点去解决，解决好了基本上就有流量，用户来了之后再快速迭代。如果觉得这个很重要那个也很重要，要不要做个用户之间的关注，要不要做个用户之间的互粉，要不要做个自动提醒……把这种功能全部加上，你会发现这个项目永远做不完，而且前期的投入会非常高。本来是1个月的项目，加完这些东西可能就变�\�4个月的项目了�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">软件开发项目的复杂程度并不是一条直线能代表的。比如说，本来这�\�</span><a href=\"http://www.dongweinet.com/\"><span style=\"font-size:16px;\">App</span></a><span style=\"font-size:16px;\">只有10个功能，�\�1个月的时间，设计开发全都能搞定。但如果变成20个功能，那开发时间就不是2个月，很可能就是3�\�4个月�\�4个月之后市场会发生什么变化谁也说不好�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">所以我认为，产品的第一版一定只解决用户在最主要场景下遇到的最主要的问题。这样一来，产品会很简单，成本低，还能够很快上线。上线以后，就能测试市场对这个产品的反应：到底有没有人用，需不需要快速迭代，如何迭代。至于商业模式的问题并不是开发第一版产品的时候需要去考虑成熟的�\�</span> \r\n</p>','show','/Uploads/201603/56e8d8ee89d3e.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=18','61','1437017428','1458180219','','0');
INSERT INTO `yourphp_article` VALUES ('19','3','2','hello','APP开发：改善用户体验的七大建�\�',';font-weight:bold','','','','        APP应用市场上，每天都新的APP上架。从刚开始的上架比拼到后来的创意对决，这一路走来，我们是不是遗漏些什么？作为开发运营者的我们，要停下来好好想一想。很多开发运营者都在纳...','<span style=\"font-size:14px;font-family:arial, helvetica, sans-serif;color:#333333;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;APP应用市场上，每天都新�\�<a href=\"http://www.dongweinet.com/\">APP</a>上架。从刚开始的上架比拼到后来的创意对决，这一路走来，我们是不是遗漏些什么？作为开发运营者的我们，要停下来好好想一想�\�</span><span style=\"color:#494949;font-family:宋体;font-size:14px;background-color:#FFFFFF;\"></span> \r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">很多开发运营者都在纳闷：基石自己的创意有多特别，操作有多简单，但是应用排名却停滞不前。原因其实很简单，我们在忙着开发和发布新应用的时候，往往会忽略掉这个过程中最重要的因素，那就是：用户。影响应用排名的最大因素是什么？用户体验�\�</span><br />\r\n<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp;1、请你的兄弟姐们来测试你的应�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; 随机�\�10�\�20�\�50个人来测试你的应用，时刻跟踪他们，请他们将自己的感受坦白告诉你。认真倾听他们的观感和意见，观察他们使用应用的方式，特别注意他们对什么最不满意。你和你的团队可能会通过假设的方式来完善应用，但是这些测试人员给出的意见比大多数分析软件能够给出的修改意见更为中肯�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<br />\r\n<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span>2、换位思考，从用户的角度去感受应�\�</span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp;&nbsp;强迫自己像应用用户一样去思考。将自己放在用户的位置上，当然，你最好尽可能去使用你的应用。我们最近一直在这么做，因为现在他们通常会坐在汽车里点餐。我们必须打破常规思维，象驾驶员一样思考问题。这是一项挑战，也是开发出最棒的应用的一项秘诀�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<br />\r\n<span><span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; 3、专注于提供最有用的功�\�</span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; 开发员在开发应用时很容易陷入一种被称作“功能蔓延”的陷阱。开发员总想在用户体验中加入更多的新功能，但是这并不正确，你应该学会对新功能说“不”，并且专注于为用户提供最有用的功能。数量有限但强大的功能比数量众多但却并不专精的功能更好�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<br />\r\n<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span>4、神形合一，整合外观和功能</span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp;你必须兼具编程员和用户界面设计师两种身份，通过你的产品提供最棒的用户体验。编程员可以保证结构上的逻辑合理性，设计师则保证应用在人工美学上的特点。当然，你还需要测试你的产品，但是从兼顾外观和功能的角度开始，至少可以保证你能够在获得了充分的信息后再作出决定�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<br />\r\n<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span>5、老人测试</span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp;不久前，大多数事物的测试都会提到一个问题：�\�8岁的小孩子能够使用和理解它吗?”对于应用来说，比较适用的问题则是：�\�81岁的老年人能够使用和理解它吗?”你必须带着这个问题去完善你的用户体验。如果连81岁的老年人都爱使用你的应用，那么人人都会喜欢它�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<br />\r\n<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span>6、在对应用做出修改前先征求用户的意见</span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp;在对应用做出修改前先征求用户的意见是完善用户体验的最佳方式。在应用内进行分析或许并不能彻底地体现出它对用户的最大作用或它能给用户的最大帮助。不同的视点有助于你通过新的方式来解决问题，有时你可能会发现，你的应用并不象你原先想的那样需要完善�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<br />\r\n<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;<span>&nbsp;7、像用户一样思�\�</span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; 这一条似乎是老生常谈，好像谁都知道，但是它确实是改善用户体验的最佳途径。但是谈到效率的话，那么仅仅去思考如何通过各个项目、功能和按钮在页面上的布局来实现用户友好度的话是远远不够的。你必须考虑用户想要如何使用应用的问题，然后努力去配合他们�\�</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	<span><span style=\"font-family:arial, helvetica, sans-serif;\">你必须想到你的应用在实际生活中的使用方式，而不仅仅是用户将如何点击屏幕。而且，你还要考虑他们使用的其他应用对他们的行为造成了什么样的影响。按照这两条原则去做，你就可以创造出更直观、更友好的用户体验�\�</span></span> \r\n</p>','show','/Uploads/201603/56e8d4f219473.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=19','34','1445312247','1458180310','','0');
INSERT INTO `yourphp_article` VALUES ('31','22','2','hello','物流交�\�',';font-weight:bold','','','','移动物流APP物流APP客户端可以帮助企业简化不必要的环节，节省大量的人工、收派成本，并且为用户提供个性化的服务，进一步扩大消费群体，缓解物流行业竞争激烈的现状。因此，谁抢占了移动互联网先机，谁就拥有了未�\�...','<p class=\"MsoNormal\">\r\n	<b>移动物流<span>APP</span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	物流<span>APP</span>客户端可以帮助企业简化不必要的环节，节省大量的人工、收派成本，并且为用户提供个性化的服务，进一步扩大消费群体，缓解物流行业竞争激烈的现状。因此，谁抢占了移动互联网先机，谁就拥有了未来物流行业的广阔市场�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	行业痛点<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	一、市场高度分散，信息严重不对称，供需双方很难达成交易。货车司机找货难，货主找司机难�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	二、诚信正是物流行业所缺失的管理和服务。供需双方缺乏信任。货主将价值不菲的货物交付司机运输，成单较大的风险。货运司机屡屡遭遇车辆闲置、被拖欠运费、被敲诈被欺骗、发空车、被骗车、被拖欠运费、超宽、超长、超高�\�\r\n押车、敲诈等等�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span> </span> \r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56e9056b6556a.jpg\" /> \r\n</p>\r\n&nbsp;\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>核心目标<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	一、为货主和车主搭建直接交易的平台，打消信息不透明，让货车司机可以直接与货主对接�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	二、依靠互联网平台�\� 依靠资质认证、身份认证，保险担保以及大数据等多种手段实现货主与司机之间的互信�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	三、通过平台大数据实现货主与司机之间的交易撮合，实现最佳的资源配置，降低找货成本和运费，让司机师傅可以回程备货避免空车现象�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>&nbsp;</b> \r\n</p>\r\n<p>\r\n	<b><img src=\"/Uploads/201603/56e90593a2a09.jpg\" /> </b> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>核心功能<span></span></b> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:49.5pt;text-indent:-28.5pt;\">\r\n	<span>一�\�&nbsp;&nbsp;&nbsp;&nbsp; </span>精准寻找车源信息、货源信息、发布车源和货源信息<span></span> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:49.5pt;text-indent:-28.5pt;\">\r\n	<span>二�\�&nbsp;&nbsp;&nbsp;&nbsp; </span>提供货主车主真实身份和企业资质认证，帮助物流企业建立口碑�\�<span></span> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:49.5pt;text-indent:-28.5pt;\">\r\n	<span>三�\�&nbsp;&nbsp;&nbsp;&nbsp; </span>车主可以和货主进行在线洽谈、送货预约、在线下单、上传车辆位置、送达确认、在线评价等�\�<span></span> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:49.5pt;text-indent:-28.5pt;\">\r\n	<span>四�\�&nbsp;&nbsp;&nbsp;&nbsp; </span>通过车载终端和手�\�<span>APP</span>车辆位置定位，对车辆历史行驶轨迹实时回放查看，极大加强车辆安全运输服务保障，实现货物运输全程状态轻松监管；<span></span> \r\n</p>','show','/Uploads/201603/56e8fe7f9bd4f.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=31','138','1458100924','1458274048','','0');
INSERT INTO `yourphp_article` VALUES ('43','10','2','hello','做一个APP需要多少钱',';font-weight:bold','','','','       作为互联网从业者，被行外朋友们问及最多的问题是�\� 做一个网站需要多少钱？�\� 或者「做一个APP需要多少钱？」。作为做过完整网站项目和APP的人，今天从产品经理的角度，一起来算一下中...','<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">&nbsp; &nbsp; &nbsp; &nbsp;作为互联网从业者，被行外朋友们问及最多的问题是�\� 做一个网站需要多少钱？�\� 或者「做一个APP需要多少钱？」。作为做过完整网站项目和APP的人，今天从产品经理的角度，一起来算一下中小型APP从无到有需要做哪些工作，以及为达成使命，需要付出多少金钱�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">以下内容的前提是：深圳、移动互联网方向。包含研发一个新产品过程中一些常见的工作，并非十全十美�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">&nbsp; &nbsp; &nbsp; &nbsp;首先假设在做APP之前我们已经有了一个成熟的团队（这是非常幸运的前提，很多产品研发进度极其缓慢的原因之一就是在过程中不断在招人），团队的结构以架构师兼后台开�\�1�\� + 安卓1�\� + iOS开�\�1�\� + 产品经理1�\� + 前端开�\�1�\� + 设计�\�1名。你可能也发现了这些人员配备都是单点的，一旦有人生病或请假，某个职位就会缺失，项目进度就会拖后，所以我们大约配�\�2个浮动名额，也就是，初始团队大概�\�8名，我们假设团队平均工资�\�13000左右（憋惊讶，深圳需要这个数，还是比较低的…），需要给员工缴纳五险一金，详见下表（假设我们是老实善良的公司，公积金按最低标准缴纳）�\�\r\n	<p>\r\n		<img src=\"/Uploads/201604/5716f16a41e9a.jpg\" />\r\n	</p>\r\n</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-align:center;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">除工资的部分，还要平均为每个员工多缴�\� 3653元的五险一金支出，员工部分的支出是 �\�13000+3653�\�*8=133224�\�/月�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">好，有了团队，下一步要解决的是工作场所的问题，8人团队可以选择创业孵化器（前提是你能找到孵化器）或者中低端的办公场所（这类的办公场所，深圳大约是120�\�/㎡，大约100平米）。这里有必要稍微提以下孵化器，孵化器的租金会比较便宜（或者不要钱），在接纳创业团队之前一般会签署协议，需要以场地作为股权置换条件，或者是优先投资权，是否划算，得创业团队自己掂量。算上水电、物业，一个月15000左右算比较省了�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">有了场地和团队，接下来置换办公耗材、宽带之类的（假设电脑自己带），普通的人体工程学椅子价格在150元左右，如果不买工程学椅子也可以，用普通的椅子，加上桌子平摊成本，桌椅需�\�200左右的成本，这算一次性付出。拍脑袋�\�6000元可以搞定吧�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">唔，人、场地、作案工具齐活了，开始进入正题吧�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\"><br />\r\n</span> \r\n</p>\r\n<span style=\"color:inherit;\"><strong><em class=\"autonum\" style=\"color:inherit;\">1</em></strong></span>产品定位、扯皮、早期工作准备阶段�\�\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">做APP之前一般会有个老板，老板大概知道自己想要什么功能（对，老板一般不知道自己要做什么东西，需求是什么，产品定位是什么），这时候产品经理要出马了，跟老板各种扯皮、厘清需求、找产品定位，这里大概扯个两周，好说歹说会把产品的定位、一期的需求想清楚（期间架构师可以开始构思产品的技术架构了，未能正式开工）�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">产品定位以及早期的需求确定出来之后，需要想个产品的名字、需求调研、竞品调研分析、注册域名、购置服务器以及周边基础能力（如CDN存储、短信服务、消息推送等）、商标（未注册商标、很多团队就是吃了这个亏）、抢注域名、设计Logo，这里在老板不中途改变想法、变更产品需求和定位的前提下，最起码扯一周，这时候产品的原型、技术架构的雏形也出来了，基本可以进入真刀真枪的干活了。这一步假设域名不需要花大价钱购买，全部费用算起来拍脑袋10000�\�/�\� 可以搞定�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\"><br />\r\n</span> \r\n</p>\r\n<span style=\"color:inherit;\"><strong><em class=\"autonum\" style=\"color:inherit;\">2</em></strong></span>产品版本策划、架构设计阶段�\�\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">看似一切都准备就绪之后，产品开始整理需求，按照需求优先级规划版本。架构师按照产品的发展方向构想，开始着手进入开发环境、生产环境部署、基础代码研发阶段�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">很有必要提一下的是，做APP比较常见的两种功能实现方式有Native原生和Webview 方式，这两种方式的优劣不在本文的讨论范围，一般为了保证体验，以原生的方式为主，Webview的方式为辅。以原生的方式做开发，版本是尤为重要的。其一，APP开发完成之后，需要把上架到APP store（假设我们只上iOS和安卓），iOS 的APP Store 有冗长的应用审核周期，你必须提前把往后几个中小版本的功能规划好了才不至于在这个环节自乱阵脚；其二，你的APP安装到用户的手机上时你肯定希望他大部分时候运行的都是最新的版本，如果你的版本更新过于频繁，用户也会烦�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">看起来过程似乎非常顺利，产品经理把产品的思路厘清之后，开始准备产品V1.0 的规划�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">新产品从无到有常见的工作�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">产品官网，产品官网是产品、公司、团队的脸面，让用户进入之后能以最快的速度了解你的定位以及产品特性，也就是什么样的人在为解决什么样的问题，做着什么样的事情�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">用户协议。是的，如果用户要注册、使用你的产品，你得起草你的用户协议，跟律师或法务不断沟通调整�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">种子用户。嗯，你要思考你的第一批种子用户从哪里来，如何组织，怎么管理，他们是检验你产品的第一群人，对于验证你的产品定位、发现产品问题、提升产品体验来说至关重要�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">基础数据上报规划。你要知道产品一旦发布，在对用户行为一无所知的情况下，需要收集什么数据来优化、调整你的产品设计，思考你的产品方向�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">UI设计与交互标准制定。不能保证产品的UI以及交互一上线就有让用户觉得惊艳的效果，但是必须保证UI/交互在一致性上没有问题�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">后台管理系统。如论是查看数据还是内容管理，后台管理系统是你工作的有效辅助，也不能少�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">APP。这是你的产品的重中之重，密切观察跟踪�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">…�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">如果一切顺利，那么�\�3-6个月之后，你的APP第一版应该有了第一个雏形了�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\"><br />\r\n</span> \r\n</p>\r\n<span style=\"color:inherit;\"><strong><em class=\"autonum\" style=\"color:inherit;\">3</em></strong></span>内部测试、打磨阶�\�\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">在这个阶段，你要跟设计、研发、种子用户之间保持密切沟通，不断收集问题、发现问题、优化、解决问题，期间可能需要发�\�1-3个beta子版本。同时，你要想办法保持种子用户的活跃与配合的激情，这是一项艰巨的工作，谁做谁知道�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\"><br />\r\n</span> \r\n</p>\r\n<span style=\"color:inherit;\"><strong><em class=\"autonum\" style=\"color:inherit;\">4</em></strong></span>发布阶段\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">发布的时候，不算渠道宣传费用，不打广告，上线iOS APP Store 需要注册开发者账号，购买证书，也需要花费一定的费用，不多，也就99美元/年�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">如果你做得多一些，找安全团队帮你做安全评估，这里也要花上一些钱，这里就不算了。至于负载均衡、加速技术什么的，你的APP刚上线，应该用不上�\�</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">6个月的时间，算快，一个APP从无到有需要的费用大概这么算：</span> \r\n</p>\r\n<p>\r\n	人工费用�\� 133224�\�*6个月 �\� 80 w�\�\r\n</p>\r\n<p>\r\n	场地租金�\� 15000�\�*6个月 = 9w�\�\r\n</p>\r\n<p>\r\n	办公耗材+桌椅支出�\�1w�\�\r\n</p>\r\n<p>\r\n	服务器、域名、周边IT基础费用�\�2w�\�\r\n</p>\r\n<p>\r\n	大约算下来，不算营销费用，第一个版本，你需要准�\�100w�\�\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">是的，当有人问题做一个APP需要多少钱时，你可以回答一个不太复杂的APP，从无到有做出来，半年第一个版本出来，需�\�100万�\�</span> \r\n</p>','0','/Uploads/201603/56e8f7779a2e0.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=43','47','1451281907','1461121391','','0');
INSERT INTO `yourphp_article` VALUES ('44','22','2','hello','移动金融',';font-weight:bold','','','','互联网金融是传统金融行业与互联网相结合的新兴领域。掌上金融移动解决方案尤为重视对金融市场的应变能力，通过强大的移动互联技术，及智能化的数据分析，即时回应金融市场的细微变�\�...','<p class=\"MsoNormal\">\r\n	<b>移动金融<span>APP</span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	互联网金融是传统金融行业与互联网相结合的新兴领域。掌上金融移动解决方案尤为重视对金融市场的应变能力，通过强大的移动互联技术，及智能化的数据分析，即时回应金融市场的细微变化，以风险监控报告、风险应对计划、智能化投资策略组合方案、全球化金融服务方案、智能化理财等形式帮助用户在面对互联网金融的汹涌浪潮时游刃有余。移动互联与金融的强强联合，实现了金融产品与服务的再次创新�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	互联网金融模式下的支付方式以移动支付为基础�\� 互联网金融模式下，支付系统具有以下根本性特点：\r\n所有个人和机构都在中央银行的支付中心（超级网银）开账户（存款和证券登记�\�<span>;</span>证券、现金等金融资产的支付和转移通过移动互联网络进行（具体工具是手机�\�<span>iPad; </span>支付清算完全电子化，社会中无现钞流�\�<span>;</span>二级商业银行账户体系可能不再存在�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>核心目标<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span>P2P</span>网贷平台因为其投资门槛低、资金运转快、投资理财手续便捷、风险可控，对本金有所保障等优点获得了广大投资的关注。而澳环手机端<span>P2P</span>网贷功能强大易扩展、操作简单易维护、部署快捷成本低、安全稳定无风险、以小博大最增值�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	<b>&nbsp;</b><img src=\"/Uploads/201603/56e8fc348a5ba.png\" /> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>核心功能<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	手机理财：优先理财、投标入口、债权转让、新手区等等�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	投资管理：已经发布到前台的借款标�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	手机借贷：抵押标、信用标、秒标、转让标等借款标�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	消息推送：及时推送站内信息站内通知到手机�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	宣传管理：关于我们、公司动态�\�<span>p2p</span>平台保障、投资攻略等�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	公司介绍：公司简介、团队介绍、地址、电话、邮箱等等都是用户想要了解的，是必不可少的�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	资金托管：第三方资金托管管理�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	基础信息管理：银行设置、区域管理、交易类型管理、标类型管理、抵押物管理等等�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	计算器：根据投资金额、利率、期限等计算收益�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	黑名单：用户黑名单信息管理�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	帮助中心：一个不可缺少的帮助中心，帮助一些不会操作的用户�\�<span></span> \r\n</p>','0','/Uploads/201603/56e8fc348a5ba.png','1','1','1','','0','0','/index.php?m=Article&a=show&id=44','112','1458109583','1458205011','','0');
INSERT INTO `yourphp_article` VALUES ('45','22','2','hello','教育培训',';font-weight:bold','','','','据权威部门统计我国手机上网的网民已超�\�9亿，远超过传统PC互联网的用户规模，而且这一数字还在进一步扩大，因为手持终端设备越来越智能化，而且便于携带，越...','<p>\r\n	<span style=\"font-size:18px;\"><strong>移动教育app解决方案</strong></span> \r\n</p>\r\n<p>\r\n	&nbsp;<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"font-size:14px;\">据权威部门统计我国手机上网的网民已超�\�9亿，远超过传统PC互联网的用户规模，而且这一数字还在进一步扩大，因为手持终端设备越来越智能化，而且便于携带，越来越多的人开始将学习的课堂转移到手机</span><span style=\"text-indent:24pt;\"><span style=\"font-size:14px;\">上随时随�\�</span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\">学习�\�</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<strong>核心目标</strong> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"text-indent:24pt;\"></span><span style=\"font-size:14px;text-indent:24pt;\">灵活多变的教育方�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">先进高校的学习理�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">精准定位的潜在客�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">减少教育资源成本</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">学习效果完全掌握</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">个性定制教育方�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">&nbsp;</span><strong><span style=\"font-size:16px;\">核心价�\�</span></strong> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">给教育机构带来的价�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">通过app全方位展示教育机构，课程信息、教师信息，满足用户对各种信息的实时查询，集学员注册、登录、课程列表浏览、选课、模拟考试、报考资讯、缴费、学习、查询等功能于一体�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">给学员带来的价�\�</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">通过APP可以最大化利用碎片化的时间来学习；课程种类多，内容精彩，边走边学；与互联网结婚，让学习变得快乐、容易；与教师深度互动，针对性解决问题�\�</span> \r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp;<span style=\"font-size:16px;\">&nbsp;</span><strong>&nbsp;核心功能</strong> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;<span style=\"font-family:SimSun;\"> </span><span style=\"font-size:14px;font-family:SimSun;\">&nbsp;</span><span style=\"font-size:14px;font-family:SimSun;\">1、在线交流；2、教学视频；3、线上课件；4、预约上课；5、效果分享；6、职能岗位介绍�\�</span><span style=\"font-size:14px;font-family:SimSun;\"></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"><span style=\"font-size:14px;font-family:SimSun;\">&nbsp; &nbsp;&nbsp;</span></span> \r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56e9125b96ab7.png\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56e9138d13f7c.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=45','129','1458114669','1458273646','','0');
INSERT INTO `yourphp_article` VALUES ('46','10','2','hello','互联网家装迎来市场的暴风�\�','','','','','随着中国城镇化步伐加快，每年有大量农业人口转化为城镇人口，购房需求持续增长，为住宅装修及家居美化带来丰富的需求。数据显示，2015年住宅美化市场规模达5万亿。其中主�\�1万多亿，家具1万多亿，装修(含辅�\�)1.8�\�...','<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">随着中国城镇化步伐加快，每年有大量农业人口转化为城镇人口，购房需求持续增长，为住宅装修及家居美化带来丰富的需求�\�</span> \r\n</p>\r\n<div>\r\n	<strong><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\"> \r\n	<p>\r\n		<strong><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\"> </span></strong> \r\n	</p>\r\n	<p>\r\n		<strong><img src=\"/Uploads/201603/56e91736c7a1f.jpg\" /> </strong> \r\n	</p>\r\n<strong>数据显示�\�2015年住宅美化市场规模达5万亿</strong></span><span style=\"font-weight:normal;color:#3E3E3E;background-color:#FFFFFF;\">。其中主�\�1万多亿，家具1万多亿，装修(含辅�\�)1.8万亿，大家电6千多亿，市场巨大，但市场格局的分散、供应链的低效，清晰的用户痛点，给互联网家装企业带来了机会�\�</span> \r\n	<p>\r\n		<br />\r\n	</p>\r\n</strong> \r\n</div>\r\n<p>\r\n	<strong><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">2015年被称为互联网家装元�\�</span></strong><span style=\"color:#3E3E3E;font-size:14px;font-family:微软雅黑, sans-serif;\">，一时间，诞生了许多“互联网家装”平台，其中不乏优秀者�\�</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#3E3E3E;font-family:微软雅黑, sans-serif;font-size:14px;background-color:#FFFFFF;\"> </span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp;大致有两种模式：</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<strong><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">O2O模式</span></strong><span style=\"font-size:14px;font-family:微软雅黑, sans-serif;\">，支持到“店”选购，包括卖场门店、独立店，甚至是化整为零的“家庭店”，除了单品搜索与LBS外，更重要的是，由于这些品类是典型的议价品类，最终价格掌握在促销员手里，因此将促销员与用户直接连接，形成C2C模式的O2O�\�</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">&nbsp;</span><strong><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">C2M模式</span></strong><span style=\"font-family:微软雅黑, sans-serif;font-size:14px;\">，则直接连接用户与品牌工厂生产环节，做到真正的小批量定制、大批量预售，这才是真正的互联网+模式，才真正重构供应链。但这需要对零售的深刻把握�\�</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56e91736c7a1f.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=46','46','1452932411','1458180395','','0');
INSERT INTO `yourphp_article` VALUES ('47','24','2','hello','掌中�\�','','','','','互联网保险销售服务平台。以\"简单保险，快乐生活\"为运营理念，打造各�\�\"小而美、专而精\"的保险精品，让保险服务更简单、更透明、更实用�\�','瀚华金控旗下互联网保险销售服务平台。以\"简单保险，快乐生活\"为运营理念，打造各�\�\"小而美、专而精\"的保险精品，让保险服务更简单、更透明、更实用�\�','0','/Uploads/201603/56e9240cb3611.png','0','1','1','','0','0','','0','1458119706','1458119706','','0');
INSERT INTO `yourphp_article` VALUES ('48','28','2','hello','金百�\�','','','','','以经营正宗北京烤鸭、精品京菜为主体，辅以各地特色菜的推陈出新，形成绿色健康“家常菜”研发管理体系，创造出了全新的社区餐饮模式，发展至今已成为京城百姓居家消费的首选餐厅�\�','<span style=\"color:#333333;font-family:simsun;font-size:14px;text-indent:28px;background-color:#FFFFFF;\">以经营正宗北京烤鸭、精品京菜为主体，辅以各地特色菜的推陈出新，形成绿色健康“家常菜”研发管理体系，创造出了全新的社区餐饮模式，发展至今已成为京城百姓居家消费的首选餐厅�\�</span>','0','/Uploads/201603/56e92ad81557b.png','0','1','1','','0','0','','0','1458121542','1458121542','','0');
INSERT INTO `yourphp_article` VALUES ('49','3','2','hello','思远高创成功中标某上市集团公司旗下P2P网贷平台开发项�\�','','思远高创  上市公司   p2p平台','','','思远高创成功中标某上市集团公司旗下P2P网贷平台开发项�\�','<span style=\"color:#686868;font-family:Simsun;background-color:#FFFFFF;\">思远高创成功中标某上市集团公司旗下P2P网贷平台开发项�\�</span>','0','/Uploads/201603/56ea0fdb94270.jpeg','0','1','1','','0','0','/index.php?m=Article&a=show&id=49','39','1428544876','1458180140','','0');
INSERT INTO `yourphp_article` VALUES ('50','3','2','hello','思远高创为联想成功实施Windchill项目','','','','','思远高创为联想成功实施Windchill项目�\�','<p>\r\n	<span style=\"color:#686868;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">思远高创为联想成功实施Windchill项目�\�</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#686868;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\"><br />\r\n</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#686868;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	<p>\r\n		<img src=\"/Uploads/201603/56ea126879350.jpg\" />\r\n	</p>\r\n<br />\r\n</span>\r\n</p>','0','/Uploads/201603/56ea126879350.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=50','36','1331777378','1458180794','','0');
INSERT INTO `yourphp_article` VALUES ('51','3','2','hello','思远高创携手深圳迈瑞医疗','','','','','思远高创成功签约迈瑞生物医疗电子股份有限公司数据库迁移整合项�\�','<span style=\"color:#686868;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">思远高创成功签约迈瑞生物医疗电子股份有限公司数据库迁移整合项�\�\r\n<p>\r\n	<img src=\"/Uploads/201603/56ea158880f90.jpg\" /> \r\n</p>\r\n</span>','0','/Uploads/201603/56ea141cd2abe.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=51','67','1369016765','1458181611','','0');
INSERT INTO `yourphp_article` VALUES ('52','3','2','hello','思远高创参与华宇软件MIS系统的开�\�','','','','','MIS系统开发 技术特点： 华宇拥有自主开发的应用开发平台Artery以及应用开发框架。通过Artery应用平台，将具有业务意义的各应用模块封装成为业务组件，从而可以灵活地在服务总线上进行动态部署、组装；�\�...','<strong>MIS系统开�\�&nbsp;</strong><br />\r\n<span style=\"color:#686868;font-family:Simsun;background-color:#FFFFFF;\"> \r\n<p>\r\n	<img src=\"/Uploads/201603/56ea177c06c48.jpg\" /> \r\n</p>\r\n技术特点：&nbsp;</span><br />\r\n<span style=\"color:#686868;font-family:Simsun;background-color:#FFFFFF;\">华宇拥有自主开发的应用开发平台Artery以及应用开发框架。通过Artery应用平台，将具有业务意义的各应用模块封装成为业务组件，从而可以灵活地在服务总线上进行动态部署、组装；工作流引擎支持业务流程可视化定义、流程回退、流程监控等功能，提供了业务组件的动态配置能力，从而实现了业务流程的可视化装配及重构�\�&nbsp;</span><br />\r\n<span style=\"color:#686868;font-family:Simsun;background-color:#FFFFFF;\">项目难点�\�&nbsp;</span><br />\r\n<span style=\"color:#686868;font-family:Simsun;background-color:#FFFFFF;\">1.适应客户对人员（技术）需求的紧急性和变换�\�&nbsp;</span><br />\r\n<span style=\"color:#686868;font-family:Simsun;background-color:#FFFFFF;\">2.迅速、有效的招聘所需外派技术人员的难度&nbsp;</span><br />\r\n<span style=\"color:#686868;font-family:Simsun;background-color:#FFFFFF;\">3.有效管理、激励和培训外派技术人员的难度</span>','0','/Uploads/201603/56ea1750179ac.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=52','28','1397961248','1458182082','','0');
INSERT INTO `yourphp_article` VALUES ('53','3','2','hello','思远高创参与中石化采购电商平台建�\�',';font-weight:bold','','','',' 适宜多采购类型、多采购方式、多采购层级、百万以上采购品种，提供规范化流程、实时操作、智能化引导和方便快捷的采购交易系统。并运用大数据分析等先进技术为企业提供采购信息分析、物流和采购过程监控等延�\�...','<p>\r\n	<span style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">&nbsp;适宜多采购类型、多采购方式、多采购层级、百万以上采购品种，提供规范化流程、实时操作、智能化引导和方便快捷的采购交易系统。并运用大数据分析等先进技术为企业提供采购信息分析、物流和采购过程监控等延伸服务�\�</span><span style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\"> </span> \r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56ea1ef80ac81.jpg\" /> \r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\"> </span> \r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>长城e采：</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 长城电商依托中国石化14年电子化采购成果，打造面向全社会的、拥有完全自主知识产权的采购交易电子商务平台——“长城e采”�\�\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>业务架构�\�</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 长城e采融入先进的采购管理理念、规范的采购操作流程、有效的采购监控和丰富的采购信息资源。支持采购企业、供应商、招标代理机构和物流商开展采购交易、报价投标、电子招标和物流跟踪等业务操作�\�\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>业务流程�\�</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 长城e采涵盖采购交易的寻源准备、寻源过程、寻源结果、合同形成和合同执行五个阶段�\�\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>采购方式�\�</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 长城e采提供招投标、框架协议、竞价、询比价等多种采购方式�\�\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>采购形式�\�</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 长城e采支持“一单一签”的一般合同和“集合批量”的框架协议采购形式�\�\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>采购类型�\�</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 长城e采支持集中采购、委托采购、联合采购和自行采购等多种采购类型�\�\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>业务角色�\�</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 长城e采提供计划、采购、执行、审批、监控等多种采购角色功能�\�\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>采购层级�\�</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 长城e采支持企业一级、二级、三级……多采购层级�\�\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>安全管理�\�<br />\r\n</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 长城e采从业务数据安全、数据管理安全、系统运行安全三方面保证企业采购业务的安全性�\�\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>平台特点�\�<br />\r\n</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>多角色多层级流程化操作：</strong>满足企业分段管理要求、支持多层级的企业设置、提供标准的采购业务流程，可根据企业管理需求，灵活配置角色和层级�\�<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>阳光采购全程监控�\�</strong>操作过程公开、环节受控，信息全程记录、永久追溯�\�<br />\r\n&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp; 简单快捷可视操作：</strong>平台提供业务待办、流程引导和快捷图标等功能，界面友好，操作便捷�\�<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>灵活设置功能可配�\�</strong>通过业务参数、审批流程、功能和数据权限的配置，满足不同企业的个性化业务需求�\�<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>多系统有效集成：</strong>支持Webservisce和数据库链接等多种接口方式，与企业采购业务相关系统紧密集成�\�<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>高效操作费用降低�\�</strong>打破采购距离限制、采购操作瞬间完成、提高采购效率、降低采购成本�\�<br />\r\n&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp; 零成本多项目应用�\�</strong>采购企业全免费使用核心交易功能，分享优质供应商资源和优势企业采购成果，共享采购交易分析数据�\�\r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56ea1e77a2d90.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=53','44','1419390371','1458184077','','0');
INSERT INTO `yourphp_article` VALUES ('54','26','2','hello','长城e�\�','','','','','长城电商依托中国石化14年电子化采购成果，打造面向全社会的、拥有完全自主知识产权的采购交易电子商务平台——“长城e采”�\�','<span style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">长城电商依托中国石化14年电子化采购成果，打造面向全社会的、拥有完全自主知识产权的采购交易电子商务平台——“长城e采”�\�</span>','0','/Uploads/201603/56ea1ef80ac81.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=54','0','1458270823','1458270949','','0');
INSERT INTO `yourphp_article` VALUES ('55','10','2','hello','小扎与马云都在做VR：创业者如何避免成为炮灰？','','','','','�\�/王新喜日前，小扎在北京雾霾中晨跑之后，在北京参加了“中国发展高层论�\�2016年会”。参会的包括马云、雷军以及Uber创始人特拉维斯·卡兰尼克。会上，小扎与马云一起聊起了VR。扎克伯克表示，今年是消费级VR年，O...','<div class=\"article-img-box\" style=\"text-align:center;color:#333333;font-family:Arial, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中�\� w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中�\� w3\', STXihei, 华文细黑, 微软雅黑, SimSun, 宋体, Heiti, 黑体, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<img src=\"http://images.huxiu.com/article/cover/201603/03/115102920074.jpg?imageView2/1/w/800/h/450/imageMogr2/strip/interlace/1/quality/85/format/jpg\" alt=\"小扎与马云都在做VR：创业者如何避免成为炮灰？\" style=\"width:auto;\" /> \r\n</div>\r\n<div class=\"article-content-wrap\" style=\"font-size:16px;color:#333333;font-family:Arial, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中�\� w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中�\� w3\', STXihei, 华文细黑, 微软雅黑, SimSun, 宋体, Heiti, 黑体, sans-serif;background-color:#FFFFFF;\">\r\n	<p>\r\n		<span class=\"text-remarks\" style=\"color:#999999;\">�\�/王新�\�</span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		日前，小扎在北京雾霾中晨跑之后，在北京参加了“中国发展高层论�\�2016年会”。参会的包括马云、雷军以及Uber创始人特拉维斯·卡兰尼克。会上，小扎与马云一起聊起了VR。扎克伯克表示，今年是消费级VR年，Oculus Rift也将今年上市，并预测五到十年之后，VR手机也会成为市场主流。马云也表示愿意帮小扎卖Oculus�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		Facebook之外，索尼、三星、HTC、等也有各自的VR产品布局。HTC更是将大赌注都押在了VR，希望VR能帮助HTC翻盘赢得下一场风口。在国内，阿里日前刚刚宣布成立VR实验室，并首次对外透露集团VR战略，并启动Buy＋计划引领未来购物体验，搭建VR商业生态。甚至视频网站也在纷纷打VR牌，比如爱奇艺上线VR频道，部分内容可以用VR设备观看。芒果TV开始尝试将旗下综艺节目通过VR技术播放，并上线了《我是歌手》VR专区。许多地方政府也颇具前瞻性，比如南昌市长郭安在十二届全国人大四次会议江西团媒体开放日上表示：南昌将启动全球首个城市级虚拟现实产业规划，南昌有信心打造千亿VR产业�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		VR的火爆趋势也在推动更多创业者涌入�\�<span style=\"font-weight:700;\">创业者的想法也很简单，打造爆款或者被巨头收购</span>。在国内的虚拟现实市场上，在VR头盔方面有银河数娱、小鸟看、深圳虚拟现实科技<span class=\"text-remarks\" style=\"color:#999999;\">�\�3 Glasses�\�</span>等公司；一体机、VR眼镜产品领域有睿悦信息Nibiru、焰火工坊等；在内容领域，有暴风魔镜App、赞那度“旅行VR”；周边设备领域，也出现了Virtuix的Omni 体感跑步机、蚁视体感枪、锋时互动手势动作捕捉控制器“微动Vidoo”等公司�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		但我们看到，国内VR的创业却并没有惊艳的产品，而更多的产品则带来廉价的直觉印象，有许多仅需30元就能用透镜和硬纸板就做出来的简易VR设备产品。而暴风就一直将旗下VR设备魔镜定在99元的价位，各初创公司的推出的眼镜盒子的售价普遍在300元以下�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		笔者此前曾�\�<a href=\"http://www.huxiu.com/article/137272/1.html?f=member_article\" target=\"_blank\">《VR是个坑：创业者急着入局或成巨头炮灰�\�</a>一文指出，VR创业有诸多难点：技术壁垒高，资金投入与时间研发周期长、虚拟现实硬件领域产业链并未完善、硬件产品技术与沉浸式的体验缺失、内容缺乏、市场需求与盈利模式尚待挖掘。总之就是创业时机尚不成熟�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		有句话是说，时机不对，越努力越尴尬�\�<span style=\"font-weight:700;\">VR面临的行业性难题首先是VR内容缺失�\�</span>比如说，VR起步阶段最先切入的领域应该是游戏和影视内容领域，而在游戏领域，Oculus、三星、HTC等科技巨头在内容方面的作品产出依然乏力�\� 国外YouTube，国内爱奇艺、芒果TV，都在试水VR影视内容，目前很难说有什么高质量的VR视频。即便是拥有强大娱乐内容产业支撑和技术支撑的迪斯尼与索尼等，依然不见有几款VR游戏作品问世，索尼在Project Morpheus推出2年来，也仅制作了20款Dome游戏作品�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<span style=\"font-weight:700;\">其次是行业标准没有统一，技术不成熟�\�</span>比如国内不少技术储备不足的大公司更倾向于通过资本手段进入VR，在整体技术方面，正如某业内人士说的，整个VR行业在输出设备端的分辨率、显示频率、跟踪精度、视场角、重量等方面的技术指标还不够高。另外，目前包括小米腾讯乐视等巨头虽然在VR都有布局，但在硬件、内容还是底层都尚未系统化，这也源于行业标准尚未确定，虽然微软、Facebook、索尼、三星等企业在这一领域已经耕耘较长时间，但基于整个VR产业链的标准的推进依然乏力�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		这也缘于是VR产业上下游生态链尚未成型。我们知道，一个产业的形成，需要分散在产业链各处的企业形成完整统一的生态系统，才能够有足够的产能来支撑VR产业千万级别的出货量。但在目前而言，基于VR产业的电子元器件、屏幕、镜片、处理器、芯片，核心传感器、零部件等等核心组件厂家的技术储备尚有欠缺。前面提到，国内国际文化传媒、电影视频，游戏娱乐的内容端产出能力依旧欠缺�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<span style=\"font-weight:700;\">分散在各地的并不完整的产业链也并不足以支撑这个产业爆发期迅速到来�\�</span>这也是为什么国内产出的VR产品多走低端路子的原因，因为技术与产业链的不成熟，还不足以支撑VR产品能够有资本和技术走高端路线。所以说�\�<span style=\"font-weight:700;\">没人会质疑VR能重塑一个庞大的产业，而需要考虑的是，什么时候这个时间节点会到来�\�</span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		如果说，创业者盲目切入VR领域可能会成为巨头炮灰。那么笔者今天要谈的是，创业者若想不成为炮灰，应该怎么做？\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p class=\"text-big-title\" style=\"font-size:20px;font-weight:700;color:#A41D1D;\">\r\n		卡准需求用户，在技术与内容端寻求核心掌控力\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		在国内，多数创业者以做手机的心态在做VR，但VR产业链与手机产业链还是有所区别�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		手机是一种刚需性产品，每个人都是潜在用户，可以容纳一个巨大的市场，但<span style=\"font-weight:700;\">VR更多的是消费升级时代的娱乐产品，VR产品主打多数与高端娱乐需求相�\�</span>。所以在这个需求前提下，VR的用户定位初期阶段应该是中产阶层或者白领阶层，而不是一种性价比或者便宜消费电子产品的定位。因为在高端品牌下压的时候，类似Oculus、三星等企业领跑优势明显，并且其产品定价也不高，这类巨头品牌价格下压时对创业者会是碾压性的优势。而VR如果是消费升级时代的产品定位，那么市场上更需要惊艳的VR产品，产品本身更需要追求品质和用户体验上的沉浸感�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		因此，VR产品当前正处于技术红利与内容红利的前夜，也就是说，做VR，要么是技术上具备优势，比如说有自身的硬件方案，保证全面的VR游戏体验，或者说能够从产品端提高性能，解决发热、眩晕感、续航�\�3D手势交互、移动场景等诸多问题。另外，要么是内容具备优势，能够做VR某一特定领域的内容供应商，在行业不成熟内容稀缺期间迅速建立品牌，建立某一特定领域的内容资源优势。要么在技术与内容都有优势，如果仅仅是因为风口就在那儿，所以必须要去踩，抱着这心理的多半会成为巨头战车推进后的炮灰�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p class=\"text-big-title\" style=\"font-size:20px;font-weight:700;color:#A41D1D;\">\r\n		切准VR的场景定位与盈利模式\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		一般来说，如果需要迅速普及类的科技产品，离不开应用场景。VR的应用场景是室内场景还是室外移动场景？比如说，手机之所以能称之为刚需型产品就在其移动性，即无时无刻随时随地都可以用，而如果消费者买了个VR头盔类产品，塞在背包里，上街无聊偶尔拿出来体验一把，总是不太现实吧。比如说大热门的手机游戏《愤怒的小鸟》推出VR版了，VR 版的视角转移到了小鸟身后，玩家需佩戴 Samsung Gear VR 头盔通过移动头部来控制小鸟顺着光圈飞行到终点，这种玩法的感觉过于强烈，需要游戏者带上VR头盔全神贯注地操控，因此不具备随时随地体验的操作基础，那么这决定着VR游戏类产品可能是不具备移动场景的属性�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		正如有知乎用户说�\�<span style=\"font-weight:700;\">你可以适应拿着手机低着头看的世界，但你可以接受每个人带个大馒头在头上的世界么？</span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		所以说�\�<span style=\"font-weight:700;\">VR产品首先要解决的问题是移动场景属性以及如何定�\�</span>，用户在什么时候需要这个玩具，怎么从技术上推动手势交互技术成熟，让VR脱离游戏机的定位走入寻常百姓家，然后从这个角度来开始做产品，如果没有解决场景问题，它就是一个在娱乐场所里面的游戏类的玩具�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<span style=\"font-weight:700;\">另外是盈利模式问题，VR硬件创业者除了卖硬件，内容制作者除了卖内容，还有更好的打法吗？</span>至少目前还没有。对于创业者而言，从一开始切入VR领域，就应该想着长远布局，如何寻求盈利。一般来说，这种迅速火爆的领域往往也会在迟迟看不到产出的同时迅速被投资人抛弃。比如早�\�2014年，智能硬件的概念喧嚣尘上，资本市场喊着智能硬件的元年来了，各大互联网公司与创业者在智能硬件上频频布局，但我们发现到如今，几乎没有一件可以风靡一时被人津津乐道而被称之为爆款的产品。当时疯狂涌入的智能硬件创业玩家目前还剩多少？所以说�\�<span style=\"font-weight:700;\">所谓的元年，只是资本市场周期性需要的新概念�\�</span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p class=\"text-big-title\" style=\"font-size:20px;font-weight:700;color:#A41D1D;\">\r\n		围绕VR产业链上下游其中的一环切入，将核心优势化成产业链不可或缺的一�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		相信很多人对关于犹太人与中国人创业的故事耳熟能详。一个犹太人来到小镇上开了个加油站；第二个犹太人来了，想到加油站的客户需要吃饭，所以开了餐馆；第三个犹太人来了开了个酒店；后面的接着开了超市等等，于是产业链各端厂商形成互补共赢的关系，一个经济繁荣欣欣向荣的小镇就这样形成了。而一个中国人来到小镇上开了个加油站，生意很火；第二个中国人来了，发现这个人的加油站生意火的让人羡慕嫉妒恨，于是也开了一个加油站；第三个、第四，第五个中国人过来都干同样的事，最后恶性竞争打折促销互相倾轧，结果加油站纷纷倒闭，小镇还是原来的样子�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		VR创业领域目前就差不多是这样，大部分在做VR眼镜与头盔。比如灵镜CEO去年就表示，一年前相关做VR眼镜的公司不�\�10家，到去年年底，这个数字翻了近乎10倍�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		笔者在这里想谈的是�\�<span style=\"font-weight:700;\">VR产业未来若会爆发，那么必然有平台型的巨头公司出现</span>，那么分散在产业链各处的VR硬件或者零部件厂商或者内容厂商必然会享受这一波红利，比如在智能手机领域，苹果带动了富士康与台积电等组装厂商与芯片厂商的繁荣。VR布局应该是同样的道理，创业者应该想清楚自己的优势在哪，有针对性的在核心优势点卡位布局�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		比如说游戏动漫类内容制作公司可以考虑分散一部分人力资源聚焦于VR游戏与动漫内容的前期制作，芯片厂商可以考虑如何提升自身技术比�\�4K的解码能力支持高解析度的游戏与视频，逐步从基因优势上积淀自身底蕴继而达成在VR领域的破局的能力。做投影光学系统设计的，可以考虑适当增加研发投入，以便于在未来可以做到适用于VR电影的棱镜与球面镜的光学零部件技术的领先优势。VR电影的未来可能是幕布是环绕在用户头上�\�360°空间，如何从这个技术点切入来给用户带来绝佳的视听感受也是创业者需要考虑的，传感器厂商应该意识到自身在VR产业中的核心价值，应有意识的去研发推动更好的人机交互的体验，这是实现深度传感的基础�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		从这个意义上说，<span style=\"font-weight:700;\">VR创业者应该要具有“产业公地”的思路，寻求在人无我有的产业环节切入，解决某一个环节的问题</span>，即围绕产业链上下游其中的一环切入产品，推动产业链集群发展，而不是一窝蜂去做同样的事情，一上来就都去做个头盔或眼镜，这样的结果必然是炮灰。扎克伯格此前与马云聊天说到：我通常会说，你要想着解决问题，而不是想着去开一家公司，很多人在没有想到解决什么样的问题之前就开了公司�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		也就是说，VR创业者需要考虑的是整条VR产业链是如何运作的，自身的优势在哪里，我处在整条产业链的哪一个环节，未来随着整个VR产业链的成熟，我如何才可能成为当前环节不可或缺的一部分�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p class=\"text-big-title\" style=\"font-size:20px;font-weight:700;color:#A41D1D;\">\r\n		创业者也切忌学巨头的平台型生态玩法：学做关键资源供应�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		最后建议创业者也切忌学巨头的平台型玩法。因�\�<span style=\"font-weight:700;\">巨头型公司做VR的目的与创业者的起步就不一样，巨头更希望借助VR的概念试水一轮，看能不能在自有的平台、生态上加上点新的概念与玩法，将自身的资源与平台优势平移到这个领域�\�</span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		比如说，目前来看，facebook想打造的是VR在硬�\�+内容+应用商店分发+社交的生态圈，腾讯做VR想依托自身的用户优势，做VR内容与渠道的分发老大，或者说进一步开拓游戏领域的盈利布局。乐视与小米是想借VR充实生态打法，借此延伸自身的产业链布局，扩展更多的想象空间。HTC则急需新的业务来帮助自己转型或者探索新的盈利点，转移投资人与业界的视线�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		对巨头而言，VR是辅业，成功了固然通过新的业务给资本市场带来想象空间，即便失败，也只是一次试错，核心业务并无损伤。但对创业者而言，VR是主业务，所以必须全力以赴，从一开始，就要从战略高度思考，从垂直领域切入，以做精品的思路入手，并考虑清楚未来产品的规划与商业模式�\�\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		核心思路是在VR领域的某个核心环节能够解决关键技术以及用户体验的痛点与特定的应用场景，并能在整个产业链技术发展与配套跟进时，能提供关键的内容或技术，那么，当你在产业发展处于上升的风口之时，往往就能成为各方VR巨头都需要抢占的关键资源或技术内容供应商，在这个时候，你便开始掌控话语权，如果能做到这一步，VR的蛋糕必然会有你的一杯羹�\�\r\n	</p>\r\n</div>','0','/Uploads/201603/56ef978d60ae4.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=55','32','1458542485','1458542509','','0');
INSERT INTO `yourphp_article` VALUES ('56','10','2','hello','3D设计软件领域，谁将会是下一个APPLE','','','','','如今家装类的在线设计软件层出不穷，多�\�3D为卖点。然而经过了一段时间的角逐，这些软件似乎并未分出高下，更未赢的消费者的狂热与青睐。为何包括Autodesk这类软件巨头都未挑起消费者的兴趣?追其源头究竟是软件本�\�...','<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	如今家装类的在线设计软件层出不穷，多�\�3D为卖点。然而经过了一段时间的角逐，这些软件似乎并未分出高下，更未赢的消费者的狂热与青睐。为何包括Autodesk这类软件巨头都未挑起消费者的兴趣?追其源头究竟是软件本身功能性、易使用性未达到消费者期�\�?抑或方案落地太难?才使�\�3D在线设计软件似乎仍停留在“明日将至的生活方式”�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　正在改变世界的法国达索系统联手BDHOME，也将在大中华地区推出在�\�3D室内设计软件。全球软件巨头联手一网筑家的家装巨擘，确有实力扭转当�\�3D家装设计软件的不振局面、一并成为最大赢家。这种看法的信心源于多个方面，一大主因便是达�\�3D设计软件本身的高度�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　本文将对比时�\�5款知名的3D设计软件：HOMEBYME(达索以及BDHOME)、美家达�\�(AutoDesk)、酷家乐、三维家、爱福窝。从8个方面进行比较以上软件，可立即判别其为真3D或伪3D、究竟好用与否，达索3D软件本身的高度更是显而易见�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　�\�3D视角�\�3D游览�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　软件视角可分为两类：720°上下左右均可连续查看的视角与�\�45°为一个角度的360°视角。HOMEBYME与美家达人均为货真价实的3D视角，可720°连续转动;而三维家、酷家乐与爱福窝只能选择每个45°角度查看，即有限�\�8个角度查看�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　3D游览：即�\�3D模式下查看设计是否为3D。实际上，爱福窝�\�3D游览并非3D，三维家只能逐一房间查看�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　<img src=\"http://n.sinaimg.cn/translate/20151102/5Rz0-fxkhcis0372243.jpg\" width=\"530\" height=\"171\" /> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　综上，HOMEBYME(达索以及BDHOME)与美家达人在3D视角�\�3D游览两项合格，是�\�3D�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　②自动调整布局�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　指摆放家具时，软件是否能避免重叠或穿越墙壁并使家具吸附墙面。HOMEBYME、爱福窝两款软件具有自动布局的功能，但爱福窝缺乏正确的规则，会发生穿越到门外的情况。其他三款软件不具备自动布局，需要手动细心调整�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　<img src=\"http://n.sinaimg.cn/translate/20151102/veI1-fxkhcey3502805.jpg\" width=\"496\" height=\"369\" /> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　③友好显�\� / 多层楼：\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　指查看方案时隐藏挡住视线的正面墙，有利于看清方案更方便调整布局。HOMEBYME、酷家乐不显示正面墙;美家达人与爱福窝将正面墙透明化，但美家达人在3D模式不可摆放家具;酷家乐的部分墙面为白色无透视，需逐个房间查看�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　多楼层：顾名思义是否可设计多楼层的方案。目前仅HOMEBYME(达索以及BDHOME)与美家达人可以设计多楼层方案�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　<img src=\"http://n.sinaimg.cn/translate/20151102/xaIU-fxkhckf7812374.jpg\" width=\"307\" height=\"263\" /> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　④家具交互：\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　预测产品的使用是否相互影响，例如可以打开窗户或橱柜门。五款软件中只有HOMEBYME(达索以及BDHOME)做到了家具的交互功能�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　<img src=\"http://n.sinaimg.cn/translate/20151102/suau-fxkhcey3502807.jpg\" width=\"530\" height=\"223\" /> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　⑤对特殊房间专业布局�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　厨房、卫浴、衣帽间非常注重专业的布局方案，五款软件中只有HOMEBYME(达索以及BDHOME)具有应用专业规则。究竟什么是专业布局?下图以某品牌厨房为例，选择房间后会生成各类布局方案，能省去自行摆放的麻烦，简便地查看各类摆放效果�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　<img src=\"http://n.sinaimg.cn/translate/20151102/_YFM-fxkhcki4589545.jpg\" width=\"530\" height=\"216\" /> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　⑥可变家具：\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　当我们有足够的空间，可使用更长的橱柜，只需拉长家具尺寸，家具自动增加抽屉的数量或尺寸�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　<img src=\"http://n.sinaimg.cn/translate/20151102/CLPa-fxkhckf7812376.jpg\" width=\"530\" height=\"217\" /> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　⑦渲�\� Ray Tracing�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　即生成设计方案效果图，任何一�\�3D软件都会有渲染功能，但其渲染速度与效果各不相同，而渲染速度与效果至关重要且差别巨大�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　⑧用户端�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　用户端可分为：网页端 、移动端、Pro门店三类，其中Pro版本主要可同专家在门店一起调整使用�\�5款软件都具有网页端，其中HOMEBYME(达索以及BDHOME)、美家达�\� (AutoDesk)、酷家乐也有移动�\�;Pro门店只有3DVia提供�\�\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　<img src=\"http://n.sinaimg.cn/translate/20151102/FTuj-fxkhckf7812378.jpg\" width=\"370\" height=\"258\" /> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	　　综合以上功能指标，HOMEBYME(达索以及BDHOME)�\�3D软件的重要功能上都有明显优势，这款成熟的软件的蓄势待发，值得期许。未来早已发生，只是尚未普及�\�\r\n</p>','0','/Uploads/201603/56efbda672da1.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=56','36','1456296615','1458552238','','0');
INSERT INTO `yourphp_article` VALUES ('57','22','2','hello','3D服装设计','','','','','为了解决服装行业用户退货率居高不下（不合身，合身了穿上去不好看，色差）的问题，做到平台扁平化、设计国际化、生产本地化、服装定制化及价格平民化的目标。核心目�\�1�\�3D试衣镜和三维人体扫描设备规划  &nbs...','为了解决服装行业用户退货率居高不下（不合身，合身了穿上去不好看，色差）的问题，做到平台扁平化、设计国际化、生产本地化、服装定制化及价格平民化的目标�\�<br />\r\n<br />\r\n核心目标<br />\r\n1�\�3D试衣镜和三维人体扫描设备规划<br />\r\n&nbsp; &nbsp;实时监控所有设备的运行状态，并自动预�\�<br />\r\n&nbsp; &nbsp;线下与线下平台数据共享与实时响应<br />\r\n2、线�\�3D试衣展示规划<br />\r\n&nbsp; &nbsp;根据真人人体数据做自适应匹配<br />\r\n&nbsp; &nbsp;360度无死角展示<br />\r\n&nbsp; &nbsp;用户可根据自己的喜好，随时调整相关衣服的尺寸、配饰、布料等数据<br />\r\n&nbsp; &nbsp;用户随时可调整自己的人体数据<br />\r\n&nbsp; &nbsp;用户可随时进行头像设定，快照，分享，一键试穿等功能<br />\r\n3、电商平台搭�\�<br />\r\n&nbsp; &nbsp;支持普通电商该有的平台化功能（如商品上传，优惠规则制定，数据统计分析，订单管理等）<br />\r\n&nbsp; &nbsp;增加风控核心功能模块<br />\r\n&nbsp; &nbsp;增加供应链功能及审核功能模块<br />\r\n<br />\r\n核心功能模块<br />\r\n1、商品管�\�<br />\r\n2、买家秀<br />\r\n3、订单管�\�<br />\r\n4、城市管�\�<br />\r\n5、用户管�\�<br />\r\n6、数据统�\�<br />\r\n7�\�3D设备管理<br />\r\n8、营销管理<br />\r\n9、供应链管理<br />\r\n<div>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<img src=\"/Uploads/201603/56efb82178612.jpg\" /> \r\n	</p>\r\n	<p>\r\n		<img src=\"/Uploads/201603/56efb82c05e15.png\" /> \r\n	</p>\r\n<br />\r\n</div>','0','/Uploads/201603/56efb7ad801d3.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=57','74','1456995707','1458551379','','0');
INSERT INTO `yourphp_article` VALUES ('58','10','2','hello','微信公众号开发的技术之�\�','','','','','       得益�\�4G网络的发展，移动互联网时代的峰值来得更加凶猛了。目前，微信公众账号总数过千万，且每日新�\�1.5万多；接入应用总量已达67000多，日均创建应用�\�400多；微信自助投放平台上已�\�...','<p>\r\n	<span style=\"font-family:微软雅黑, 宋体;font-size:14px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; &nbsp;得益�\�4G网络的发展，移动互联网时代的峰值来得更加凶猛了。目前，微信公众账号总数过千万，且每日新�\�1.5万多；接入应用总量已达67000多，日均创建应用�\�400多；微信自助投放平台上已拥有超过10000家广告主，超�\�1000家流量主�\�</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, 宋体;font-size:14px;background-color:#FFFFFF;\"><span style=\"font-family:微软雅黑, 宋体;font-size:14px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;对于微信来说，最核心的资源就是用户本身。在庞大用户的基础上，微信不仅仅是支持发送语音短信、视频、图片和文字，可以群聊，仅耗少量流量，是适合大部分智能手机的应用，更是很多行业一站式、全流程解决方案的工具。微信提供了丰富的开放接口，还提供了微信小店、微信支付、智能识别、设备接入等服务�\�</span><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, 宋体;font-size:14px;background-color:#FFFFFF;\"> </span> \r\n</p>\r\n<p style=\"font-size:14px;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56f2052c10eb1.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"font-size:14px;font-family:微软雅黑, 宋体;text-align:center;background-color:#FFFFFF;\">\r\n	图为微信公众平台开发流�\�\r\n</p>\r\n<p style=\"font-size:14px;font-family:微软雅黑, 宋体;text-align:center;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:left;font-size:14px;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-family:微软雅黑, 宋体;font-size:14px;background-color:#FFFFFF;\">在开放平台上，微信为开发者提供了九大接口，这九大接口分别为：1.语音识别接口�\�2.客服接口�\�3. OAuth2.0网页授权接口�\�4.生成带参数的二维码接口；5.获取用户地理位置接口�\�6.获取用户基本信息接口�\�7.获取关注者列表接口；8.用户分组接口�\�9.上传下载多媒体文件接口�\�</span> \r\n</p>\r\n<p style=\"text-align:left;font-size:14px;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-size:14px;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;微信还开放了支付接口，用户可借此连接微信支付，实现从线上到线下的商业化闭环。还开放了一系列的接口功能，例如多客服系统、微信推广、智能平台、微信小店，以及近期发布的设备接入服务和模板消息等�\�\r\n</p>\r\n<p style=\"font-size:14px;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	　　微信公众号的开发技术简单，研发周期短，微信也可以带来流量和用户。此外，微信的跨平台特性较好，不用考虑用户使用什么系统的手机，用户使用的培养成本低，时效性高、易传播、开发成本较低�\�\r\n</p>\r\n<p style=\"font-size:14px;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	　　然而，另一方面微信公众号功能却受限，与此同时在长期运营过程又存�\�2大弊端：\r\n</p>\r\n<p style=\"font-size:14px;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	　　1、“效果递减”，微信公众号的推送功能基本被用户习惯性忽略，起不到提醒作用，同时因微信公众号的泛滥，让用户朋友圈变成“广告圈”，大部分微信公众号�\�2015年进行的微信推广效果相比2014年已经出现递减效应�\�\r\n</p>\r\n<p style=\"font-size:14px;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	　　2、“入口过深”，微信公众号的入口寻找比APP要多3层操作，因此用户重复使用情况相对而言不够理想，入口在微信里成了优势也变成了极大的弱势�\�\r\n</p>\r\n<p style=\"font-size:14px;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	　　针对微信本身的优劣势，更适合在微信平台落地的业务是，“低频使用业务”和“做广告”。用户在微信中更容易“被动的访问公众账号信息（包括HTML5页面）”，随机性的看到分享的广告等链接，用户可能会打开访问�\�\r\n</p>\r\n<p style=\"font-size:14px;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, 宋体;font-size:14px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; &nbsp;目前，在微信平台上，有些应用已成为行业的标杆，用户的挚爱；但也有的只是昙花一现，或者一直默默无闻。很多应用能够脱颖而出的最重要原因就是遵从互联网行业的基本原则——即尊重用户体验、创造用户价值、满足用户需求�\�</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56fce78a5f2d3.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=58','32','1458701958','1459414926','','0');
INSERT INTO `yourphp_article` VALUES ('59','10','2','hello','企业微信或将给用户社交减负还会是社交焦虑�\�','','','','','       近日，腾讯公布将了即将发布“企业微信”APP的消息，并邀请了部分企业进行内测。据悉，企业微信的正式版或将在两个月内发布，从内测截图可以看到，企业微信有员工“休息”、默认不带消�\�...','<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;近日，腾讯公布将了即将发布“企业微信”APP的消息，并邀请了部分企业进行内测。据悉，企业微信的正式版或将在两个月内发布，从内测截图可以看到，企业微信有员工“休息”、默认不带消息的已读未读状态，还有回执、多人通话等功能�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 微信之所以推出企业微信，在微信官方看来，这与微信的发展有关。因为随着微信的应用渗入每个人的生活，生活与社交以及工作交流都在微信上，“特 别是非工作时间，免不了因为同事们都在群里讨论工作，而参与进去。”微信认为，微信企业号提供了很好的平台，给人们私人空间，让工作和生活可以适当分开�\� 避免带来太多的负担，这就是有更加纯粹的工作沟通环境的企业微信的推出背景与原因�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 但企业微信推出的背景显然还不止这些。年初在“微信公开�\� Pro”上现身的腾讯微信事业群总裁张小龙说:“用户花在微信上的时间太多，我很担心。”表示要给为微信用户减负。而企业微信这款产品的初衷，很显然包括 了多种目的，一方面是卡位竞争对手，虽然阿里钉钉目前的企业用户数尚不足以成气候，但在发展之中，社交毕竟是腾讯的主战场，这一地盘不容他人觊觎。其次是 在国外的Slack目前的发展势头也还不错，目前估值已达数十亿美元，目前业界也不断传出微软想要�\� 80 亿美元价格收购的消息。显然在微信看来，Slack的成功可以复制到国内，因为国内潜在市场大，企业级市场是一个被业界认定的“万亿级”的市场，微信方面表示，中国的成规模企业至少有数百万家，但真正实现办公移动互联网化的屈指可数，中国企业里面还没有成长出一个巨人出来。意思差不多就是说，企业微信未来就是这个巨人�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">但是在好实用科技看来，在用户体验层面，企业微信可能会给用户带来更重的职场社交焦虑�\�</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 很明显，腾讯不是阿里，对于腾讯来说，培育社交黏性可能是它旗下所有社交类产品的一个终极目标，而社交黏性的产生就是让越来越多的人参与进来， 形成大大小小的熟人圈子，你加入之后就离不开它。但企业微信与微信的不同在于，企业微信它可能是一个让人充满焦虑的产品，因为它关乎职场中的人性与心理�\� 因为作为职场人，必须经常关注公司的动态，同时关注最新讨论与谈话，关注事态最新进展，不愿意错过任何消息，这关于每个人在职场中的发展前途与位置，如�\� 你所在的公司的员工时刻在企业微信上讨论，你就必须参与进去，因为你不关注，就可能会有社交压力，这样一来，职场人会变成全天�\�24小时都关注企业微信的 消息�\� 如果源源不断的消息在企业微信产生，这会让你产生社交焦虑与疲惫，如果你不参与进去，这可能会造成你的职场社交的孤立状态�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 这里我们可以看国外的Slack，有一位Slack用户吐槽表示，Slack正在把我的注意力分散成一千个小碎片，在变成了一种永动的反馈�\� 环：聊天越多，想参与的人就越多。每天都处于开会的状态消耗掉的时间实际上比你替我省下的开会时间还要多。如此周而复始。同时应�\� 10 几个聊天对话，你把我的工作时间搞成了一场没完没了的会议。每天都处于开会的状态消耗掉的时间实际上比你替我省下的开会时间还要多�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 说回企业微信，如果职场中人重度参与到企业微信之中，这显然就已经偏离了企业微信的初衷，即这款产品并没有将工作与生活分开，而是走向了反面： 人们为了避免遭受职场社交孤立，进而被迫重度参与到工作职场的状态更新，当你决定使用企业微信的时候，你就要开始做好全天�\�24小时关注企业微信的准备�\� 你如果对职场参与置之不理，你会感受到巨大的职场社交压力�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 另外，企业微信还需要思考，如何避免因为自身产品左右互搏而造成对用户多重打扰的压力，与减负与高效的初衷南辕北辙�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们知道，腾讯本身有企业级社交产品，就是2003 年就已经推出的办公沟通软�\� RTX 。RTX虽然也有移动端APP，但其属性相对于稍微偏向于PC端，在职场之外的人群中普及度与知名度相对有限，而通过推出一款以微信命名的移动端进化版的 办公产品，更容易引发全民关注的传播效应并快速打响知名度。但事实上，这样一来，腾讯则有三款产品左右互博：微信、企业微信与RTX。当然这是腾讯一贯的 运营思路，对于有钱有资源的腾讯来说，所谓运营的成本与资源的内耗则不在考虑范围之内�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 腾讯的想法是好的，比如说，让职场与生活分开，但事实上，对于办公人士来说，一般不会暂时放弃任何一个职场沟通工具。而对于微信这款架构了所�\� 熟人社交关系链的重度社交产品而言，你要真正分开职场与工作很难，你即便有企业微信，但在你的微信社交里面，你的同事工作群与讨论小组依然会不断出现未�\� 消息，你不可能因为企业微信而解散你的同事工作群与删除你的微信同事，甚至你也会保留RTX，因为每一种社交方式的背后，它都需要一个备份与备选的工具�\� 这样一来，则导致工作消息会从RTX、微信与企业微信各种社交入口源源不断出现，继而造成持续重复的骚扰。另外企业微信推出“休息”的功能，就其初衷是�\� 以让员工在休息期间不受打扰，可以不用接收信息，帮员工区分工作和生活，但这可能不讨领导喜欢，领导或老板喜欢员工随时在线，无时无刻为公司分忧，如果在 关键时刻，老板找不到员工，无疑又会重回微信渠道处理工作事务�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 因此，从用户体验的层面来看，企业微信可能会使得用户被多个社交产品骚扰，多重打扰而导致用户疲惫不堪，企业微信的初衷是为用户社交减负，干扰更少，效率更高。但可能出现的情况则是走向反面：打扰更多，效率更低，用户更疲惫，也更焦虑，微信需要考虑如何避免这种状况�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 另外则是，企业微信一旦做大，必然会分流微信使用时间，降低微信的活跃度，毕竟从KPI与外界给予的估值来看，微信的高活跃度、占有时长与深度 用户沉淀则是其想象空间与高估值与商业化前景的核心要素，张小龙认为用户花在微信上的时间太多了，所以要减负。我们看到，比如微信上的小红点可能一半是�\� 作事务一半是私人生活，工作生活搅拌在一起，这是微信的社交困境。但如果职场用户过度关注企业微信的职场社交， 可能会降低微信活跃度与用户参与度时长，这可能导致微信本身的广告收益受到影响，包括广点通接入微信公众号的展示广告与朋友圈商家广告。所以说，任何事�\� 都是有得必有失�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 事实上，为了要解决把生活与工作分开的这种用户社交困境，目前Facebook也在绞尽脑汁。我们看facebook的做法，Facebook 上此前推出了 Work Chat for Android，让用户在“度假或专注工作时，可关闭不想看的消息通知”。而用户需要Facebook提供的企业协作工具Facebook at Work的工作账户才能使用这个应用。这里可以思索一下微信的解决方案，能否为微信开通两套账号体系，这两套账号体系分别面向生活与工作，自由切换，一�\� 切换到工作账号体系，即屏蔽生活类消息的打扰。很显然，社交困境自然有它的解决办法，所以企业微信的推出，可能其核心战略在于企业级市场的营收方面�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 让企业员工选用一个全新帐号体系来给予企业级员工提供标准化的服务，分流微信的用户群，面临最大的问题是需要给外界一个充分的理由即为什么要�\� 弃能够保证员工实时在线的微信与QQ而去使用企业微信。目前企业层面能够确保员工实时在线随叫随到的无疑�\� QQ 和微信，在微信上形成工作流并维护员工之间与客户之间的工作关系，无疑也相对稳妥高效。微信选择独立一个APP切入职场这个垂直领域，可能更多的是腾讯营 收思路的转变，即从长期以来面向用户收费的思路转向企业级市场与第三方服务市场营收。但是面向企业收费，需要讨好企业，但目前来看，从前面”休息“功能来 看，企业微信更多的讨好员工，并没有想好如何讨好企业主�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 企业微信的推出，以腾讯强大的流量渠道与各种用户社交关系链互相导流的方式，带动用户增长对阿里钉钉的冲击是毫无疑问的。但如何避免未来造成�\� 用户的多重打扰，给用户带来更重的职场社交焦虑，走向企业微信初衷的反面，以及如何打到企业级市场的痛点，微信还需要思考的更深入，如何为用户正确减负， 走出社交困境，企业微信在产品设计与战略思维上也还有很长的路要走�\�\r\n</p>','0','/Uploads/201603/56f20e599a931.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=59','27','1458703329','1458703965','','0');
INSERT INTO `yourphp_article` VALUES ('60','10','2','hello','家装O2O走进“虚拟现�\�+场景应用”，开启VR新时�\�','','','','','      2015年中国家装电商市场规模预计达�\�1660亿元，比上一年增�\�38.7%，整体来看，家装行业互联网渗透率相对较低，但整体市场保持较快速的增长�\� 市场存在很大的发展空间。艾瑞分析认为，随着...','<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp;&nbsp;2015年中国家装电商市场规模预计达�\�1660亿元，比上一年增�\�38.7%，整体来看，家装行业互联网渗透率相对较低，但整体市场保持较快速的增长�\� 市场存在很大的发展空间。艾瑞分析认为，随着互联网对传统家装行业的不断渗透，未来家装电商市场将获得快速发展，�\�2018年市场规模预计将超过3600 亿元�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">“虚拟现�\�+家装”蓄势待�\�</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 目前，家装营销制胜时代的行业关键已转至以用户体验、前端设计以及口碑为核心，足不出户的在线家装迎合了用户的实际需要。通过切身体会“真实的装修环境 “，摆脱了现实世界中空间和时间的限制。自主装修选材模式结合”虚拟现实“技术，给体验者带来感官、认知以及理念等方面的冲击�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">从想象到沉浸，降低商家固定运营成�\�</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VR技术一方面帮助用户实现从想象到沉浸，另一方面帮助商家节省从店面租金、展厅装修、人员工资、到样品成本等约50%的固定成本，凭借实现从3D到VR的一键转化，VR技术帮助用户打造身临其境感受到最终装修效果，降低决策成本�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">还原真实未来家居场景，全面提升消费者体�\�</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VR家装产品通过为每个装修需求打造出“还原真实”的未来家居场景，从设计方案到家具摆放，通过虚拟现实技术，在施工开始之前就可以体验到各种设计方�\� 的实际入住效果，实现硬装、软装、家具、家电的与装修体验。此外，软装设计师可通过云端方案中心，为用户提供菜单式设计方案选择和个性化指导，无需线下见面，且效果具有99%的真实度，可以节省大量时间精力成本�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 伴随虚拟现实技术逐渐成熟，VR家装将会给用户带来线上决策和线下执行的全新体验，用户将在施工前身临其境感受到装修最终效果，提升家装效率�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">未来：回归用户体验提升，16年将是VR元年，家装产业步入VR颠覆时代</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 艾瑞分析认为�\�2016年是VR的元年，VR技术将逐渐广泛应用于各个领域，提升运营效率和降低成本是VR技术能否得到市场认可的关键因素。家装O2O的未来发展需要更加深度地整合线下资源，进一步地提升用户体验，届时，家装O2O行业将获得突破式发展�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VR等新技术应用促使家装行业颠覆时代到�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VR技术可广泛应用于家装、医学、娱乐、游戏、工业方针、购物等领域，当前，各大公司均推出AR产品，在虚拟现实领域展开积极探索。随着VR所蕴含的交 互体验的进步，造就行业颠覆的力量难以估量。消费者可足不出户实现沉浸式�\�3D效果体验，通过VR技术实现房间预装修。此外，各大家装O2O企业已经开�\� 在移动端发力。土巴兔的各种移动端布局贡献了大量平台流量，爱空间推出的移动直播、移动监理也广受好评。未来，移动端将深入家装O2O的信息搜索、监理�\� 支付、售后、客服、社区等各个环节，成为家装O2O的主要入口�\�\r\n</p>','0','/Uploads/201603/56f20e39c4a87.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=60','26','1458703650','1458703937','','0');
INSERT INTO `yourphp_article` VALUES ('61','10','2','hello','社区O2O盈利将陷入死胡同，换种思路是必然之�\�','','','','','       越多的人做社区O2O就有越多的人会问究竟社区O2O该如何盈利的问题。多数人虽然看好社区O2O，但始终不知道该如何解决盈利问题，不断修正的市场策略也没能带来预期中的高额回报，难道社区O2...','<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;越多的人做社区O2O就有越多的人会问究竟社区O2O该如何盈利的问题。多数人虽然看好社区O2O，但始终不知道该如何解决盈利问题，不断修正的市场策略也没能带来预期中的高额回报，难道社区O2O盈利问题是一盘无解的死棋么？\r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56f210278fbbb.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 现有的社区O2O盈利思维大体分为两种，一种是“○（闭环）”思维，另一种是“─（直线）”思维。这里必须先提醒强调一点，社区O2O是线上和线下在社 区生活场景内的结合，所以不能只关注互联网的“○（闭环）”式发展方向，还需多考虑传统市场“（直线）”式的基本规律�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">别被互联网所蒙蔽，中小社区O2O创业公司不适合○（闭环）式盈利思维</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ○（闭环）式盈利思维有几个主要特点：有野心为规模不追求短期内盈利；先想办法圈住用户以便日后一鱼多吃；资金充足或有资本青睐具有持续烧钱能力；产品或服务形态以平台为主；收编各地资源试图整合行业或产业链；缺少切实有效的盈利方式多数处于持续烧钱亏损状态�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 社区O2O闭环式思维是典型的互联网思维特征，但这种思维需要有极强的抗压性和超强的资金补给能力，能长时间承受不盈利的尴尬处境，而且需要有强求的说服力能说服投资人认可这种闭环思维在未来有非常大的市场潜力�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 目前有能力采取这种闭环盈利思维的，也就是抗压性强、资金储备充足，且对资本市场有吸引力的公司只有那么几家行业巨头出身的公司，例如京东到家�\�58�\� 家、彩生活、顺丰、海尔、三泰电子等屈指可数的几家公司，除此之外，社区O2O行业并没有出现获得资本无限青睐“草根逆袭”式的新兴行业巨头�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在以往的互联网市场，每个新兴热门的细分市场在行情最热时期都会涌现出几家（垂直）巨头级的新锐公司，而过去两年社区O2O市场已经算是非常热门了，�\� 至今也没有一家可以称得上是新锐巨头的社区O2O公司，反而衰退转型甚至是死掉关门的创业公司日益增多。究其原因，闭环式的盈利思维让资本市场看不清社区 O2O未来的市场潜力究竟多大，所以不愿意冒太大的风险奉陪中小型的社区O2O公司一路走到底�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 另外，在其他行业巨头入场之后，就更显 得中小社区O2O创业公司的竞争力不足，早期的社区O2O创业公司要么已经转向，要么勉强维持、要么已经关闭了，这里就不具体点名指哪几家公司了。经过前 两年上门O2O和社区O2O的融资泡沫之后，资本市场愈发谨慎，他们愿意给巨头更多的钱占少量股份，也不愿意给中小创业公司更少的钱占更多的股份，如今�\� 社区O2O创业在融资市场方面的情况愈发的不乐观�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 闭环盈利思维在前两年非常盛行，非常多的创业公司都崇尚这种“先圈地后赚钱”的互联 网运营思路，此前市场上有非常多的综合平台式的闭环盈利思维的产品，例如一些社区APP，也有很多垂直平台式的闭环盈利思维，例如一些上门APP。如今很 少有专业的投资机构愿意跟这种闭环思维的平台式社区O2O项目交流，甚至连行业内人士和媒体都对这类创业项目嗤之以鼻�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 实际上，那些所谓的有点巨头背景的公司盈利能力更差。京东Q4财报显示去年4季度巨亏，其中有一部分原因就是因在京东到家上的大手笔投入；58到家也没有盈利点，但有阿里和58做为主要的资本输出方；彩生活如若去掉传统的物业服务费收入也不盈利；顺丰嘿客烧10亿买来的教训已被黑出翔；海尔是刚开始进入投入期，还没显现出烧钱的痕迹；三泰电子的速递易已经陷入烧钱无底洞，并引来无数质疑�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 不过，巨头的优势在于有持续的烧钱能力，能承担起不盈利的短期业绩压力，但中小创业公司并不具备这种能力，而且现阶段资本市场也不再盲目相信社区O2O的概念了。以上，是在向中小社区O2O创业公司强调两点，第一，闭环的盈利思维不可取，第二，烧钱的互联网运营模式不可取，合在一起就是“闭环烧钱的互联网盈利思维的运营模式不可取”�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 因为目前社区O2O并没有特别出众的盈利项，而且资本市场已不会对一家中小公司投入太多，所以如果再有中小创业者想进入社区O2O市场，一定要暂时放弃闭环的盈利思维，选择可尽快盈利的直线思维，待能自给自足稳定之后，再想有没有成为闭环式互联网平台的机会吧�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">─（直线）式盈利思维更可取，先把钱赚到手总是保险</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 那些烧钱做平台圈用户，然后寄希望于由资本市场来出钱买单的社区O2O项目已经没有任何成长空间，绝大多数的专业投资公司现在都不再愿意接触中小创业者的平台式项目，资本已经没有任何耐心去驱动这类项目烧钱式发展�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “闭环式的互联网盈利思维”与“直线式的传统盈利思维”，现阶段哪个更可取？通俗的讲，社区O2O究竟是该选择“拐弯抹角的等以后有机会赚大钱”还是“直接了当的把现在能赚的小钱赚到手”？\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 结论一就是前一部分所阐述的，市场已经印证了，没有资本力量的驱动，中小创业公司闭环式的互联网盈利思维在社区O2O市场很难走通�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 结论二是在社区O2O本身没有明确的盈利模式的环境下，放弃现有盈利项或是可盈利项并不能给未来带去更为可观的增值营收空间。社区O2O项目需要找到自己的盈利点，并且始终围绕赢利点进行深度可变现能力提升的探索，而不是寄希望于未来�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 例如，大家都知道金融很赚钱，所以都将社区金融业务作为未来的重点营收项，不过能在金融上赚钱的是金融公司，本身没有金融实力的社区O2O公司最多只是拿一点佣金，也就是说可能会赚钱的社区金融与大多数（非金融背景的）社区O2O公司无关�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 例如，社区平台、社区电商、门禁开锁等项目与社区金融并没有直接的因果关系，用户可以能会用某些社区产品但未必会在其上买金融理财，用户投资金融理财除了看重信任关系外更看重投资收益，自身没有强势金融业务的社区O2O公司最多是一条帮着别家公司卖金融产品的渠道，根本赚不到多少钱。社区创业更需要直线式盈利思维将精力集中在主营业务的营收能力上，而不该对未来抱有过多的幻想�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 然而，这里必须得强调非常重要的一点，直线式的盈利思维并不完全是传统的一手交钱一手交货的交易思维，社区O2O中的直线式盈利思维是不提倡战略性亏损拼未来的一种运营思维，这种思维既需要注重眼前利益，同时也需要适应互联网灵活多变的市场策略�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 例如社区门禁，传统思维只是将社区门禁卖给物业，而社区O2O直线式盈利思维是如果可以直接卖给物业最好，但在现有智慧社区和社区O2O背景下也可以免费送给物业，但前提是获得社区门禁的广告运营权，其实也就是羊毛出在猪身上让狗来买单的互联网思维，但此时的盈利思维就是“用户—广告”的直线赚钱思维，而不是“用户○金融”的闭环思维，这是社区O2O直线思维与纯互联网思维、纯传统思维的差别所在�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 直线式盈利思维是将互联网灵活多变的运营手段用于传统的社区市场之中，这种思维更实际更贴近市场，更适合中小社区O2O创业公司，但不适合巨头类的社区公司，因为巨头们肯定根本看不上短期内的这点利润，他们更关注的是市场规模和未来的长期价值�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 结论三，社区是与用户最接近的生活场景，而国人的生活习惯特点是，越是与他们息息相关的事情，他们就越挑剔，所以在中国，物业与居民的对立情绪才会一直相持不下。若社区O2O项目的投资回报周期越长，相应承担的运营风险就越大，尤其是如果项目需要打破原有社区环境结构，但又不能真正的提升社区的生活质量，这类项目说不定哪个环节出了问题就会引起众怒，即便与物业和业委会有合作协议，可一旦激发矛盾，政府和舆论媒体都会向着社区居民说话，因为涉及到社会民生问题，老百姓多数情况都会被视为弱势群体并能占据舆论高点�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">社区O2O需注重两种思维结合，用“○”做局，用“─”存�\�</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 社区O2O盈利问题是不是一盘死棋，还得看项目方自身的规划，说到这里已经很明白了，只有那些资本充足实力雄厚的巨头级公司才适合闭环式的互联网平台发展思维，因为他们亏的起，而且也看不上短期内的蝇头小利；而中小创业公司更适合采取直线式的盈利思维，尽可能的不依靠资本驱动力凭借自身主营业务获得盈利，在主营业务稳定之后再去考虑能不能平台化发展�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 其实，很多时候闭环式盈利思维与直线式盈利思维是结合运用的，即便是大公司看不上蝇头小利但其也需要找到稳定的主营收入点，而中小公司一旦有了稳定的盈利项之后也会开始尝试更多的发展可能，进而难免会有搭建更大平台的野心。简单的来说，“○”思维的目的是“做局”，而“─”思维的意义是“存活”，大公司很少会有存活压力，所以只需关注做局，而中小公司只有先存活下去，才有资格去谈做局�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 社区O2O盈利问题确实是一个需要认真思考的问题，但并不是一个无解的难题，对于中小创业公司而言，只要不在局限于“○”思维，并认清“─”思维价值，社区市场还是有很多机会的�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 举两个例子，某媒体公司做社交平台此前很难赚到钱，但在平台上的营销号赚了不少钱；某电商很长一段时间自己不赚钱，但很多在其上卖货的却把钱赚走了，或者是其产业链上的代运营、仓储物流、营销推广等公司都很赚钱。所以，认清自身的定位，没有平台潜质就默默的做为社区O2O产业链上一家赚钱的中小公司就够了，不要想太多，绝大数中小创业公司注定了是扮演陪太子读书的角色�\�\r\n</p>','0','/Uploads/201603/56f21011d6877.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=61','28','1458704431','1458704468','','0');
INSERT INTO `yourphp_article` VALUES ('62','10','2','hello','中国社区O2O市场规模将达3599亿，社区电商如何突围�\�','','','','','       社区电商就在冲击着线下大超市和传统电商，但至今又还没有出现巨头企业，社区电商到底难在哪?又该如何调整姿势前行?近日闪电购在上海召开商家启动会，听说现场下单的商家达95%，十分意�\�...','<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;社区电商就在冲击着线下大超市和传统电商，但至今又还没有出现巨头企业，社区电商到底难在哪?又该如何调整姿势前行?近日闪电购在上海召开商家启动会，听说现场下单的商家达95%，十分意外，这不禁让响铃这货想聊聊这个潜力巨大的社区电商市场。因为这区别于线上支�\�+到店消费的O2O模式，也不是线上支付+�\� 流配送的商品电商模式，而是围绕社区流量做入口，针对社区居民刚需，做高频低值的商品交易�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如果说淘宝类传统电商干掉的是线下百货店和连锁店，那社区电商就在冲击着线下大超市和传统电商。但社区电商至今又还没有出现巨无霸，这些便利店和夫妻店能否借助社区电商平台成为全副武装的蚂蚁雄兵，又或永远只是散兵游勇，社区电商到底难在哪?又该如何调整姿势前行?\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">&nbsp;一、懒人经济下的社区电商，有人欢喜有人�\�</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 根据银河证券的数据，2016年中国社区O2O市场规模达到3599亿元。社区电商便是其中的社区零售便利O2O模式，这种基于移动互联网工具�\� LBS位置技术，将线下实体门店通过移动端与社区用户实现零距离购物、支付体验的消费形态也在瓜分着�\�3500亿市场。而背后发展的逻辑除了移动互联网技 术的发展，更多的是年轻人消费方式和消费需求的转变以及零售行业的重构�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">二、懒人经济催生的移动消费</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 首先在消费端，必须承认，我们正面对着一个懒人的世界，生活圈里的便利店对懒人们来说是个遥远的存在，即便距离自己只�\�800米甚�\�500米，他们�\� 能把买几斤水果拆分成下楼—走过去—进店—选商品—排队付账—离开—回家等多个步骤从而拒绝下楼。所幸他们擅长使用智能手机，也养成了随时随地下单的习�\� 且具备更强的消费能力，愿意为服务付费。很明显原来以店为中心、到店购买的经营模式已无法满足当下的消费需求，懒人们需要的是一种全新的即时性、碎片化�\� 集成式的移动消费体验�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">三、居高不下的店面成本驱使</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 其次在商户端，目前社区零售的电商渗透率不足 1%。门店成本却高达 20%-30%，在租金和人力成本不断上升的情况下，商品和服务向消费者流动成为大趋势。商户一方面需要虚拟货架来扩充 SKU，另一方面需要减少店面与人力成本，尤其是在门店位置不在那么重要的当下。社区电商模式能在线上给商家开设一个虚拟货架，形成对线下店面的补充甚至 逐步取代，自然受商户欢迎�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">四、原有便利体系，商品结构落后</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 再者，包括所谓“现代渠道”大卖场在内的原有便利体系，都是传统品牌巨头在垄断广告宣传和货架，也就是消费者并没有真正实现自主筛选商品，而是在零�\� 商和品牌商一起构建的相对封闭的固定空间里挑选商品。而且传统便利店只是响应用户的即时需求，商品结构的调整相对滞后。但消费者的自主性越来越强，需求越来越个性化，比如目前火热的“网红商品”便是便利体系无法满足的，当品牌商无法继续完全掌控宣传入口和满足消费者需求，能提供丰富的单品数量的社区电商模 式就凸显出自己的优势�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 最后社区电商既继承了原有便利体系零散网店的便利优势，也突破了传统电商只解决横向规模化问题又实现了纵向的社区化，既突破区域限制可规模化，又扎�\� 于区域，实现线上线下全方位互动。所以在大家都认为社区化和规模化是互联网商务的两个发展方向时，社区电商作为极富创新的商业模式就逐步被公众认识，也使得巨头和创业者争先恐后扎进去，很多平台并获得资本青睐，如京东除了上线了京东到家， 也在2015�\�5月领投了天天果园，据说这次C轮融资到�\�7000万美元规模。同�\�12月，九阳股份宣布出资3000万美元增资本来控股。还有由阿里上市 后第一批离职创业的高管王永森和邬强强等�\�2014�\�12月创立的闪电购，2015�\�10月闪电购获得由H capital、顺为基金领投，经纬中国、阿里创始人吴泳铭的元璟资本跟投数千万美金B轮融资。还有宅家里、云厨电商、楼口、即买送�\�1号店的小区雷购等 等�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 但另一面也有很多平台“死在了路上”，或关闭服务或艰难转型，如曾获�\�1亿元天使投资一炮而红的叮咚小区，背靠拉卡拉社区电商身边小店、红极一时的社区001、甚至顺丰嘿客等等。我们唏嘘之时不禁要问，是什么造成了如此冰火两重天的不同结�\�?\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">五、四大命脉，“鱼”和“熊掌”该如何兼得</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 其实作为B2C电商的延展和升级，社区电商不仅需要平台在消费者和供应链都有极强的影响力和号召力，也需要平台在规模经济、增值服务等问题有很好的�\� 舍。简单的说社区电商考验的就是平台的4个能力：社区规模与城市扩张的运营能力;供应链条的选择和协同能�\�;最后一公里配送的综合服务能力和可持续化发�\� 的商业变现能力�\� 这四项既是关系到平台生死的命脉，又是“鱼”和“熊掌”的博弈和取舍�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">&nbsp;六、社区规模与城市扩张</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 社区电商是典型的资本驱动型市场，面对的对手也是具有区位优势的连锁超市、便利店和没有地域限制的B2C电商，所以社区电商平台需要庞大的地面网点�\� 盖、众多的地推配送人员支撑和足够量级的线上流量入口。那么问题来了，具备盈利能力的规模优势的临界点在�\�?何时需要加速扩�\�?如何控制节奏?快速拓展阶 段服务品质如何保�\�?短期员工大扩容如何带领和管控?如何保持团队心态平�\�?所握资本能否支�\�?\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 目前闪电购覆盖的是北京、上海、广州、深圳、杭州、苏州等6个城市，1公里范围内实�\�1小时送达。京东到家则已覆盖包括北京、上海、广州、深圳、南京、天津、武汉、宁波、成都、西安、重庆等一二线城市，并2小时内送达，而区享则只完成了南京、扬州的覆盖�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 城市扩张和社区规模不只是考验社区电商的资金实力，还考验者创业者对社区电商模式的理解和运营策略，比如区享采用的是极重自营的模式，所以使得资金压 力大，扩张速度缓慢，而且人员流动成本极高。这就要求创业者对规模和核心优势的打造，扩张速度和用户质量的取舍要有一个很好的权衡，稍有不慎，就可能错�\� 发展良机�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">&nbsp;七、供应链条的协同和选择</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 社区电商平台不论是做垂直细分产品如生鲜的售卖还是单纯的流量分发，都在产业链的下游——把商品供应商和服务供应商对接给社区的C端用户，不能或难�\� 保证供应端的品质，因此，社区电商平台需要往产业链上游延伸。更为关键的是社区电商平台能否协同好供应链不但需要提供各类系统工具来帮助供应端提升效率�\� 从而增强对平台的依赖又需要扩大自身实体门店数量，扩充销售渠道，形成较强的采购话语权，从而加强对供应端的品质把控，所以社区电商平台能掌控好供应链�\� 是平台的成败关键之一。具体来说，需要处理好2个关系�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、便利店的选择和合作方式，社区内主要分布连锁直营店、加盟店和夫妻杂货店三类业态。闪电选择和加盟店合作，楼口则是执行“微仓主”模式，通过招募 个人店主和实体便利店加盟，从而回避了便利店业态的选择。但要提醒的是：这三者明显有差别，比如直营店店长的决断权不大，且是“打工”心态。夫妻店受制�\� 人力，配送力量薄弱，加盟店老板既有通过“触网”来改善经营的意愿，人力也相对充足。而且只有选择好合适的合作方才能真正解决货物仓储、末端配送等难题�\� 所以谨慎选择�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、选品重构商品架构和与线下店面的区隔。作为零售，选品重要性不言而喻，而且怎么既能吸引消费者从线下到线上下单，又能保证自己的毛利，这个很关 键但往往受制于供应链。就如虽然所有小店都知道水果品类既有频次又有毛利，但水果对供应链要求极高，普通便利店不敢轻易尝试，而社区电商平台就可以像闪�\� 购一样采用“生鲜原产地直采+品牌商”战略合作的形式在每一个覆盖的城市建立中心仓，并搭建全程冷链，将水果经过筛选，并制作成标准产品包装，配送到店， 并在线上推广，从而实现比传统水果店更为高效的流转。或者销售网红商品等形成品类壁垒和竞争差异，而这些都是学问。像惠民网一样整合农产品原产地、品牌供 应商、社区超市、终端用户等多方资源，打造集产地直采、品牌直销、商超供货、线上商城、便民业务、数据挖掘于一体的全供应链社区电商平台更是一项内外功�\� 修炼，但难度不可说不大�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">八、仓配体系及最后一公里配送的综合服务</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 社区电商主要以低单价、快消耗、低频次、及时性的商超、水果、外卖等为经营项目，所以考验社区电商的首先是终端配送能力，也就是跑腿能力，因为他们实际是在干短途物流的活。但难点就在于这个配送体系和仓促体系怎么搭建?有人说解决社区配送问题最好方式是众包与Uber结合的兼职模式，也有人说为保障最 后一公里的综合服务体验，得自建物流，还有人说得是两者的结合，于是就出现了各类模式�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 其中各有利弊，如自建物流的社�\�001，服务稳但要承担高额的成本和一定的风险�\� 利用社区便利店闲置资源来完成配送的爱鲜蜂，资产轻但较难保障服务质量，且同行复制的门槛极低。而京东到家和闪电购则是两者结合，只不过京东到家是以自�\�+众包物流来解决末端配送，依靠京东庞大的线上流量和雄厚的资金实力，对接线下实体店。而闪电购采取的是“自建物�\�+众包”的模式，并有一只闪电侠的配 送团队帮助商家在核心商圈实现1小时配送。而且闪电购城市总仓与每一个小店的关系是中心仓与分仓的关系，这是分段消化仓配成本的过程。其实仓配体系最重要 的因素是社区渠道的下沉和渗透，或许正如闪电购CEO王永森所说：“需要线上和线下相配合，在利用现有商家运力的同时，建立强大的网络，把体验做好”。因 为配送体验是社区电商模式的核心竞争力，问题的关键点不在于模式轻重，而是配送体验、体验、再体验。并且必须承认单纯的众包 Uber形式行不通，光自建仓储与物流的人力成本也可能拖死创业者�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">九、可持续盈利变现方式</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 最后讲讲盈利的问题，响铃这货始终认为不讲怎么赚钱的商业都是耍流氓。但社区电商又是笔高人力成本、高运维成本、高营销成本和低利润回报的生意。�\� 且社区电商的盈利前提是建立在标准化快消品配送与大量低频消费的非标服务上。所以选品和盈利模式的构建决定着社区电商平台的“赚钱能力”，和大多数连锁�\� 系一味追求品类最低价不一样，且不同社区电商平台的打法又有差别，如京东到家主打具有高频购买需求的蔬菜水果，提供的是生鲜、超市产品、鲜花、外卖送餐�\� 各类生活服务项目，而闪电购采取的是“动态选品，数据做主”的选品模式，主要以互联网原生品牌和进口商品为主，如休闲零食类目已有超过40个国家和地区�\� 近千个网红商品。但随着用户数量的增加和用户区域的差别，社区电商面对的是多元化，无序性且符合量子力学的不确定原理的用户群体，如何在主体业务符合二�\� 原则，个体需求符合长尾理论的指导思想下赚到足够的钱则是个难点，因为面对的多是坑和迷�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 而且除了交易利差，社区电商还能在哪里“榨出油水”呢?再次提醒的是：社区配送实际上是整个社区电商的核心也是社区O2O的入口，一旦有了稳定可靠的 社区配送能力，就可以延伸出更多的扩展服务。如送水、干洗、送药等甚至发展成为平台。那在此基础上延展的盈利途径如展示广告收入、供销差价或销售分成、会员储值沉淀资金及B端商户金融服务、商户数据增值服务和系统增值服务等等就变得清晰，而且像闪电侠这样的极速配送服务就不再是成本单位而变为了盈利单位�\� 但这一切的前提是有一个很好的配送体系�\�\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 而且这四项都是相辅相成紧密衔接在一起，相互支撑又相互影响，且这些能力的构建并非朝夕之功，这或许就能解释为什么这个行业还没有巨无霸，但面对着千亿级市场，无法满足年轻人新消费形式的商业形态逐渐会被淘汰，积极拥抱移动消费模式的新业态将成为主流�\�\r\n</p>','0','/Uploads/201603/56f2162f07531.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=62','32','1458705868','1458705972','','0');
INSERT INTO `yourphp_article` VALUES ('63','22','2','hello','3D家装','','','','','3D虚拟家装整合泛家居厂家，将产�\�3D真实建模入库，通过全国各地子公司直接和楼盘合作，导购机进驻楼盘，最终让消费者在楼盘通过智能设计导购系统，实现从毛坯房到拎包入住的一站式服务。第三方支付平台，提供结算�\�...','<p class=\"MsoNormal\">\r\n	<b>3D</b><b>虚拟家装<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	整合泛家居厂家，将产�\�<span>3D</span>真实建模入库，通过全国各地子公司直接和楼盘合作，导购机进驻楼盘，最终让消费者在楼盘通过智能设计导购系统，实现从毛坯房到拎包入住的一站式服务。第三方支付平台，提供结算、金融、消费信贷支持。最终建立泛家居产品的公平、公正、便捷的交易系统�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>核心目标<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	一�\�<span class=\"apple-converted-space\">&nbsp;</span>3D技术，带来全新逼真体验�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	二、多种场景风格任选择，空间内家装随喜好自主搭配，轻轻一点即可实现场景切换及家装替换�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	三、虚拟生活场景，随个人喜好DIY室内装饰，促进购买兴趣，帮助消费者直观精准的定位需要购买的商品�\�<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>&nbsp;</b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>核心模块<span></span></b> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	(1)&nbsp;&nbsp; <span>Erp</span>系统<span></span> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	(2)&nbsp;&nbsp; <span>3D</span>导购系统<span></span> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	(3)&nbsp;&nbsp;\r\n支付管理系统<span></span> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56f3b67022899.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56e916bd1a43d.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=63','48','1458812555','1458812562','','0');
INSERT INTO `yourphp_article` VALUES ('64','10','2','hello','外卖O2O市场已成红海 各大玩家正在开辟新战场','','','','','消费者C端用户一直都是外卖O2O平台的香饽饽，“只要用户多，订单量就不成问题”在一定程度上成为创业者信奉的金科玉律。而现在，外卖O2O市场的风向正在发生转变。在经历了几轮大规模的烧钱争夺用户之战后，外卖市�\�...','消费者C端用户一直都是外卖O2O平台的香饽饽，“只要用户多，订单量就不成问题”在一定程度上成为创业者信奉的金科玉律。而现在，外卖O2O市场的风向正在发生转变�\�<br />\r\n在经历了几轮大规模的烧钱争夺用户之战后，外卖市场已经被美团外卖、饿了么、百度外卖等小巨头分食。根据易�\�2015�\�12月的数据显示，中国互联网餐饮外卖整体市场已被上述三家公司占据了近86%的市场份额�\�<br />\r\n当面向C端消费者的入口几近饱和后，B端市场迎来了春天。外卖平台一方面向餐饮产业链的上游延伸，为中小型商家提供服务；另一方面则是由个人订单转向为企业提供订单�\�<br />\r\n消费市场几近饱和<br />\r\n随着百度外卖完成分拆、美团点评合并、饿了么完成多轮融资，面向个人用户的外卖市场份额已经几乎被这几家包揽�\�<br />\r\n有数据显示，2015年美团外卖以32.3%的市场份额位居第一，饿了么紧随其后，以27.1%名列第二，百度外卖和口碑外卖分别�\�12.6%�\�8.1%位居第三和第四，到家美食会占5.8%�\�<br />\r\n另外，有分析人士指出，从资方背景来看外卖O2O已经成为BAT的盘中餐，不太可能出现这之外的第四支力量�\�<br />\r\n2014年初，腾讯战略投资了大众点评，且视其为O2O领域的核心布局之一�\�2015�\�10月大众点评和美团宣布合并后的一个月，阿里抛售了�\�10亿元美团点评的股权，随后2016�\�1月，腾讯向合并后的实体再注入�\�10亿美元�\�<br />\r\n另一边，百度�\�2014年就开始低调布局O2O，这从其�\�2014年初全资收购糯米可窥见一斑。并�\�2014�\�5月上线了百度外卖�\�2015�\�7月完成分拆。在投资策略上，百度决定未来三年投资200亿现金支持百度糯米，成为互联网巨头在O2O业务上最大的单笔投资�\�<br />\r\n饿了么方面，知情人士早前曾向腾讯科技证实，饿了么获得阿里巴巴12.5亿美元的投资意向，不过，交易最终达成可能会在春节以后。而前不久又有传闻称，饿了么将并入口碑，随后被饿了么官方证实只是业务上达成合作。若饿了么最终加入，或将补齐阿里在外卖业务上的短板�\�<br />\r\n外卖巨头加码B端业�\�<br />\r\n当个人用户被补贴和免费教育的差不多的时候，外卖平台开始寻找新的机会。主要方式有两种，一种是提供同城即时物流配送、食材供应等服务；另一种是搭建面向企业商户的系统�\�<br />\r\n有数据显示，餐饮业市场食材采购规模达8000亿元人民币，与互联网餐饮外卖交易�\�457亿元人民币（2015年）相比，食材采购市场显得不可忽视。在这一领域，除了已有的美菜、链农这样的运营平台之外，饿了么、美团外卖等外卖平台也开始发力�\�<br />\r\n去年10月，饿了么推出连接商户的食材供应平台“有菜”。这个平台的作用是，通过外卖平台上对餐厅的大数据积累，为中小型餐厅提供新鲜食材，涉及从餐厅到有菜商城，到渠道批发商，再到物流服务商的整个链条。除了食材供应之外，饿了么还在低调试水面向商户的微型仓储网店“蜂巢”，2016年将覆盖主要的一二线城市�\�<br />\r\n饿了么CIO信景波表示，食材从生产端、渠道、流通环节、分销到最后走上餐桌的整个流程非常复杂，相对于传统大型餐厅来说，中小型的餐厅有更多痛点，比如品类多但量小，有菜平台可以帮助这部分商家简化中间渠道，从而促进商家更加专注外卖的用户体验和菜品�\�<br />\r\n另一边，美团的to B业务已经悄然上线。据了解，美团旗下名为“快驴”的商家后台系统可为美团外卖商家提供财务对账、商品管理等服务，其中“快驴进货”为美团外卖平台商家提供食材、一次性用品、酒水饮料等进货服务�\�<br />\r\n其实，美团点评在合并之后就开始延伸自己的B端业务。去年底美团点评推出商企通用于拓展企业用户市场，帮助企业进行商务餐饮娱乐消费的预算管控、成本控制，实现财务透明和简化员工报销流程等。有分析认为，外卖平台之间的战火也将蔓延至B端�\�<br />\r\n创业公司转战企业市场<br />\r\nC端市场白热化的竞争，也让一些无力于继续跟进补贴、并且看到企业市场潜力的外卖平台开始专注于B端市场�\�<br />\r\n2016�\�2月，外卖O2O平台生活半径在其微信公众号宣布全新官网正式上线，原有to C的外卖订单入口关闭，全力to B，战略聚焦于短距离即时配送。“依托直营模式，提供专业短距离即时配送服务。旨在帮助本地商户、行业伙伴完成O2O服务的闭环。�\�<br />\r\n另外一个典型案例是2011年成立的美餐网。应该说，美餐网是最早进入外卖领域的公司之一�\�2012年开始发展个人订餐业务，当时就已经尝试开始承接部门企业的客户。当时，地处中国传媒大学附近的一家公司提出送餐服务的需求，它们希望为员工提供工作日午餐，却一直找不到满意的送餐公司，这家公司代表了外卖市场另一部分尚没有被满足的需求，于是每餐团队开始进行摸索和尝试�\�<br />\r\n再加上彼时的外卖市场进入到胶着的补贴大战，虽然C端市场特点是高频和刚需，但用户对于各大外卖平台的态度基本上是“哪家便宜用哪家”，用户粘性很难形成。于是美餐网将企业作为自己的目标受众�\�<br />\r\n美餐网早期投资者王啸在接受腾讯科技采访时曾表示，目前在中国to B的项目不是很多。“国内的投资机构很多喜欢跟风，例如一旦出现O2O热就会蜂拥而至。而一些to B的项目业务形态还不错，但因为市场不成熟，导致很多人不愿意投。�\�<br />\r\n不过在未来to B的项目会慢慢多起来，例如在美国to B的项目已经占到三分之二的比例。而这种现象在O2O行业已经有所体现�\�<br />\r\n分析认为，企业消费市场的想象空间正在蓄势待发，未来极有可能出现像新美大那样的百亿美元市值规模的公司。因为在创业大潮下，这样的平台也是所有面向企业用户的产品和服务的重要入口，这或许是移动互联网的下一个万亿级别的红利市场�\�<br />','0','/Uploads/201603/56f49ef335468.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=64','37','1458872057','1458872066','','0');
INSERT INTO `yourphp_article` VALUES ('65','3','2','hello','手机app开发关键点——用户体验度','','','','','在移动互联网的时候，如何才能开发一款好的APP呢，不可否认的是，任何一款程序的开发都是以用户为中心的，用户体验好了，自然就成就了一款好的APP，说明白了，就是用户体验度。具备好的APP有以下几个条件：一、APP�\�...','<p class=\"MsoNormal\" style=\"margin-left:0pt;color:#666666;font-family:\'Microsoft YaHei\';font-size:14px;text-indent:21pt;text-align:justify;background-color:#FFFFFF;\">\r\n	在移动互联网的时候，如何才能开发一款好�\�<a href=\"http://www.lanbaoapp.com/\" target=\"_blank\"><span style=\"color:#000000;\"><u>APP</u></span></a>呢，不可否认的是，任何一款程序的开发都是以用户为中心的，用户体验好了，自然就成就了一款好的APP，说明白了，就是用户体验度�\�\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0pt;color:#666666;font-family:\'Microsoft YaHei\';font-size:14px;text-indent:21pt;text-align:justify;background-color:#FFFFFF;\">\r\n	具备好的APP有以下几个条件：\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0pt;color:#666666;font-family:\'Microsoft YaHei\';font-size:14px;text-indent:21pt;text-align:justify;background-color:#FFFFFF;\">\r\n	一、APP关注用户的操作习惯，APP关注的不只是界面上的美观设计，重点还是用户的操作习惯。例如，一些大多数用户拿手机是单手，还是双手操作，单手是右手还是左手，这些操作都能避免用户手指操作时在APP上出现触摸盲点；\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0pt;color:#666666;font-family:\'Microsoft YaHei\';font-size:14px;text-indent:21pt;text-align:justify;background-color:#FFFFFF;\">\r\n	二、APP的使用环境，每款APP的用户定位都不一样，用户定位往往决定了用户的环境。比如，这款APP的使用时间、地点、环境，如果使用这款APP是在比较嘈杂的地方，那么APP上是否需要安装客服这些工具呢等，诸多问题�\�\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0pt;color:#666666;font-family:\'Microsoft YaHei\';font-size:14px;text-indent:21pt;text-align:justify;background-color:#FFFFFF;\">\r\n	三、APP功能设计要分清主次，�\�<a href=\"http://www.lanbaoapp.com/\" target=\"_blank\"><span style=\"color:#000000;\">开�\�</span></a><a href=\"http://www.lanbaoapp.com/\" target=\"_blank\"><span style=\"color:#000000;\">APP</span></a>可以采用管理学的二八定律，将主流用户最重要最常使用的功能直接展示，其它可以适当隐藏�\�\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0pt;color:#666666;font-family:\'Microsoft YaHei\';font-size:14px;text-indent:21pt;text-align:justify;background-color:#FFFFFF;\">\r\n	四、尽量减少APP的访问级别，在移动端上，如果有太多的访问级别，会让用户失去耐心，而最终放弃使用�\�\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0pt;color:#666666;font-family:\'Microsoft YaHei\';font-size:14px;text-indent:21pt;text-align:justify;background-color:#FFFFFF;\">\r\n	很多的公司都会问到我们，怎样开发一款好的APP，其实只有不断从用户的实践中，从用户的一言一行当中去考虑用户的体验，才能设计出用户体验良好的APP�\�\r\n</p>','0','/Uploads/201603/56f4addae350d.png','0','1','1','','0','0','/index.php?m=Article&a=show&id=65','37','1458875880','1458875900','','0');
INSERT INTO `yourphp_article` VALUES ('66','10','2','hello','社区O2O创业的“三大教派”、“九大流派�\�','','','虎嗅�\�','','社区O2O创业的“三大教派”、“九大流派�\�','<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp;&nbsp;社区O2O虽然机会很多，但想取得成功可没看起来那么容易，不是在某些方面有些资源、有些想法、有些技术就可以做的，社区市场环境复杂超乎想象，而且用户需求多样，变现难度大，在对社区了解不充分又没理清发展思路之前贸然踏入社区市场的公司，多数的都已成先烈炮灰了�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　社区O2O的市场切入点非常多，创业起点也有很多，大体上可以用“三教九流”来概括。此篇文章总结一下目前社区市场的创业情况，在社区市场有创业想法或者正在社区市场迷茫的人可以对号入座，顺带思考一下到底还要不要继续在社区市场做更多的尝试�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　<strong>社区O2O三大“教派�\�</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　从行业的角度理解，社区O2O可大体分为三大“教派”：IT互联网“教派”、房产物业“教派”、银行家电“教派”。顾名思义，IT互联网“教派”，主要是指从IT或互联网行业切入到社区市场；房产物业“教派”，也就是地产商和物业公司从事社区O2O服务；而银行家电“教派”，代指传统行业探索社区O2O市场，因为目前来看在传统行业领域，银行和家电厂商对社区市场的兴趣更浓厚，其他行业一般般�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　有关这三大“教派”从事社区行业市场情况，不是本文的重点内容，本文主要是为那些在社区市场有想法并打算创业的人提供的准入参考，所以主要内容是后面“九大流派”的创业起点�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　<strong>技术流派：软件技术、硬件技�\�</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　技术流派是指一般有些技术的团队打算在社区市场做点什么，而技术一般分为软件技术和硬件技术�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　以软件技术为起点的创业团队，早期的策略是开发一款社区APP然后面向社区市场做推广，目标是做成社区O2O平台或者卖给物业公司使用，如今有这种想法的团队已经非常少了，市场已经证实纯粹的社区APP软件模式99.9%的都不会成功，用户不会用，物业更不会买�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　现在，很多此前在平台思维上受过挫折的软件技术团队已经转变方向，开始作为社区O2O的技术输出方，向那些需要软件研发能力的公司出售技术或者是技术入股，这种形式还稍微可以立足于社区市场，不过这种形式非常依赖市场谈判能力，当然在如今社区O2O大趋势下，这种软件技术输出模式的生存状态还不错�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　以硬件技术为起点的创业团队，主要分两个方向：一个是智慧社区方向，一个是智能家居方向，其中以智慧社区方向为主。在智慧社区方向通常以门禁、停车为主，另外偶有监控安防，当然提供整个智慧社�\�+智能家居解决方案的也有�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　起初，智慧社区的技术型创业团队也想把自己的硬件技术卖给物业，但物业并不买账。后来市场风向突变，为了能进入社区市场，有些硬件技术性团队不惜给物业高额的入场费，以求能获得部分智慧社区的运营权。现在来看，无论硬件技术输入卖钱，还是砸入资金进社区，效果都不太明显。之前在智慧社区方向有过经验教训的团队开始尝试与上游的开发商直接合作�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　其实，很多时候软件技术和硬件技术是一体的，有些技术流派的社区创业项目既涉及到软件环境也有硬件部分，但这都不重要，重要的是只有技术并不能在社区市场获得成功，除非有其他任何公司都没有的核心技术，不然技术流派在社区市场创业并不占优势�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　<strong>资源流派：物业资源、物品资源、人脉资源、政府资源、合作资�\�</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　资源流派的想在社区市场创业的比较有意思，因为资源流派的绝大部分都是在社区门外找机会，看看如何利用手中的资源变现。经常会有人跟我说，他手上有某某某资源，想在社区内做点什么，问我该怎么做？想以手上资源为起点在社区市场淘金的比较尴尬，因为所谓的“资源”多数情况下都是一种不可控的“关系”�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　例如我和某某某物业关系好，他们的资源我可以利用；我在政府主管部门有认识人，他们建议我在社区做点什么；我认识很多老板想投资社区项目，所以我在找切入方向；我手上有一批货想通过社区市场的形式去卖；我跟哪家公司有合作，他们想进社区市场，我想跟着一起做……如今，在社区市场，有太多有这类想法的人了，但请扪心自问一下，这些所谓的“资源关系”究竟牢不牢靠，如果牢不可破那可以进一步做市场尝试，如果仅仅是一种“口头协定”式的关系，还要慎重抉择，以免到时候项目开始了，结果资源方不配合了，那就尴尬了�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　手里有社区类资源是好事，但不能仅凭所谓的资源去创业，把资源利用在项目中可以事半功倍，如果自己没有能力做独立的社区项目，那就多看看有没有可以互惠互利的合作项目，资源共享各取所需。事实证明，仅凭资源创业很少有成功的�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　<strong>营销流派：社区广告、社区地推、城市媒�\�</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　营销流派的创业项目一般都还毕竟靠谱，因为多数此类项目都已在社区有一定的广告位资源，所以无论的进入社区还是广告招商都比较容易，放在社区O2O市场的大框架之内，这类项目多了互联网的灵活性并能提高运营效率�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　社区内的广告位其实有很多，大门、道闸、门禁、广场、停车场、快递柜、楼体、楼顶等都可以放置广告位，展示形式有LCD、LED、滚动、静态、实物等。这类传统的社区广告公司在社区O2O大环境之下的二次创业的机会非常大，目前已有很多传统社区媒体再向社区O2O市场靠拢。不过，对于那些此前没有经营过社区媒体业务的创业者而言，这块市场就比较难以切入了，一来传统社区广告资源已经被抢占差不多了，二来广告想进入社区很麻烦的，有的小区业委会很难搞，有些地区的街道也有要求�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　不过，现在的年轻人就是爱动脑子，既然传统的社区广告形式很难做，那就换一种形式不做传统广告改做地推，尤其在社区O2O大环境之下，有太多的社区类创业公司愿意进入到社区内进行地推活动了。社区内的地推虽然看起来成不了规模也做不成百亿市值的大公司，但好在这块小业务做好了有钱赚，并不是所有人都想上市，社区市场最大的特点就是有很多赚小钱的机会，如果有能力处理好和物业的关系，做做社区地推活动也是不错的方向�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　在社区营销方向上还有一类比较特殊的公司，那就是城市媒体。在整个媒体发展趋势上，城市媒体的话语权呈现减弱的态势，而城市媒体需要承担宣传职能，他们有义务进入到各个社区做城市宣传和文化活动建设。无论从哪个角度城市媒体都需要寻求转变的机会，而社区O2O的出现就是一次机会，而且确实已经有不少媒体在做这一块了，据我所知，北京有、黑龙江也有�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　<strong>市场流派：上门服务、宽带接入、电商零�\�</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　市场流派的特点是在某一块细分市场的基础业务稳定之后再全面落实到整个社区场景之中，例如很多上门服务的项目，传统的宽带接入公司，以及电商和零售类公司都属于这种风格�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　遗憾的是去年死掉了非常多的上门O2O公司，整个社区生活服务消费市场还不成熟之前，上门O2O公司严重的供大于求，而且彼此之间同质化的烧钱竞争不死伤一片才奇怪。而那些侥幸活过了上门O2O淘汰赛的公司如今都在陆续的向整个社区O2O市场扩张，例如做洗衣的某公司，单纯洗衣O2O概念已经不足以支撑公司继续走下去，所以搞了一个社区众包服务项目，可效果并不明显�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　之前也陆续听到不少人打算从宽带接入方向做社区项目，例如提供免费宽带或公共WiFi，用户可以不花钱上网，但必须得用宽带方的网络平台，如此一来网络平台就能成为社区O2O平台。虽然大体逻辑上是通的，但实际运营层面完全不可行，首先搅乱了运营商的宽带价格体系是肯定不行的，其次放弃本来赚钱的业务去绕个大弯赚钱，这种方式并不可取，因为社区市场究竟有多大的营收空间尚不清楚，如此激进自废武功的形式实在鲁莽，此外那种模式最大的缺点在于用户体验太差，交互反锁、后续问题过多�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　电商零售这块可能不用说太多，很多便利店都在做这方面的尝试，包括京东以及一些其他的外卖、生鲜等电商。与传统的社区便利店相比，社区电商是一种新形式高效率的零售输出方式，而与传统电商相比，社区电商的用户集中性特性更有优势，外卖、生鲜等都对区域单量密集程度有要求，所以社区电商可以理解为另一种维度的电商渠道�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　<strong>内创流派：互联网公司、物业公司、房产公司、电器公司、银�\�</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　越来越多的大公司都看到了社区O2O的潜力，并且纷纷加入其中。包括阿里、腾讯、京东�\�58、万科、龙湖、保利、绿地、长城、海尔、长虹、工行、建行、中行、民生等等诸多巨头级公司，但这些公司做社区有一个共同点，都是内创流派，也就是内部的子项目�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　内创流派的好处在于公司的体量大、资源多、资金足、品牌强；坏处在于有内耗，项目团队话语权不足，当然如果公司高层极其重视社区市场，这些大公司的社区项目也都还有不错的发展空间，例如京东、万科、龙湖、保利、海尔等都给社区项目极大的集团支持�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　这些大公司的内创流派推动着整个社区O2O向前发展，带动了舆论媒体对社区市场的关注度，但内创流派做的比较突出的也很少，京东到家�\�58到家还算不错的。接下来内创流派的市场作用力将会继续加强，而整个社区O2O市场也需要这帮巨头们来加大投入�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　<strong>战略流派：入驻社区、占领社区、兼并物业、合作协�\�</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　战略流派的做法相对比较彪悍，多数是高举高打烧钱做规模的大公司，例如顺丰的嘿客和丰巢、三泰电子的速递易、海尔的日日顺乐家等，战略流派就是先烧钱抢地盘然后再慢慢想办法盈利，不过，现在来看这种烧钱模式并没有产生预期效果，反而陷入了烧钱的无底洞�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　顺丰嘿客成为社区市场典型的失败案例，速递易的自提柜也陷入被动烧钱的尴尬境地，同时顺丰和海尔相继加码自提柜业务让这一市场陷入无法预测的惨烈竞争当中。自提货的做法就是进入社区，而嘿客门店的玩法是想先占领社区，这两种进社区的方式刚开时被众多社区O2O的创业者认为是狼来了，但如今众人醒悟，原来来的不是狼，只是哈士奇嘛�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　兼并物业的形式通常是物业公司的作风，一些中大型物业在吞并其他的中小物业，并默不作声的低调尝试吞并扩张的可行性，如今中小物业公司的出售报价已经越来越高了。此外，还有些物业公司在尝试联盟性质的合作，不过“联盟”并不是可控的合作关系，各家物业都各怀鬼胎�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　此前，在社区O2O早期发展阶段，有不少创业公司到处跟物业签合作协议，然后号称覆盖了多少个小区，不过这种投机的方式现在已经被淘汰，一来这种形式主要是为融资的包装，二来是为品牌宣传，但现在投资人、媒体都不傻，现在大家看的都是项目本身，而不再看所谓的小区覆盖量�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　<strong>圈钱流派：圈投资人的钱、圈加盟商的钱、圈消费者的�\�</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　与互联网相关的创业项目免不了有人想圈投资人的钱，谁让互联网是朝阳行业，而且潜力难以估量呢，有一个好故事自然会有投资人愿意相信，前两年社区O2O大火的时候，不少创业项目都拿到了钱，但如今基本的该关的关，该转型的转型了。今天的社区市场投资环境已经成熟了，资本市场不再相信概念，而是看实际的项目，此前那些业余的天使投资人吃过亏之后也变得精明了�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　投资人不出钱，自身又不盈利，那社区类项目该如何生存？招代理商，代理商也是某些社区项目的营收方式之一，而且有些项目特别容易吸引代理商，例如某社区便利店项目，加盟费不菲，但因包装的好，招商成绩不错，从项目的营收来源来看，这种奶茶店式的招商模式，从加盟商手中赚钱还是比较容易的，除了赚加盟费外，还做长期的产品供应链也可获得营收。不过，这种项目本身究竟有多大的潜力还不好说，仍需进一步观察�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　有些项目圈投资人的钱，有些项目圈加盟商的钱，还有些项目圈消费者的钱，例如去年崩盘的某社区水果项目，充多少送多少的模式搞不好性质就变成了圈钱。零售业不是服务业，毛利没有那么高，那些理发店可以从500�\�500，因为他们毛利高、成本低，正常的零售业，�\�1000�\�300已经是极限了，那些充1000�\�1000的早晚会出问题，这种模式不能学�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　<strong>激情流派：满腔热血、盲目无知、自以为�\�</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　社区O2O虽然机会多，但并不是那么容易能做成的，创业从来不缺少满腔热血的人。满腔热血到不可怕，创业需要激情，可如果满腔热血又盲目无知那就糟糕了，更可怕的是忙腔热血+盲目无知+自以为是，那就全完了�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　激情流派并不可取，之前见过很多一时脑热进入社区O2O市场，但进入之后发现到处都是坑，那个时候想出来也已经出不来，不然就是人财两空，最后的出路就是继续走下去寻找转型或出售的机会，这类公司非常多�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　盲目无知的就贸然进入社区的比较少，但也有一些，有的是创业者，有的是投资人，这些当中多半是被一些别的公司给忽悠了。还有的一些是明知山有虎偏向虎山行的，明知不可为而为之，别人奉劝很多次都不听，结果弄巧成拙�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　在激情流派的社区O2O创业大军中，自以为是型的创业团队最为可怕，之前也见识过不少，以为全天下别人的项目都是错的、有问题的，只有自己的项目最可行。当然，创业者需要有这种自我认可的意识，不能轻易被外界声音动摇，很多时候说的人多并不一定对，但也不能完全否定别人的做法，兼听则明�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　<strong>政策流派：跟着政策�\�</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　在社区市场创业，还有一种流派是跟着政策走的，上面主管部门有什么诉求、要求就怎么做项目，这在天朝市场也不算什么奇闻，尤其在社区环境当中，有时候跟着政策走会有许多便利，例如社区开展项目更容易，配合政府部门的城市建设可以拿到一定补贴等。跟着政策走也算是一个不错的方向吧，前提是能得到政府的支持�\�\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	　　在社区O2O市场创业之前要慎重，干过这行的都知道社区市场有很多看不见的暗坑，一旦不小心陷入进去就很难爬出来，所以创业之前多做做市场调研，多看看别人都是怎么做的。以上基本涵盖了各种社区创业类型的项目特点，有则改之无则加勉吧�\�\r\n</p>','0','/Uploads/201603/56f8aa5411ba0.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=66','24','1459137119','1459137137','','0');
INSERT INTO `yourphp_article` VALUES ('67','3','2','hello','app公司最正规的内部构�\�','','APP 公司  架构 专业','','','随着社会科技的不断发展进步，移动互联网领域已经成为了人们日常生活的一部分，目前很多App外包公司则雨后春笋般的涌现出来，那么在这一波app开发外包浪潮中，很多中小型企业应该如何充分利用移动平台成了当今的重�\�...','<p>\r\n	<img src=\"/Uploads/201603/56fb8cb735a37.jpg\" /> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;text-indent:29px;background-color:#FFFFFF;\">\r\n	随着社会科技的不断发展进步，移动互联网领域已经成为了人们日常生活的一部分，目前很�\�<span style=\"font-family:Tahoma;\">App</span>外包公司则雨后春笋般的涌现出来，那么在这一�\�<span style=\"font-family:Tahoma;\">app</span>开发外包浪潮中，很多中小型企业应该如何充分利用移动平台成了当今的重要任务，思远高创专业�\�<span style=\"font-family:Tahoma;\">app</span>定制外包公司表示：很大传统企业由于开发技术上的限制、行业上的冲突、逻辑上的冲突等等，则更倾向于选择<span style=\"font-family:Tahoma;\">APP</span>外包公司全程包办，但是如何选择靠谱�\�<span style=\"font-family:Tahoma;\">APP</span>外包公司呢，这成为了传统企业开�\�<span style=\"font-family:Tahoma;\">APP</span>时最头痛的事情，不仅要保证开发质量，又要能保障售后服务，今天小编就先从一家正规的<span style=\"font-family:Tahoma;\">app</span>外包公司，应该设置哪些内部构建呢？也方便为大家以后寻找靠谱的<span style=\"font-family:Tahoma;\">app</span>外包公司提供参考�\�\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	财务部：公司的收入，支出，发工资，跟钱有关的�\�<br />\r\n人事部：负责公司人员的招入，迁出，人员变化都要这个部门来做；<br />\r\n行政部：负责公司整体的战略方向，策划活动等等�\�<br />\r\n产品部：负责调研市场需求，产生需求，以及产品对市场的冲击等等，原型图的设计、保真图、市场分析等�\�<br />\r\n开发部：开发部又分�\�<span style=\"font-family:Tahoma;\">ios</span>组、安卓组�\�<span style=\"font-family:Tahoma;\">php</span>组、测试组（安卓开发部：开发安卓应用，<span style=\"font-family:Tahoma;\">ios</span>开发部：开发苹果应用，服务器后端开发部：开�\�<span style=\"font-family:Tahoma;\">app</span>所需要的服务器端数据支撑）：负责按产品市场部的需求开发产品；<br />\r\n测试部：负责开发部程序的测试。这个工作也有可能直接由开发部负责程序测试，产品市场部负责功能性测�\�\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:Tahoma;\">&nbsp;</span>技术实力是一�\�<span style=\"font-family:Tahoma;\">APP</span>开发公司的核心，决定着该公司以后的发展高度。目前，就全�\�<span style=\"font-family:Tahoma;\">APP</span>开发环境而言，打肿脸充胖子的公司也不在少数。而这些公司即便最后以夸大实力的优秀公关接下了单子，到最后要么硬着头皮拖着，要么草草应付了事，再不然就外包给其他团队，自己从中抽取介绍费或分成�\�<br />\r\n所以选择具有核心实力的公司显得尤为重要�\�\r\n</p>\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56fb8c65684fc.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=67','47','1459326405','1459326451','','0');
INSERT INTO `yourphp_article` VALUES ('68','3','2','hello','App外包开发需要知道的必要成本有哪�\�','','app 开�\�  成本','','','App外包开发的必要成本，根据你公司的目的以及你想要App做些什么，app的外包费用可以从几万元到高达几十万甚至上百万元。各位看官如果想更详细地回答这个问题，我们需要看看开发、营销和维护一个App涉及到些什么。目...','<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56fce49da2edc.jpg\" /> \r\n</p>\r\nApp外包开发的必要成本，根据你公司的目的以及你想要App做些什么，app的外包费用可以从几万元到高达几十万甚至上百万元。各位看官如果想更详细地回答这个问题，我们需要看看开发、营销和维护一个App涉及到些什么。目前市场有各种各样用于给App外包开发服务定价的模型，思远高创公司认为最普遍的模型包括以下什么组成部分：\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	由于app应用程序支持的固定的定期收费�\�<br />\r\n<br />\r\n•对于基础数量的应用提升小时数所征收的固定费用（通常作为总固定费用或者应用支持费用的一部分），伴随按照时间和用材所增加的费用�\�<br />\r\n<br />\r\n•报价重要的开发工作的一个框架，基于项目固定费用方式，计算其消耗的时间和耗材，或者直接按照时间和耗材方式进态测算费用�\�<br />\r\n<br />\r\n一些App开发商想按小时支付，而有些人更喜欢按每个项目支付。你向开发商描述项目越准确，那么他就能越准确地评估价格�\�<br />\r\n<br />\r\n例如，Bahndr，是一�\�30000美元的社交游戏，用完全的自定义图标从头开始建立，它本来可以花费两倍的成本，因为有项目被赋予更大的商店�\�<br />\r\n<br />\r\n在此之上，根据不同的App，可以预计花�\�8,000- 30,000美元在QA测试上。为使你的项目摆脱任何错误并提高可用性，你需要做的更改越多，你需要花费的成本就越多�\�<br />\r\n<br />\r\n除App外包开发成本之外，还有关于使你的App进入相关在线商店和市场的成本�\�<br />\r\n<br />\r\n发布App：在应用商店99美金，在谷歌商店注册25美元�\�<br />\r\n<br />\r\n基础设施，服务器，和其他后端支持�\�100-200美元/月�\�<br />\r\n<br />\r\n社交媒体整合�\�500-1500美元�\�<br />\r\n<br />\r\n应用程序内购买：1000-4000美元�\�<br />\r\n<br />\r\n游戏中心�\�1,000美元�\�<br />\r\n<br />\r\n营销：初始营销活动1,000- 3,000美元�\�\r\n</p>','0','/Uploads/201603/56fce44589c3a.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=68','27','1459414181','1459414203','','0');
INSERT INTO `yourphp_article` VALUES ('69','10','2','hello','脱光了给你看，一�\�8年app从业者的独家爆料','','app 开�\�  爆料','','','      一�\�8年app外包从业者的独家爆料：生活在当下一说到APP大家肯定不会陌生，随着智能手机和iPad等移动终端设备的普及，人们的上网方式也慢慢的被改变，放眼国内各大电商，均拥有了自己的�\�...','<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">&nbsp; &nbsp; &nbsp;&nbsp;一�\�8年app外包从业者的独家爆料：生活在当下一说到APP大家肯定不会陌生，随着智能手机和iPad等移动终端设备的普及，人们的上网方式也慢慢的被改变，放眼国内各大电商，均拥有了自己的应用移动客户端，并且现在以销售为主导的公司超�\�50%以上的销售额都来自移动端。在移动互联网时代，传统的营销方式已经不适应于现在的市场变化。手机作为流量入口，已经逐渐超过PC端的流量。许多传统企业面临着转型的困境，都想赶上移动互联网时代潮流，通过开发自己企业的专属APP，领先竞争对手，&nbsp;实现企业营销的跨越式增长�\�</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 那么作为一个拥�\�8年工作经验的老鸟，为大家介绍一下：企业拥有自己手机APP软件的好�\�\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	在这个移动互联网已经彻底打败PC互联网的时代，据调查统计发现国内大陆平均每一个人的手机里大约�\�40个APP之多！于是乎，在巨大的app商机面前，很多专门为企业定制APP的外包公司应运而生了。毋庸置疑，手机APP外包软件作为企业开辟全新的营销推广手段其带来的好处主要有四个：\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	一、第一时间抢占商机：超越竞争对手，争取更多的商业机�\�,达到产品和服务宣传目�\�\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	二、提高忠诚度高：90%的用户都不会主动卸载软件，它为企业创造更多的盈利机会�\�\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">三、增强体验感强：以客户为核心，重视客户体验，可根据企业自身特征，制作出最符合企业自身需求的客户端，从而展开相应的移动营销服务�\�</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">四、降低成本低廉：相比派发宣传册与会员卡，移动应用程序不仅成效高，把企业的相关信息都包含在内，而且用户下载该程序是出于主动保留的心理，成效高，成本不会随着下载次数增加而增加�\�</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">还有众多好处在此不再赘述。在app领域工作8年的我在下面就来说说作为顾客商家的一些顾虑：</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">如何防止自己被APP外包公司忽悠�\�</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">据说制作一个APP需要数万元，制作成品后每月每年的维护费用还要每日愈增这科学么？本身是IT小白只会码字和复制粘贴编程神马都不懂，在技术方面的审核该何去何从？如何才能知道外包制作一个APP的成本和时间�\�</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">�\�</span><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">三个问题想必都是商家们所关心的核心问题，尤其第一个问题可谓是重中之重，小编在经过整理和酝酿后得出了一些骗子外包APP公司的特征明细，其具体特征如下：</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">一、没有公司正式官网亦搜索不到产品相关信息的�\�</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	二、有一部分购买某些门户的手机网站自己授权证书并改成“XX门户”等高大上名字做虚假宣传�\�\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">三、常派业务员打电话，说是转让，免费招商分成，参加拍卖会，电子商务比赛大会等为幌子。诱骗顾客去他们公司签合同，并且出口就是几万十几万�\�</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">&nbsp;APP外包公司一般会存在哪些问题</span>�\�\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">&nbsp; &nbsp; &nbsp; &nbsp;APP外包所面对的问题是：不断提高的用户体验需求与低门槛造成的较差实现能力之间的不匹配性。目前，外包服务很多都是价格便宜，但质量不行，达不到客户预期，难以把用户体验做好，需求方自然会认为外包不靠谱�\�</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 外包服务是一个拼价格，拼人力的行当。在移动互联网这个需要创新的行业，外包服务显然不可能在人力成本红利之上赚取利润。而当人才价格日益走高时，利润也逐渐降低�\�</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;目前具备一年IOS开发平台经验的人，起步就要15000元，而一个外包项目通常会包含项目经理，产品经理，两个开发人员。为保证质量�\�5个人做一个项目，以一个月为周期，低于10万元每月的单，对于公司来说就是赔钱的。但是，有些小型工作室，两个人把5个人的活都兼职做了，只需要几万元。因此，人贵利薄，很容易形成价格的恶性竞争�\�</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 传统PC端服务商和新兴的APP外包企业走的是截然不同的两条路。传统PC端服务商采取的是模块化低价赚取规模化盈利，而APP外包企业则选择了定制化赚取高价服务费。模块化就是根据五个行业通用功能开发出媒体资讯、商业企业、门户、餐饮等通用模块，然后根据客户需求不断修改这几个固定模块并集团化运作。用户可以免费享受到升级，成本则通过规模化销售不断摊薄�\�</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>','0','/Uploads/201604/570c5b8a90ee0.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=69','11','1460427601','1460427664','','0');
INSERT INTO `yourphp_article` VALUES ('70','3','2','hello','企业管理APP软件开发致力提高工作效�\�','','','','','       企业管理APP软件开发商【思远高创公司】表示：移动APP存在于人们生活的方方面面，方便人们日常生活的同时，也为企业管理带来了更多便利，企业管理类APP提高了员工的工作效率。企业管理AP...','<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;企业管理APP软件开发商【思远高创公司】表示：移动APP存在于人们生活的方方面面，方便人们日常生活的同时，也为企业管理带来了更多便利，企业管理类APP提高了员工的工作效率�\�<strong>企业管理APP软件</strong>为用户提供一站式的办公服务平台，让每个员工在工作中能够实现实时交流互动，满足用户的办公需求，除此之外，还具备充分的管理属性，为管理层提供客户管理、移动OA管理等功能，致力于提升企业的管理效率，以及打�\�90后员工更乐意接受的管理模式�\�\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	　　<img src=\"http://img.mp.itc.cn/upload/20160411/f1305a596522446fb3f63e3d2ee2de9d_th.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	　　在传统的管理模式中，很多企业不但没有提高工作效率，相反地在各个环节增加了工作人员协同完成项目，这种方式不仅一定程度上降低了工作效率，而且提升增加可不必要的人力成本支出，进一步使得运营成本相对增高。为此，在APP设计中主要是从提升企业管理执行力以及员工执行力等方面出发�\�\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	　　在提升管理层员工执行力方面，为用户实现轻松办公服务，通过数据实时同步，为用户实现即时了解最新的工作动态、工作分配以及任务进度等信息，最终实现节省办公、管理时间，进一步提高效率，增强执行力的作用，使得组织内部的运行更加顺畅�\�\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	　　<img src=\"http://img.mp.itc.cn/upload/20160411/593d9a4f0c5f4b14810bafec3f1aa9b4.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	　　<strong>企业管理类软件的功能介绍</strong> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	　　因为企业管理类软件是面向整个企业的，所以所包含的功能主要还是以企业内部管理为主，功能系统包括OA（办公自动化）、财务管理软件系统、进存销、ERP（企业资源计划）、CRM（客户关系管理）、HR（人力资源）、合同管理系统等共同形成一套信息化APP应用软件系统。这款管理类APP可以帮助企业管理者优化工作流程，进而提高工作效率�\�\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	　　企业管理类应用软件拥有比较严格的权限设置和较高的安全性，同时管理类APP也拥有比较强的系统性和扩展性，所以有很多的大型企业都会开发一款管理类APP软件，不过对于小企业和个人经营者来说这样的管理类APP却没有太大的实用性�\�\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	　　但是随着市场的进一步细分，进来市面上也出现了一些针对性比较强的企业管理类软件，这些软件一般只针对企业管理的某一个领域，受到小企业和个人创业者的欢迎。同时，随着人力成本的大幅上升，企业员工个性化突出，因而员工对企业的忠诚度相较以往有所下降，这也使得企业的用人成本大幅提高，为此企业老板们亟需降低用人成本，调动员工的工作积极性，提高管理效率�\�\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	　　思远高创<span>是专业移动应用技术提供商，致力于移动整体解决方案的策划、设计、开发、发布。公司提供APP外包服务，帮助客户部署移动应用发展�\�</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	　　电话�\�<span style=\"color:#555555;font-family:\'Microsoft Yahei\', Arial, Simsun, sans-serif;font-size:14px;background-color:#FAFAFA;\">010-84764221</span> \r\n</p>','0','http://img.mp.itc.cn/upload/20160411/f1305a596522446fb3f63e3d2ee2de9d_th.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=70','27','1460428547','1460428569','','0');
INSERT INTO `yourphp_article` VALUES ('71','10','2','hello','传统房地产企业转型的最后一根稻草是不是互联网APP?','','房地产APP开�\�, 房地产APP, 房地产社区APP','','','      传统房地产企业的转型早已经在90年代初就开始有了，所以你可以明显看到，你身边的房地产企业站点减少了很多，因为大部分转到线上去发展了。刚开始尝试转型的时候，房地产APP开发平台的�\�...','<p>\r\n	<span style=\"color:#7A7A86;font-family:兰亭纤黑, 兰亭中黑, 兰亭特黑, 思源黑体, SYHT, \'Microsoft Yahei\', 微软雅黑, Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp;&nbsp;<strong>传统房地产企�\�</strong>的转型早已经�\�90年代初就开始有了，所以你可以明显看到，你身边的房地产企业站点减少了很多，因为大部分转到线上去发展了。刚开始尝试转型的时候，房地产APP开发平台的盈利模式也很模糊，一手拉着政府、一手牵着银行相当于开着“印钞机”的传统房地企业不是在思考如何去参股互联网房产，而是站在岸边嘲笑互联网房产为“烧钱的无底洞”�\�</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#7A7A86;font-family:兰亭纤黑, 兰亭中黑, 兰亭特黑, 思源黑体, SYHT, \'Microsoft Yahei\', 微软雅黑, Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#7A7A86;font-family:兰亭纤黑, 兰亭中黑, 兰亭特黑, 思源黑体, SYHT, \'Microsoft Yahei\', 微软雅黑, Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\"> </span>\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp;&nbsp;直到最近几年，<strong>互联网房地产APP</strong>开发行业的发展才有了起色。当互联网房地产APP平台找到商业盈利模式高歌猛进时，传统房地产企业也在亦步亦趋，网站、双微（微博、微信）一端（APP客户端）等手段层出不穷，但毫不客气地来说，从商业模式和商业价值上来说基本是然并卵�\�\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp;\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp;&nbsp;<span style=\"color:#7A7A86;font-family:兰亭纤黑, 兰亭中黑, 兰亭特黑, 思源黑体, SYHT, \'Microsoft Yahei\', 微软雅黑, Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\">&nbsp;&nbsp; &nbsp;&nbsp;</span><span style=\"font-size:16px;color:#333333;font-family:\'Microsoft YaHei\', 微软雅黑, \'Microsoft JhengHei\', 华文细黑, STHeiti, MingLiu, serif;background-color:#FFFFFF;\">根据新浪乐居移动运营中心�\�2013年度移动互联网房产用户调研分析报告》显示，79%的移动互联网房产用户每天至少浏览一次房产类信息，浏览时间也由上下班、上厕所的碎片时间向睡觉前、中午休息等连续时间转变，其中北上广深的房产用户数位列全国前四位。尽管PC平台依然是用户获取房产信息最重要的渠道，但移动端的活跃表现已经在悄然改变人们获取信息的来源�\�</span><span style=\"color:#7A7A86;font-family:兰亭纤黑, 兰亭中黑, 兰亭特黑, 思源黑体, SYHT, \'Microsoft Yahei\', 微软雅黑, Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\"></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"color:#7A7A86;font-family:兰亭纤黑, 兰亭中黑, 兰亭特黑, 思源黑体, SYHT, \'Microsoft Yahei\', 微软雅黑, Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp;&nbsp;特别是现在，打从2014年成为房地产后服务社区APP的元年开始，大家都认可了房地产社区APP的模式。在国内无论是互联网圈还是地产圈，这两年都在找寻各式各样的机会切�\� O2O，社区增�\�/服务做的可是一茬接着一茬�\�</span><a href=\"http://www.ewhale.cn/wp-content/uploads/2016/04/24.jpg\"></a> \r\n</p>\r\n<p>\r\n	<span style=\"color:#7A7A86;font-family:兰亭纤黑, 兰亭中黑, 兰亭特黑, 思源黑体, SYHT, \'Microsoft Yahei\', 微软雅黑, Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#7A7A86;font-family:兰亭纤黑, 兰亭中黑, 兰亭特黑, 思源黑体, SYHT, \'Microsoft Yahei\', 微软雅黑, Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color:#333333;font-family:\'Microsoft YaHei\', 微软雅黑, \'Microsoft JhengHei\', 华文细黑, STHeiti, MingLiu, serif;font-size:16px;background-color:#FFFFFF;\">由于不动产买卖涉及大额交易，信任感成了房地产APP在短时间内无法取代二手房门店的重要原因之一�\�</span><span style=\"color:#333333;font-family:\'Microsoft YaHei\', 微软雅黑, \'Microsoft JhengHei\', 华文细黑, STHeiti, MingLiu, serif;font-size:16px;background-color:#FFFFFF;\">同时房产APP所提供的服务单一也为人所诟病。一位不愿透露姓名的房地产网站高管表示，目前市场上的房产APP大多与其互联网端的业务雷同，是互联网内容的复�\�</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#7A7A86;font-family:兰亭纤黑, 兰亭中黑, 兰亭特黑, 思源黑体, SYHT, \'Microsoft Yahei\', 微软雅黑, Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#7A7A86;font-family:兰亭纤黑, 兰亭中黑, 兰亭特黑, 思源黑体, SYHT, \'Microsoft Yahei\', 微软雅黑, Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\">&nbsp;</span><span>&nbsp; &nbsp; &nbsp; &nbsp;总的来说�\�<strong>房地产APP</strong></span><span>行业开始垂直细分化发展，由房地产中间到物业社区服务等，一直以来，互联网企业都在深挖传统房地产任何可能发展的发展，未来的房地产APP行业，更值得我们期待�\�</span><span></span> \r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201604/571448366399d.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=71','18','1460947007','1460947016','','0');
INSERT INTO `yourphp_article` VALUES ('72','3','2','hello','APP开发除了看价格还要看什么？','','','','','      随着移动互联网的发展，智能手机的普及，手机APP越来越受大众的关注，所以很多的企业及个人都想开发自己专属的APP，占有这块市场，但是很多企业对APP开发的相关情况不是很了解，大部分的...','<p>\r\n	<span style=\"font-family:微软雅黑, 宋体;color:#333333;font-size:14px;\">&nbsp; &nbsp; &nbsp;&nbsp;随着移动互联网的发展，智能手机的普及�\�</span><span style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">手机APP</span><span style=\"font-family:微软雅黑, 宋体;color:#333333;font-size:14px;\">越来越受大众的关注，所以很多的企业及个人都想开发自己专属的APP，占有这块市场，但是很多企业对APP开发的相关情况不是很了解，大部分的人过来询问我们，开发APP要多少钱？大部分都是询问价格的，其实开发APP价格只是一个因素，</span><span style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">APP开�\�</span><span style=\"font-family:微软雅黑, 宋体;color:#333333;font-size:14px;\">还有许多的注意事�\�,下面一起了解APP开发前需要注意的问题�\�</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:微软雅黑, 宋体;font-size:14px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; &nbsp;一、需要做APP的需求客户有很多，有想做企业APP软件，创业APP软件，旅游APP软件，理财APP软件，餐饮APP软件，汽车APP软件，购物APP软件，招聘类APP软件等等�\�</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, 宋体;color:#333333;font-size:14px;\"> </span>\r\n</p>\r\n<p style=\"font-family:微软雅黑, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n	　　二、手机APP开发通常是Android和iOS两个系统，因为现实生活中用的人都很多，一般制作APP是这两个系统同时开发。两种系统制作工期也差不多，前后相差最多不超过5天�\�\r\n</p>\r\n<p style=\"font-family:微软雅黑, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n	　 &nbsp; 三、制作APP的报价与制作工期有很大关系，制作页面的多少与功能要求的复杂程度，很大程度上决定着报价的多少�\�\r\n</p>\r\n<p style=\"font-family:微软雅黑, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n	　　用户如果想找APP开发公司制作开发APP，需要对报价的公司做一些了解，大概是三个方向。首先是对报价公司的情况做个考察，比如公司的资质，规模，员工多少，核心技术人员有几个?哪些方面的业务范围比较擅长。其次是前期完成的成功案例是哪些?好对自身的APP产品心中有个效果预期。最后是跟制作公司确�\� 报价多少与完成工期长短，比如同一个项目A公司报价30万，制作周期3个月。另一家公司报�\�20万，制作周期5个月。这就需要需求客户自己去抉择�\�\r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56fce62a784e5.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=72','1','1461124451','1461124489','','0');
INSERT INTO `yourphp_article` VALUES ('73','3','2','hello','APP开发需从这三步确认客户需�\�','','','','','不管市场规模是否够大，也不管手机APP软件的热潮能够持续多久或未来会走向何方，APP已经成为当下一种新的显学了，仿佛谈论什么都必须跟APP划上等号才行，而因为APP受限于手机或者平板尺寸的限制，且本身又是一个软�\�...','<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">\r\n	<p>\r\n		<img src=\"/Uploads/201604/571702f7b0821.jpg\" />\r\n	</p>\r\n不管市场规模是否够大，也不管</span><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">手机</span><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">APP软件</span><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">的热潮能够持续多久或未来会走向何方，APP已经成为当下一种新的显学了，仿佛谈论什么都必须跟APP划上等号才行，而因为APP受限于手机或者平板尺寸的限制，且本身又是一个软件的概念，因此多半时候，只要谈起APP几乎就等同于谈论到UI或者UX一样�\�</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<strong><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">想要确认客户需求必须要做的三步�\�</span></strong> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">有时候如何确定用户需求，比确定市场定位更重要，或者先确定用户需求才能确定市场定位。作为需要APP开发的公司，资源和数据都比较有限，但是用户的需求是无限的。今天，</span><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">APP开发公�\�</span><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">-</span><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">蜂窝网络</span><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">就简单说一下客户的需求分解经验，有哪几步�\�</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<strong><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">第一</span></strong><strong><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">�\�</span></strong><strong><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">、理清需�\�</span></strong> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">我相信每个客户都是上帝创造的奇葩，能想敢想，希望影响世界，甚至改变世界。作为一个产品狗，我深深滴体会到脑洞之大给自己带来的困扰：必须要无时无刻携带手机，没有手机的时候手边没有纸和笔直接让我抓狂！！</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">理清需求就是把我们想做的事情，或者说我们认为用户可能会需要的功能有条不紊的罗列出来，用文字OK，不过我更建议使用脑图，不管是手绘也好，Xmind也好，MindManager也好，工具只是形式�\�</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<strong><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">第二步：整理故事</span></strong> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">至于怎么样讲一个好故事？绘声绘色地讲是一种方式（视觉效果），切入人心地讲是一种方式（用户心理），抓着重点讲（核心流程），当然还有很多其他的方式，如果讲故事的人能够灵活地把多种方式柔和在一起，又能够将他们发挥得恰到好处，那讲出来的故事一定会是一个好故事�\�</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<strong><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">第三步：分解故事</span></strong> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">我们已经清楚地讲完了一个故事，分解之后我们发现里面涉及到的关键物其实就只有几个：APP前端（首页、商品列表、订单列表）、支付等等。所以在产品架构上，为了保证这些东西都得以实现，必须要保证有一个APP前端系统，这个系统由首页，商品列表，订单列表组成，除此之外，还需要有一个系统支持支付，为了方便管理，后台还需要将用户的订单记录保存或者展示�\�</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">北京APP开发公�\�-思远高创</span><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">表示，开发一款APP出发点永远是需求。我们不能想当然的认为某个APP会很好，只有真正满足用户的需求并在商业上获得回报的APP才能取得成功�\�</span><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">APP开�\�</span><span style=\"font-family:微软雅黑;color:#444444;font-size:15px;\">中容易犯的最大一个错误就是在完成合理的APP规划前开始执行。所以，我们需要给规划环节足够的重视�\�</span> \r\n</p>','0','/Uploads/201604/571702b2ca20a.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=73','2','1461125818','1461125892','','0');
INSERT INTO `yourphp_attachment` VALUES ('2','2','24','2','khjbSp2Yed.jpg','/www/PINGPHP/Uploads/201603/56df948626baa.jpg','43634','jpg','1','1','1','1457493126','0.0.0.0','1');
INSERT INTO `yourphp_attachment` VALUES ('3','2','25','3','solu-8.jpg','/www/PINGPHP/Uploads/201603/56df97a947b80.jpg','22650','jpg','1','1','1','1457493929','0.0.0.0','1');
INSERT INTO `yourphp_attachment` VALUES ('4','230','1','1','bannernew_03.jpg','/www/PINGPHP/Uploads/201603/56df9f7d87ad9.jpg','357680','jpg','1','0','1','1457495933','0.0.0.0','1');
INSERT INTO `yourphp_attachment` VALUES ('5','230','1','2','banner1.jpg','/www/PINGPHP/Uploads/201603/56dfb0bd61cac.jpg','79615','jpg','1','0','1','1457500349','0.0.0.0','1');
INSERT INTO `yourphp_attachment` VALUES ('7','230','1','1','56df9f7d87ad9.jpg','/Uploads/201603/56e27a33a1110.jpg','97950','jpg','1','0','2','1457682995','221.220.251.112','1');
INSERT INTO `yourphp_attachment` VALUES ('9','2','23','7','khjbSp2Yed.jpg','/Uploads/201603/56e27c599fcd5.jpg','43634','jpg','1','1','2','1457683545','221.220.251.112','1');
INSERT INTO `yourphp_attachment` VALUES ('10','2','23','3','solu-8.jpg','/Uploads/201603/56e27c7a87f10.jpg','22650','jpg','1','1','2','1457683578','221.220.251.112','1');
INSERT INTO `yourphp_attachment` VALUES ('11','2','22','4','李克�\�.jpg','/Uploads/201603/56e27c9532b0e.jpg','116907','jpg','1','1','2','1457683605','221.220.251.112','1');
INSERT INTO `yourphp_attachment` VALUES ('13','2','1','3','guanggao1.jpg','/Uploads/201603/56e28de98e099.jpg','544199','jpg','1','1','2','1457688041','221.220.251.112','1');
INSERT INTO `yourphp_attachment` VALUES ('14','4','1','1','专业.jpg','/Uploads/201603/56e290bc01928.jpg','327290','jpg','1','1','2','1457688764','221.220.251.112','1');
INSERT INTO `yourphp_attachment` VALUES ('15','4','1','1','手机11156678985.png','/Uploads/201603/56e291b125c3a.png','211528','png','1','1','2','1457689009','221.220.251.112','1');
INSERT INTO `yourphp_attachment` VALUES ('16','2','26','8','好邻便利1.png','/Uploads/201603/56e568cf4d940.png','207435','png','1','1','2','1457875151','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('17','2','0','0','金百�\�1.png','/Uploads/201603/56e568fa74e43.png','145307','png','1','1','2','1457875194','115.34.187.7','0');
INSERT INTO `yourphp_attachment` VALUES ('18','2','0','0','经纱鞋城1.png','/Uploads/201603/56e5690b24d16.png','111604','png','1','1','2','1457875211','115.34.187.7','0');
INSERT INTO `yourphp_attachment` VALUES ('19','2','24','2','来投1.jpg','/Uploads/201603/56e5691c56624.jpg','51794','jpg','1','1','2','1457875228','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('20','2','0','0','俏商�\�1.png','/Uploads/201603/56e5693834352.png','328751','png','1','1','2','1457875256','115.34.187.7','0');
INSERT INTO `yourphp_attachment` VALUES ('21','2','0','0','同城物流1.png','/Uploads/201603/56e569470788b.png','92991','png','1','1','2','1457875271','115.34.187.7','0');
INSERT INTO `yourphp_attachment` VALUES ('22','2','0','0','同城物流2.png','/Uploads/201603/56e5696ec76fb.png','68374','png','1','1','2','1457875310','115.34.187.7','0');
INSERT INTO `yourphp_attachment` VALUES ('23','2','22','10','移动餐饮1.png','/Uploads/201603/56e5697a660d8.png','87441','png','1','1','2','1457875322','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('24','2','22','9','移动电商1.png','/Uploads/201603/56e5698bbac10.png','172255','png','1','1','2','1457875339','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('25','2','0','0','移动金融.png','/Uploads/201603/56e569e6c6fa1.png','211081','png','1','1','2','1457875430','115.34.187.7','0');
INSERT INTO `yourphp_attachment` VALUES ('26','2','23','11','云医1.png','/Uploads/201603/56e569f4514db.png','108578','png','1','1','2','1457875444','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('27','2','23','0','掌上医院1.jpg','/Uploads/201603/56e56a0b72465.jpg','46436','jpg','1','1','2','1457875467','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('28','2','0','0','掌中�\�1.png','/Uploads/201603/56e56a171e889.png','209666','png','1','1','2','1457875479','115.34.187.7','0');
INSERT INTO `yourphp_attachment` VALUES ('29','2','22','4','20150328115413799.jpg','/Uploads/201603/56e574be46aed.jpg','17749','jpg','1','1','2','1457878206','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('30','2','26','12','俏商�\�2.png','/Uploads/201603/56e57719d3f5a.png','170364','png','1','1','2','1457878809','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('31','2','22','10','餐饮app1.jpg','/Uploads/201603/56e6685249419.jpg','45634','jpg','1','0','2','1457940562','114.244.133.248','1');
INSERT INTO `yourphp_attachment` VALUES ('32','2','22','9','商城app1.jpg','/Uploads/201603/56e66a345c69f.jpg','56162','jpg','1','0','2','1457941044','114.244.133.248','1');
INSERT INTO `yourphp_attachment` VALUES ('33','2','22','3','yy1.jpg','/Uploads/201603/56e66f2f30491.jpg','24795','jpg','1','0','2','1457942319','114.244.133.248','1');
INSERT INTO `yourphp_attachment` VALUES ('34','2','22','3','yy2.jpg','/Uploads/201603/56e66f89ec420.jpg','29251','jpg','1','0','2','1457942409','114.244.133.248','1');
INSERT INTO `yourphp_attachment` VALUES ('35','2','22','3','yy3.jpg','/Uploads/201603/56e66fdb8f80e.jpg','4779','jpg','1','0','2','1457942491','114.244.133.248','1');
INSERT INTO `yourphp_attachment` VALUES ('36','2','22','3','yy4.jpg','/Uploads/201603/56e66ff39ea4f.jpg','29701','jpg','1','0','2','1457942515','114.244.133.248','1');
INSERT INTO `yourphp_attachment` VALUES ('37','2','22','17','20160308042150310.jpg','/Uploads/201603/56e8d09838fda.jpg','19676','jpg','1','1','2','1458098328','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('38','2','10','18','5379962_073442099867_2.jpg','/Uploads/201603/56e8d34805a5b.jpg','134015','jpg','1','1','2','1458099016','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('39','2','10','19','8c832acb0163e525c587c75f0417f2f0.jpg','/Uploads/201603/56e8d4f219473.jpg','66343','jpg','1','1','2','1458099442','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('40','2','10','18','5379962_073442099867_2.jpg','/Uploads/201603/56e8d8ee89d3e.jpg','106240','jpg','1','1','2','1458100462','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('41','2','10','18','5379962_073442099867_2.jpg','/Uploads/201603/56e8d901b3118.jpg','106240','jpg','1','0','2','1458100481','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('42','2','22','31','3_fengkongqi_6996_20140329151104.jpg','/Uploads/201603/56e8dab7cb781.jpg','10388','jpg','1','1','2','1458100919','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('43','2','10','43','t01e3af85edde50d0c0.jpg','/Uploads/201603/56e8f7779a2e0.jpg','21230','jpg','1','1','2','1458108279','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('44','2','22','44','移动金融.png','/Uploads/201603/56e8fc348a5ba.png','211081','png','1','0','2','1458109492','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('45','2','22','31','3_fengkongqi_6996_20140329151104.jpg','/Uploads/201603/56e8fd83ce8ca.jpg','10388','jpg','1','1','2','1458109827','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('46','2','0','0','2457331_164411003346_2.jpg','/Uploads/201603/56e8fe6c39ae8.jpg','113159','jpg','1','1','2','1458110060','221.221.233.24','0');
INSERT INTO `yourphp_attachment` VALUES ('47','2','22','31','2457331_164411003346_2.jpg','/Uploads/201603/56e8fe7f9bd4f.jpg','113159','jpg','1','1','2','1458110079','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('48','2','22','31','anli_wuliu1.jpg','/Uploads/201603/56e9056b6556a.jpg','33657','jpg','1','0','2','1458111851','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('49','2','22','31','wuliu2.jpg','/Uploads/201603/56e90593a2a09.jpg','37727','jpg','1','0','2','1458111891','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('50','2','22','45','QQ图片20160316155625.png','/Uploads/201603/56e9125b96ab7.png','131915','png','1','0','2','1458115163','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('51','2','22','45','59263608.jpg','/Uploads/201603/56e9138d13f7c.jpg','25770','jpg','1','1','2','1458115469','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('52','2','10','46','7414203_212959322105_2.jpg','/Uploads/201603/56e916bd1a43d.jpg','227253','jpg','1','0','2','1458116285','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('53','2','10','46','7414203_212959322105_2.jpg','/Uploads/201603/56e91736c7a1f.jpg','182123','jpg','1','0','2','1458116406','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('54','2','24','47','掌中�\�1.png','/Uploads/201603/56e9240cb3611.png','209666','png','1','1','2','1458119692','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('55','2','28','48','金百�\�1.png','/Uploads/201603/56e92ad81557b.png','145307','png','1','1','2','1458121432','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('56','2','3','49','mp60496559_1456372118639_1_th.jpeg','/Uploads/201603/56ea0fdb94270.jpeg','53629','jpeg','1','1','2','1458180059','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('57','2','3','50','20081241504499370.jpg','/Uploads/201603/56ea126879350.jpg','32223','jpg','1','1','2','1458180712','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('58','2','0','0','18025978734_830x285.jpg','/Uploads/201603/56ea14108ae53.jpg','101846','jpg','1','1','2','1458181136','221.221.254.106','0');
INSERT INTO `yourphp_attachment` VALUES ('59','2','3','51','18025978734_830x285.jpg','/Uploads/201603/56ea141cd2abe.jpg','101846','jpg','1','1','2','1458181148','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('60','2','3','51','062444_56977_c_pic.jpg','/Uploads/201603/56ea158880f90.jpg','49096','jpg','1','0','2','1458181512','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('61','2','3','52','20140217102618446.jpg','/Uploads/201603/56ea1750179ac.jpg','17686','jpg','1','1','2','1458181968','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('62','2','3','52','8_200706091931463.jpg','/Uploads/201603/56ea177c06c48.jpg','78372','jpg','1','0','2','1458182012','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('63','2','3','53','9FDCD89C695E4770973C9A3A8F5A4712.jpg','/Uploads/201603/56ea1e77a2d90.jpg','21951','jpg','1','1','2','1458183799','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('64','2','3','53','1536036185.jpg','/Uploads/201603/56ea1ef80ac81.jpg','70424','jpg','1','0','2','1458183928','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('65','2','10','55','123531smt8mplpnr8gmzyn.jpg','/Uploads/201603/56ef978d60ae4.jpg','27370','jpg','1','1','2','1458542477','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('66','230','1','2','banner1.jpg','/Uploads/201603/56efa013a7efa.jpg','132918','jpg','1','0','2','1458544659','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('67','2','22','57','maijiaxiu11.jpg','/Uploads/201603/56efb7ad801d3.jpg','126429','jpg','1','1','2','1458550701','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('68','2','22','57','zhifu33.jpg','/Uploads/201603/56efb7f6c0189.jpg','118759','jpg','1','0','2','1458550774','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('69','2','22','57','gouwu22.jpg','/Uploads/201603/56efb80570828.jpg','45102','jpg','1','0','2','1458550789','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('70','2','22','57','fenxiang11.jpg','/Uploads/201603/56efb82178612.jpg','43593','jpg','1','0','2','1458550817','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('71','2','22','57','shiyi11.png','/Uploads/201603/56efb82c05e15.png','108553','png','1','0','2','1458550828','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('72','230','1','1','56efb4b042b86.jpg','/Uploads/201603/56efbb92c7ee9.jpg','178758','jpg','1','0','2','1458551698','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('73','230','1','2','56efa1251dae7.jpg','/Uploads/201603/56efbbbbe6373.jpg','206868','jpg','1','0','2','1458551739','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('74','2','10','56','262501.jpg','/Uploads/201603/56efbda672da1.jpg','65966','jpg','1','1','2','1458552230','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('75','1','20','20','20141231113135625.png','/Uploads/201603/56f10819c3454.png','99402','png','1','0','2','1458636825','123.123.0.180','1');
INSERT INTO `yourphp_attachment` VALUES ('76','2','10','58','7cb02b04d543419f8fe66d6e28e624f7.jpg','/Uploads/201603/56f2052c10eb1.jpg','64154','jpg','1','0','2','1458701612','61.48.43.220','1');
INSERT INTO `yourphp_attachment` VALUES ('77','2','10','60','3572748995.jpg','/Uploads/201603/56f20e39c4a87.jpg','18018','jpg','1','1','2','1458703929','61.48.43.220','1');
INSERT INTO `yourphp_attachment` VALUES ('78','2','10','59','041328111269370.700x700.jpg','/Uploads/201603/56f20e599a931.jpg','110141','jpg','1','1','2','1458703961','61.48.43.220','1');
INSERT INTO `yourphp_attachment` VALUES ('79','2','10','61','get.jpg','/Uploads/201603/56f21011d6877.jpg','13047','jpg','1','1','2','1458704401','61.48.43.220','1');
INSERT INTO `yourphp_attachment` VALUES ('80','2','10','61','u=2198354506,4063054311&fm=21&gp=0.jpg','/Uploads/201603/56f210278fbbb.jpg','5686','jpg','1','0','2','1458704423','61.48.43.220','1');
INSERT INTO `yourphp_attachment` VALUES ('81','2','10','62','201501271700223603.jpg','/Uploads/201603/56f2162f07531.jpg','29653','jpg','1','1','2','1458705967','61.48.43.220','1');
INSERT INTO `yourphp_attachment` VALUES ('82','230','1','4','banner5.jpg','/Uploads/201603/56f26abbd43f0.jpg','157191','jpg','1','0','2','1458727611','61.48.43.220','1');
INSERT INTO `yourphp_attachment` VALUES ('83','1','20','20','iMobile.png','/Uploads/201603/56f38b52beddc.png','93336','png','1','0','2','1458801490','61.48.59.166','1');
INSERT INTO `yourphp_attachment` VALUES ('84','1','20','20','iMobile.png','/Uploads/201603/56f38c3910d1e.png','89578','png','1','0','2','1458801721','61.48.59.166','1');
INSERT INTO `yourphp_attachment` VALUES ('85','1','20','20','iMobile.png','/Uploads/201603/56f38f8019914.png','90641','png','1','0','2','1458802560','61.48.59.166','1');
INSERT INTO `yourphp_attachment` VALUES ('86','1','20','20','iMobile.png','/Uploads/201603/56f3904431cbd.png','88912','png','1','0','2','1458802756','61.48.59.166','1');
INSERT INTO `yourphp_attachment` VALUES ('87','2','22','63','5310995236.jpg','/Uploads/201603/56f3b67022899.jpg','31989','jpg','1','0','2','1458812528','61.48.59.166','1');
INSERT INTO `yourphp_attachment` VALUES ('88','2','10','64','u=194632033,3447876742&fm=11&gp=0.jpg','/Uploads/201603/56f49ef335468.jpg','217267','jpg','1','1','2','1458872051','221.217.179.121','1');
INSERT INTO `yourphp_attachment` VALUES ('89','2','3','65','upload_img_14238397214104.png','/Uploads/201603/56f4addae350d.png','82669','png','1','1','2','1458875866','221.217.179.121','1');
INSERT INTO `yourphp_attachment` VALUES ('90','2','10','66','10.jpg','/Uploads/201603/56f8aa5411ba0.jpg','22275','jpg','1','1','2','1459137108','221.221.255.121','1');
INSERT INTO `yourphp_attachment` VALUES ('91','2','3','67','2015012818320411411.jpg','/Uploads/201603/56fb8c65684fc.jpg','195447','jpg','1','1','2','1459326053','123.113.101.209','1');
INSERT INTO `yourphp_attachment` VALUES ('92','2','3','67','u=1559201635,1175104857&fm=21&gp=0.jpg','/Uploads/201603/56fb8cb735a37.jpg','19949','jpg','1','0','2','1459326135','123.113.101.209','1');
INSERT INTO `yourphp_attachment` VALUES ('93','2','3','68','20150328115413799.jpg','/Uploads/201603/56fce44589c3a.jpg','17749','jpg','1','1','2','1459414085','114.240.82.43','1');
INSERT INTO `yourphp_attachment` VALUES ('94','2','3','68','201472623171016366.jpg','/Uploads/201603/56fce49da2edc.jpg','92076','jpg','1','0','2','1459414173','114.240.82.43','1');
INSERT INTO `yourphp_attachment` VALUES ('95','2','10','58','041328111269370.700x700.jpg','/Uploads/201603/56fce52936916.jpg','110141','jpg','1','1','2','1459414313','114.240.82.43','1');
INSERT INTO `yourphp_attachment` VALUES ('96','2','10','58','Cg-4WlJbU6uIHU_sAAw9OUjawgcAAMgKAB63w0ADD1R863 (1)','/Uploads/201603/56fce62a784e5.jpg','802105','jpg','1','1','2','1459414570','114.240.82.43','1');
INSERT INTO `yourphp_attachment` VALUES ('97','2','10','58','t015e691ec0261c97ad.jpg','/Uploads/201603/56fce78a5f2d3.jpg','5811','jpg','1','1','2','1459414922','114.240.82.43','1');
INSERT INTO `yourphp_attachment` VALUES ('98','2','10','69','1419051639465623.jpg','/Uploads/201604/570c5b8a90ee0.jpg','35906','jpg','1','1','2','1460427658','61.48.71.73','1');
INSERT INTO `yourphp_attachment` VALUES ('99','2','10','71','20150328115413799.jpg','/Uploads/201604/571448366399d.jpg','17749','jpg','1','1','2','1460946998','114.243.220.170','1');
INSERT INTO `yourphp_attachment` VALUES ('100','2','10','43','640.webp.jpg','/Uploads/201604/5716f16a41e9a.jpg','55397','jpg','1','0','2','1461121386','123.113.101.74','1');
INSERT INTO `yourphp_attachment` VALUES ('101','2','3','73','20150328115413799.jpg','/Uploads/201604/571702b2ca20a.jpg','17749','jpg','1','1','2','1461125810','123.113.101.74','1');
INSERT INTO `yourphp_attachment` VALUES ('102','2','3','73','640.webp (1).jpg','/Uploads/201604/571702f7b0821.jpg','98183','jpg','1','0','2','1461125879','123.113.101.74','1');
INSERT INTO `yourphp_block` VALUES ('1','about','首页公司简�\�','1','');
INSERT INTO `yourphp_block` VALUES ('2','contact','右侧联系我们','1','');
INSERT INTO `yourphp_block` VALUES ('3','footer','页底','1','<p>\r\n	<br />\r\n</p>');
INSERT INTO `yourphp_category` VALUES ('1','资讯','news','','0','2','Article','0','1,3,10','0','资讯','资讯','资讯','3','0','1','0','','1','/index.php?m=Article&a=index&id=1','list','','0','','0','1','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('3','公司资讯','gongsi','news/','1','2','Article','0,1','3','0','公司新闻','公司新闻','公司新闻','0','0','1','0','','0','/index.php?m=Article&a=index&id=3','list','','0','','0','1','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('8','关于','about','','0','1','Page','0','8,11,27,12','0','','','','99','0','1','0','','1','/index.php?m=Page&a=index&id=8','','','0','','0','1','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('10','行业资讯','zixun','news/','1','2','Article','0,1','10','0','','','','0','0','1','0','','0','/index.php?m=Article&a=index&id=10','list','','0','','0','1','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('11','关于我们','info','about/','8','1','Page','0,8','11','0','','','','9901','0','1','0','','0','/index.php?m=Page&a=index&id=11','index','index','0','','0','1','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('12','联系我们','contactus','about/','8','1','Page','0,8','12','0','联系我们','联系我们','联系我们','9903','0','1','0','','0','/index.php?m=Page&a=index&id=12','','','0','','0','1','0','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('20','服务','services','','0','1','Page','0','20','0','','','','0','0','1','0','','0','/index.php?m=Page&a=index&id=20','','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('21','案例','case','','0','2','Article','0','21,23,24,26,28','0','','','','1','0','1','0','','1','/index.php?m=Article&a=index&id=21','list_case','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('22','方案','project','','0','2','Article','0','22','0','','','','2','0','1','0','','0','/index.php?m=Article&a=index&id=22','list_project','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('23','医疗医药','health','case/','21','2','Article','0,21','23','0','','','','0','0','1','0','','0','/index.php?m=Article&a=index&id=23','list_case','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('24','金融网贷','p2p','case/','21','2','Article','0,21','24','0','','','','0','0','1','0','','0','/index.php?m=Article&a=index&id=24','list_case','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('26','电子商务','ydds','case/','21','2','Article','0,21','26','0','','','','0','0','1','0','','0','/index.php?m=Article&a=index&id=26','list_case','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('27','招聘信息','job','about/','8','1','Page','0,8','27','0','','','','9902','0','1','0','','0','/index.php?m=Page&a=index&id=27','','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('28','生活服务','yidongcy','case/','21','2','Article','0,21','28','0','','','','0','0','1','0','','0','/index.php?m=Article&a=index&id=28','list_case','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_config` VALUES ('site_name','网站名称','2','思远高创:移动电商APP开发|O2O开发|在线教育APP开发|移动医疗APP|互联网金�\�','1');
INSERT INTO `yourphp_config` VALUES ('site_url','网站网址','2','http://www.sygcsoft.com/','1');
INSERT INTO `yourphp_config` VALUES ('logo','网站LOGO','2','/Public/Images/logo.gif','1');
INSERT INTO `yourphp_config` VALUES ('site_email','站点邮箱','2','admin@pingphp.com','1');
INSERT INTO `yourphp_config` VALUES ('seo_title','网站标题','2','思远高创:可能是最好的APP开发公�\�','1');
INSERT INTO `yourphp_config` VALUES ('seo_keywords','关键�\�','2','移动电商APP开发|O2O开发|在线教育APP开发|移动医疗APP|互联网金融|汽车APP开发|酒店APP开发|餐饮APP开发|APP开发|Android安卓开发|iOS开发|APP应用开发|APP开发公司|APP定制|APP设计','1');
INSERT INTO `yourphp_config` VALUES ('seo_description','网站简�\�','2','思远高创,专注于汽车APP开�\�,酒店APP开�\�,餐饮APP开�\�, 手机APP开�\�,安卓开�\�,iOS开�\�,一流的团队,提供完美的APP解决方案','1');
INSERT INTO `yourphp_config` VALUES ('mail_type','邮件发送模�\�','4','1','0');
INSERT INTO `yourphp_config` VALUES ('mail_server','邮件服务�\�','4','smtp.qq.com','0');
INSERT INTO `yourphp_config` VALUES ('mail_port','邮件发送端�\�','4','25','0');
INSERT INTO `yourphp_config` VALUES ('mail_from','发件人地址','4','admin@yourphp.cn','0');
INSERT INTO `yourphp_config` VALUES ('mail_auth','AUTH LOGIN验证','4','1','0');
INSERT INTO `yourphp_config` VALUES ('mail_user','验证用户�\�','4','admin@yourphp.cn','0');
INSERT INTO `yourphp_config` VALUES ('mail_password','验证密码','4','','0');
INSERT INTO `yourphp_config` VALUES ('attach_maxsize','允许上传附件大小','5','5200000','0');
INSERT INTO `yourphp_config` VALUES ('attach_allowext','允许上传附件类型','5','jpg,jpeg,gif,png,doc,docx,rar,zip,swf','0');
INSERT INTO `yourphp_config` VALUES ('watermark_enable','是否开启图片水�\�','5','0','0');
INSERT INTO `yourphp_config` VALUES ('watemard_text','水印文字内容','5','','0');
INSERT INTO `yourphp_config` VALUES ('watemard_text_size','文字大小','5','18','0');
INSERT INTO `yourphp_config` VALUES ('watemard_text_color','watemard_text_color','5','#FFFFFF','0');
INSERT INTO `yourphp_config` VALUES ('watemard_text_face','字体','5','elephant.ttf','0');
INSERT INTO `yourphp_config` VALUES ('watermark_minwidth','图片最小宽�\�','5','300','0');
INSERT INTO `yourphp_config` VALUES ('watermark_minheight','水印最小高�\�','5','300','0');
INSERT INTO `yourphp_config` VALUES ('watermark_img','水印图片名称','5','mark.png','0');
INSERT INTO `yourphp_config` VALUES ('watermark_pct','水印透明�\�','5','80','0');
INSERT INTO `yourphp_config` VALUES ('watermark_quality','JPEG 水印质量','5','100','0');
INSERT INTO `yourphp_config` VALUES ('watermark_pospadding','水印边距','5','10','0');
INSERT INTO `yourphp_config` VALUES ('watermark_pos','水印位置','5','9','0');
INSERT INTO `yourphp_config` VALUES ('PAGE_LISTROWS','列表分页�\�','6','60','0');
INSERT INTO `yourphp_config` VALUES ('URL_MODEL','URL访问模式','6','0','0');
INSERT INTO `yourphp_config` VALUES ('URL_PATHINFO_DEPR','参数分割�\�','6','/','0');
INSERT INTO `yourphp_config` VALUES ('URL_HTML_SUFFIX','URL伪静态后缀','6','.html','0');
INSERT INTO `yourphp_config` VALUES ('TOKEN_ON','令牌验证','6','0','0');
INSERT INTO `yourphp_config` VALUES ('TOKEN_NAME','令牌表单字段','6','__hash__','0');
INSERT INTO `yourphp_config` VALUES ('TMPL_CACHE_ON','模板编译缓存','6','0','0');
INSERT INTO `yourphp_config` VALUES ('TMPL_CACHE_TIME','模板缓存有效�\�','6','-1','0');
INSERT INTO `yourphp_config` VALUES ('HTML_CACHE_ON','静态缓�\�','6','0','0');
INSERT INTO `yourphp_config` VALUES ('HTML_CACHE_TIME','缓存有效�\�','6','60','0');
INSERT INTO `yourphp_config` VALUES ('HTML_READ_TYPE','缓存读取方式','6','0','0');
INSERT INTO `yourphp_config` VALUES ('HTML_FILE_SUFFIX','静态文件后缀','6','.html','0');
INSERT INTO `yourphp_config` VALUES ('ADMIN_ACCESS','ADMIN_ACCESS','6','361a383e7d0f28f22d9ce6f046cd9e00','0');
INSERT INTO `yourphp_config` VALUES ('DEFAULT_THEME','默认模板','6','Default','0');
INSERT INTO `yourphp_config` VALUES ('HOME_ISHTML','首页生成html','6','1','0');
INSERT INTO `yourphp_config` VALUES ('URL_URLRULE','URL','6','{$catdir}/show/{$id}.html|{$catdir}/show/{$id}_{$page}.html:::{$catdir}/|{$catdir}/{$page}.html','0');
INSERT INTO `yourphp_config` VALUES ('DEFAULT_LANG','默认语言','6','cn','0');
INSERT INTO `yourphp_config` VALUES ('member_register','允许新会员注�\�','3','0','1');
INSERT INTO `yourphp_config` VALUES ('member_emailcheck','新会员注册需要邮件验�\�','3','0','1');
INSERT INTO `yourphp_config` VALUES ('member_registecheck','新会员注册需要审�\�','3','1','1');
INSERT INTO `yourphp_config` VALUES ('member_login_verify','注册登陆开启验证码','3','1','1');
INSERT INTO `yourphp_config` VALUES ('member_emailchecktpl','邮件认证模板','3',' 欢迎您注册成为yourphp用户，您的账号需要邮箱认证，点击下面链接进行认证：{click}\r\n或者将网址复制到浏览器：{url}','1');
INSERT INTO `yourphp_config` VALUES ('member_getpwdemaitpl','密码找回邮件内容','3','尊敬的用户{username}，请点击进入<a href=\"{url}\">重置密码</a>,或者将网址复制到浏览器：{url}（链�\�3天内有效）�\�<br>感谢您对本站的支持�\�<br>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　{sitename}<br>此邮件为系统自动邮件，无需回复�\�','1');
INSERT INTO `yourphp_config` VALUES ('LAYOUT_ON','布局模板','6','1','0');
INSERT INTO `yourphp_config` VALUES ('ADMIN_VERIFY','后台登陆验证�\�','6','1','0');
INSERT INTO `yourphp_field` VALUES ('1','1','title','标题','','1','3','80','','标题必填3-80个字','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'0\',\n  \'size\' => \'\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('2','1','keywords','关键�\�','','0','0','0','','','','text','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('3','1','description','SEO简�\�','','0','0','0','','','','textarea','array (\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('4','1','content','内容','','0','0','0','','','','editor','array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'jpg,jpeg,gif,doc,rar,zip,xls\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('5','2','catid','栏目','','1','1','6','digits','必须选择一个栏�\�','','catid','','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('6','2','title','标题','','1','0','0','','标题必须�\�1-80个字�\�','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('7','2','keywords','关键�\�','','0','0','0','','','','text','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('8','2','description','SEO简�\�','','0','0','0','','','','textarea','array (\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('9','2','content','内容','','0','0','0','','','','editor','array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'show_add_description\' => \'1\',\n  \'show_auto_thumb\' => \'1\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('10','2','createtime','发布时间','','1','0','0','','','','datetime','','1','3,4','0','1','1');
INSERT INTO `yourphp_field` VALUES ('11','2','copyfrom','来源','','0','0','0','0','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('12','2','fromlink','来源网址','','0','0','0','','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('13','2','readgroup','访问权限','','0','0','0','','','','groupid','array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'varchar\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)','1','3,4','0','1','1');
INSERT INTO `yourphp_field` VALUES ('14','2','posid','推荐�\�','','0','0','0','','','','posid','','1','3,4','0','1','1');
INSERT INTO `yourphp_field` VALUES ('15','2','template','模板','','0','0','0','','','','template','','1','3,4','0','1','1');
INSERT INTO `yourphp_field` VALUES ('16','2','status','状�\�','','0','0','0','','','','radio','array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','1','3,4','0','1','1');
INSERT INTO `yourphp_field` VALUES ('17','3','catid','栏目','','1','1','6','','必须选择一个栏�\�','','catid','','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('18','3','title','标题','','1','1','80','','标题必须�\�1-80个字�\�','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('19','3','keywords','关键�\�','','0','0','80','','','','text','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('20','3','description','SEO简�\�','','0','0','0','','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('21','3','content','内容','','0','0','0','','','','editor','array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)','1','','10','1','1');
INSERT INTO `yourphp_field` VALUES ('22','3','createtime','发布时间','','1','0','0','','','','datetime','','1','3,4','93','1','1');
INSERT INTO `yourphp_field` VALUES ('25','3','readgroup','访问权限','','0','0','0','','','','groupid','array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)','1','3,4','96','0','1');
INSERT INTO `yourphp_field` VALUES ('26','3','posid','推荐�\�','','0','0','0','','','','posid','','1','3,4','97','1','1');
INSERT INTO `yourphp_field` VALUES ('27','3','template','模板','','0','0','0','','','','template','','1','3,4','98','1','1');
INSERT INTO `yourphp_field` VALUES ('28','3','status','状�\�','','0','0','0','','','','radio','array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','1','3,4','99','1','1');
INSERT INTO `yourphp_field` VALUES ('29','3','price','价格','','0','0','0','','','','number','array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'2\',\n  \'default\' => \'0\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('30','3','xinghao','型号','','0','0','30','','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('31','2','recommend','允许评论','','0','0','1','','','','radio','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'1\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('32','2','readpoint','阅读收费','','0','0','3','','','','number','array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('33','2','hits','点击次数','','0','0','8','','','','number','array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)','1','','0','0','0');
INSERT INTO `yourphp_field` VALUES ('34','3','recommend','允许评论','','0','0','1','','','','radio','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('35','3','readpoint','阅读收费','','0','0','5','','','','number','array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('36','3','hits','点击次数','','0','0','8','','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','','0','0','0');
INSERT INTO `yourphp_field` VALUES ('37','4','catid','栏目','','1','1','6','','必须选择一个栏�\�','','catid','','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('38','4','title','标题','','1','1','80','','标题必须�\�1-80个字�\�','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('39','4','keywords','关键�\�','','0','0','80','','','','text','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('40','4','description','SEO简�\�','','0','0','0','','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('41','4','content','内容','','0','0','0','','','','editor','array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)','1','','10','1','1');
INSERT INTO `yourphp_field` VALUES ('42','4','createtime','发布时间','','1','0','0','','','','datetime','','1','3,4','93','1','1');
INSERT INTO `yourphp_field` VALUES ('43','4','recommend','允许评论','','0','0','1','','','','radio','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('44','4','readpoint','阅读收费','','0','0','5','','','','number','array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('45','4','hits','点击次数','','0','0','8','','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','','0','0','0');
INSERT INTO `yourphp_field` VALUES ('46','4','readgroup','访问权限','','0','0','0','','','','groupid','array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)','1','3,4','96','0','1');
INSERT INTO `yourphp_field` VALUES ('47','4','posid','推荐�\�','','0','0','0','','','','posid','','1','3,4','97','1','1');
INSERT INTO `yourphp_field` VALUES ('48','4','template','模板','','0','0','0','','','','template','','1','3,4','98','1','1');
INSERT INTO `yourphp_field` VALUES ('49','4','status','状�\�','','0','0','0','','','','radio','array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','1','3,4','99','1','1');
INSERT INTO `yourphp_field` VALUES ('50','5','catid','栏目','','1','1','6','','必须选择一个栏�\�','','catid','','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('51','5','title','标题','','1','1','80','','标题必须�\�1-80个字�\�','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('52','5','keywords','关键�\�','','0','0','80','','','','text','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('53','5','description','SEO简�\�','','0','0','0','','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('54','5','content','内容','','0','0','0','','','','editor','array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)','1','','10','1','1');
INSERT INTO `yourphp_field` VALUES ('55','5','createtime','发布时间','','1','0','0','','','','datetime','','1','3,4','93','1','1');
INSERT INTO `yourphp_field` VALUES ('56','5','recommend','允许评论','','0','0','1','','','','radio','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('57','5','readpoint','阅读收费','','0','0','5','','','','number','array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('58','5','hits','点击次数','','0','0','8','','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','','0','0','0');
INSERT INTO `yourphp_field` VALUES ('59','5','readgroup','访问权限','','0','0','0','','','','groupid','array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)','1','3,4','96','0','1');
INSERT INTO `yourphp_field` VALUES ('60','5','posid','推荐�\�','','0','0','0','','','','posid','','1','3,4','97','1','1');
INSERT INTO `yourphp_field` VALUES ('61','5','template','模板','','0','0','0','','','','template','','1','3,4','98','1','1');
INSERT INTO `yourphp_field` VALUES ('62','5','status','状�\�','','0','0','0','','','','radio','array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','1','3,4','99','1','1');
INSERT INTO `yourphp_field` VALUES ('63','3','pics','图片','','0','0','0','','','','images','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'upload_maxnum\' => \'10\',\n  \'upload_maxsize\' => \'2\',\n  \'upload_allowext\' => \'jpeg,jpg,gif\',\n  \'watermark\' => \'0\',\n  \'more\' => \'1\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('64','4','pics','图组','','0','0','0','','','','images','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'upload_maxnum\' => \'20\',\n  \'upload_maxsize\' => \'2\',\n  \'upload_allowext\' => \'jpeg,jpg,png,gif\',\n  \'watermark\' => \'0\',\n  \'more\' => \'1\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('65','5','file','上传文件','','0','0','0','','','','file','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'upload_maxsize\' => \'2\',\n  \'upload_allowext\' => \'zip,rar,doc,ppt\',\n  \'more\' => \'1\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('66','5','ext','文档类型','','0','0','10','','','','text','array (\n  \'size\' => \'10\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('67','5','size','文档大小','','0','0','10','','','','text','array (\n  \'size\' => \'10\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('68','5','downs','下载次数','','0','0','0','','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)','1','','0','0','0');
INSERT INTO `yourphp_field` VALUES ('69','6','username','姓名','','1','2','20','cn_username','','','text','array (\n  \'size\' => \'10\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','2','1','0');
INSERT INTO `yourphp_field` VALUES ('70','6','telephone','电话','','0','0','0','tel','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','4','1','0');
INSERT INTO `yourphp_field` VALUES ('71','6','email','邮箱','','1','0','50','email','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','2','1','0');
INSERT INTO `yourphp_field` VALUES ('72','6','content','内容','','1','4','200','','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'5\',\n  \'cols\' => \'60\',\n  \'default\' => \'\',\n)','1','','5','1','0');
INSERT INTO `yourphp_field` VALUES ('73','6','ip','提交IP','','0','0','0','','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','3,4','6','1','0');
INSERT INTO `yourphp_field` VALUES ('74','6','title','标题','','1','4','50','','','','text','array (\n  \'size\' => \'40\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','3,4','1','1','0');
INSERT INTO `yourphp_field` VALUES ('76','6','createtime','提交时间','','0','0','0','','','','datetime','','0','3,4','98','1','0');
INSERT INTO `yourphp_field` VALUES ('78','6','status','审核状�\�','','0','0','1','','','','radio','array (\n  \'options\' => \'己审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'0\',\n)','0','3,4','99','1','0');
INSERT INTO `yourphp_field` VALUES ('79','6','typeid','反馈类别','','0','0','0','','','','typeid','array (\n  \'inputtype\' => \'select\',\n  \'fieldtype\' => \'smallint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'4\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('80','35','createtime','发布时间','','1','0','0','','','','datetime','','1','3,4','93','1','1');
INSERT INTO `yourphp_field` VALUES ('81','7','status','状�\�','','0','0','1','','','','radio','array (\n  \'options\' => \'已审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','1','3,4','99','1','1');
INSERT INTO `yourphp_field` VALUES ('82','7','name','网站名称','','1','2','50','','','','text','array (\n  \'size\' => \'40\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','1','1','0');
INSERT INTO `yourphp_field` VALUES ('83','7','logo','网站LOGO','','0','0','0','','','','image','array (\n  \'size\' => \'50\',\n  \'default\' => \'\',\n  \'upload_maxsize\' => \'\',\n  \'upload_allowext\' => \'jpg,jpeg,gif,png\',\n  \'watermark\' => \'0\',\n  \'more\' => \'0\',\n)','1','','2','1','0');
INSERT INTO `yourphp_field` VALUES ('84','7','siteurl','网站地址','','1','10','150','url','','','text','array (\n  \'size\' => \'50\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','3','1','0');
INSERT INTO `yourphp_field` VALUES ('85','7','typeid','友情链接分类','','0','0','0','','','','typeid','array (\n  \'inputtype\' => \'select\',\n  \'fieldtype\' => \'smallint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'1\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('86','7','linktype','链接类型','','0','0','1','','','','radio','array (\n  \'options\' => \'文字链接|1\r\nLOGO链接|2\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'1\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('87','7','siteinfo','站点简�\�','','0','0','0','','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'3\',\n  \'cols\' => \'60\',\n  \'default\' => \'\',\n)','1','','4','1','0');
INSERT INTO `yourphp_field` VALUES ('88','8','createtime','提交时间','','1','0','0','','','','datetime','','0','3,4','93','1','1');
INSERT INTO `yourphp_field` VALUES ('89','8','status','状�\�','','0','0','0','','','','radio','array (\n  \'options\' => \'已审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'0\',\n)','0','3,4','99','1','1');
INSERT INTO `yourphp_field` VALUES ('90','8','title','标题','','1','2','50','','','','text','array (\n  \'size\' => \'40\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('91','8','username','姓名','','1','2','20','','','','text','array (\n  \'size\' => \'10\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('92','8','telephone','电话','','0','0','0','tel','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','1','1','0');
INSERT INTO `yourphp_field` VALUES ('93','8','email','邮箱','','1','0','40','email','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('94','8','content','内容','','1','2','200','','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'50\',\n  \'default\' => \'\',\n)','1','','10','1','0');
INSERT INTO `yourphp_field` VALUES ('95','8','reply_content','回复','','0','0','0','','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'50\',\n  \'default\' => \'\',\n)','0','3,4','10','1','0');
INSERT INTO `yourphp_field` VALUES ('96','8','ip','IP','','0','0','15','','','','text','array (\n  \'size\' => \'15\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','3,4','90','1','0');
INSERT INTO `yourphp_field` VALUES ('97','9','createtime','发布时间','','1','0','0','','','','datetime','','0','3,4','93','1','1');
INSERT INTO `yourphp_field` VALUES ('98','9','status','状�\�','','0','0','0','','','','radio','array (\n  \'options\' => \'已审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','0','3,4','99','1','1');
INSERT INTO `yourphp_field` VALUES ('99','9','name','客服名称','','0','2','20','','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('100','9','type','客服类型','','1','1','2','0','','','select','array (\n  \'options\' => \'QQ|1\r\nMSN|2\r\n旺旺|3\r\n贸易通|6\r\n电话|4\r\n代码|5\',\n  \'multiple\' => \'0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'size\' => \'\',\n  \'default\' => \'\',\n)','0','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('101','9','code','ID或代�\�','','0','2','0','0','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'50\',\n  \'default\' => \'\',\n)','0','','10','1','0');
INSERT INTO `yourphp_field` VALUES ('102','9','skin','风格样式','','0','0','3','0','','','select','array (\n  \'options\' => \'无风格图标|0\r\nQQ风格1|q1\r\nQQ风格2|q2\r\nQQ风格3|q3\r\nQQ风格4|q4\r\nQQ风格5|q5\r\nQQ风格6|q6\r\nQQ风格7|q7\r\nMSN小图|m1\r\nMSN大图1|m2\r\nMSN大图2|m3\r\nMSN大图3|m4\r\n旺旺小图|w2\r\n旺旺大图|w1\r\n贸易通|al1\',\n  \'multiple\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n  \'numbertype\' => \'1\',\n  \'size\' => \'\',\n  \'default\' => \'\',\n)','0','','0','1','0');
INSERT INTO `yourphp_kefu` VALUES ('1','1','4','1306807701','咨询电话','4','0317-5022625','0','1');
INSERT INTO `yourphp_kefu` VALUES ('2','1','3','1306808886','QQ客服','1','2579766780','q3','1');
INSERT INTO `yourphp_kefu` VALUES ('3','1','0','1306830001','旺旺客服','3','snliuxun','w1','1');
INSERT INTO `yourphp_lang` VALUES ('1','中文','cn','cn.gif','1','','','1');
INSERT INTO `yourphp_lang` VALUES ('2','英文','en','en.gif','1','','','2');
INSERT INTO `yourphp_link` VALUES ('1','1','0','1306547518','Yourphp企业网站管理系统','http://www.yourphp.cn/Public/Images/logo.gif','http://www.yourphp.cn','2','2','php企业网站管理系统','1');
INSERT INTO `yourphp_link` VALUES ('2','1','0','1306554684','企业网站管理系统','','http://www.yourphp.cn','2','1','','1');
INSERT INTO `yourphp_log` VALUES ('1','0','0','pingphp','登录成功','0.0.0.0','1457417691');
INSERT INTO `yourphp_log` VALUES ('2','0','0','pingphp','登录成功','0.0.0.0','1457418964');
INSERT INTO `yourphp_log` VALUES ('3','0','0','pingphp','登录成功','0.0.0.0','1457419009');
INSERT INTO `yourphp_log` VALUES ('4','0','0','pingphp','登录成功','0.0.0.0','1457419295');
INSERT INTO `yourphp_log` VALUES ('5','1','0','hello','密码错误:hello','221.220.251.112','1457682199');
INSERT INTO `yourphp_log` VALUES ('6','0','0','pingphp','登录成功','221.220.251.112','1457682228');
INSERT INTO `yourphp_log` VALUES ('7','0','0','hello','登录成功','221.220.251.112','1457682334');
INSERT INTO `yourphp_log` VALUES ('8','0','0','hello','登录成功','221.220.251.112','1457682806');
INSERT INTO `yourphp_log` VALUES ('9','1','0','hello','密码错误::hello','221.220.251.112','1457687870');
INSERT INTO `yourphp_log` VALUES ('10','1','0','hello','密码错误::hello','221.220.251.112','1457687872');
INSERT INTO `yourphp_log` VALUES ('11','1','0','hello','密码错误::hello','221.220.251.112','1457687875');
INSERT INTO `yourphp_log` VALUES ('12','1','0','hello','密码错误::hello','221.220.251.112','1457687877');
INSERT INTO `yourphp_log` VALUES ('13','0','0','hello','登录成功','221.220.251.112','1457687885');
INSERT INTO `yourphp_log` VALUES ('14','0','0','hello','登录成功','115.34.187.7','1457873077');
INSERT INTO `yourphp_log` VALUES ('15','0','0','hello','登录成功','114.244.133.248','1457919971');
INSERT INTO `yourphp_log` VALUES ('16','0','0','hello','登录成功','114.244.133.248','1457923625');
INSERT INTO `yourphp_log` VALUES ('17','0','0','hello','登录成功','114.244.133.248','1457927396');
INSERT INTO `yourphp_log` VALUES ('18','0','0','hello','登录成功','114.244.133.248','1457938905');
INSERT INTO `yourphp_log` VALUES ('19','0','0','hello','登录成功','114.244.133.248','1457940240');
INSERT INTO `yourphp_log` VALUES ('20','0','0','hello','登录成功','114.244.133.248','1457944782');
INSERT INTO `yourphp_log` VALUES ('21','0','0','hello','登录成功','123.113.103.70','1458004596');
INSERT INTO `yourphp_log` VALUES ('22','0','0','hello','登录成功','123.113.103.70','1458035819');
INSERT INTO `yourphp_log` VALUES ('23','1','0','hello','密码错误:helo','221.221.233.24','1458096316');
INSERT INTO `yourphp_log` VALUES ('24','0','0','hello','登录成功','221.221.233.24','1458096326');
INSERT INTO `yourphp_log` VALUES ('25','0','0','hello','登录成功','221.221.233.24','1458098528');
INSERT INTO `yourphp_log` VALUES ('26','0','0','pingphp','登录成功','221.221.233.24','1458107372');
INSERT INTO `yourphp_log` VALUES ('27','1','0','hello','密码错误:heloo','221.221.233.24','1458107382');
INSERT INTO `yourphp_log` VALUES ('28','0','0','hello','登录成功','221.221.233.24','1458107391');
INSERT INTO `yourphp_log` VALUES ('29','0','0','hello','登录成功','221.221.233.24','1458107460');
INSERT INTO `yourphp_log` VALUES ('30','0','0','hello','登录成功','221.221.254.106','1458178379');
INSERT INTO `yourphp_log` VALUES ('31','0','0','hello','登录成功','221.221.254.106','1458182602');
INSERT INTO `yourphp_log` VALUES ('32','0','0','hello','登录成功','221.221.254.106','1458206859');
INSERT INTO `yourphp_log` VALUES ('33','0','0','hello','登录成功','221.221.254.106','1458270433');
INSERT INTO `yourphp_log` VALUES ('34','0','0','hello','登录成功','221.221.254.106','1458274519');
INSERT INTO `yourphp_log` VALUES ('35','0','0','hello','登录成功','221.221.254.106','1458293305');
INSERT INTO `yourphp_log` VALUES ('36','0','0','hello','登录成功','114.243.209.242','1458542335');
INSERT INTO `yourphp_log` VALUES ('37','0','0','hello','登录成功','114.243.209.242','1458544626');
INSERT INTO `yourphp_log` VALUES ('38','0','0','hello','登录成功','114.243.209.242','1458551765');
INSERT INTO `yourphp_log` VALUES ('39','0','0','hello','登录成功','123.123.0.180','1458611201');
INSERT INTO `yourphp_log` VALUES ('40','0','0','hello','登录成功','123.123.0.180','1458636720');
INSERT INTO `yourphp_log` VALUES ('41','0','0','hello','登录成功','61.48.43.220','1458700861');
INSERT INTO `yourphp_log` VALUES ('42','0','0','hello','登录成功','61.48.43.220','1458727554');
INSERT INTO `yourphp_log` VALUES ('43','0','0','hello','登录成功','61.48.59.166','1458782280');
INSERT INTO `yourphp_log` VALUES ('44','0','0','hello','登录成功','61.48.59.166','1458782775');
INSERT INTO `yourphp_log` VALUES ('45','0','0','hello','登录成功','61.48.59.166','1458806972');
INSERT INTO `yourphp_log` VALUES ('46','0','0','hello','登录成功','221.217.179.121','1458871398');
INSERT INTO `yourphp_log` VALUES ('47','1','0','hello','密码错误:heloo','221.221.255.121','1459136735');
INSERT INTO `yourphp_log` VALUES ('48','0','0','hello','登录成功','221.221.255.121','1459136743');
INSERT INTO `yourphp_log` VALUES ('49','0','0','hello','登录成功','221.221.255.121','1459145824');
INSERT INTO `yourphp_log` VALUES ('50','0','0','hello','登录成功','123.113.101.209','1459304209');
INSERT INTO `yourphp_log` VALUES ('51','1','0','hello','密码错误:helloo','123.113.101.209','1459325591');
INSERT INTO `yourphp_log` VALUES ('52','0','0','hello','登录成功','123.113.101.209','1459325602');
INSERT INTO `yourphp_log` VALUES ('53','0','0','hello','登录成功','114.240.82.43','1459413855');
INSERT INTO `yourphp_log` VALUES ('54','0','0','hello','登录成功','61.48.71.73','1460426588');
INSERT INTO `yourphp_log` VALUES ('55','0','0','hello','登录成功','61.48.71.73','1460427007');
INSERT INTO `yourphp_log` VALUES ('56','0','0','hello','登录成功','221.217.177.113','1460540118');
INSERT INTO `yourphp_log` VALUES ('57','0','0','hello','登录成功','114.243.223.137','1460601150');
INSERT INTO `yourphp_log` VALUES ('58','0','0','hello','登录成功','114.243.220.170','1460945564');
INSERT INTO `yourphp_log` VALUES ('59','0','0','hello','登录成功','123.113.101.74','1461120933');
INSERT INTO `yourphp_log` VALUES ('60','0','0','hello','登录成功','123.113.101.74','1461123917');
INSERT INTO `yourphp_log` VALUES ('61','0','0','hello','登录成功','114.240.83.56','1461228157');
INSERT INTO `yourphp_menu` VALUES ('1','0','Index','main','menuid=42','1','1','0','后台首页','','0');
INSERT INTO `yourphp_menu` VALUES ('2','0','Config','','menuid=50','1','1','0','系统设置','系统设置','1');
INSERT INTO `yourphp_menu` VALUES ('3','0','Category','','menuid=17','1','1','0','内容管理','模型管理','2');
INSERT INTO `yourphp_menu` VALUES ('4','0','Module','index','type=2&menuid=51','1','1','0','模块管理','','4');
INSERT INTO `yourphp_menu` VALUES ('5','0','User','','menuid=9','1','1','0','会员管理','','90');
INSERT INTO `yourphp_menu` VALUES ('6','0','Createhtml','','menuid=33','1','1','0','网站更新','','99');
INSERT INTO `yourphp_menu` VALUES ('7','0','Template','index','menuid=60','1','1','0','模板管理','','99');
INSERT INTO `yourphp_menu` VALUES ('8','50','Config','sys','','1','1','0','系统参数','','0');
INSERT INTO `yourphp_menu` VALUES ('9','5','User','','','1','1','0','会员资料管理','','0');
INSERT INTO `yourphp_menu` VALUES ('10','9','User','add','','1','1','0','添加会员','','0');
INSERT INTO `yourphp_menu` VALUES ('11','5','Role','','','1','1','0','会员组管�\�','','0');
INSERT INTO `yourphp_menu` VALUES ('12','11','Role','add','','1','1','0','添加会员�\�','','0');
INSERT INTO `yourphp_menu` VALUES ('13','5','Node','','','1','1','0','权限节点管理','','0');
INSERT INTO `yourphp_menu` VALUES ('14','13','Node','add','','1','1','0','添加权限节点','','0');
INSERT INTO `yourphp_menu` VALUES ('15','39','Menu','add','','1','1','0','添加菜单','','0');
INSERT INTO `yourphp_menu` VALUES ('16','3','Module','','','1','1','0','模型管理','','99');
INSERT INTO `yourphp_menu` VALUES ('17','3','Category','','','1','1','0','栏目管理','栏目管理','1');
INSERT INTO `yourphp_menu` VALUES ('18','16','Module','add','','1','1','0','添加模型','','0');
INSERT INTO `yourphp_menu` VALUES ('19','17','Category','add','','1','1','0','添加栏目','','0');
INSERT INTO `yourphp_menu` VALUES ('20','3','Article','','','1','1','0','文章模型','','2');
INSERT INTO `yourphp_menu` VALUES ('21','20','Article','add','','1','1','0','添加文章','','0');
INSERT INTO `yourphp_menu` VALUES ('22','3','Product','','','1','1','0','产品模型','','3');
INSERT INTO `yourphp_menu` VALUES ('23','2','Posid','','','1','1','0','推荐位管�\�','','0');
INSERT INTO `yourphp_menu` VALUES ('24','23','Posid','add','','1','1','0','添加推荐�\�','','0');
INSERT INTO `yourphp_menu` VALUES ('25','22','Product','add','','1','1','0','添加产品','','0');
INSERT INTO `yourphp_menu` VALUES ('26','3','Picture','','','1','1','0','图片模型','','4');
INSERT INTO `yourphp_menu` VALUES ('27','3','Download','','','1','1','0','下载模型','','5');
INSERT INTO `yourphp_menu` VALUES ('28','2','Type','','','1','1','0','类别管理','','6');
INSERT INTO `yourphp_menu` VALUES ('29','50','Config','mail','','1','1','0','系统邮箱','','0');
INSERT INTO `yourphp_menu` VALUES ('30','50','Config','attach','','1','1','0','附件配置','','0');
INSERT INTO `yourphp_menu` VALUES ('31','17','Category','repair_cache','','1','1','0','恢复栏目数据','','0');
INSERT INTO `yourphp_menu` VALUES ('32','50','Config','member','','1','1','0','用户中心设置','','0');
INSERT INTO `yourphp_menu` VALUES ('33','6','Createhtml','index','','1','1','0','更新首页','','0');
INSERT INTO `yourphp_menu` VALUES ('34','6','Createhtml','Createlist','','1','1','0','更新列表�\�','','0');
INSERT INTO `yourphp_menu` VALUES ('35','6','Createhtml','Createshow','','1','1','0','更新内容�\�','','0');
INSERT INTO `yourphp_menu` VALUES ('36','6','Createhtml','Updateurl','','1','1','0','更新内容页url','','0');
INSERT INTO `yourphp_menu` VALUES ('37','26','Picture','add','','1','1','0','添加图片','','0');
INSERT INTO `yourphp_menu` VALUES ('38','27','Download','add','','1','1','0','添加文件','','0');
INSERT INTO `yourphp_menu` VALUES ('39','2','Menu','','','1','1','0','后台管理菜单','后台管理菜单','11');
INSERT INTO `yourphp_menu` VALUES ('40','1','Index','password','','1','1','0','修改密码','','2');
INSERT INTO `yourphp_menu` VALUES ('41','1','Index','profile','','1','1','0','个人资料','','3');
INSERT INTO `yourphp_menu` VALUES ('42','1','Index','main','','1','1','0','后台首页','','1');
INSERT INTO `yourphp_menu` VALUES ('43','17','Category','add','&type=1','1','1','0','添加外部链接','','0');
INSERT INTO `yourphp_menu` VALUES ('44','2','Database','','','1','1','0','数据库管�\�','','0');
INSERT INTO `yourphp_menu` VALUES ('45','44','Database','query','','1','1','0','执行SQL语句','','0');
INSERT INTO `yourphp_menu` VALUES ('46','44','Database','recover','','1','1','0','恢复数据�\�','','0');
INSERT INTO `yourphp_menu` VALUES ('47','1','Index','cache','menuid=47','1','1','0','更新缓存','','4');
INSERT INTO `yourphp_menu` VALUES ('48','51','Module','add','type=2','1','1','0','创建模块','','0');
INSERT INTO `yourphp_menu` VALUES ('49','3','Feedback','index','','1','1','0','信息反馈','信息反馈','7');
INSERT INTO `yourphp_menu` VALUES ('50','2','Config','','','1','1','0','站点配置','','0');
INSERT INTO `yourphp_menu` VALUES ('51','4','Module','index','type=2','1','1','0','模块管理','','0');
INSERT INTO `yourphp_menu` VALUES ('52','28','Type','add','','1','1','0','添加类别','','0');
INSERT INTO `yourphp_menu` VALUES ('53','4','Link','index','','1','1','0','友情链接','','0');
INSERT INTO `yourphp_menu` VALUES ('54','53','Link','add','','1','1','0','添加链接','','0');
INSERT INTO `yourphp_menu` VALUES ('55','3','Guestbook','index','','1','1','0','在线留言','','8');
INSERT INTO `yourphp_menu` VALUES ('56','4','Kefu','index','','1','1','0','在线客服','','0');
INSERT INTO `yourphp_menu` VALUES ('57','56','Kefu','add','','1','1','0','添加客服','','0');
INSERT INTO `yourphp_menu` VALUES ('58','4','Order','index','','1','1','0','订单管理','','0');
INSERT INTO `yourphp_menu` VALUES ('59','50','Config','add','','1','1','0','添加系统变量','','99');
INSERT INTO `yourphp_menu` VALUES ('60','7','Template','index','','1','1','0','模板管理','','0');
INSERT INTO `yourphp_menu` VALUES ('61','60','Template','add','','1','1','0','添加模板','','0');
INSERT INTO `yourphp_menu` VALUES ('62','60','Template','index','type=css','1','1','0','CSS管理','','0');
INSERT INTO `yourphp_menu` VALUES ('63','60','Template','index','type=js','1','1','0','JS管理','','0');
INSERT INTO `yourphp_menu` VALUES ('64','60','Template','images','','1','1','0','媒体文件管理','','0');
INSERT INTO `yourphp_menu` VALUES ('65','7','Theme','index','menuid=65','1','1','0','风格管理','','0');
INSERT INTO `yourphp_menu` VALUES ('66','65','Theme','upload','','1','1','0','上传风格','','0');
INSERT INTO `yourphp_menu` VALUES ('67','2','Urlrule','index','','1','1','0','URL规则','','0');
INSERT INTO `yourphp_menu` VALUES ('68','67','Urlrule','add','','1','1','0','添加规则','','0');
INSERT INTO `yourphp_menu` VALUES ('69','2','Dbsource','index','','1','1','0','DB数据�\�','','0');
INSERT INTO `yourphp_menu` VALUES ('70','69','Dbsource','add','','1','1','0','添加数据�\�','','0');
INSERT INTO `yourphp_menu` VALUES ('71','2','Lang','index','','1','0','0','多语言管理','语言管理','0');
INSERT INTO `yourphp_menu` VALUES ('72','71','Lang','add','','1','0','0','添加语言','','0');
INSERT INTO `yourphp_menu` VALUES ('73','71','Lang','param','','1','0','0','设置语言�\�','','0');
INSERT INTO `yourphp_menu` VALUES ('74','7','Block','index','','1','1','0','碎片管理','','0');
INSERT INTO `yourphp_menu` VALUES ('75','74','Block','add','','1','1','0','添加碎片','','0');
INSERT INTO `yourphp_menu` VALUES ('76','60','Template','config','','1','1','0','模板参数配置','','0');
INSERT INTO `yourphp_menu` VALUES ('77','7','Slide','index','','1','1','0','幻灯片管�\�','','0');
INSERT INTO `yourphp_menu` VALUES ('78','77','Slide','add','','1','1','0','添加幻灯�\�','','0');
INSERT INTO `yourphp_menu` VALUES ('79','4','Payment','index','','1','1','0','在线支付','','0');
INSERT INTO `yourphp_menu` VALUES ('80','79','Shipping','','','1','1','0','配送方�\�','','0');
INSERT INTO `yourphp_menu` VALUES ('81','79','Shipping','add','isajax=1','1','1','0','添加配送方�\�','','0');
INSERT INTO `yourphp_menu` VALUES ('82','58','Order','orderlist','','1','1','0','单据管理','','0');
INSERT INTO `yourphp_menu` VALUES ('83','1','Log','index','','1','1','0','后台登陆日志','','83');
INSERT INTO `yourphp_module` VALUES ('1','单页模型','Page','单页模型','1','1','0','*','','0','1','','0');
INSERT INTO `yourphp_module` VALUES ('2','文章模型','Article','新闻文章','1','1','1','id,catid,url,title,title_style,userid,username,hits,keywords,description,thumb,createtime,status,listorder','','0','1','','0');
INSERT INTO `yourphp_module` VALUES ('3','产品模型','Product','产品展示','1','1','1','id,catid,url,title,title_style,userid,username,hits,keywords,description,thumb,createtime,status,xinghao,price,listorder','','0','1','','0');
INSERT INTO `yourphp_module` VALUES ('4','图片模型','Picture','图片展示','1','1','1','id,catid,url,title,title_style,userid,username,hits,keywords,description,thumb,createtime,status,listorder','','0','1','','0');
INSERT INTO `yourphp_module` VALUES ('5','下载模型','Download','文件下载','1','1','1','id,catid,url,title,title_style,userid,username,hits,keywords,description,thumb,createtime,status,ext,size,listorder','','0','1','','0');
INSERT INTO `yourphp_module` VALUES ('6','信息反馈','Feedback','信息反馈','1','0','0','*','','0','1','1,2,3,4','0');
INSERT INTO `yourphp_module` VALUES ('7','友情链接','Link','友情链接','2','0','0','*','','0','1','','0');
INSERT INTO `yourphp_module` VALUES ('8','在线留言','Guestbook','在线留言','1','0','0','*','','0','1','1,2,3,4','0');
INSERT INTO `yourphp_module` VALUES ('9','在线客服','Kefu','在线客服','2','0','0','*','','0','1','','0');
INSERT INTO `yourphp_node` VALUES ('1','Admin','后台管理','1','后台项目','0','0','1','0');
INSERT INTO `yourphp_node` VALUES ('2','Index','后台默认','1','','0','1','2','1');
INSERT INTO `yourphp_node` VALUES ('3','Config','站点配置','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('4','index','站点配置','1','','0','3','3','2');
INSERT INTO `yourphp_node` VALUES ('5','sys','系统参数','1','','0','3','3','2');
INSERT INTO `yourphp_node` VALUES ('6','member','用户中心设置','1','','0','3','3','2');
INSERT INTO `yourphp_node` VALUES ('7','add','添加变量','1','','0','3','3','2');
INSERT INTO `yourphp_node` VALUES ('8','Menu','菜单管理','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('11','index','默认动作','1','','0','2','3','1');
INSERT INTO `yourphp_node` VALUES ('12','Public','全局操作','1','','0','1','2','0');
INSERT INTO `yourphp_node` VALUES ('13','index','默认','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('14','add','添加','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('15','edit','编辑','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('16','insert','插入','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('17','attach','附件设置','1','','0','3','3','2');
INSERT INTO `yourphp_node` VALUES ('18','mail','系统邮箱','1','','0','3','3','2');
INSERT INTO `yourphp_node` VALUES ('19','Posid','推荐�\�','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('21','update','更新','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('22','status','状�\�','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('23','deleteall','批量删除','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('24','delete','删除','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('25','listorder','排序','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('26','password','修改密码','1','','0','2','3','1');
INSERT INTO `yourphp_node` VALUES ('27','profile','个人资料','1','','0','2','3','1');
INSERT INTO `yourphp_node` VALUES ('28','cache','更新缓存','1','','0','2','3','1');
INSERT INTO `yourphp_node` VALUES ('30','main','系统信息','1','','0','2','3','1');
INSERT INTO `yourphp_node` VALUES ('40','Urlrule','URL规则','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('48','Dbsource','DB数据�\�','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('55','Type','类别管理','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('65','Lang','多语言管理','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('75','Database','数据库管�\�','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('76','docommand','优化操作','1','','0','75','3','2');
INSERT INTO `yourphp_node` VALUES ('77','backup','备份','1','','0','75','3','2');
INSERT INTO `yourphp_node` VALUES ('78','recover','恢复','1','','0','75','3','2');
INSERT INTO `yourphp_node` VALUES ('79','query','sql查询','1','','0','75','3','2');
INSERT INTO `yourphp_node` VALUES ('80','doquery','运行sql','1','','0','75','3','2');
INSERT INTO `yourphp_node` VALUES ('81','Category','栏目管理','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('88','repair_cache','修复栏目数据','1','','0','81','3','3');
INSERT INTO `yourphp_node` VALUES ('90','Module','模型管理','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('98','Field','模型字段','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('107','Page','单页模型','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('110','Article','文章模型','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('111','Product','产品模型','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('112','Picture','图片模型','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('113','Download','下载模型','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('114','Feedback','信息反馈','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('115','Guestbook','在线留言','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('116','Link','友情链接','1','','0','1','2','4');
INSERT INTO `yourphp_node` VALUES ('117','Kefu','在线客服','1','','0','1','2','4');
INSERT INTO `yourphp_node` VALUES ('118','Order','订单管理','1','','0','1','2','4');
INSERT INTO `yourphp_node` VALUES ('119','Payment','在线支付','1','','0','1','2','4');
INSERT INTO `yourphp_node` VALUES ('120','Shipping','配送方�\�','1','','0','1','2','4');
INSERT INTO `yourphp_node` VALUES ('121','User','会员管理','1','','0','1','2','5');
INSERT INTO `yourphp_node` VALUES ('122','Role','会员组管�\�','1','','0','1','2','5');
INSERT INTO `yourphp_node` VALUES ('123','Node','节点管理','1','','0','1','2','5');
INSERT INTO `yourphp_node` VALUES ('124','Access','授权查询','1','','0','1','2','5');
INSERT INTO `yourphp_node` VALUES ('125','Createhtml','网站更新','1','','0','1','2','6');
INSERT INTO `yourphp_node` VALUES ('126','Template','模板管理','1','','0','1','2','7');
INSERT INTO `yourphp_node` VALUES ('127','Theme','模板管理','1','','0','1','2','7');
INSERT INTO `yourphp_node` VALUES ('128','Block','碎片管理','1','','0','1','2','7');
INSERT INTO `yourphp_node` VALUES ('129','Slide','幻灯片管�\�','1','','0','1','2','7');
INSERT INTO `yourphp_node` VALUES ('130','show','查看订单','1','','0','118','3','4');
INSERT INTO `yourphp_node` VALUES ('131','index','更新首页','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('132','docreateindex','生成首页','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('133','createlist','更新列表�\�','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('134','createshow','更新内容�\�','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('135','updateurl','更新url','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('136','doCreatelist','生成列表�\�','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('137','doCreateshow','生成内容�\�','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('138','doUpdateurl','生成url','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('139','statusallok','批量审核','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('140','images','媒体文件','1','','0','126','3','7');
INSERT INTO `yourphp_node` VALUES ('141','config','模板参数','1','','0','126','3','7');
INSERT INTO `yourphp_node` VALUES ('142','index','列表','1','','0','127','3','7');
INSERT INTO `yourphp_node` VALUES ('143','chose','更换','1','','0','127','3','7');
INSERT INTO `yourphp_node` VALUES ('144','upload','上传风格','1','','0','127','3','7');
INSERT INTO `yourphp_node` VALUES ('145','picmanage','图片管理','1','','0','129','3','7');
INSERT INTO `yourphp_node` VALUES ('146','addpic','添加图片','1','','0','129','3','7');
INSERT INTO `yourphp_node` VALUES ('147','editpic','编辑图片','1','','0','129','3','7');
INSERT INTO `yourphp_node` VALUES ('148','insertpic','插入图片','1','','0','129','3','7');
INSERT INTO `yourphp_node` VALUES ('149','updatepic','更新图片','1','','0','129','3','7');
INSERT INTO `yourphp_node` VALUES ('150','listorder','图片排序','1','','0','129','3','7');
INSERT INTO `yourphp_node` VALUES ('151','Attachment','附件管理','1','','0','1','2','0');
INSERT INTO `yourphp_node` VALUES ('152','index','默认操作','1','','0','151','3','0');
INSERT INTO `yourphp_node` VALUES ('153','upload','上传文件','1','','0','151','3','0');
INSERT INTO `yourphp_node` VALUES ('154','filelist','浏览文件','1','','0','151','3','0');
INSERT INTO `yourphp_node` VALUES ('155','delfile','删除文件','1','','0','151','3','0');
INSERT INTO `yourphp_node` VALUES ('156','cleanfile','清理文件','1','','0','151','3','0');
INSERT INTO `yourphp_node` VALUES ('157','dosite','保存配置','1','','0','3','3','2');
INSERT INTO `yourphp_node` VALUES ('158','testmail','邮件测试','1','','0','3','3','2');
INSERT INTO `yourphp_online` VALUES ('2d6b8a52c13155fb6ccb0b9030df1047','0','','114.240.83.56','1461228544','4');
INSERT INTO `yourphp_online` VALUES ('7bff5daa45c2d60b5505e8b8a67c5f5c','0','','114.240.83.56','1461228922','4');
INSERT INTO `yourphp_online` VALUES ('c0d12a9010c1769f223a4a4261743a74','0','','114.240.83.56','1461228178','4');
INSERT INTO `yourphp_online` VALUES ('8356ee7b00074f79fef041bd4948ceb9','0','','114.240.83.56','1461228806','4');
INSERT INTO `yourphp_online` VALUES ('d919df1a82a780a53f0ace2a4d689d75','0','','114.240.83.56','1461228342','4');
INSERT INTO `yourphp_online` VALUES ('5678231fa048fa90b535922cf59116d5','0','','121.42.0.88','1461227840','4');
INSERT INTO `yourphp_online` VALUES ('e52e4f301d80d09a2e687911c314a54c','0','','157.55.39.138','1461228717','4');
INSERT INTO `yourphp_page` VALUES ('8','关于我们','','','','<p>\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	&nbsp; &nbsp; &nbsp; 北京思远高创信息技术有限公�\�(Beijing sandstone info Technology Co., Ltd.) 是一家专业的软件服务及解决方案提供商，公司致力于IT应用系统规划、设计、开发、维护和技术人员现场服务等个性化IT服务TM，为国内外企业提供IT外包服务。我们专注于政府、金融、电信、电力、互联网、制造业等几大行业的信息化建设，最大限度地为客户创造价值，与客户共赢共荣�\�\r\n</p>\r\n<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 随着移动互联网的快速发展，公司成立了移动app事业部，拥有一支业内资深的产品经理、UI设计、web前端开发、android、IOS开发、服务端开发、测试人员以及高素质的售后服务团队，团队规模�\�60人，公司主要技术团队成员均有三年以上的行业工作经验，凭借自身强大的技术力量、丰富的项目策划经验、完善的运营模式，致力于为众多的企业和商家提供一站式APP应用开发解决方案�\�\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"font-size:14px;\"><strong>思远高创价值观:</strong></span> \r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"color:#E53333;\"><strong>愿景（Vision�\�&nbsp;</strong></span><br />\r\n<strong>成为行业领先的IT咨询、解决方案和外包服务提供商�\�</strong> \r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"color:#E53333;\"><strong>使命（Mission�\�&nbsp;</strong></span><br />\r\n<strong>以先进经营理念、创新的技术和管理，携手业界、服务用户、回馈社�\�</strong> \r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"color:#E53333;\"><strong>理念（Concept�\�&nbsp;</strong></span><br />\r\n<strong>科技引领生活</strong> \r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	<strong><span style=\"font-size:14px;\"><strong>思远高创企业文化:</strong></span><br />\r\n</strong> \r\n</p>\r\n<p align=\"left\">\r\n	团队: 和而不同、坚持诚信、开放共�\�<br />\r\n战略: 服务至上，渴望变革，客户经营<br />\r\n产品: 创新、专注、质�\�<br />\r\n服务: 感动客户，专家服�\�&nbsp;&nbsp;&nbsp;<br />\r\n信念：尊重员工信�\�&nbsp; 尊重客户信念<br />\r\n管理: 开放、简易、创造、共�\�\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>','','0');
INSERT INTO `yourphp_page` VALUES ('11','关于我们','','','关于我们  ','<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;北京思远高创信息技术有限公�\�(Beijing sandstone info Technology Co., Ltd.) 是一家专业的软件服务及解决方案提供商，公司致力于IT应用系统规划、设计、开发、维护和技术人员现场服务等个性化IT服务TM，为国内外企业提供IT外包服务。我们专注于政府、金融、电信、电力、互联网、制造业等几大行业的信息化建设，最大限度地为客户创造价值，与客户共赢共荣�\�\r\n</p>\r\n<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 随着移动互联网的快速发展，公司成立了移动app事业部，拥有一支业内资深的产品经理、UI设计、web前端开发、android、IOS开发、服务端开发、测试人员以及高素质的售后服务团队，团队规模�\�60人，公司主要技术团队成员均有三年以上的行业工作经验，凭借自身强大的技术力量、丰富的项目策划经验、完善的运营模式，致力于为众多的企业和商家提供一站式APP应用开发解决方案�\�\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"font-size:14px;\"><strong>思远高创价值观:</strong></span> \r\n</p>\r\n<p align=\"left\">\r\n	<strong>愿景（Vision�\�&nbsp;</strong> \r\n</p>\r\n<p align=\"left\">\r\n	<strong>成为行业领先的IT咨询、解决方案和外包服务提供商�\�</strong> \r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"color:#E53333;\"><strong>使命（Mission�\� </strong></span><br />\r\n<strong>以先进经营理念、创新的技术和管理，携手业界、服务用户、回馈社�\�</strong> \r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"color:#E53333;\"><strong>理念（Concept�\� </strong></span><br />\r\n<strong>科技引领生活</strong> \r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	<strong><strong>思远高创企业文化:</strong><br />\r\n</strong> \r\n</p>\r\n<p align=\"left\">\r\n	团队: 和而不同、坚持诚信、开放共�\�<br />\r\n战略: 服务至上，渴望变革，客户经营<br />\r\n产品: 创新、专注、质�\�<br />\r\n服务: 感动客户，专家服�\�&nbsp;&nbsp; <br />\r\n信念：尊重员工信�\�&nbsp; 尊重客户信念<br />\r\n管理: 开放、简易、创造、共�\�\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>','','0');
INSERT INTO `yourphp_page` VALUES ('12','联系我们','','联系我们','联系我们','<p>\r\n	<br />\r\n</p>\r\n<div style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\">北京思远高创信息技术有限公�\�&nbsp;</span> \r\n</div>\r\n<span style=\"font-size:14px;\"> \r\n<div style=\"text-align:left;\">\r\n	<br />\r\n</div>\r\n</span>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\">北京交付中心&nbsp;</span> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\">地址�\� 北京市朝阳区广顺南大�\�16号嘉美中心写字楼1221�\�</span> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\">上海交付中心&nbsp;</span>\r\n</p>\r\n<span style=\"font-size:14px;\"> \r\n<div style=\"text-align:left;\">\r\n	<span>地址�\� 上海市徐汇区淮海西路55�\�3楼（申通信息广场）&nbsp;</span> \r\n</div>\r\n</span> \r\n<p>\r\n	<br />\r\n</p>\r\n<div style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\">网址�\�</span><a href=\"http://www.sygcsoft.com\"><span style=\"font-size:14px;\">http://www.sygcsoft.com</span></a><span> </span> \r\n</div>\r\n<span style=\"font-size:14px;\"> \r\n<p style=\"text-align:left;\">\r\n	邮箱�\�<span style=\"font-size:14px;\"><a href=\"mailto:zhaopin@sygcsoft.com\">zhaopin@sygcsoft.com</a></span> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	电话�\�010-84764221\r\n</p>\r\n</span> \r\n<p>\r\n	<br />\r\n</p>','','0');
INSERT INTO `yourphp_page` VALUES ('20','服务范围和流�\�','','','','<p style=\"text-align:left;\">\r\n	<span style=\"color:inherit;font-family:inherit;font-size:24px;\">服务范围</span> \r\n</p>\r\n<table width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td width=\"120\" height=\"140\">\r\n				<img align=\"left\" height=\"100\" width=\"100\" src=\"http://www.sygcsoft.com/Yourphp/Tpl/Home/Default/Public/images/icon1_1.png\" /> \r\n			</td>\r\n			<td>\r\n				<h3>\r\n					<span style=\"color:inherit;font-family:inherit;font-size:18px;font-weight:normal;\">移动APP定制开�\�</span> \r\n				</h3>\r\n				<p>\r\n					<span style=\"font-size:14px;\">面向中大型企业，根据企业自主需求，开发行业所需的移动应用功能，以项目制运作方式全程提供商业移动化解决方案。建立从产品需求调研、产品功能识别、产品定位咨询、产品原型设计、项目功能策划、项目UI创新、项目技术开发、项目内审内测、项目上线发布的一站式个性化服务体系�\�</span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"120\" height=\"140\">\r\n				<img align=\"left\" height=\"100\" width=\"100\" src=\"http://www.sygcsoft.com/Yourphp/Tpl/Home/Default/Public/images/icon2.png\" /> \r\n			</td>\r\n			<td>\r\n				<h3>\r\n					<span style=\"color:inherit;font-family:inherit;font-size:18px;font-weight:normal;\">3D虚拟现实系统开�\�</span> \r\n				</h3>\r\n				<p>\r\n					<span class=\"service-icon\" style=\"font-size:14px;\">从事虚拟现实行业应用产品研发、设计、销售和服务，致力于为客户提供先进、易用、专业的虚拟现实应用产品及其整体解决方案。包括虚拟仿真实验室、数字城市、展览展示、城市规划、数字沙盘、城市应用、三维动画、模型数据业务、环幕立体、园林景观、建筑室内设计、古建复原、工业流程模拟、Ipad3D售楼系统、工业控制、景区三维展示、网络三维展馆、三维培训课件等一体化的服务以及全方位的解决方案�\�<br />\r\n</span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"120\" height=\"140\">\r\n				<img align=\"left\" height=\"100\" width=\"100\" src=\"http://www.sygcsoft.com/Yourphp/Tpl/Home/Default/Public/images/icon3.png\" /> \r\n			</td>\r\n			<td>\r\n				<h3>\r\n					<span style=\"color:inherit;font-family:inherit;font-size:18px;font-weight:normal;\">WEB应用开发维�\�</span> \r\n				</h3>\r\n				<p>\r\n					<span style=\"font-size:14px;\">为中大型企业提供基于B/S结构的IT应用系统规划、设计、开发、维护和技术人员现场服务等个性化IT服务。专注于金融、电信、能源、高科技、制造业等几大行业的信息化建设，为金融、电信、能源、制造业以及其它客户长期提供软件服务及解决方案，目前服务的客户有大型国有企业，商业银行，世界500百强企业等�\�</span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"color:#555555;font-family:\'Microsoft Yahei\', Arial, Simsun, sans-serif;font-size:24px;\">服务流程</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#555555;font-family:\'Microsoft Yahei\', Arial, Simsun, sans-serif;font-size:24px;\">&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size:14px;\">开发一个好的产品，技压群雄是其中一个因素，首当其冲的，更是对待事情的态度、处理事情的思想。在开发整个过程中，我们会以一丝不苟的精神，贯穿在沟通、设计、开发，帮助您设计出更犀利的APP�\�</span><span style=\"font-size:16px;\"></span><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#555555;font-family:\'Microsoft Yahei\', Arial, Simsun, sans-serif;font-size:24px;\"><span style=\"font-size:16px;\"> </span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201603/56f3904431cbd.png\" /> \r\n</p>','','0');
INSERT INTO `yourphp_page` VALUES ('27','招聘信息','','','','<p style=\"text-align:left;font-size:17px;font-family:\'Microsoft Yahei\';font-weight:500;color:#333333;> <span style=\" font-family:\'sans=\"\" serif\',=\"\" tahoma,=\"\" verdana,=\"\" helvetica;font-size:16px;\"=\"\"><strong><span style=\"font-size:16px;\">App后台开发工程师（高级JAVA工程师）</span></strong> \r\n	</p>\r\n	<p>\r\n		<span>岗位职责�\�</span>\r\n	</p>\r\n	<div style=\"text-align:left;\">\r\n		<span>1、负责移动应用APP服务器端软件的设计、开发和维护�\� &nbsp; &nbsp;</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>2、负责APP数据库、栏目、程序模块的设计与开发；维护和优化产品，进行性能优化和架构改进； &nbsp; &nbsp;</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>3、参与需求评审、设计评审、与产品和前端设计开发人员紧密协作、主动沟通�\�</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>任职要求�\�</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>1、本科及以上学历，计算机相关专业�\�</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>2、至少精通一门开发语言（C++/java/Php/Python），3年及以上开发经验，</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>3、精通J2EE里其他的技术应用优�\�</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>4、熟悉MYSQL数据库，有LINUX操作系统经验优先�\�</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>5、熟悉Tomcat、weblogic等应用服务器，并熟练掌握至少一种应用服务器的部署和使用</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>6、精通Jsp、Java、Servlet等语言及SSH2,Struts, SpringMVC, MyBatis,WebService 等常用开发框架与技术；具有丰富的数据库的开发经验，熟练掌握mysql、ORACLE数据�\�</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>7、良好的团队合作能力，能承担较大的工作压力；</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>8、了解手机客户端开发；</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<br />\r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<br />\r\n	</div>\r\n<span style=\"font-size:16px;\"> \r\n	<div style=\"text-align:left;\">\r\n		<strong>微信开发工程师</strong> \r\n	</div>\r\n</span> \r\n	<div style=\"text-align:left;\">\r\n		<span>岗位职责�\�</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>1. 负责微信公众平台消息接口开发，负责系统的技术架构和概要设计�\�</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>2. 能够独立完成详细设计及编码、进行代码审查；</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>3. 负责微信公众平台所需要的接口和数据管理，API数据接口开发工作；</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>4. 负责公司微信公众订阅�\�/服务号的接口设计、开发、数据管理、日常维护和其它后台维护管理工作�\�</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>岗位要求�\�</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>1. 本科以上学历，熟悉微信公众平台开发流程，负责微信各种接口设计、开发和维护�\�</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>2. 具有Web前端开发经验，掌握HTML（DIV+CSS）、Html5/CSS3、Jquery等技术；</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>3. 熟练HTML5、Java开发至少其中一种，二年以上开发经验；</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>4. 熟悉Mysql数据库编程；</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>5. 具有良好的编程风格，有多层结构的开发经验；</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>6. 对微信公众平台上微网站、微应用开发有较深的理解与应用，最好有金融产品、微信商城类应用开发经验；</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>7. 有实际的针对微信接口编程经验，能独立完成针对微信公众服务号的项目开发设计�\�</span> \r\n	</div>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<div style=\"text-align:left;\">\r\n		<span style=\"font-size:16px;\"><strong>UI设计�\�</strong></span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>岗位职责�\�</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>1、负责产品的整体视觉风格和UI规范�\�</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>2、根据产品定位把握用户体�\�,为产品提供切实可行的视觉设计方案;&nbsp;</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>3、不断跟踪改进视觉原�\�,优化提高用户体验;&nbsp;</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>4、分享设计经验，推动团队的设计能�\�</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>职位要求�\�</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>1.�\�3年客户端产品设计经验,对视觉设计的方法和理念有独到的见�\�;&nbsp;</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>2.对互联网及客户端产品的可用性有深入的认�\�,对用户体验方面的理论有深刻的理解,能够为产品提供切实可行的视觉改进方案;</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>3.有着宽广的设计观和深厚的美术功底,对设计流行趋势有敏锐的把�\�;&nbsp;</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>4.具有较好的分析能力，具备一定的提案能力和沟通技巧；</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span></span> \r\n	</div>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p style=\"text-align:left;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"text-align:left;\">\r\n		简历发送至 &nbsp; zhaopin@sygcsoft.com\r\n	</p>','','0');
INSERT INTO `yourphp_posid` VALUES ('1','首页推荐','0');
INSERT INTO `yourphp_posid` VALUES ('2','首页幻灯�\�','0');
INSERT INTO `yourphp_role` VALUES ('1','超级管理�\�','1','超级管理�\�','0','0','1','1','1','1','1','1','0','0','0.00','0.00','0.00');
INSERT INTO `yourphp_role` VALUES ('2','普通管理员','1','普通管理员','0','0','1','1','1','1','1','1','0','0','0.00','0.00','0.00');
INSERT INTO `yourphp_role` VALUES ('3','注册用户','1','注册用户','0','0','1','0','1','1','1','0','0','0','0.00','0.00','0.00');
INSERT INTO `yourphp_role` VALUES ('4','游客','1','游客','0','0','1','0','0','1','0','0','0','0','0.00','0.00','0.00');
INSERT INTO `yourphp_role` VALUES ('5','邮件认证','1','邮件认证','0','0','0','0','0','0','0','0','0','0','0.00','0.00','0.00');
INSERT INTO `yourphp_role_user` VALUES ('1','2');
INSERT INTO `yourphp_slide` VALUES ('1','首页幻灯�\�','','','2','920','300','0','1','1');
INSERT INTO `yourphp_slide_data` VALUES ('1','1','图片1','','/Uploads/201603/56efbb92c7ee9.jpg','','','','3','1','1');
INSERT INTO `yourphp_slide_data` VALUES ('2','1','图片2','','/Uploads/201603/56efbbbbe6373.jpg','','','','1','1','1');
INSERT INTO `yourphp_slide_data` VALUES ('4','1','33','','/Uploads/201603/56f26abbd43f0.jpg','','','','4','1','0');
INSERT INTO `yourphp_tags` VALUES ('5','app 开�\�  成本','appkaifachengben','2','Article','1','0');
INSERT INTO `yourphp_tags` VALUES ('3','大数�\�','dashuju','2','Article','1','0');
INSERT INTO `yourphp_tags` VALUES ('4','生活','shenghuo','2','Article','1','0');
INSERT INTO `yourphp_tags_data` VALUES ('68','5','0');
INSERT INTO `yourphp_tags_data` VALUES ('67','0','0');
INSERT INTO `yourphp_tags_data` VALUES ('49','0','0');
INSERT INTO `yourphp_tags_data` VALUES ('7','3','0');
INSERT INTO `yourphp_tags_data` VALUES ('7','4','0');
INSERT INTO `yourphp_tags_data` VALUES ('69','0','0');
INSERT INTO `yourphp_tags_data` VALUES ('71','0','0');
INSERT INTO `yourphp_type` VALUES ('1','友情链接','0','友情链接分类','1','0','1');
INSERT INTO `yourphp_type` VALUES ('2','默认分类','1','默认分类','1','0','1');
INSERT INTO `yourphp_type` VALUES ('3','合作伙伴','1','合作伙伴','1','1','1');
INSERT INTO `yourphp_type` VALUES ('4','反馈类别','0','信息反馈类别','1','0','4');
INSERT INTO `yourphp_type` VALUES ('5','产品购买','4','产品购买','1','0','4');
INSERT INTO `yourphp_type` VALUES ('6','商务合作','4','商务合作','1','0','4');
INSERT INTO `yourphp_type` VALUES ('7','其他反馈','4','其他反馈','1','0','4');
INSERT INTO `yourphp_urlrule` VALUES ('1','0','{$catdir}/show/{$id}.html|{$catdir}/show/{$id}_{$page}.html','news/show/1.html|news/show/1_1.html','{$catdir}/|{$catdir}/{$page}.html','news/|news/1.html','0');
INSERT INTO `yourphp_urlrule` VALUES ('2','0','show-{$catid}-{$id}.html|show-{$catid}-{$id}-{$page}.html','show-1-1.html|show-1-1-1.html','list-{$catid}.html|list-{$catid}-{$page}.html','list-1.html|list-1-1.html','0');
INSERT INTO `yourphp_urlrule` VALUES ('3','0','{$module}/show/{$id}.html|{$module}/show/{$id}-{$page}.html','Article/show/1.html|Article/show/1-1.html','{$module}/list/{$catid}.html|{$module}/list/{$catid}-{$page}.html','Article/list/1.html|Article/list/1-1.html','0');
INSERT INTO `yourphp_urlrule` VALUES ('4','1','{$parentdir}{$catdir}/show_{$id}.html|{$parentdir}{$catdir}/show_{$id}_{$page}.html','news/show_1.html|news/show_1_1.html','{$parentdir}{$catdir}/|{$parentdir}{$catdir}/{$page}.html','news/|news/1.html','0');
INSERT INTO `yourphp_user` VALUES ('1','1','pingphp','b9639067d4534d9775ace7b0522f6c54d1de4281','admin@yourphp.cn','pingphp','','','0','','','','','','6','1457417673','1457417673','1458107372','0.0.0.0','221.221.233.24','1','0.00','0','');
INSERT INTO `yourphp_user` VALUES ('2','1','hello','e31a1d7245ae0b609dd79a66cef0b1c486f4c7b6','email201111@qq.com','','','','0','','','','','','46','1457682294','0','1461228157','221.220.251.112','114.240.83.56','1','0.00','0','');