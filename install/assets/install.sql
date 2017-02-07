CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `sort` smallint(11) NOT NULL,
  `show` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `coments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `item` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `config_data` (
  `key` varchar(255) NOT NULL,
  `value` varchar(4096) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `config_data` (`key`, `value`) VALUES
('metadescr', 'Добро пожаловать на тестовую страницу скрипта!'),
('sitedescription', 'Добро пожаловать на тестовую страницу скрипта!'),
('site_name', 'TEST'),
('site_pqiwi', '1'),
('site_pyandex', '1'),
('stblok', '1'),
('sitefon', 'http://avatar.dyrinda.ru/image/bg.png'),
('site_blogsp', 'http://avatar.dyrinda.ru/image/banner-top.png'),
('site_pwebmoney', '1'),
('site_pinfo', '<p>Тут в скором будет информация о Магазине <em>"<strong>AVATAR</strong>"</em></p>'),
('site_counters', '<p>Счётчики сайта</p>'),
('wmid', '263437322743'),
('wmk_file', 'jfsU4EjrvR1+kdGPEI44olR3WIFpztODfPxZnaw3aeFz0H/Xj3jemCphWNYEu/cd/93XvADXjPKdtIe4UhvezhkRPx4lurzAuLvxF9iwkBd6pGY/zy5dbvWWhyAlCGNs'),
('WMR', 'R287183329989'),
('WMZ', '0'),
('wm_key_date', '12-02-2014 14:55'),
('wm_pass', 'N+I05uY9CwqyE/hQAFP+Qhoh2I6GKeNB0qkokOIms4Ro1AfFuqCcCpev5bgsk1A+gK4SmUN6B8Ir5HRZv34zbg=='),
('qiwi_num', '380506464654'),
('qiwi_pass', 'PwNg8tGxUCD8HXIwmZdkhslNubltxxc8qCRezavrpoDts/Zy3uxgi3SFy9HcGGbGr3AnkLNaPekM7UkhWUr86w=='),
('yad_client_id', '4E861163B76D35DA100BE70E030CB8D8219AFFD8579367368F164FC6E4500274'),
('mpblok', '1'),
('yad_token', '203406CA6D1D8DF9E8128C300B7961A103C4AF5641CDC54A866390D877E457E38180B37F93445265CA62A8E476E55B8517227393C5D34771B0FBCC3CC9365F682197E0C582149942907E92015E24A0AF343FEEE48D2A287B84D4F68CDD0B7F55E5C356AFAADDB4AD29F96E1EE5EF9FD25CA37B5F52B55C45B9027E7B238D764B'),
('site_logo', 'http://avatar.dyrinda.ru/image/logo.png'),
('site_kvbloga', 'Добро пожаловать в магазин'),
('yad_wallet', '410012116279425'),
('ppblok', '1'),
('kblok', '1'),
('site_ppkolvo', '1'),
('site_tptovar', '1'),
('vptsite', '1'),
('sitendfon', 'http://avatar.dyrinda.ru/image/bg-1.png'),
('site_infokontakt', '<p>Skype: rmnw.ru</p>'),
('ppcolor', '#2a9fd6'),
('pplimit', '3');

CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) DEFAULT NULL,
  `rank` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `descr` text NOT NULL,
  `iconurl` varchar(255) NOT NULL,
  `price_rub` varchar(256) NOT NULL,
  `type_Item` text NOT NULL,
  `viewed` varchar(255) NOT NULL DEFAULT '0',
  `min_order` int(10) NOT NULL,
  `sell_method` tinyint(1) NOT NULL,
  `goods` text NOT NULL,
  `onmain` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `ip` (`id`, `ip`) VALUES
(1, '255.255.255.255');

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `ip_address` varchar(255) NOT NULL,
  `attempts` int(1) NOT NULL,
  `lastLogin` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` varchar(11) NOT NULL,
  `session_key` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `fund` varchar(255) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `redeemed` int(12) NOT NULL,
  `goods` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET cp1251 NOT NULL,
  `slug` varchar(100) CHARACTER SET cp1251 NOT NULL,
  `order` int(11) NOT NULL,
  `body` text CHARACTER SET cp1251 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(128) NOT NULL,
  `vdata` datetime DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `views` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `sviews` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO `views` (`id`, `sviews`) VALUES
(1, 0);